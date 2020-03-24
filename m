Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E611119157D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 17:00:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UGozU9gOQVk8r2N1kBN6MIqui5QWNpucE3Yvzgs56QQ=; b=e3AKpNFqGu0QFO
	pGlJ8Ou32Dj5f8EYZP0tB8mzy9dhlrvj2REh7IPdKT5VD42D/2z2VnhubiDX2ybeYEpFQwuqnVvYH
	6QVvB1Z/gR0fYhGyWci6OqQMdQfh7GVJ6evGVPs0UZd4AhlOo+fZj4TzWlHxZBlWe8sYVKWMgDYvV
	nyl+BneIJtgUlMxkzma3fOgMRb0dQyXgrV6JqimVG0g3PmU8JpPeQaWf3raDw2oiqBw8gQrHBv7R5
	JP+f/uoUetZDsn/GG4wraHM96goxTGaxJh5icNffXgOWsJUXvcW/uFY+N5BGdhlXzf28Az5Sd1fK3
	TK17mz3wTEupHsrnbC3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGlyK-0002uD-BM; Tue, 24 Mar 2020 16:00:08 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGlxA-00020p-2q
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 15:58:57 +0000
Received: by mail-wm1-x336.google.com with SMTP id a9so4091826wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 08:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2iXaezRpiAEVsIjtPL66+1WYKKV9JGi2e5gAH5n9n+Q=;
 b=E6yjQwiSqNdVCPE6J/U0KS3W4n/qIziiCmFz1dne8YVjnfuNGsCjGb3cX1KM7rJvQa
 ju+MUHOeaxHWzKoScpBYxtlKy69giccvPYuvtkpvSb/8cFc3oI3H1reZZcmRjq7ena9c
 NfhJ2G+ZwEVEjpPMcBe6xdTz88nkymnq2C1zrvk9KD6eBuzJrVduqsBaUzC9iOs1HJCM
 LZotTcwTPh4/dVWKvtuTcqjCrjPuvd3zjFESxtzU11Mz7Ku2d6l2w6wGpTskxEeQqQk4
 zzxdGSsfLPlrLDkjIvii91NIZ4uNI/7GrQD8E8uqW3P3Xa7+O8ZJzC/iCLj68phQd5pT
 OgdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2iXaezRpiAEVsIjtPL66+1WYKKV9JGi2e5gAH5n9n+Q=;
 b=qSeAFHsxP+J/sGvC7yzEmHDVw82jrzSWfbuiBz/B6w0mmaCz9+BLjs6x6CMgO9HxjG
 5ds8GLXEXkMWPVWPYOXXnYJ6FEacKOoRzgC3fbb7DJ4BnM0nA5RKnl6r1kYLRpnSr9j8
 mR+yHDT6HSJShF5WP1843Myeh+j9sOieDnawo7z3Gsu8qO1r2kbz+1ypIEhq73ama4d8
 a0D/DklyAgxWi6Rp4usWES8rBkIBu+iAQUFW9QeJvIeKLh26BtNxrmbrgXOi/VSKpOLT
 +r/xnfJkUfM53AQf7V1lpzYqPa3563pqQdBlOdHFmt++qlMXcG0+rHdWl+oAareac/Q2
 mSFQ==
X-Gm-Message-State: ANhLgQ2oJz0tg3wCxgKHvDaeU6tjK/yT4jG8qDGYKmseCas0nXph4T6H
 8lKGaMASfT9nQ9T9bmo1sOPnRg==
X-Google-Smtp-Source: ADFU+vv2xO2E0jEZAUcI/bDEi/RSuQ7wliEymfYmIC7PJzPNbE0/9DBLSwsVtxq4KMF3QxmGKsWJYA==
X-Received: by 2002:a05:600c:48d:: with SMTP id
 d13mr6078495wme.184.1585065534591; 
 Tue, 24 Mar 2020 08:58:54 -0700 (PDT)
Received: from xps7590.local ([2a02:2450:102f:13b8:e15d:2127:89a:e5dc])
 by smtp.gmail.com with ESMTPSA id t124sm4993321wmg.13.2020.03.24.08.58.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 08:58:54 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 shawnguo@kernel.org, olof@lixom.net, Anson.Huang@nxp.com,
 dinguyen@kernel.org, leonard.crestez@nxp.com,
 marcin.juszkiewicz@linaro.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Loic Poulain <loic.poulain@linaro.org>, Luca Weiss <luca@z3ntu.xyz>
Subject: [v3 4/6] arm64: dts: sdm845-db845c: Add pm_8998 gpio names
Date: Tue, 24 Mar 2020 16:58:40 +0100
Message-Id: <20200324155843.10719-5-robert.foss@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200324155843.10719-1-robert.foss@linaro.org>
References: <20200324155843.10719-1-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_085856_169524_C5ADA4B5 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:336 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Robert Foss <robert.foss@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add pm_8998 GPIO trace names. These names are defined in
the 96boards db845c mezzanine schematic.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v1:
 - Move gpio-names to previous reference to pm8998_gpio label

 arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 28 ++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
index a6b6837c3d68..efb0086e2aa1 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -365,6 +365,34 @@ &mss_pil {
 };
 
 &pm8998_gpio {
+	gpio-line-names =
+		"NC",
+		"NC",
+		"WLAN_SW_CTRL",
+		"NC",
+		"PM_GPIO5_BLUE_BT_LED",
+		"VOL_UP_N",
+		"NC",
+		"ADC_IN1",
+		"PM_GPIO9_YEL_WIFI_LED",
+		"CAM0_AVDD_EN",
+		"NC",
+		"CAM0_DVDD_EN",
+		"PM_GPIO13_GREEN_U4_LED",
+		"DIV_CLK2",
+		"NC",
+		"NC",
+		"NC",
+		"SMB_STAT",
+		"NC",
+		"NC",
+		"ADC_IN2",
+		"OPTION1",
+		"WCSS_PWR_REQ",
+		"PM845_GPIO24",
+		"OPTION2",
+		"PM845_SLB";
+
 	vol_up_pin_a: vol-up-active {
 		pins = "gpio6";
 		function = "normal";
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
