Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 578BE1302FB
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 16:22:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=S8/BS+5DPEnYdx5rEQ1hX7Xbnx5Z/vt8n52CF4joklQ=; b=VGrp6FayB9Z+DyV95QGlyHYSf2
	4vAAqfMehPQqKePHLKMRf/UUyKnggHfUlKZbTMfhSkDf+1iQAcl5FXa8Bb7n91Epj7EY+qrLHyE3E
	1GyX91IILhfCM4RbTIU6orsB2tOSKW/ieLZVEfcZxi0r70hzQIwsJwauKfxiqkMgjWSkRCizlcAwL
	yactO6bB2hUcOfggwB//zmdcPfaEE9U7HaCz3CJ81ANKEOruqWiP99/4ZcYVzrl4xVfp15IDr1rcw
	n8/ToGh2sic8l2XbM9ZAokCSxAUdhtvK3ptgR3Tpc0YRQ3lz40MOPkdcmfXwCPQZD8orRU3wYyE2c
	V/i0KYuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inlFO-0000qy-Sd; Sat, 04 Jan 2020 15:21:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inlFH-0000qR-6M
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 15:21:44 +0000
Received: from localhost.localdomain (unknown [194.230.155.149])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EE35521734;
 Sat,  4 Jan 2020 15:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578151302;
 bh=CHtvmJmJTYA2XWUU5fS02RD4y82wxxLkb2gjothw9tA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RDzsuAq+nYsQO29qCBhBO9FjDxx618JMRr5D9o92vqiVferDfQLcLqEQ4DQLlo662
 lOS1FuuNWrW746XfRQkDHYBm+qU74NPgWbr0sfR0D5d/LCUydagdMTpGK/ePGLoHSH
 m8R1KB9m4f/U8yUJSFYwB611Byd98e61/IgMyJ3M=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 01/20] dt-bindings: Rename Exynos to lowercase
Date: Sat,  4 Jan 2020 16:20:48 +0100
Message-Id: <20200104152107.11407-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200104152107.11407-1-krzk@kernel.org>
References: <20200104152107.11407-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_072143_273878_811E861E 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Kamil Debski <kamil@wypas.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix up inconsistent usage of upper and lowercase letters in "Exynos"
name.

"EXYNOS" is not an abbreviation but a regular trademarked name.
Therefore it should be written with lowercase letters starting with
capital letter.

The lowercase "Exynos" name is promoted by its manufacturer Samsung
Electronics Co., Ltd., in advertisement materials and on website.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v1:
1. New patch
---
 .../devicetree/bindings/media/exynos-jpeg-codec.txt         | 2 +-
 Documentation/devicetree/bindings/media/exynos5-gsc.txt     | 2 +-
 Documentation/devicetree/bindings/media/samsung-fimc.txt    | 2 +-
 .../devicetree/bindings/media/samsung-mipi-csis.txt         | 2 +-
 Documentation/devicetree/bindings/phy/samsung-phy.txt       | 6 +++---
 5 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/exynos-jpeg-codec.txt b/Documentation/devicetree/bindings/media/exynos-jpeg-codec.txt
index 38941db23dd2..ce9a22689e53 100644
--- a/Documentation/devicetree/bindings/media/exynos-jpeg-codec.txt
+++ b/Documentation/devicetree/bindings/media/exynos-jpeg-codec.txt
@@ -1,4 +1,4 @@
-Samsung S5P/EXYNOS SoC series JPEG codec
+Samsung S5P/Exynos SoC series JPEG codec
 
 Required properties:
 
diff --git a/Documentation/devicetree/bindings/media/exynos5-gsc.txt b/Documentation/devicetree/bindings/media/exynos5-gsc.txt
index bc963a6d305a..1872688fa408 100644
--- a/Documentation/devicetree/bindings/media/exynos5-gsc.txt
+++ b/Documentation/devicetree/bindings/media/exynos5-gsc.txt
@@ -1,6 +1,6 @@
 * Samsung Exynos5 G-Scaler device
 
-G-Scaler is used for scaling and color space conversion on EXYNOS5 SoCs.
+G-Scaler is used for scaling and color space conversion on Exynos5 SoCs.
 
 Required properties:
 - compatible: should be one of
diff --git a/Documentation/devicetree/bindings/media/samsung-fimc.txt b/Documentation/devicetree/bindings/media/samsung-fimc.txt
index 48c599dacbdf..f91b9dc80eb3 100644
--- a/Documentation/devicetree/bindings/media/samsung-fimc.txt
+++ b/Documentation/devicetree/bindings/media/samsung-fimc.txt
@@ -1,4 +1,4 @@
-Samsung S5P/EXYNOS SoC Camera Subsystem (FIMC)
+Samsung S5P/Exynos SoC Camera Subsystem (FIMC)
 ----------------------------------------------
 
 The S5P/Exynos SoC Camera subsystem comprises of multiple sub-devices
diff --git a/Documentation/devicetree/bindings/media/samsung-mipi-csis.txt b/Documentation/devicetree/bindings/media/samsung-mipi-csis.txt
index be45f0b1a449..a4149c9434ea 100644
--- a/Documentation/devicetree/bindings/media/samsung-mipi-csis.txt
+++ b/Documentation/devicetree/bindings/media/samsung-mipi-csis.txt
@@ -1,4 +1,4 @@
-Samsung S5P/EXYNOS SoC series MIPI CSI-2 receiver (MIPI CSIS)
+Samsung S5P/Exynos SoC series MIPI CSI-2 receiver (MIPI CSIS)
 -------------------------------------------------------------
 
 Required properties:
diff --git a/Documentation/devicetree/bindings/phy/samsung-phy.txt b/Documentation/devicetree/bindings/phy/samsung-phy.txt
index 1c40ccd40ce4..7510830a79bd 100644
--- a/Documentation/devicetree/bindings/phy/samsung-phy.txt
+++ b/Documentation/devicetree/bindings/phy/samsung-phy.txt
@@ -1,4 +1,4 @@
-Samsung S5P/EXYNOS SoC series MIPI CSIS/DSIM DPHY
+Samsung S5P/Exynos SoC series MIPI CSIS/DSIM DPHY
 -------------------------------------------------
 
 Required properties:
@@ -27,7 +27,7 @@ the PHY specifier identifies the PHY and its meaning is as follows:
 supports additional fifth PHY:
   4 - MIPI CSIS 2.
 
-Samsung EXYNOS SoC series Display Port PHY
+Samsung Exynos SoC series Display Port PHY
 -------------------------------------------------
 
 Required properties:
@@ -38,7 +38,7 @@ Required properties:
 		      control pmu registers for power isolation.
 - #phy-cells : from the generic PHY bindings, must be 0;
 
-Samsung S5P/EXYNOS SoC series USB PHY
+Samsung S5P/Exynos SoC series USB PHY
 -------------------------------------------------
 
 Required properties:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
