Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 189ADABCBF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 17:40:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BJjVeWEQ0wWSENHW7AswjWYnyIOqzF0ubAqYDqtiXOo=; b=hzsC+ZGWysojE7
	HUmj86IWZLI+Hz8z6HkKdu3FR7zcdmBWFQ2sOS05qj99z7XWUXryQuXm2+pDtDSx3WDzsAYbQwgLA
	3xORLeA1/fAtYGDWw0rKh5pYHawWDZDm5LRxUidMjrwafZdTieRy6ECIyVmCpjCplfzxEi758nBH1
	vzgZHmBumvdL3rZkfVol51g/gH8ew9+graBEq/mSJruVIgM6KckFJkJK67l86HVHNIA7p637DtBgd
	K3ER0zB5nFEdbRqZr9iLNQISitD91OoAiTx4v5eeqJ69cm6L4cnpRV1bw8GelpGbRZo6cESFjw93j
	kULsB9Gkp1H571XSguag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6GLP-0005FR-5P; Fri, 06 Sep 2019 15:40:15 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6GLC-0004VD-RG
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 15:40:04 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1N49xZ-1iFMyW1Wgz-0103jZ; Fri, 06 Sep 2019 17:39:53 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Stefano Stabellini <sstabellini@kernel.org>
Subject: [PATCH] ARM: xen: unexport HYPERVISOR_platform_op function
Date: Fri,  6 Sep 2019 17:39:38 +0200
Message-Id: <20190906153948.2160342-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:zYODqMtzhmasPBLMaQkekqWiOvuaPVy3IwkWaKwHTMENneYYT8+
 N9fyWbckJqYWTjYWdmrm2DvtCp7XQn992baONZAioN40gMFhsqvd2U1uMxtDsTxl02EEgMD
 eI5U3yqi2uT9wI5P/PNjLDsH5KfiyfEyZ9ARZbjNSFbQWMW/PWzRcDJcdeASforR6P2aJOa
 oSAzLbOAoDT2OMDOiRvsQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Hl3snfylLyw=:F4PGuLMuAxxV6jSAERX2I7
 YLHkkVVGb5vPqpurr8Bbn+hyuwWdkNKkzFAUJBpSy+D7WHk7gVxbv9HpCnGGfm6NgtD1zTgjs
 WqyLndj1Q1NoIHOq97vFJK1E5NfCvEK9k2CLN88jTZugyWhrSRmIMpJlo9gYL5VzkBoM13xbe
 L97IBBuATNa8AplaIqCWcHo/WKK4s6PfwNn1IoigBfpbvRJ/4p4vKT4Ps4c9KEMraRxou/4YO
 HQpBTXRVmqZ5/Fu1ubNF1z7SS6+MsybqbmmBf4arM//R+Re4Of7p/AIGwGVb5eNPJfPLMov7o
 eD69Z7Ak+0C5ah/e9vI+a6EOEUGTFWqVmQtCLXjg4CJFXYDrncVnhngBn9tH54hvR3v9cznBt
 XaCRWMr+Wk1XfBylaOur9Ac/fM1lU/GLDeae1pxYrIt/e/YzUGrs6pBa01J2TFxiAfTs7ffR7
 d7k+afrQlghEUPhvATCoVBg0NVG4t25SciaXGLKavc4MvEqWswSslxWMcLPAd+fjqthc+Ujkd
 FpMV7SrwOZ1lhA8UHG+1o8WhALPIVVuIrtZIfRZJty6t9HVahWXkOORwCmjgbZwXrNUuQtjlm
 Z036DeAY4zkrSUKOAdBKSKDJN/Ehwo7WbC6Wzp2cwqUfwFmUF2Mwh+61GjOanrNAM8cOmXUl6
 nTMw3EB8A4ev83/WvVY1UVl6nLC4NaVPP1QI9W5cn3+lUEPOdH5r75jP32GLF7CO36I28uRJX
 j/fBOhn1RJrPYCDLykucNyQcukb/dW7s7RTPh9iJfiYj06Dh2j+AyDwJtTKyqFfirfzZpk8f+
 HvVavFxfxTs0ElAnhWxOzZFZi9GFQsIQ4oeH6iHEPsqKo7oTqE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_084003_187875_B03B86E6 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Arnd Bergmann <arnd@arndb.de>, Emil Velikov <emil.l.velikov@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Denis Efremov <efremov@linux.com>,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 xen-devel@lists.xenproject.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

HYPERVISOR_platform_op() is an inline function and should not
be exported. Since commit 15bfc2348d54 ("modpost: check for
static EXPORT_SYMBOL* functions"), this causes a warning:

WARNING: "HYPERVISOR_platform_op" [vmlinux] is a static EXPORT_SYMBOL_GPL

Remove the extraneous export.

Fixes: 15bfc2348d54 ("modpost: check for static EXPORT_SYMBOL* functions")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/xen/enlighten.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/xen/enlighten.c b/arch/arm/xen/enlighten.c
index 1e57692552d9..845c528acf24 100644
--- a/arch/arm/xen/enlighten.c
+++ b/arch/arm/xen/enlighten.c
@@ -437,7 +437,6 @@ EXPORT_SYMBOL_GPL(HYPERVISOR_memory_op);
 EXPORT_SYMBOL_GPL(HYPERVISOR_physdev_op);
 EXPORT_SYMBOL_GPL(HYPERVISOR_vcpu_op);
 EXPORT_SYMBOL_GPL(HYPERVISOR_tmem_op);
-EXPORT_SYMBOL_GPL(HYPERVISOR_platform_op);
 EXPORT_SYMBOL_GPL(HYPERVISOR_multicall);
 EXPORT_SYMBOL_GPL(HYPERVISOR_vm_assist);
 EXPORT_SYMBOL_GPL(HYPERVISOR_dm_op);
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
