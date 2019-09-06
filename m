Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9C3AB837
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 14:33:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bBgRwmhqAfGODccAeKA2NcpO8fnuCQDDqynT+d6P/jk=; b=UfqJpgWkB2g5ww
	scX1bUfhrW3uysCJm6o6YlDTC+sQQW7CuCjoeEnJNJrAqLvk64OmQuO/A+ZrXHGUXVAdsSn6IEju+
	FEjxDBFrAPHL6/BJ2aCyqrGsu1cEPjk0M3gNU7pNwV0vUKa8z+Rr9whHSJqb7/piA2eu7c/IgYPOf
	c+zkolZGTp7c1LrL2/XPkaGnHgI5tfO0xGcKB48x5xNEVv0nbsbq0M5Be0kffjeBvJViF8HS/QdWO
	k4W/pN10hrcEgtXxYdzU8jD3Pq+xNw3XYnhLO7hi8nuR7RSe8ueDTK5k8R2TixWBOlFQl2oYhXsqL
	6DoZe1CVF4zPdmKG4ifQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6DQi-0001ez-4L; Fri, 06 Sep 2019 12:33:32 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6DQZ-0001dw-Vs; Fri, 06 Sep 2019 12:33:25 +0000
Received: by mail-pl1-x644.google.com with SMTP id bd8so3084201plb.6;
 Fri, 06 Sep 2019 05:33:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vGfjddqvpRFJCrBIPxEpBGcV3pVBssJwGgtFL9Le0kA=;
 b=Bdt98gm5oqea5uLdu8RYPixSg1ZQwKdmeABnC6snkO69Jlb7mS5e8vFkpHhE1x0dyi
 HhON2KNE6ylCWbUYp3PXFTLtZ7qtKxMAWUVSXTlszuD9dJ+MeIVkaRRWwTEkQ2WVRmDc
 Ek6EWmGrDD8Xym8avPsGdl88FlQFFvqUu52LrEqVfzU1Sjd5r2PNHded82c1qpY1mE6O
 OhOQg7bjI4DXA8IWCVgEyMU54p+1frp/fyDbWIPDVRD6EvyVd5eZhs6hZHEh/Lhof0HH
 nPpEL+R14Hym2/rvvn5RdKIjEXVmSws13/cHSKoyALu5x/xIKkaaJUAndl1cnXIZ7IXo
 yPGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vGfjddqvpRFJCrBIPxEpBGcV3pVBssJwGgtFL9Le0kA=;
 b=MNOTAGQVPhpo3dvCvD2iF4bDekxLtwqCw3cUczHtCtny5ktvUsk6cW9IdPOv2Q2HAz
 ciMepd3b8tcw+ZBlxptXIAqLnMjhkxRXUKtWuq9EJafjlrk2Oz0UCIAkogwfBLcHqpUx
 vxN4MYvUhVE7FpDMhMst3v8wGvgS3tcyFasRTn/UdVI1apyGjwAUQIeCToeqhsoQ55Td
 1EwFS+5ZJPFe1U/4CYqqGD3u3yrDaKBVuKr0iwSR5u4sTxVfFCc16xFbzU4t5nW04tmo
 XQ3uY1K0mIDM2It0PFFjEtn0d7QKUBXMSNzT1a8WsXzOoEZEQHIKp6b8eQGeCf/0VCKL
 yFFg==
X-Gm-Message-State: APjAAAWCVFTxQWuPjI2CKydHZoheEGBIX4ctUC3Dhxltdta8aFu6/7Gu
 79T64RvCx7B9kKOZeM5qnXA=
X-Google-Smtp-Source: APXvYqxPoCY0Iputq8fkikyBk2Nk0t4gfljXTYb5kbWgW/LosC9l/1+fqNEgth+XX7w5vr2UL9TNIA==
X-Received: by 2002:a17:902:e60d:: with SMTP id
 cm13mr8790686plb.178.1567773203464; 
 Fri, 06 Sep 2019 05:33:23 -0700 (PDT)
Received: from localhost.localdomain ([45.114.62.203])
 by smtp.gmail.com with ESMTPSA id h70sm4752933pgc.36.2019.09.06.05.33.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Sep 2019 05:33:23 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>
Subject: [PATCHv3-next 1/3] arm64: dts: meson: odroid-c2: Add missing
 regulator linked to P5V0 regulator
Date: Fri,  6 Sep 2019 12:32:57 +0000
Message-Id: <20190906123259.351-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190906123259.351-1-linux.amoon@gmail.com>
References: <20190906123259.351-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_053324_022164_F34D64B4 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As per schematics VDDIO_AO18, VDDIO_AO3V3/VDD3V3 DDR3_1V5/DDR_VDDC:
fixed regulator output which is supplied by P5V0.

Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
Changes from previous.
patchv1.
- drop the rename and linking vcc3v3 regulator node.
- fix the typo spelling.
patchv2.
- change the vddc_ddr node name to ddr3_1v5 as per Martin's suggestion
- Added Matrin's and Neil's Reviewed-by.
---
---
 .../boot/dts/amlogic/meson-gxbb-odroidc2.dts  | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
index 3e51f0835c8d..9ea336c33d00 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
@@ -111,6 +111,36 @@
 		regulator-max-microvolt = <3300000>;
 	};
 
+	vddio_ao1v8: regulator-vddio-ao1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "VDDIO_AO1V8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+		/* U17 RT9179GB */
+		vin-supply = <&p5v0>;
+	};
+
+	vddio_ao3v3: regulator-vddio-ao3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "VDDIO_AO3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		/* U11 MP2161GJ-C499 */
+		vin-supply = <&p5v0>;
+	};
+
+	ddr3_1v5: regulator-ddr3_1v5 {
+		compatible = "regulator-fixed";
+		regulator-name = "DDR3_1V5";
+		regulator-min-microvolt = <1500000>;
+		regulator-max-microvolt = <1500000>;
+		regulator-always-on;
+		/* U15 MP2161GJ-C499 */
+		vin-supply = <&p5v0>;
+	};
+
 	emmc_pwrseq: emmc-pwrseq {
 		compatible = "mmc-pwrseq-emmc";
 		reset-gpios = <&gpio BOOT_9 GPIO_ACTIVE_LOW>;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
