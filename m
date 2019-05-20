Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB25023B97
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 17:06:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JbaKjRnUMxjXwphl6Qd9vd1l45Sd+sn0CwiOWokDgMQ=; b=ZEeqYMHJibof8V
	0F8Epb9+qBL/blupw7/AP6UfKjT5gaRmNDKAH2cJ1B1tobcPj043cnIVduZ1KmWMOLWKeo051bnUd
	GYvbGbQRPCpktGxe6xAfv8zoQ27GedTT/52ICfTAB2WDq4843rcGqZbjD6Kmg5PmDI3liaVKhrqAF
	MZ/Cn6PyB5K3pAQWw6EiJNG/tkrYkA/mj2A53lw46OVMBeT7p5XtTXQGvf6ORQ5JXXGAJ5luSmIMz
	ZaNYCb9hrToxEAbqDdX1BXJeXFC3fEdMQX4sLzt4+tEiZHT2kUwSoTrnG48hgi7RWr766gwYO4qHD
	2t2HCHstZFZum6/aApyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjsI-0003jE-Ls; Mon, 20 May 2019 15:06:50 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjsB-0003cN-Fw
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 15:06:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1558364799; bh=HQyTkbRM9bhoZj4Sp9Ox98haCitSP4jarvcwo1lDf4I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Im7RwqhiYPretVmpQGn28pGv0yh1N3EJTpT2Ghl4ceHMFeYhOThZz3uMVLsOlvBpY
 UoCNdXt8hmczl1J0B38T/9lWKPzRv8e0uJLiNlFhpjcop2ld+MoLR2i4hgC6Qd+Hgt
 WIzYn+070FkKEXIrVV+A+MKJVRixhlqWcBRRNNHA=
From: megous@megous.com
To: Chen-Yu Tsai <wens@kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH v2 1/3] dt-bindings: media: sun6i-csi: Add compatible string
 for A83T variant
Date: Mon, 20 May 2019 17:06:35 +0200
Message-Id: <20190520150637.23557-2-megous@megous.com>
In-Reply-To: <20190520150637.23557-1-megous@megous.com>
References: <20190520150637.23557-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_080643_856147_9598AFE8 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

The A83T SoC has a camera sensor interface (known as CSI in Allwinner
lingo), which is similar to the one found on the A64 and H3. The only
difference seems to be that support of MIPI CSI through a connected
MIPI CSI-2 bridge.

Add a compatible string for this variant.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/media/sun6i-csi.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/media/sun6i-csi.txt b/Documentation/devicetree/bindings/media/sun6i-csi.txt
index 0dd540bb03db..a2e3e56f0257 100644
--- a/Documentation/devicetree/bindings/media/sun6i-csi.txt
+++ b/Documentation/devicetree/bindings/media/sun6i-csi.txt
@@ -6,6 +6,7 @@ Allwinner V3s SoC features a CSI module(CSI1) with parallel interface.
 Required properties:
   - compatible: value must be one of:
     * "allwinner,sun6i-a31-csi"
+    * "allwinner,sun8i-a83t-csi"
     * "allwinner,sun8i-h3-csi"
     * "allwinner,sun8i-v3s-csi"
     * "allwinner,sun50i-a64-csi"
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
