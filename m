Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61140F0793
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:02:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IY0+o0KoXJs/CgvNmvJk8SvbK7v1YtL0Cp7QVFbgS8c=; b=FCkCRUV7w7nuVFNfa8yMIRYBY7
	IzY+w/1nehzzMKPt7WkUvtpglZ0+MjfkHxS5olnbdId9cU9RTTTxYW8HJ3pPdW18AgfqrirNLoG/I
	Pnf71dJlgE7QhF3UvAgxPfbc5wYT2cdsILqhHHGbUp0OwBO0Z35+OTiWJL0bteBB4EauxA/nHy+sx
	ep3f40W1IKNF86LK0CmZ+e19yzoi8p3gDWn6CUytDK4R3DIVIS8Fvg+T8ybqtL+m7APVjUbN3wsEo
	/U872bFnSKhehK4vyzVsaujwSHzsuODNMnAzaVMLo4b3QV0Re+FB67Q46LWmimY5RF246NOWy2K5S
	KFquQsYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS5y4-0000nC-4T; Tue, 05 Nov 2019 21:02:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS5vE-0005OO-GA
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 20:59:33 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2F0BB21D7D;
 Tue,  5 Nov 2019 20:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572987567;
 bh=rbfacBY3RL2nx6iTqlBmQBodGzrDQOSLLKeU8RyMr4w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=EfaFUIMTxC9LaUHuy+LabE2Zq78qRWdfNAfLu0Lq5anO5i7P8SZKjHAXjmzdjH38y
 TgpU3uIaW5006m5MwQofNgrQ3Ut3Oim5BgDV0OgSwH61q2wARwexiQr2268QxVuEK2
 z77XMje7+CqaXhMEHibTM5v3JOfWA8+6sv88wtS0=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.4 10/53] ARM: smccc: Update HVC comment to
 describe new quirk parameter
Date: Tue,  5 Nov 2019 21:58:03 +0100
Message-Id: <20191105205846.1394-11-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191105205846.1394-1-ardb@kernel.org>
References: <20191105205846.1394-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_125928_609680_5F368106 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tony Lindgren <tony@atomide.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Sasha Levin <alexander.levin@verizon.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Will Deacon <will.deacon@arm.com>

[ Upstream commit 3046ec674d441562c6bb3e4284cd866743042ef3 ]

Commit 680a0873e193 ("arm: kernel: Add SMC structure parameter") added
a new "quirk" parameter to the SMC and HVC SMCCC backends, but only
updated the comment for the SMC version. This patch adds the new
paramater to the comment describing the HVC version too.

Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Sasha Levin <alexander.levin@verizon.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 include/linux/arm-smccc.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index b67934164401..4c5bca38c653 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -109,6 +109,7 @@ asmlinkage void __arm_smccc_smc(unsigned long a0, unsigned long a1,
  * __arm_smccc_hvc() - make HVC calls
  * @a0-a7: arguments passed in registers 0 to 7
  * @res: result values from registers 0 to 3
+ * @quirk: points to an arm_smccc_quirk, or NULL when no quirks are required.
  *
  * This function is used to make HVC calls following SMC Calling
  * Convention.  The content of the supplied param are copied to registers 0
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
