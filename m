Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BCDD8EA1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 12:51:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X7OOugNf6ZkO97Cr1xmh7p1Gou1nEOcXYGi8O2bZJYQ=; b=oWggQ6FrRVEhMq
	YDRtEMr04wZA1biPk6Ay4rY9FVwKofGziwkRwf16ckbEr/tA6xs06ryHiOyAfohevjFK0gyH1LgnF
	DnlEmtV2yA2Sbd+vzzsBucd+MwHQHWBdAGXjijNn6sPhvmQQyEKAQlGZMEdPsdjDs4trwsuXIFBY6
	nTAafAb1NxWTuks280PAdneDKL7ZmhXAvbVtxAzO23s80+fDZWVuPedijeXFir0/bzxudTMFiZIrM
	k+pVz2y+szJ5meq/9y4qiC+yJu/64W9jbv4FxIr9Z/8PwRCLL7mnqH66I4d/RwWBg2Jqgk1amA3Z1
	gnv67bEf6CgDBM9HX57w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKguB-0006lU-El; Wed, 16 Oct 2019 10:51:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKgqg-0002WL-Rj
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 10:48:12 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E2B082067D;
 Wed, 16 Oct 2019 10:48:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571222890;
 bh=07rVU4c3g4na3tble0oZH4I39t8BhRk9LVlpWAumvJk=;
 h=From:To:Cc:Subject:Date:From;
 b=aDQagmLwbaDJGfvlBPUs9yb0aQojuyzTHc5tGZGKSfQU16vdXTILpDJpII0pAnYsA
 mUYMUVjzavGQmMTA+ZQaMLgMhJsKrxR/QD5VdCeiEZyg7LNIGX3azfat2yP9GHJ9qr
 gdbIYXH+4nJEmDivR3edQO406vE8FqUAOCOk+d9o=
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>,
	Maxime Ripard <mripard@kernel.org>
Subject: [PATCH] ARM: dts: sun9i: Add missing watchdog clocks
Date: Wed, 16 Oct 2019 12:48:05 +0200
Message-Id: <20191016104805.65390-1-mripard@kernel.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_034810_938161_D54FCA11 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The watchdog has a clock, but it wasn't always listed.  Add it to the
devicetree where it's missing.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 arch/arm/boot/dts/sun9i-a80.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/sun9i-a80.dtsi b/arch/arm/boot/dts/sun9i-a80.dtsi
index b9b6fb00be28..b5c46934b5b1 100644
--- a/arch/arm/boot/dts/sun9i-a80.dtsi
+++ b/arch/arm/boot/dts/sun9i-a80.dtsi
@@ -947,6 +947,7 @@
 			compatible = "allwinner,sun6i-a31-wdt";
 			reg = <0x06000ca0 0x20>;
 			interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&osc24M>;
 		};
 
 		pio: pinctrl@6000800 {
@@ -1154,6 +1155,7 @@
 			compatible = "allwinner,sun6i-a31-wdt";
 			reg = <0x08001000 0x20>;
 			interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&osc24M>;
 		};
 
 		prcm@8001400 {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
