Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CEB411F960
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 18:00:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yK9Z3Ne8PZScGLgrYeadwrNWpUR1zjxYwoUqdVE70l0=; b=Qj5Qdy06DB1FzN
	xg8Plxg7/MpMfS9W4UQKYvPhCbirSoX21F5AdoJ+5KRjEAQSx87ej1uiRNW9GX2/KDgrcWB2ljSKk
	1SY8JYmM84C9hv/7Ddbuirm3pxBbxDAM4yA3TRZACsmSBJamKci9a+PcOE53OshVSWGIZQNfILZp/
	f1r40OhbnrK5cRBP/jfGIg05W6atuBGLQyu4ecMyNS/qHKtj8eOgKkyn8mq7j8dIwXOWV8hbYNIMx
	qRGwzaoKFLPt5IywNqZ6HAZ65uZF3lAe+tgJ7xuwVUXqyFjNBWXmOxgeVhB577IaTGs8H0phhNkX/
	bCtpAs8DswBEI3oJ5CJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igXFb-0005xw-Sq; Sun, 15 Dec 2019 17:00:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igXF0-0005kK-7y
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 16:59:35 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 61D1822B48;
 Sun, 15 Dec 2019 16:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576429169;
 bh=AggvsG1/GZy0NVHIzr7eHUOA85RmCqX0dOr608p8zzA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kjb8SO0ljbi+aEGO76d4lW2vkCTjPXBcJEiB5YmicJ5tnekR7Bo8nxXTjwOGFKgl0
 4FTvCWTEShVqVAs4AIZqM7d7S6IEHs3SOTtLitqhccgYJ4nBWYIy4HwGXcKtZ/x8Vt
 ZgX9Dv1i4h3TNz0hi9zQMc5zRZ9TZPSWlvMtriio=
Received: by wens.tw (Postfix, from userid 1000)
 id 271EE5FD21; Mon, 16 Dec 2019 00:59:26 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <mripard@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 02/14] dt-bindings: media: sun4i-csi: Add compatible for CSI0
 on R40
Date: Mon, 16 Dec 2019 00:59:12 +0800
Message-Id: <20191215165924.28314-3-wens@kernel.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191215165924.28314-1-wens@kernel.org>
References: <20191215165924.28314-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_085934_321254_050AA7B9 
X-CRM114-Status: GOOD (  12.98  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Chen-Yu Tsai <wens@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

The CSI0 block in the Allwinner R40 SoC looks to be the same as the one
in the A20. The register maps line up, and they support the same
features. The R40 appears to support BT.1120 based on the feature
overview, but it is not mentioned anywhere else. Also like the A20, the
ISP is not mentioned, but the CSI special clock needs to be enabled for
the hardware to function. The manual does state that the CSI special
clock is the TOP clock for all CSI hardware, but currently no hardware
exists for us to test if CSI1 also depends on it or not.

Add a compatible string for the CSI0 block in the R40, with the A20
compatible string as a fallback.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 .../devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml     | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
index 221fe630c7d5..d486321b13f5 100644
--- a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
+++ b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
@@ -22,6 +22,9 @@ properties:
       - items:
         - const: allwinner,sun7i-a20-csi1
         - const: allwinner,sun4i-a10-csi1
+      - items:
+        - const: allwinner,sun8i-r40-csi0
+        - const: allwinner,sun7i-a20-csi0
 
   reg:
     maxItems: 1
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
