Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DEEC2DEA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 09:40:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lmN0JGz8tddElvatamQiWCOc0j2x+u60KkG5z2wLX3o=; b=f2X2RIdx29Qde2
	owkkkfWh2QfUjKHHHmasUiUAJn00aHio6gHjuPQ1RcHs5Uf58yGMY2inCQohAzvca7KbH0I5GX2W3
	Px5Y1B6jUM7bgLRFUCEqNi01FP0hJXDqG5Gf57npr8B967ZVqGpxjrEoZcFYW2a0hNjNYeB7QSyG3
	3BZBZAtzpo24VQX30kYKhQ7jWBFmPRURd1WdCS+jkmeVw4Ws5rl+PCsOr8CRyru0TnLedfE2vOEhR
	2ciSzMq8u9FvVkJjJHQ1vo5kTd4RZjdQqXZF4yPdcEHLoRG7xGJQsqJznbdn89FqiJP/D5oLO4KoG
	/wt7ZJV3Jye4D7nK/Y3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFCla-0002SB-OF; Tue, 01 Oct 2019 07:40:14 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFCkq-0001uV-7v; Tue, 01 Oct 2019 07:39:29 +0000
Received: by mail-pf1-x442.google.com with SMTP id y72so7283117pfb.12;
 Tue, 01 Oct 2019 00:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FPppnx0pHg/e5NQNVYHCSHLYJt27O7a0A615YGrLKc8=;
 b=RNZoDGRHpt/Wdb8dG1PMcaHqUo2VhanExRHm03EBTnxrfHRrlr1pSkkQgLSxVUEUUj
 Z6vB/F0ywZolrgx5IPX/8yng0MwAwu/DPV1rK3B4nL3+IoLa/eyhI7VjU/KSAMG8BlbP
 RCpDMtcc4aJ6aXqynVOxr6jaLN8pjcwS8Aq0e1fx4Kq79/y/wTCWyI1BAbAnG814e6QO
 mHOV8XCaLn4wjFnALqV/WTzNS3w5bP4Gx/jukPlzMZ9IdJmWPUu8r/Pp92GAUVnL+KTL
 uvstGokKaNAAVqVYsf8vzoGr2P1RkbVDt+Nm5gfzle0pA6YidHLShRRME3soF4usyYRj
 zRgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FPppnx0pHg/e5NQNVYHCSHLYJt27O7a0A615YGrLKc8=;
 b=aJQ3M0EojqSB1b/r3VoWZQWvXyIOnbIlg0LKa9OQgeX09hRb3b5eYzRV7wsKRsZM/5
 E06VF79K2/LZ5o5kF+BfG46uzNnsqy839+ZWgtjqZe/W1DIhReXWY9j8zrU+cR2dPNRw
 RQ8jZHbd4ijMuOlgnfls2WJpmW0sxRaBDTXvqRcBVa0/oaGaFsQHXU+U13FZEkvYQiU/
 jTo93hLQHZ1Nae++xjHcRhQvY1yQcJP1/MzP/SyL22/+YU5wbOAeWFKAQ2JDvS849TMB
 FqZFSVhT690bbKF6jmg4JsdegRVavHQxEN/4OWrhFfedz8VpVrkWKRdCb/AWCjfTkYb4
 PuAw==
X-Gm-Message-State: APjAAAVmpmzka1NclHk+Jcmzpbp9LSiQBA4KNqUQdCqGZUdr8KuKnH4y
 IYe3ts3LImijhrG3/7tlqTI=
X-Google-Smtp-Source: APXvYqwf/R8vsuDMrsHPW7AAcObC7akqhTa6ONGQou6OgWL5Xr1mJECAx9MceH6tA5EtUlPFROrz4Q==
X-Received: by 2002:a63:cf4e:: with SMTP id b14mr29075889pgj.109.1569915567708; 
 Tue, 01 Oct 2019 00:39:27 -0700 (PDT)
Received: from localhost.localdomain ([103.51.74.191])
 by smtp.gmail.com with ESMTPSA id g19sm23133024pgm.63.2019.10.01.00.39.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 00:39:27 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>
Subject: [PATCHv3 RESEND-next 3/3] arm64: dts: meson: odroid-c2: Add missing
 regulator linked to HDMI supply
Date: Tue,  1 Oct 2019 07:39:01 +0000
Message-Id: <20191001073901.372-4-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191001073901.372-1-linux.amoon@gmail.com>
References: <20191001073901.372-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_003928_350383_38ADDE5F 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [103.51.74.191 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

As per schematics HDMI_P5V0 is supplied by P5V0 so add missing link.

Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
Changes from previous
Patchv1
- As per Martin's suggestion added the HDMI_P5V0 fix regulator node.
Patchv2
- Added Matrin's and Neil's Reviewed-by.
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
index 2fcd512373a3..6ded279c40c8 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
@@ -66,6 +66,15 @@
 		regulator-always-on;
 	};
 
+	hdmi_p5v0: regulator-hdmi_p5v0 {
+		compatible = "regulator-fixed";
+		regulator-name = "HDMI_P5V0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		/* AP2331SA-7 */
+		vin-supply = <&p5v0>;
+	};
+
 	tflash_vdd: regulator-tflash_vdd {
 		compatible = "regulator-fixed";
 
@@ -220,6 +229,7 @@
 	status = "okay";
 	pinctrl-0 = <&hdmi_hpd_pins>, <&hdmi_i2c_pins>;
 	pinctrl-names = "default";
+	hdmi-supply = <&hdmi_p5v0>;
 };
 
 &hdmi_tx_tmds_port {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
