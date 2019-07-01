Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85DD15B95E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 12:49:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2HhWszE6PLTs8Rio4ZumamksUYQaK6XiIzKSeXs7vFc=; b=EnNmEW/wNwE6d+
	Ep4oDpeDfKEuLW1KiVb52gMSvbZ9Cy/ueLkDpzfoLXWhDsWMRr5X0Ux//Mmm+wEBY943UaJD81pCG
	Vs22KJZs9yjNbnp9dm70Qbr0KqnVgqWdfI9YvkBtbiXQ8ZWJKZeAY68v1J4R5PJGMr0x/nBWQLVGt
	qz+JIEGIY2pCWI2EgOvf46abGD2r7tVByXNjewglwEAIF5S/PXvOzCkAiUfA1c1s7Ltt697OvHNdL
	cXBGTcKBqUFyeHjEnQnxpYYE7aLNT2GSH5PCyEfhcbMw23is83sp2KJd2daeAQBRTnvS5owHvFup3
	ZDIivkSLHwPfz4UcKPrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhtsd-0000DE-4C; Mon, 01 Jul 2019 10:49:51 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhtqP-0006fV-1N
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 10:47:37 +0000
Received: by mail-wm1-x343.google.com with SMTP id c6so15401036wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 03:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MHTJ257kdPP2T0j92u2xSaWnQO7aRf9hGbv+c9l6pxM=;
 b=VFZrfRQ1F0iwy+14EMyBHVHHM3dPYVsVYIq1rXoHN6fFnW+W8hmKNQ7soUw1ak0be7
 4691jHA+qEJU4qfw4xoKufSACls4wAxo2FRRQVWIWBM7kb4Wj0WVCiEeYShwaxUqsK64
 djk32jQQkE4bSOx0OpOS//c5qraxGSmseV4lHJXwi/MvzyH4LnhqDOOditZlNZNoXw+J
 ym+9OuFBbWTsqLWsCo9ZKZl8RqknErs3PoeM37wlrlDbdVgGMG+iU466lGUkQzPHmLAg
 WtPtyfs+HUNdr1nXtcRYNMNEUQ0DFJ2gcSUdyvShP+rk+nIAqthppc1dQgVk97n61bum
 +elQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MHTJ257kdPP2T0j92u2xSaWnQO7aRf9hGbv+c9l6pxM=;
 b=SJ5ZLIcr9QFdyxl1DW9y+YZOg4tDN+bYOjf7tjNHakf6CUnEdLaMIiCVSUNO4XLokc
 P981pZ+en8Y20FbQwU1o+cCz3x5eAvO48eYX+t99owo1V+ktmvl8/uRjoRUocmiwJ1NG
 9in1yf2oQBo/Kb57ssDRtPS0f2GAD2/SxWrXM8QYBTcXP0+Zb/l9rYZ4+Y+WZ9EOhzCo
 C2DLcZIqXOlheSonFzjUfxWtLTNnAS2ZC4QV6Z7JEdxQF+GKBasfqz+SAv2Et6Gbqx94
 LO9X3Za1MZzbKV6ezcpWPCk7bYcqvPH9KnmhpnUTp0JTXjK3lnSb4xlQj1NKBuQ8Uuj4
 0Yag==
X-Gm-Message-State: APjAAAVDQgdS2KEgUGILHGZpQSaAb0ZDILya7VJipuj5vIZrcumHfTAy
 167MC15QCqGJrS40hQQESr2SGA==
X-Google-Smtp-Source: APXvYqxo4flzhYOz0OrHaqCdbrMX3sdAJGvFI0sixUo7zYPrRJ8p4Kl9rrP13WwllpyHoZzl7aNzDA==
X-Received: by 2002:a1c:9cd1:: with SMTP id
 f200mr16321534wme.157.1561978051524; 
 Mon, 01 Jul 2019 03:47:31 -0700 (PDT)
Received: from localhost.localdomain (176-150-251-154.abo.bbox.fr.
 [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id d24sm11658802wra.43.2019.07.01.03.47.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 01 Jul 2019 03:47:30 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com, khilman@baylibre.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: [RFC 07/11] dt-bindings: media: meson-ao-cec: add SM1 compatible
Date: Mon,  1 Jul 2019 12:47:01 +0200
Message-Id: <20190701104705.18271-8-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190701104705.18271-1-narmstrong@baylibre.com>
References: <20190701104705.18271-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_034733_130503_0D1E66BC 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add AO-CEC compatible string for the Amlogic SM1 SoC family,
a derivate of the G12A AO-CECB controller.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 Documentation/devicetree/bindings/media/meson-ao-cec.txt | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/meson-ao-cec.txt b/Documentation/devicetree/bindings/media/meson-ao-cec.txt
index c67fc41d4aa2..ad92ee41c0dd 100644
--- a/Documentation/devicetree/bindings/media/meson-ao-cec.txt
+++ b/Documentation/devicetree/bindings/media/meson-ao-cec.txt
@@ -5,10 +5,12 @@ to handle communication between HDMI connected devices over the CEC bus.
 
 Required properties:
   - compatible : value should be following depending on the SoC :
-	For GXBB, GXL, GXM and G12A (AO_CEC_A module) :
+	For GXBB, GXL, GXM, G12A and SM1 (AO_CEC_A module) :
 	"amlogic,meson-gx-ao-cec"
 	For G12A (AO_CEC_B module) :
 	"amlogic,meson-g12a-ao-cec"
+	For SM1 (AO_CEC_B module) :
+	"amlogic,meson-sm1-ao-cec"
 
   - reg : Physical base address of the IP registers and length of memory
 	  mapped region.
@@ -16,9 +18,9 @@ Required properties:
   - interrupts : AO-CEC interrupt number to the CPU.
   - clocks : from common clock binding: handle to AO-CEC clock.
   - clock-names : from common clock binding, must contain :
-		For GXBB, GXL, GXM and G12A (AO_CEC_A module) :
+		For GXBB, GXL, GXM, G12A and SM1 (AO_CEC_A module) :
 		- "core"
-		For G12A (AO_CEC_B module) :
+		For G12A, SM1 (AO_CEC_B module) :
 		- "oscin"
 		corresponding to entry in the clocks property.
   - hdmi-phandle: phandle to the HDMI controller
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
