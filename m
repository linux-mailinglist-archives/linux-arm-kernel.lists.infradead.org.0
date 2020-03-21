Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC83D18DE9B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 08:59:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CuspnRVZs8ZO8Bn/+d2YQa3FaVvhd0ocRW/zjo/ffGI=; b=GOHJbiXPkbed8PRdBo4K4eS6gT
	OF2FqlknihTJPLdO8WHcDmpx5IWw1aJ3YLQciHfOC0TInGuVmyILmopsUnqWrEVIg9fEdbf2B648z
	YGKSY370lncEBlh0vH8W/ocLpy0+/tBgRj7VCX7Vg8RnvJAOjy9ZmrKc2zrEnXnr8IZQiX535ByMk
	qfZmlrzCCtMnbDyOpdxgTbcWfYj8M5etGY1mBuILWKeQpXDMvhfNtgEepe4l1dZcmxEV4xJx1Uqsx
	AsqkVOQDzBk53KyoWj8pk76neBo13qKrddcFUCPEnWOQaxwu+JE2k0MfVoH3CCdT/Qbx6ieBF2Il4
	c/sSD18g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFZ23-0004Du-OK; Sat, 21 Mar 2020 07:58:59 +0000
Received: from olimex.com ([2001:470:0:1f2::b869:4820])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFZ1U-0003sI-Tq
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Mar 2020 07:58:26 +0000
Received: from localhost.localdomain ([89.25.85.162])
 by olimex.com with ESMTPSA
 (ECDHE-RSA-AES128-GCM-SHA256:TLSv1.2:Kx=ECDH:Au=RSA:Enc=AESGCM(128):Mac=AEAD)
 (SMTP-AUTH username stefan@olimex.com, mechanism PLAIN)
 for <linux-arm-kernel@lists.infradead.org>; Sat, 21 Mar 2020 00:58:17 -0700
From: Stefan Mavrodiev <stefan@olimex.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Corentin Labbe <clabbe@baylibre.com>, Stefan Mavrodiev <stefan@olimex.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), 
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Allwinner sunXi SoC
 support), linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 2/2] dt-bindings: arm: sunxi: Add compatible for
 A20-OLinuXino-LIME-eMMC
Date: Sat, 21 Mar 2020 09:57:57 +0200
Message-Id: <20200321075757.15853-3-stefan@olimex.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200321075757.15853-1-stefan@olimex.com>
References: <20200321075757.15853-1-stefan@olimex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_005824_957476_C9389368 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-sunxi@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add compatible string for A20-OLinuXino-LIME2-eMMC to the
bindings documentation.

Signed-off-by: Stefan Mavrodiev <stefan@olimex.com>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 327ce6730823..25c09a121b63 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -555,6 +555,11 @@ properties:
           - const: olimex,a20-olinuxino-lime
           - const: allwinner,sun7i-a20
 
+      - description: Olimex A20-OlinuXino LIME (with eMMC)
+        items:
+          - const: olimex,a20-olinuxino-lime-emmc
+          - const: allwinner,sun7i-a20
+
       - description: Olimex A20-OlinuXino LIME2
         items:
           - const: olimex,a20-olinuxino-lime2
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
