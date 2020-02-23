Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E84BB169580
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 04:16:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JTWoNOxFOCWTTLUUg7uQ5rEIW0OTvpQhOI3U0gznmG4=; b=gv7QFayvExTqXh
	o2/nMUTH3ymlvoeTT5EXI6X4TQIjE7ZQioQMmDEXZEENuLQ9aJDYMagQSsBxh+UIDf1S7MNjouagl
	6MzMXxDyRXMY78gEvRH8U76jysZ+6JKwE/EBl8RpMM2mvmOvZ4Wqz6AQk2WKWItNq0VlTWdcclysa
	6k2n3Q5cDyzd3vpFuyqoaQLUg2s5zXotfujIRlJxA8DS01sS0DRecwIgKbNY50RV+MkHR2I+wv6Lq
	8Ri1PNV2RZ6XoVPCChCHXN9yK8WvDc9tCVca/nPh8xxAmn1XaU/2JXopj06I+y/szvgaGOaE4+qq0
	UWLIz2gktagdeayBXdFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5hl8-0007Qg-4h; Sun, 23 Feb 2020 03:16:46 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5hkh-0007GH-3N
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 03:16:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582427777; bh=cBWlfj++s2/S0YKuROSJoDR9+u4sdEc4wNQ7e2Fs0jY=;
 h=From:To:Cc:Subject:Date:References:From;
 b=qkebOUzMI3/k2FfAPeGVxwK3frmTSAeccUBgAEAh8GHxNjg84YQylgMLeVYA+cxsF
 LfM2f4DBfi/SBolGyZTChppIGnxvDGfYn8Tl+QrnPjfUxBqWyoxafME4YCoFmBKPVE
 LyWYDtb1x1vddjK0Ple3VBmEdv/MvSvR//ljZ31Y=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 2/3] dt-bindings: arm: sunxi: Add PocketBook Touch Lux 3
Date: Sun, 23 Feb 2020 04:16:13 +0100
Message-Id: <20200223031614.515563-3-megous@megous.com>
In-Reply-To: <20200223031614.515563-1-megous@megous.com>
References: <20200223031614.515563-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_191619_484969_02832037 
X-CRM114-Status: UNSURE (   7.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ondrej Jirman <megous@megous.com>, Mark Rutland <mark.rutland@arm.com>,
 Stephan Gerhold <stephan@gerhold.net>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Corentin Labbe <clabbe@baylibre.com>, Sunil Mohan Adapa <sunil@medhas.org>,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a new board name.

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 327ce67308237..7c4be977be37f 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -647,6 +647,11 @@ properties:
           - const: pineriver,mini-xplus
           - const: allwinner,sun4i-a10
 
+      - description: PocketBook Touch Lux 3
+        items:
+          - const: pocketbook,touch-lux-3
+          - const: allwinner,sun5i-a13
+
       - description: Point of View Protab2-IPS9
         items:
           - const: pov,protab2-ips9
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
