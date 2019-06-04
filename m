Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 733C434AD3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 16:48:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dWD5RSfMug4I2OBzuMftVTHaknQfGaIf4MZXsa5Kmnk=; b=OOhvqQguhnyrjId/DbNbxtuHWd
	8f1U/llRlHqJCIXk9q6vq5HvUT4FKesz2ocdvglSSTXQn771mEiXNdWvEVfH3qNQm9oR1Yc/QrbzJ
	7LC9xCUjgarnO4n1o6DAuIyZQ/PwqO/p8qCr2eFJh7iTZnZZknFbKFQMg3edRZ9XHiXnSzzFVr8hw
	LYprGF1l02vo8JJU9seQC2M0utbZKgP+aX+0wf0AxdslPqko98KNyrUXQV4Yl2hWQBBRV9R7GvqY2
	Dfoup74FVG7wR+aXaw3Jja0idT7V5twQS+MNmE9QqwWA009kWrCfL7gbzmig5hRSaduOsrG0cX0ss
	eogPLqMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYAjD-0000CZ-Pg; Tue, 04 Jun 2019 14:47:55 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYAiq-0008G6-FD
 for linux-arm-kernel@bombadil.infradead.org; Tue, 04 Jun 2019 14:47:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bLDsai7BCDJ9/WAFUmOmDJ4D/4W6/bXgG+qdhNwcZhk=; b=2HKuP+tn7HjMdYlqVQ1z89Uly
 uXmJALO95SDlwpKzDJVneC2TLSqaRL/+vyu/xphr6ERQWmeATlX6JwNrTm35thvMHh6g1cxHbH4pC
 hGJeFoGQdWqjhBHyjGDLCqtdyTtR5PE4mzppUNCUVwCRCGfE1JP910H0IfhMHVCpzmpJ7T5+Ftb4R
 IEe0px4ZkdZdVDXz5cPw6ci6wWRvyvelE/6p4rGBQQDPL3jLPUNNkvpiF9acIFmiOtQSEsS35UxKL
 CeCcYldBVX1tquMeBL04GcNn+lqJ8HSjtuBDFk0DRB/PqKAaOKbjS1Ub+zVfqRVCRHJHoERIzCo+V
 f2Lf7q2og==;
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYAii-0006Ty-LO
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 14:47:28 +0000
Received: by mail-wr1-x442.google.com with SMTP id c2so16146589wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 07:47:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bLDsai7BCDJ9/WAFUmOmDJ4D/4W6/bXgG+qdhNwcZhk=;
 b=iNBvPjb5Qy21/12AvtkoRo4IHAm41Wg4Vk0nBhVKAQXzW/FfWktrlAJB1cx60YTjZN
 pYT8vqd6X/6JxxL9Q2aDSrZhJTO8FGCMZjYSJ5YlrT0gcbOLrUoxbTCpOJhoo0WVj4uS
 qaihsQHl5/DKak5ZC4VFsTKtIgy1bcly73SbJxXYkhpOuPjvu72uV4TFbFhLE4u3db1x
 XBPLS2/aV/kZr/v/fqELn48ZEdCAlNPLQJ879P7p7ggyomOArRwgIWvmJZa1MtjT8tc2
 kZ2WrTjGxBjbXU7Ioqw6JIRq/dfUL+mD1M9xuYkST96HZDAcr4mgLkbPuWKE5Xr5iIM5
 KumQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bLDsai7BCDJ9/WAFUmOmDJ4D/4W6/bXgG+qdhNwcZhk=;
 b=fopm61pYp1vMF9/qAlFyA36KJ3SZXM1cTfYEPEuWWyV34b4CjkX0R5rKjhkNuZvOwd
 O0XaMwH5PSVlbqXkE/CGikOBrSDZXMEzHwgJVzgFnKq4nbMfzSiNtKMQ4AiUyEBoMwXf
 4ZdBs6MohWxuUmw9Ix/d3cTERVw9NOdub1BeA0mDOvg7wVx6mEoafsG4823ScX79fubv
 drhhgclyxhc8l6NJteOsfm8ocGwNRNT7+yNEj4Dvy6wpQk/1JGOM96HLu3z+g5e3ofau
 qoHAkWzEfUJZnSyjVpyUBsGdXzZm1T0jHtr690kFdfxHJGY333uZO/OwYIC+zQkzY3OM
 ELRQ==
X-Gm-Message-State: APjAAAXZeZFVG0HGSDkAQgL7ry4Wvihx7ijOfgmzbMqKEUBi1UOngJsA
 696ysm2t/nd5jJ2bBlHS7JEmGg==
X-Google-Smtp-Source: APXvYqw4x2gWBkZ94JwAp/u/xenQcH6trywYc6ypCThQKgduCn+6apBhkSU1BFXr5dezDKoFoQcCDw==
X-Received: by 2002:a5d:62c9:: with SMTP id o9mr19704199wrv.186.1559659638823; 
 Tue, 04 Jun 2019 07:47:18 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id v184sm3649639wme.10.2019.06.04.07.47.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 07:47:18 -0700 (PDT)
From: Guillaume La Roque <glaroque@baylibre.com>
To: jic23@kernel.org,
	khilman@baylibre.com
Subject: [PATCH 2/3] arm64: dts: meson: g12a: add temperature sensor node
Date: Tue,  4 Jun 2019 16:47:13 +0200
Message-Id: <20190604144714.2009-3-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604144714.2009-1-glaroque@baylibre.com>
References: <20190604144714.2009-1-glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_104724_803291_3B7E3479 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add two temperature sensor
the first near CPU and GPU, second near DDR

Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 22 +++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index 840dab606110..37f17087bdb1 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -1360,6 +1360,28 @@
 				};
 			};
 
+			cpu_temp: temperature-sensor@34800 {
+				compatible = "amlogic,meson-g12a-cpu-tsensor",
+					     "amlogic,meson-g12a-tsensor";
+				reg = <0x0 0x34800 0x0 0x50>;
+				interrupts = <GIC_SPI 35 IRQ_TYPE_EDGE_RISING>;
+				clocks = <&clkc CLKID_TS>;
+				status = "okay";
+				#io-channel-cells = <1>;
+				amlogic,ao-secure = <&sec_AO>;
+			};
+
+			ddr_temp: temperature-sensor@34c00 {
+				compatible = "amlogic,meson-g12a-ddr-tsensor",
+					     "amlogic,meson-g12a-tsensor";
+				reg = <0x0 0x34c00 0x0 0x50>;
+				interrupts = <GIC_SPI 36 IRQ_TYPE_EDGE_RISING>;
+				clocks = <&clkc CLKID_TS>;
+				status = "okay";
+				#io-channel-cells = <1>;
+				amlogic,ao-secure = <&sec_AO>;
+			};
+
 			usb2_phy0: phy@36000 {
 				compatible = "amlogic,g12a-usb2-phy";
 				reg = <0x0 0x36000 0x0 0x2000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
