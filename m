Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA563184369
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 10:12:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jkY4NwJBpZtie3NwhD42CjWiJpeQL1jYIxyvXyZ0pow=; b=MEqbnB3P3kcegK
	uF7Hq/wLbotU3xv+4eA+yYMi9J6V40jSxiQEjsfw4Ivhjg7naQTEJyxTVcOMBzm7nN9sMcKkV4eZ4
	Y5ewjX3N45fnAalRD7HQCAXL2g+kezY9DsPsO9yb1LOrKYzZZXyMzELrj/Y03Kv3JBLH0CmniiXkj
	k1+BB3dtzlP52vD13jwUj80eA1lYue7U5EbjjG0Mew+bSYt4+gNrfyWOwJsUY3TBec8QGTwx+JZsh
	TegXmWYQOEabEzvpXhaJ53pD8LFx07AhR/hEWWgNWQJY4kuYn2HMBY03LMTWrF5GKGjCS9bxbiYSr
	zODDI4Bf9DTavKKhe1Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCgMi-0001ZM-Td; Fri, 13 Mar 2020 09:12:24 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCgHr-0003ru-Sn
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 09:07:27 +0000
Received: by mail-wr1-x441.google.com with SMTP id a25so11076786wrd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 02:07:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Yoy0Boq040f9O0QHUfL99rfr3yZcYOtkMxHX2mJBUoI=;
 b=cCKgut1i8Sc+EKPT9DRFmKJrBypE/0XUpuzxQIHOMtV+E+MOlxyOuqm5Z4pGLVP971
 kvv3q1TgjWtqKM9jeZhNgb5ec9MOGKi+w5ry+E4RQLrxtRw1FH8jteBEe/tqJmtj9UL4
 V7eKJtym3FVR15PjDhy7+Kf2FjwjR5iA3ThwPmGT2nk+yoIHNgZidgJ8OLIX1kz36DbF
 HpVqtJFGyR8zzJ8kJLBxgIML6dZIWV5hOMVR5gHliu37f2kstA1mXrH5F4ploIAHUtKI
 yx9P3sAXan4JzAEJzbLqflO6ItYqJpJFx4OItfbk/Ic1Ss/fVRtBwict6neAU1fmfycs
 M8sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Yoy0Boq040f9O0QHUfL99rfr3yZcYOtkMxHX2mJBUoI=;
 b=jHzlECtTjbmXZQpLoQr/JRdl08Ea177pZlYr7eW8el6AS9obBvTaffsFhk5vN5Coyu
 ykWEUXdQ+rpSpkZcewumpcv9GtR12t/gfFZiWwMdgoLuP+Ople0xbIHoWT3nx0Iu27yS
 fDIz6AlBm2wJvjXrzOx+haj56QrzNX0/GErVg/LP+HdAEHM2cIAs+Vc2Kkhd9VaXoRTX
 u1Jivtaq6GXFodjYa1N+yAUIp6fPYeYdxYhjl0dFn0yTe0gp07riX3Kfow5akumvb54y
 28bXBSoxMkT/XyDL3VEKXBrpPFN9qiq6ykUA4Rk/fzpOFxEdGcCfWDffaKB7CQ4UoK4F
 Etow==
X-Gm-Message-State: ANhLgQ2r2qw7PKbynbpRritpDE36XDsw4x083Vbnc9Au7r/HCd8NzWZi
 Td/aOWcNS9LRLJzebg7giCJdGg==
X-Google-Smtp-Source: ADFU+vsZuMu3i6rVyy8NzpYVntivu5t4nefjuS0CH3GYC/pYx7aDo3sECAdmYZqRmUHyXeo/gKr6eg==
X-Received: by 2002:adf:eb51:: with SMTP id u17mr17457196wrn.29.1584090441559; 
 Fri, 13 Mar 2020 02:07:21 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id i1sm61872399wrs.18.2020.03.13.02.07.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 02:07:21 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 4/4] arm64: dts: meson-g12b-odroid-n2: add SPIFC controller
 node
Date: Fri, 13 Mar 2020 10:07:13 +0100
Message-Id: <20200313090713.15147-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200313090713.15147-1-narmstrong@baylibre.com>
References: <20200313090713.15147-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_020724_004166_12383D7B 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

Add disabled SPIFC controller node with instruction on how to enable
it while lowering capabilities of the eMMC controller from 8bits bus
width to 4bits bus width, it's data pins 4 to 7 being shared with
the SPI NOR controller pins.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../boot/dts/amlogic/meson-g12b-odroid-n2.dts | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
index b59ae1a297f2..169ea283d4ee 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
@@ -451,6 +451,27 @@
 	vqmmc-supply = <&flash_1v8>;
 };
 
+/*
+ * EMMC_D4, EMMC_D5, EMMC_D6 and EMMC_D7 pins are shared between SPI NOR pins
+ * and eMMC Data 4 to 7 pins.
+ * Replace emmc_data_8b_pins to emmc_data_4b_pins from sd_emmc_c pinctrl-0,
+ * and change bus-width to 4 then spifc can be enabled.
+ * The SW1 slide should also be set to the correct position.
+ */
+&spifc {
+	status = "disabled";
+	pinctrl-0 = <&nor_pins>;
+	pinctrl-names = "default";
+
+	mx25u64: spi-flash@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "mxicy,mx25u6435f", "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <104000000>;
+	};
+};
+
 &tdmif_b {
 	status = "okay";
 };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
