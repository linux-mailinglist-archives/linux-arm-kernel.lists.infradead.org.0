Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18684B3E11
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 17:48:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fFv2mg+0W8vyMHERlSg/aTum7c73HP2zCnF9v3e4mhk=; b=txFeMLLXZ9uD7NfpZTPpaRjeEK
	qrQQi9fJ1r4Gry3MYLi/kw5OiQS/2t74dATcu3k7ZtZEuxUW8ASyLpw7MhffumW7rZckUEpy1ck8t
	vmHZwfzvi6U+zyWYSVs1brZtwHEugF2ImjArF/9k8Lh5/Vkt4F39Dwh67aVEudppxY8JW739dh7cy
	rm1LMMTS3VhGwKNd1DoIGW/Se2kzqgchd5O0kKWjcrWAxJyLcjLSDqSl70O5WmtwbDL/0LH4TRqr2
	hUZefT49SWUN3bUfW3CpAf4SmGEWaQ7LS1eyc8tDuucrlU87RnxhtUc3bxAkJtSIwM4yQ26KTDtsh
	TiJJvi0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9tEd-0007mS-Fi; Mon, 16 Sep 2019 15:48:15 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9tD5-0006qc-7B
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 15:46:42 +0000
Received: by mail-pg1-x544.google.com with SMTP id a3so205744pgm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 08:46:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=nH4eH2+AdUUr/ixPubTt3rBpS2s2N2X/tbfYHc3R6f8=;
 b=koaQCYI/sf25OYQBe6JaYlxFU6qwSJ6+tixnBZk1pjOixcbOlAxK7u4fn4kIT6+6hI
 88SnbXzYYqNKQHlHSm4Ft6hrDz6/OetP2zU+wLoEMdxnZXyVjv8ivHmSnrvDaZCJA9B8
 e7KAjxcmSFiDkte8Vk3dmfv5n5UPxHmfUmddq1hiRWXXXZhgILD+pHM8NW2ZO1PpD84N
 8a/WgV1TsGUXohhn0e+5t96CIzyLTTqukq5noEpz7tWs9uzTxGZwWrmw+QyPj8JthLup
 kxpkHUb35LLJMj1mqf40/xzu4gxj0Qg2RgMOdaIxQbOomnK1xQyEomnf2arLyPE9SHqK
 yCKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=nH4eH2+AdUUr/ixPubTt3rBpS2s2N2X/tbfYHc3R6f8=;
 b=ET2ocNsLHV7LmONK76jGGhDiGgsMINaFstJI/7L9k/uwZRpdYnCjyzoQi6mIWCtzjF
 hhJA1GXb0N5CclHLTtge92jh1eLV4AnnAeGn7HBJ3dCanu2V1z/AP5pHtx71gyFhtbgc
 Ny8XgbfWcsOw37lzHsPTCnrF7qeLAmrdoPix2DF8AsTYxL+/Li7JMdvZLPDb/mxTLCdD
 ZZ/wBqGoVCfpOhuov5rcZ3OZjIavwnHbhKtExrG0WV+W9mrwLIO5UdKbwe3rAZQtSRU3
 o1H3lfoTBIVtv4/pDPlFsYsFOBIlxDnKQEJAsDt7uKX+kmnYbmFX3/nH5Y1KXmG8jFwU
 pr4g==
X-Gm-Message-State: APjAAAWQ7GP/lvtboqZXZyGarndgAeGBCfMyjnPfADRuMJOuuxWth1Xt
 UyxILm+rvb7HYR0UOoPrYwB2
X-Google-Smtp-Source: APXvYqwKsIFOyVxPhtB9/lB5tMMNYxPewwQo1OQ0Cb2lCA89/PcUjm4K5MHqTG+d8DctO+IY68pL0A==
X-Received: by 2002:a63:31c6:: with SMTP id
 x189mr19821528pgx.240.1568648798287; 
 Mon, 16 Sep 2019 08:46:38 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:90b:91ce:94c2:ef93:5bd:cfe8])
 by smtp.gmail.com with ESMTPSA id
 s5sm36227670pfe.52.2019.09.16.08.46.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 08:46:37 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: ulf.hansson@linaro.org, afaerber@suse.de, robh+dt@kernel.org,
 sboyd@kernel.org
Subject: [PATCH v4 4/7] arm64: dts: actions: Add uSD and eMMC support for
 Bubblegum96
Date: Mon, 16 Sep 2019 21:15:43 +0530
Message-Id: <20190916154546.24982-5-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190916154546.24982-1-manivannan.sadhasivam@linaro.org>
References: <20190916154546.24982-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_084639_400950_42B993ED 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linus.walleij@linaro.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, thomas.liau@actions-semi.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add uSD and eMMC support for Bubblegum96 board based on Actions Semi
S900 SoC. SD0 is connected to uSD slot and SD2 is connected to eMMC.
Since there is no PMIC support added yet, fixed regulator has been
used as a regulator node.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../boot/dts/actions/s900-bubblegum-96.dts    | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/arch/arm64/boot/dts/actions/s900-bubblegum-96.dts b/arch/arm64/boot/dts/actions/s900-bubblegum-96.dts
index 732daaa6e9d3..59291e0ea1ee 100644
--- a/arch/arm64/boot/dts/actions/s900-bubblegum-96.dts
+++ b/arch/arm64/boot/dts/actions/s900-bubblegum-96.dts
@@ -12,6 +12,9 @@
 	model = "Bubblegum-96";
 
 	aliases {
+		mmc0 = &mmc0;
+		mmc1 = &mmc1;
+		mmc2 = &mmc2;
 		serial5 = &uart5;
 	};
 
@@ -23,6 +26,24 @@
 		device_type = "memory";
 		reg = <0x0 0x0 0x0 0x80000000>;
 	};
+
+	/* Fixed regulator used in the absence of PMIC */
+	vcc_3v1: vcc-3v1 {
+		compatible = "regulator-fixed";
+		regulator-name = "fixed-3.1V";
+		regulator-min-microvolt = <3100000>;
+		regulator-max-microvolt = <3100000>;
+		regulator-always-on;
+	};
+
+	/* Fixed regulator used in the absence of PMIC */
+	sd_vcc: sd-vcc {
+		compatible = "regulator-fixed";
+		regulator-name = "fixed-3.1V";
+		regulator-min-microvolt = <3100000>;
+		regulator-max-microvolt = <3100000>;
+		regulator-always-on;
+	};
 };
 
 &i2c0 {
@@ -241,6 +262,47 @@
 			bias-pull-up;
 		};
 	};
+
+	mmc0_default: mmc0_default {
+		pinmux {
+			groups = "sd0_d0_mfp", "sd0_d1_mfp", "sd0_d2_d3_mfp",
+				 "sd0_cmd_mfp", "sd0_clk_mfp";
+			function = "sd0";
+		};
+	};
+
+	mmc2_default: mmc2_default {
+		pinmux {
+			groups = "nand0_d0_ceb3_mfp";
+			function = "sd2";
+		};
+	};
+};
+
+/* uSD */
+&mmc0 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc0_default>;
+	no-sdio;
+	no-mmc;
+	no-1-8-v;
+	cd-gpios = <&pinctrl 120 GPIO_ACTIVE_LOW>;
+	bus-width = <4>;
+	vmmc-supply = <&sd_vcc>;
+	vqmmc-supply = <&sd_vcc>;
+};
+
+/* eMMC */
+&mmc2 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc2_default>;
+	no-sdio;
+	no-sd;
+	non-removable;
+	bus-width = <8>;
+	vmmc-supply = <&vcc_3v1>;
 };
 
 &timer {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
