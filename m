Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F4C1A22B7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 15:12:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/qFGny6qyYdL4g9qwWpzRpciIu0k+Rbw0GqQpgiZcZY=; b=M11gm/meCp8KTw
	9jFiQVUtlSsQAJwlQQAnlBxWOJ2fq/hrvN3X+2Hy/EqoFdZY1MuOoLVQSOVNas3rcXcDhnG385SW9
	W6n9UN3MLpm3Cg/HeiGK4iRGoHSHbEo5I2a0ky7pPEjM45c0r6D/pcCkB0pzo+ap1fthZKs325B7y
	S+WyymD/41OyYB+uyTzlPPsXVK7N6KuilOOezsgrPiKGhgQjj2ekzs3V9/FYPVACv9vvXhJh8nNsH
	6+qjCNGBmFFVQsbJUKhALYg0UgflOeQjR0lp38yIuK41tvId3JE69doTu1GNp3cWQ5Tr6wcCwCX07
	yZomVujuoC7SwEgNLRUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMAUn-0000GO-GS; Wed, 08 Apr 2020 13:11:57 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMATk-0007pR-Op
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 13:10:54 +0000
Received: by mail-wm1-x343.google.com with SMTP id d202so5395204wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 06:10:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eyBGvPhV7TUH86tokQz7uJLxAaD+h2U61M1YV5bgXQs=;
 b=YR7kjZEDp8Dclxy+3WQjIozJps5zrdc4+YpZUIpjxeZLzDHIU344sV0qjc6I5pl5HS
 dkdFmg3wIS2EartLPHjLFXqCuhZ7hLhu5zLUe8eT5OY1hQwcQho3Koo5VZdAdUPC42D8
 BKEx2Ih8T9FQYlyYAbVNl4Q0K2CSJOrmYNWBuf3g+UVZaVMPh+uQ39NATJlcMFPmbevA
 9TFyoOZMfgAqk3zRxULaqOIu8HaSJY4k6FSeWBM6Bh1xa914KMROhcZ3qitfgcZl2t9x
 LGvT4y1l3mXC3aoE3JyNrZVS+HkWqZVomzaWEs9F3CR1owCjmrGC8D0k1Y/fbqypS7pA
 GzvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eyBGvPhV7TUH86tokQz7uJLxAaD+h2U61M1YV5bgXQs=;
 b=MxiiwdUAdPjI2fhBbf5CdJ4v0L9BUdTdJGMbHx/jesWCpO0fJkz5P1LMzkHJpaPlQm
 fdNKMnc6YBRtAEs6sFFM2te3ryGMRg90hkj5sQHuLxZpvK3RZijUkAX1xqTTMxqCWw32
 lIDAnWignOy5GlJGyaD7VljEORd+10X+sKqZlOQMW8kpUPq4UlLEx3CBVUQpsCapEosv
 mg8BMU24NJvZ4Qh6cQWygDoz8Z13DdQmJzz+eTW7nEDbIFLFZ7+hnNtWihUdin4pcJpO
 8GyE4HALz76zgi87404zllZuCj2V2qg9Cu9BQ2Ht+uAvI2BTtEthsAp7vgAOoovgCa4i
 X3rA==
X-Gm-Message-State: AGi0PubzMZ8wiOkh3OTbPxgIuOaIyQp54on+ZjVTdXlANvxN4K5jKszp
 1JaxXW0y2Z1guZhqNBIG3V5DFw==
X-Google-Smtp-Source: APiQypJNeoXs5y2t1gLKM6gDJw9wo7P2PspFCxzFWP5VVAB+XA/VWx9wysS6dw5QBKvX78ZXyqHxXQ==
X-Received: by 2002:a1c:2c85:: with SMTP id s127mr4663898wms.18.1586351451594; 
 Wed, 08 Apr 2020 06:10:51 -0700 (PDT)
Received: from localhost.localdomain ([37.120.50.78])
 by smtp.gmail.com with ESMTPSA id f4sm18428044wrp.80.2020.04.08.06.10.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 06:10:51 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 catalin.marinas@arm.com, will@kernel.org, shawnguo@kernel.org,
 leoyang.li@nxp.com, Anson.Huang@nxp.com, olof@lixom.net,
 leonard.crestez@nxp.com, geert+renesas@glider.be,
 marcin.juszkiewicz@linaro.org, valentin.schneider@arm.com,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Loic Poulain <loic.poulain@linaro.org>, Luca Weiss <luca@z3ntu.xyz>
Subject: [PATCH v4 4/6] arm64: dts: sdm845-db845c: Add pm_8998 gpio names
Date: Wed,  8 Apr 2020 15:09:57 +0200
Message-Id: <20200408130959.2717409-5-robert.foss@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200408130959.2717409-1-robert.foss@linaro.org>
References: <20200408130959.2717409-1-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_061052_839890_8CC919EA 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
index 8644a2f6095a..5cd06ab97b9a 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -412,6 +412,34 @@ &pcie1_phy {
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
