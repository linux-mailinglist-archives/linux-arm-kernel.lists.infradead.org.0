Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E5416A200
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:21:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LufOZ+yaKkvLuOlxZPMbDDrPp6+qM1r9EvLg4vReKYE=; b=Ixf4WYfLcWWJeG
	AOqWAUbe6SvE2y4sgQTV80N7cbDRHkBtLxzGEe8sY+lI0HMuhus+ZQ0P/kCIeEKSCAwHCrs8jFPR8
	GjDXhYQ0BhCiIzgNrSTshC14C+swi1BXaoM75J/r+SZcPNP/X4INb3oFJ9/ZHADhY7+Geu8m3YyNd
	bTCerdDPH5elej72GNRrFwN9MzCpRhgMg8Xq76HLTKld4S6iv3bBoxNSVNL+hqJUxIgz4TLbEmhjS
	w74NjWngBxizjyBlhYXxehJHePFyKC3XrWvDuBOAZnsNZxtHMyb8ZluiWjgSZdRKruS3tqPlxCHsC
	hZSmKdcqGaWB+LG4NuBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69vz-00059q-8A; Mon, 24 Feb 2020 09:21:51 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69kB-0001pt-MD; Mon, 24 Feb 2020 09:09:43 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 83C2663B;
 Mon, 24 Feb 2020 04:09:37 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:09:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=tcEeIWCR5xDNY
 TxvAnWeBfw6yhxXXPV3oBBDWSfmiS8=; b=CCMGcHBBp44MBA4Quv4mYfmnmil9m
 fftMiZztC3Jt/0rPbr4gEC5tqlrP9oaifOZ7YPC4xiu31i/xfN6ODyotAFXgask0
 H7fROM6uV8dlrknPVnbI99MKLrDs9VXAAPnbUVkJ6a86ncAgpJ1LlaTufhpC5YWX
 sJxReG7xGyZtzMdN0zN0B/HX7tlPY5IlXnz7owOWYvdlzZsui4rUXY0rUFfmSnin
 xC8VnHOudg34kpX6Kk9TZip3av+oR/ccJnOFv7Vz4PSVp93KC1R7J4mTrqAboM7P
 GBuhWUjCs1OGzSAmW55eDBh7zICgmWLPUyV/uwOXAdadlILItC2dP4aXg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=tcEeIWCR5xDNYTxvAnWeBfw6yhxXXPV3oBBDWSfmiS8=; b=2YxvQ3Ml
 GEtfI/BENXx98c+eQPaE7utv66AV+JVtYsS8+r+pS0xNy7vTKHS4HZv0a2QGGxa+
 FeQmPYroc/Npb5x/KyK543+42TcYeL6klwRpTB5aqVwv/g3Ppwgka90qy2BbntPA
 QylJarHsP4lGW/Q/cXOBA3e7gzhO0t7M7oH+KdI3g0XzCXFROYkMvBSQoIozQ41n
 E3eoL8F6/OTu3wAT3foqVhz1nNO7NtQylSabdpDGrE3mMfKEdHtZvIH7NQkAl8OL
 Op4REj3DeJI6+mUiJ3637l3qII1vUYdvSUCy1tjYWncAl/efSKbJlDWPp3R+LE23
 1w4Wg3fpOiaOQw==
X-ME-Sender: <xms:0ZJTXncbCuRYY-l6pP--EGR_wXgnDrmBYSUIwf18C9-WuvJLiZ2JjQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepvdejnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:0ZJTXk0UZqgFCO0IQEXTxvyBVXvQC9xyTugM49VRjmpafe-Lon6m1A>
 <xmx:0ZJTXgvaePxHpnPyjFXas-54B8sOM4ozwkLhP8JSYJ2lEzsclj7nBA>
 <xmx:0ZJTXg-eQAbXWNV9J0FgYLT8ZvKLi6RwMBDL1CwVbtQCiwW7dm5LwQ>
 <xmx:0ZJTXvyAK7DOsFqoJ_avWbUfz3klNEyoVt7Zfg3T9eZO6Q0LpfD-Y9UF9fY>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D77C33060FCB;
 Mon, 24 Feb 2020 04:09:36 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 33/89] dt-bindings: display: vc4: Document BCM2711 VC5
Date: Mon, 24 Feb 2020 10:06:35 +0100
Message-Id: <d8df122abf3875d9924a20996673bea49174dbb1.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_010940_099312_C7FD7668 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.17 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The BCM2711 comes with a new VideoCore. Add a compatible for it.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml
index 0dcf0c397375..49a5e041aa49 100644
--- a/Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml
@@ -17,6 +17,7 @@ description: >
 properties:
   compatible:
     enum:
+      - brcm,bcm2711-vc5
       - brcm,bcm2835-vc4
       - brcm,cygnus-vc4
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
