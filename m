Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E3C9AB13
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 11:06:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZtBu2aYCeDFKYcr4imPPpRoY1YinRKqWH+w/QU88Vv8=; b=lCrih8jhroc7k8
	Zs859141Prmij9x8q7J+zFYl0Q7X7L/MsKQ0xf2O23tSNi5/cKJuhNLTBZOUae/E/E4vCI3QFNqHT
	pNuZbpX8XM03aOC+d+qRxF3qaboz7ii9JJEN3uXTMpzcxjlJiqp6YqytfzKRpdmDV5LlP4ViNbthE
	zzL/xmDq/1d9NGNXuVFbygPmAVhxF5peXhiXpApJIVP+B+litcbXixlFicPAyWQpG0nlNg3iKocr1
	4RWmj2FolHlQ20CkflU3nLNshrhGMrpfzGnyhHtTUWa4oH2O9cUZDCBrTlf1F6hgunTtF/lwOoeYh
	LW6AmYpjHkRp//HOzJJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i15Wf-0002xr-NM; Fri, 23 Aug 2019 09:06:29 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i15Uf-0000tu-I3
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 09:04:31 +0000
Received: by mail-wm1-x342.google.com with SMTP id 10so8190150wmp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 02:04:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=x7lS6otfNfKn2A4Z6EJ+EWGqquL/jDHyWtp6eWoI2sQ=;
 b=b0KqI2bKabxX/CLyMZVp4C9olw9IuKvdW4s2hW59kzepQ9tpvF7cIj3t7rlg5bdUoi
 SjrpZuX4aNecZpzG5WoarF2JwNbhgnTmhw6tOCTLPyj6a0MlCUri0PrZZbpzevTGI+2u
 jCP/dyGPZLHcwTzex2b+yWNzs+SYVzxIbYmN+1/gCEV4dWN/KFAkr/GkRmYPFEBq72qa
 +vptHtmHo11a57W5NNTxKHo7S3yWTEcABRlm9XfLO8ZpzjIQ3XrTcW9admytv+PYB37p
 wMOPBj4PfQGnFhzI+wRMlAt/VscakAVYsPEWyoClsGMbQUQG+zDSOFYHufNIYK/zcXeF
 adEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=x7lS6otfNfKn2A4Z6EJ+EWGqquL/jDHyWtp6eWoI2sQ=;
 b=GsrZq33wXMCiv09veB9RaMk16RoNvsWQe0HX+QfvZ25Qqbv6nKFtkIg/WyJKHxBRYJ
 mKJ8Gr01RkZ1WykQRhbdYhXFWPjId+m6bDe7FVS1mn0aqy22NtNTMuk9yZ2AIjdNG/3b
 QmfI4LBg+6HtZVlQIXiUhiK2BoW8e/mtVsmxdkMz0ZNmygAPoq3bGppEuirNBVefovFx
 2tJkykQqeVZ6soXwAOBIRus7Ub+Ozcfq7e3JuAd7b8c5is3vdXcVdi08lGc1WeAeOtUw
 kwHrj+jFkoLL/TE6fw4L2gmocLaYRdTzm12bFp+fSdNHbptCK2ShW2tCYtffBL7+p8UJ
 zaCA==
X-Gm-Message-State: APjAAAUSfioraKaWRQH8tYUj7Gk82wPyT2VjBnFTI9/NWKQN/h0L+DFo
 DiswptCXUsvuYm0PfkOZ4c2I8Q==
X-Google-Smtp-Source: APXvYqzv+3OEYdyAmsOvtHfKnTXCIdOXKgggpEvAEYxC41wrsIacwiO8beWA5cQ7p8t4M1JJqXh2tw==
X-Received: by 2002:a1c:c1cd:: with SMTP id r196mr4049459wmf.127.1566551064134; 
 Fri, 23 Aug 2019 02:04:24 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id x26sm1625544wmj.42.2019.08.23.02.04.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 02:04:23 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com,
	ulf.hansson@linaro.org
Subject: [PATCH v2 4/5] arm64: dts: meson-sm1-sei610: add HDMI display support
Date: Fri, 23 Aug 2019 11:04:17 +0200
Message-Id: <20190823090418.17148-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190823090418.17148-1-narmstrong@baylibre.com>
References: <20190823090418.17148-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_020426_161200_98FC964F 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Add the HDMI support nodes for the Amlogic SM1 Based SEI610 Board.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../boot/dts/amlogic/meson-sm1-sei610.dts     | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
index 12dab0ba2f26..66bd3bfbaf91 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
@@ -51,6 +51,17 @@
 		};
 	};
 
+	hdmi-connector {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_connector_in: endpoint {
+				remote-endpoint = <&hdmi_tx_tmds_out>;
+			};
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
@@ -177,6 +188,18 @@
 	phy-mode = "rmii";
 };
 
+&hdmi_tx {
+	status = "okay";
+	pinctrl-0 = <&hdmitx_hpd_pins>, <&hdmitx_ddc_pins>;
+	pinctrl-names = "default";
+};
+
+&hdmi_tx_tmds_port {
+	hdmi_tx_tmds_out: endpoint {
+		remote-endpoint = <&hdmi_connector_in>;
+	};
+};
+
 &i2c3 {
 	status = "okay";
 	pinctrl-0 = <&i2c3_sda_a_pins>, <&i2c3_sck_a_pins>;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
