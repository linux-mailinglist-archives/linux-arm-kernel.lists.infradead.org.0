Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0B2D8EA2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 12:52:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bA78eK5fyHxDn1MTCnZneJmxcCe4Yp+D4GwfHAHX2gQ=; b=Icfl4vug72HZzU
	OYssrIiG6/EeA0MFoJzQenahdxUIHuNBnAolUKEyqrX3l5six/t8qD/5vgkEZd2GhsVPq/NprQ7iH
	/TPsiIB5m12uiIzqnL0ttlQQptRsJN/UKSLGwqSFxYI7bcPJnJmRJeBMcIvrZ+ge3EJZz3C08vaH9
	RnAWIueY+/iTR3xG76GsQPPLHi9i3D0sKjXOoCeog7EtxwTW30AdauGHGjB5taP9BlutRZ5bx6gX+
	ne/zZ/3X4vMhj45+mqgzhBbMjxKwJhSuWh9ydQuf0EoXaNnfB6HYlf33XgqCrxNYeMpopGwlKuDcJ
	amwjNb79pJ6Krf92G5hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKguY-000742-9k; Wed, 16 Oct 2019 10:52:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKgqv-0002jx-S9
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 10:48:30 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CBC982067D;
 Wed, 16 Oct 2019 10:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571222905;
 bh=hKXxMwESalcSip3HCOqWPUV0IET4T28PLGBpb9mtx0k=;
 h=From:To:Cc:Subject:Date:From;
 b=0EOmV7SSEU9TEXXvQWyJGGnnG+GNa7B1YEiSZSM29qch2u6H0VyWLVr3MtHxwklPa
 BbHGsFM1nYTfY3jPdx27XRQlXHgI4pTwYMdVGpmprXbl5VPzRXI0NngiQ5j/m4BmBI
 UMJH8fcXkRV8SEMrrxVWQqfIZPTHaJRoDXSgNCYE=
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>,
	Maxime Ripard <mripard@kernel.org>
Subject: [PATCH] ARM: dts: sun5i: olinuxino micro: Fix AT24 node name
Date: Wed, 16 Oct 2019 12:48:20 +0200
Message-Id: <20191016104820.65479-1-mripard@kernel.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_034826_002003_0DF12F7D 
X-CRM114-Status: GOOD (  11.92  )
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

The node name in a device tree is supposed to be the class of the device,
not its model (even if it's a pretty generic one).

This was reported by the DT validation tools.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 arch/arm/boot/dts/sun5i-a10s-olinuxino-micro.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/sun5i-a10s-olinuxino-micro.dts b/arch/arm/boot/dts/sun5i-a10s-olinuxino-micro.dts
index 7033a123c9a3..d6bb82c295f0 100644
--- a/arch/arm/boot/dts/sun5i-a10s-olinuxino-micro.dts
+++ b/arch/arm/boot/dts/sun5i-a10s-olinuxino-micro.dts
@@ -130,7 +130,7 @@
 &i2c1 {
 	status = "okay";
 
-	at24@50 {
+	eeprom@50 {
 		compatible = "atmel,24c16";
 		pagesize = <16>;
 		reg = <0x50>;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
