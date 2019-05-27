Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C525F2B3FA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 14:03:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e/kgSIB9umqrkNmtVYVGEmIiWRkFiaicxxqBtOj+VuI=; b=IRaP+UcXlTSF6U
	kTecwLUDQuhzYS+5Wx6pw/g3NtNRvd4wycfMTJJV6mY/2KkySQ55UUUwue1HdAMnRXEVtdSH2qFMz
	Cjwi+yg8PBH0zq0ZxOtn9nKCUk4bc7kcwVmFAs2c+KmVvlgyQ2juICX0qku0oSEWtLmsA9O0JOF0q
	SEIvL2nZ0irbip1qU7aaSfK2MvBeyJDfi1YMdbAsXbqRJ+KUc7pv+14YqjfpjtUOB2d4PGk6fzrTv
	IF4+culg1mbIeNs4JguCXybsijuR8sS+NOqjhCp104US6R7tplEzPUnyd1uQw8J6HvA5vceXmmQp9
	h0nS+bSAIERsWeIFx5jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVELT-0005XC-9A; Mon, 27 May 2019 12:03:15 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEJs-0004Am-UA
 for linux-arm-kernel@bombadil.infradead.org; Mon, 27 May 2019 12:01:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W6TVe7vE2VNpWtzR2Tlpcx3iJRnZ1fsgeG/ZHGvd21I=; b=R0o9tlNd8Ls4M8UkMn6ZznXBmG
 Ovh93OuthoYYNr4PEVGjWC1k3q1MWde5J2iNIy2TS4cY6ifloFfOG/A5CJQeuf8uoA8pzu/GAUbzV
 OYzL/Hc3OEa9ABAGtQeJslcTd8KO8h8DXnFrEe6xOLFaNYEX4qlj82/iN3wsPDbUTPPM4L41BmG91
 3p2wzOHoupEaEFq779m2bfIVXATWRTB4r1IeBokH2mcE68H4DaRBgP6HGWRcSeneOqvVXq+KW/5aj
 ZRIzsfM9zDbPGB8wJUdRLXcG8Eky7oM+j+ffPIO/VebB+9KuoktY6Gyz6XT97odevBuc5Rde/+aIM
 TDQ3SwLg==;
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEJp-0002to-IM
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 12:01:34 +0000
X-Originating-IP: 90.88.147.134
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id C9057FF807;
 Mon, 27 May 2019 12:01:00 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH 08/10] ARM: dts: sun6i: Add external crystals accuracy
Date: Mon, 27 May 2019 14:00:40 +0200
Message-Id: <0b46e2c493cdab00ceef6e35dfef0cc869f14fa3.1558958381.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <290402405a34506997fd2fab2c4c1486dbe6b7e5.1558958381.git-series.maxime.ripard@bootlin.com>
References: <290402405a34506997fd2fab2c4c1486dbe6b7e5.1558958381.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_080133_868251_9D142738 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The A31 datasheet mandates oscillators accuracy to be within 50ppm. Let's
add that accuracy to their device tree nodes.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 arch/arm/boot/dts/sun6i-a31.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/sun6i-a31.dtsi b/arch/arm/boot/dts/sun6i-a31.dtsi
index 8832650cdc8d..f564ba9a9c2d 100644
--- a/arch/arm/boot/dts/sun6i-a31.dtsi
+++ b/arch/arm/boot/dts/sun6i-a31.dtsi
@@ -216,6 +216,7 @@
 			#clock-cells = <0>;
 			compatible = "fixed-clock";
 			clock-frequency = <24000000>;
+			clock-accuracy = <50000>;
 			clock-output-names = "osc24M";
 		};
 
@@ -223,6 +224,7 @@
 			#clock-cells = <0>;
 			compatible = "fixed-clock";
 			clock-frequency = <32768>;
+			clock-accuracy = <50000>;
 			clock-output-names = "ext_osc32k";
 		};
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
