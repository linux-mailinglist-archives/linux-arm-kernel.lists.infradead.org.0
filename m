Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 836911CF5CC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 15:28:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eWf1soy55UqTZsnYiX7wypq3BlyNBZ9UCBQcN7FLoNI=; b=sjWbs2xn6yqRFh
	Va8r4rFJBEEdi3vH2o+5RcWo629J/UkxX+som1e7U0vz3wTvsw5iAGj+DBe5Q4XNSRzIFcQGVFTHC
	R56PVv7Zj/iYUsOuyg1SHsMRe99wFLOAta8q8438hO0d82MSI/5T1bgUI6jm2+r/tEY1R2WF/I8sc
	CFDCwLkZ3MwlMspabVjQC2/Z1he5Q3AAbJopdgKywF/PqjOraPrCRe/kY8JNRJemVmh3X8PNMpsjC
	c3aAzbxp8Bgkjx2IynxqSkczGEo0p6wCrfWTkOJZLMtLPCtcfE9eh+IGcpWfxlP5xG1THQ/gNr+0v
	wAyxsy95dOi5YOBu4C/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYUxO-0003Jk-7M; Tue, 12 May 2020 13:28:26 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYUvU-0001a6-93
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 13:26:29 +0000
Received: by mail-wr1-x444.google.com with SMTP id i15so15337589wrx.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 06:26:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=itZ8nYpO9rVwAB+XOSiZ1Zaz+WlUMeN8KYJbRrgai8w=;
 b=s5XV7mjGrnG0C7b3JFLWA/serjUzf8eM5Sv6bPOzzXrvy+bBn5NGBA9t3ERPFyJuv2
 SJow9GGfQvqbEJVESTH5XaRi90qYMpkAc+33nM7/TD7ZR1hX6v4OJx27XmVk0E2Ua+0d
 OqhN5SQaS1ajL2aQAdCfmyj6fWL1oVA/nBjIhPvI+Aj7x30jz7wxC2/JcETHuxaAcBB5
 L8ywmE6m4FE94yCLZXU+LyWBxWS25UJ7Yj6YtCist9nBGE0fUFb/fO7lTzHvgMgJr8k6
 5aV2w0izr+/SeOV1SgeR5tFhJsdUfk0n7g/S3Kdy+4sfHzBCmohoIfu8Us6qrTf3KT9/
 8JiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=itZ8nYpO9rVwAB+XOSiZ1Zaz+WlUMeN8KYJbRrgai8w=;
 b=tbdIBK6QXq0zHX/OKlEf1EQgSm31P90nFG7n3s5HPB1Ei/KYoFAnQFcq6x4XlQznFw
 1TOFbKzXJt50p5WlBhIMHs35T2FvHpD1PwOvWvekAVdVX9mJK/PS3MmyvQp+TrcQA9U+
 FXSZSP3oFfA89EMSmYiWZKjj/F/sBvWyMwSwEQpgmWHwfH80bOi7Qhe6AAjwcnNOr1b+
 CJDdRdqg1kGPNx3W52BEuAx7VOFADB/wXkNQxRlRw5ZkXNu0esQbRymzWgs+pAbxE4wv
 mdW+AtUSjHlsaNRJjTONU8lC+ccYKPkK4ubFTOtXJvR66B9S/k9LfRcekrTItQGfKBCM
 Ro1g==
X-Gm-Message-State: AOAM5339h/bQaGJg+VX0FHyNyR+9DpXvjnqOp6oGnc3y/BvZxhlBoBv7
 ed20XzTFiwPytAfjJMSIC3qzcA==
X-Google-Smtp-Source: ABdhPJygO+LIUhXBZipYlpV1NjUWfdUnA48iHtMRa0nv+p1cN8d+bHqiZL+GB9Ig3+I8VNBJDIQMug==
X-Received: by 2002:adf:de05:: with SMTP id b5mr1650574wrm.299.1589289986709; 
 Tue, 12 May 2020 06:26:26 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:4460:3fd3:382:4a71])
 by smtp.gmail.com with ESMTPSA id
 g15sm14441844wro.71.2020.05.12.06.26.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 06:26:26 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v2 6/6] arm64: dts: meson-khadas-vim3: add Khadas MCU nodes
Date: Tue, 12 May 2020 15:26:13 +0200
Message-Id: <20200512132613.31507-7-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200512132613.31507-1-narmstrong@baylibre.com>
References: <20200512132613.31507-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_062628_377482_53577AF8 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the Khadas MCU node with active FAN thermal nodes for all the
Khadas VIM3 variants.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../boot/dts/amlogic/meson-khadas-vim3.dtsi   | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
index 094ecf2222bb..3325e54ea690 100644
--- a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
@@ -183,6 +183,23 @@
 	hdmi-phandle = <&hdmi_tx>;
 };
 
+&cpu_thermal {
+	trips {
+		cpu_active: cpu-active {
+			temperature = <80000>; /* millicelsius */
+			hysteresis = <2000>; /* millicelsius */
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map {
+			trip = <&cpu_active>;
+			cooling-device = <&khadas_mcu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+		};
+	};
+};
+
 &ext_mdio {
 	external_phy: ethernet-phy@0 {
 		/* Realtek RTL8211F (0x001cc916) */
@@ -222,6 +239,12 @@
 	pinctrl-0 = <&i2c_ao_sck_pins>, <&i2c_ao_sda_pins>;
 	pinctrl-names = "default";
 
+	khadas_mcu: system-controller@18 {
+		compatible = "khadas,mcu";
+		reg = <0x18>;
+		#cooling-cells = <2>;
+	};
+
 	gpio_expander: gpio-controller@20 {
 		compatible = "ti,tca6408";
 		reg = <0x20>;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
