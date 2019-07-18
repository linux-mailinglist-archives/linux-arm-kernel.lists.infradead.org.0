Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 881E46D211
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 18:36:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nkwj2gRQt6QZMJQCwQ6DmfmRcjqfCeaWg7GyYIxS7rM=; b=YAm
	Imtvp/UnvabAglqJ/rQAsNX2i+3X3H4BlLamFt9KeGjFRwVhuuVMr80btROJB4WMOIxX19js+s5PR
	Oe4464sN4BnfZfdI6z8I8oxKpHcrUJZmlboG7xw6PtyZwNIxydN6CJwXpNdKgMinLGYUUI0iiiBjc
	nXEBOSuCyy8M8VgbBjEo8BpnIHfldtNPzN++CXHmxOHQ0p7DmjFqfty44ViF89IBGPU931dP6C62w
	r09iMHn5fG0L7dFUCw86HzXCYrYaAdacxjvADZ1z+DWkcWzkE64+m3RE/ElhjdDEFkWAsLs2sOJib
	bIGuohFp+Jr2GtbsWfi16BT6/GJaGgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho9O5-0003U5-Fe; Thu, 18 Jul 2019 16:36:09 +0000
Received: from conuserg-10.nifty.com ([210.131.2.77])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho9Nr-0003T8-HO
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 16:35:57 +0000
Received: from grover.flets-west.jp (softbank126026094249.bbtec.net
 [126.26.94.249]) (authenticated)
 by conuserg-10.nifty.com with ESMTP id x6IGZOWl002955;
 Fri, 19 Jul 2019 01:35:25 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com x6IGZOWl002955
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1563467725;
 bh=qK9D5U+XFfqL5PNQLZVCavZVXOZYKbNuMcBF5YYDexc=;
 h=From:To:Cc:Subject:Date:From;
 b=AwJGFVo7gC9IRoHpzS9XdsWJxZf5fekGyj87nCAQUjlC6xMkr8sLpNuB7Y32wyS4T
 IFoKLw0LA22VWi10KmUS9iORar5oEEXPVBQM+4GkY3yAaLi1mPfadOPiStKG0XpiWg
 r/NB7XOxa2rVsJq4EWMndJHHYvHJjwZaGe2BuNYAD9tNLOOuL4FXPGYgN3975Kovv3
 FQih3cQX5oApRAHBZ9yi1HmgxrU4Vbrv2Srzshf5GtixkM7TD6xEp000kN94vKGQRJ
 vXkAyF35eXFIdG7gAEt3Kc3WodbSngjgSBjWCWamRAoLiEteQmUFNhS15lzLdYkXHT
 VoO1dEc3V9XxA==
X-Nifty-SrcIP: [126.26.94.249]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: patches@arm.linux.org.uk
Subject: [PATCH] ARM: visit mach-* and plat-* directories when cleaning
Date: Fri, 19 Jul 2019 01:35:23 +0900
Message-Id: <20190718163523.18842-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_093555_895922_388C3E53 
X-CRM114-Status: UNSURE (   4.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.77 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When you run "make clean" for arm, it never visits mach-* or plat-*
directories because machine-y and plat-y are just empty.

When cleaning, all machine, plat directories are accumulated to
machine-, plat-, respectively. So, let's pass them to core- to
clean up those directories.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

KernelVersion: v5.3-rc1

 arch/arm/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 792f7fa16a24..c3eb0d9a2fdd 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -286,6 +286,10 @@ core-y				+= arch/arm/net/
 core-y				+= arch/arm/crypto/
 core-y				+= $(machdirs) $(platdirs)
 
+# For cleaning
+core-				+= $(patsubst %,arch/arm/mach-%/, $(machine-))
+core-				+= $(patsubst %,arch/arm/plat-%/, $(plat-))
+
 drivers-$(CONFIG_OPROFILE)      += arch/arm/oprofile/
 
 libs-y				:= arch/arm/lib/ $(libs-y)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
