Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 094A8CA154
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 17:49:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+5SE4AGehUmfDJ/22lqv5WCkHwxN+lzT/r36e64qASs=; b=EWEMf9ekm3owjd
	7ed0vk7MnQ1HSo+r11aEwvuTaE2b3q1OW8gh+GiLpqoMHxFdblJ376rqQvaeXwj7eT8Y6qCnyeE4u
	ZBIG6E0UyoZ8SIg8T7ZIql3KuulH9bqrmTt1tsSfht99cALPh2B4D3O2J40et3mOTRxCA0iEpp2Q5
	5rgjqspaNBrSz1CTv5tc+8BYpQQJQZfip91FjE6yxdy/bxTnDLoYWWZwUKCyuHVcq8YGMXOnuoDFQ
	XFbGvJ4R0vtVDHwh8Oa6l+YMezG2mnVq8MDSKB8jfoAx8MNDrRaIsxqUCbEQ47bCzQLcwYVs9Nm5q
	NoylT/5VirnwNOgUzbHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG3Le-00025L-Jg; Thu, 03 Oct 2019 15:48:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG3LU-00024l-MV
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 15:48:49 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3254F20700;
 Thu,  3 Oct 2019 15:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570117727;
 bh=EE5Bkv2KoKRIFlmamCmZbMdsVL5JyAd3sPSGmn2juVw=;
 h=From:To:Cc:Subject:Date:From;
 b=2D6q22KuDwlYJSH/zY34xSvhG1V8aH5Pp5Vv15e0d4oVlTmox4zctkuwpyOIJ2gmp
 Ds65RRu4HgPfQgYb37LQYbBOdkDyIP9lbkH6DB94aYna5/+J+q9K9UTM6jm3Ir5xdu
 leTV3pra1o7uzm6dOrYhYnZ4CPEI0yExBAyx8XZ4=
From: Maxime Ripard <mripard@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, sakari.ailus@linux.intel.com,
 mchehab@kernel.org
Subject: [PATCH 1/2] dt-bindings: media: sun4i-csi: Drop the module clock
Date: Thu,  3 Oct 2019 17:48:41 +0200
Message-Id: <20191003154842.248763-1-mripard@kernel.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_084848_762475_82181C7C 
X-CRM114-Status: GOOD (  10.51  )
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It turns out that what was thought to be the module clock was actually the
clock meant to be used by the sensor, and isn't playing any role with the
CSI controller itself. Let's drop that clock from our binding.

Fixes: c5e8f4ccd775 ("media: dt-bindings: media: Add Allwinner A10 CSI binding")
Reported-by: Chen-Yu Tsai <wens@csie.org>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 .../devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
index 5dd1cf490cd9..d3e423fcb6c2 100644
--- a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
+++ b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
@@ -27,14 +27,12 @@ properties:
   clocks:
     items:
       - description: The CSI interface clock
-      - description: The CSI module clock
       - description: The CSI ISP clock
       - description: The CSI DRAM clock
 
   clock-names:
     items:
       - const: bus
-      - const: mod
       - const: isp
       - const: ram
 
@@ -89,9 +87,8 @@ examples:
         compatible = "allwinner,sun7i-a20-csi0";
         reg = <0x01c09000 0x1000>;
         interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
-        clocks = <&ccu CLK_AHB_CSI0>, <&ccu CLK_CSI0>,
-                 <&ccu CLK_CSI_SCLK>, <&ccu CLK_DRAM_CSI0>;
-        clock-names = "bus", "mod", "isp", "ram";
+        clocks = <&ccu CLK_AHB_CSI0>, <&ccu CLK_CSI_SCLK>, <&ccu CLK_DRAM_CSI0>;
+        clock-names = "bus", "isp", "ram";
         resets = <&ccu RST_CSI0>;
 
         port {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
