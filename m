Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47FF43D2F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 18:48:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gj4MPZSnrtJj35a4RUiGTj3gEsLZY22WgKGFy6ZYhhM=; b=AB/Z7uCkbFadql
	Gun9eQgUdkW+xVU/nR1SNPs95/6kAGKNt2nZWLRF7oDZQBCQPluwFPezOOLoMqgvU64AKqQcDDqqT
	F5rbUBJtsxREqcs5swIlMH9xR4ZjsJbS03Z8Pe56A4tQVYr6mSjx0Sh6KBnd9YozLzgbYWKeaAmJ8
	Bi3w4z2Wcut0cl7cH/j5KtaIqAgOIT98YqAzznKlkZqxVstAMmYQKFfAaw3b2MBpChkemYMKsU/gf
	zWQ3/2RIBllW/jmt4uF749kTYYFO+ToFerRr31yAn6kdTFkk1ESkyZYG5sK82yrGChwRZyue1q77c
	Hf5eeDrEB2dxmObZaYsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hajwz-0001Yw-EZ; Tue, 11 Jun 2019 16:48:45 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hajvi-0000bN-MU
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 16:47:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:To:From:References:In-Reply-To
 :Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fuWP8KIPU1y+fTRas4cU4hh0TWX1KLczQSZzU0tPKno=; b=vIrW43b3XmXhQ56nxTa7PBVJI1
 /ywr19IEstfuboHbKQvt6OAUd88v9kLgy8qnTZFWL1npyLAf9pk/x8Eb48MUb4FFh1cbyMOP7ZICE
 gHsWrZ91lS+awykO/ONVWDW63yfLbMYf9DGekSfGKTCq0S/H3CfhZ/tc+htqDNbMPcuTU4/xKtYCN
 /zVPhGF47+4bzUHmVqC8BZ0popza3B38uwieMlGiT2i0eC0shlpfYpWcq9jz4Z6k4YUOBk+YZmyMl
 je6J69gDlCUu6oSMzvOLUsC/ZT27jXH11Aa8l50/1OLoicQhOnjxO0AaA7sswLcm02S/uTFqAypxF
 pVKrGCSw==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2002:4e20:1eda:1:222:68ff:fe15:37dd]:36664 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hajvc-0006s1-RY; Tue, 11 Jun 2019 17:47:20 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hajvb-00037n-KA; Tue, 11 Jun 2019 17:47:19 +0100
In-Reply-To: <20190611164634.lojmqu3ojfteeyet@shell.armlinux.org.uk>
References: <20190611164634.lojmqu3ojfteeyet@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/5] ARM: riscpc: enable chained scatterlist support
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hajvb-00037n-KA@rmk-PC.armlinux.org.uk>
Date: Tue, 11 Jun 2019 17:47:19 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_094726_840063_9E4D9B7E 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There's no reason why we can't enable chained scatterlist for RiscPC,
we already support chained scatterlists in the IOMD DMA support code.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 08a4915a69d2..e94619684a82 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -528,6 +528,7 @@ config ARCH_RPC
 	select ARCH_ACORN
 	select ARCH_MAY_HAVE_PC_FDC
 	select ARCH_SPARSEMEM_ENABLE
+	select ARM_HAS_SG_CHAIN
 	select CPU_SA110
 	select FIQ
 	select HAVE_IDE
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
