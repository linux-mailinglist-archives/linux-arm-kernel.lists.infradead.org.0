Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 426B82B657
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 15:24:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TCFdvvx18Hh9pOloK4csUaIIuZnQDiLDIMb43UEyoqQ=; b=Cm4n657tjuV6iN
	1zxkznUGldExZvIrj1Xdch71YLLM3St1SmonfAFEnA8bdqxDjXeLpHSLqpXrBFo/tIPiymQK9xK/p
	MU2upHaRAciWasTgiDiZSp9zb8qMHR3vySoPuuaYpDhmJ7XKKUpKuohfVKbkO8NouNxfBOAP30B3N
	zfFxNaHqy2Sov38I4EOtlP0ZrCHpHZFHG6z+VaUzua0jeO9XnETr0c/nCYRUQoJO9MJ+EDUoeGjD/
	tfnhP5zogUsog2MJrVtaFcxEN7KoawHMHsNi03aXAhZyIhyUehl+djp0IeHEo1FRq1vPHv4vdhDuF
	z9mR4W7+jhhjN64Yv59Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVFcC-0004aj-Hc; Mon, 27 May 2019 13:24:36 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVFZq-0002EF-W3
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 13:22:21 +0000
Received: by mail-wr1-x443.google.com with SMTP id l17so8527576wrm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 06:22:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4VtDGZ3OVSVw6HZggJOqUTRYqY5ZUaLIQ9cwARYH99A=;
 b=U3aDFZjkZXFYe7wNf6AFeyb2CzT8QJzBjLaQiB1ybT58exOolffDkQZVEQs9IwqDlR
 QupHWofac4pMpepiaHEoTBoAoDbCYUXpGZXPIAHJVsg6zrVjb/cSCHRMpR6uLZMrAIWk
 6rBE8L+83X9MjSsf0nrI/eChI1+CYF18c7AFPIb/WYqBGhWRRW4wCj9IwngIHnLdodiD
 vJcNQV1d2auvf/HD178QOgLZxp/OqkiTLwo7k2i+po9wNsk1Vih74NuIrIR3bKMaDjOQ
 clJSY0WBe8PP72dtaaKri3ykd9nxXqPJnaz84BsPl6+rXtGdeqp0Pso3z9BhRNexq2PC
 Yjug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4VtDGZ3OVSVw6HZggJOqUTRYqY5ZUaLIQ9cwARYH99A=;
 b=OKRzb4RzdDAtNy3Z0wmyB6bOteUDnx46EaZkrbu+RL7Uaqs5OcxshpraLnV9VTcG3N
 YzQ2EDg010WxMYsN6rFWsK4Q41eKVjs+Vleo9fNlUx6xDEZwtQHx7Q8g7CV+G/NropAE
 HZmSFRXOW02wyUnc1QdJUWyhc/eG4DsDeWWFgTVKWohiofShe+V6z1VzZ1U78qQon8T6
 0TRY7eApxf/wTRH/nRmcLT0ZWDVUf+zkKLxE+yiEdWT904gZpqkGokD29xCNV3LL+6kw
 KmDgWSagn1Ht0BmQPmH1oNvztlD2fX3Y8g2/uHdm1hHi5sew/nIGgJEDEJPRc+caYA7R
 AyxA==
X-Gm-Message-State: APjAAAXW5Tz28SSRdS+W9SAffFvAG+ta+v2aOUpSvfx4BsiDk9qVRK1f
 wM4g1FrhiDQFH6+QP9fP3dtdqA==
X-Google-Smtp-Source: APXvYqxf3k/7Wb+ZKnTinne4Kei3iMcPjtfcFlS1vpIpQ2xmpLUmTWkDcbZC/+3pmja1wPjdeR5u2w==
X-Received: by 2002:adf:ec8e:: with SMTP id z14mr45794613wrn.198.1558963329516; 
 Mon, 27 May 2019 06:22:09 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id l12sm7019836wmj.22.2019.05.27.06.22.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 27 May 2019 06:22:08 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 08/10] arm64: dts: meson-gxbb-vega-s95: enable SARADC
Date: Mon, 27 May 2019 15:21:58 +0200
Message-Id: <20190527132200.17377-9-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527132200.17377-1-narmstrong@baylibre.com>
References: <20190527132200.17377-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_062211_439826_C057C7DD 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, christianshewitt@gmail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add SARARC node and associated regulator to support reading the
ADC inputs on the Vega S95

Suggested-by: Christian Hewitt <christianshewitt@gmail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
index be8799653ad7..4d2aa4dc59e7 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
@@ -54,6 +54,13 @@
 		regulator-max-microvolt = <3300000>;
 	};
 
+	vddio_ao18: regulator-vddio_ao18 {
+		compatible = "regulator-fixed";
+		regulator-name = "VDDIO_AO18";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+	};
+
 	vcc_3v3: regulator-vcc_3v3 {
 		compatible = "regulator-fixed";
 		regulator-name = "VCC_3V3";
@@ -152,6 +159,11 @@
 	clock-names = "clkin0";
 };
 
+&saradc {
+	status = "okay";
+	vref-supply = <&vddio_ao18>;
+};
+
 /* Wireless SDIO Module */
 &sd_emmc_a {
 	status = "okay";
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
