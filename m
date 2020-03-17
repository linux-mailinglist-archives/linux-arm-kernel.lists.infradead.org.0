Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02EA01886A7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 14:59:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8lps7enMI/2WdnuUIHmd7PTG4mLbFVKeh41wGr7cYEA=; b=YKMjhhSw91C3hk
	yBwCA1wq0wQletLjk/ru2exI1C2SmBQd9jr8/JQiaZLl71VgNt34X0JiOV5k2Jy7hPOaTBMZqLuIN
	mYqh5XJJrzuUPKh0FV9nidF+VdzWINtwkBZ6BTmMsKTuShf94dAJwEm+UPCIdoTlOw/BJuqY5AumP
	kMRAMPSdinAsohSE8vrc0Q23Yv+fHjIcKoL/YHRyuK50tdMNGf4yZADO5NN1s9zDb4wL2wp8qNpIj
	cGN0nmTCjNe/nuUq5JcB6qoZ6KAt6mwzMSi9rATXf4p8+m1rZQQ+hY3ZXtf8JpIRKQXCAmgE6aNe2
	lDKznNqxxnEFJttGrUvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jECkL-0001dc-0J; Tue, 17 Mar 2020 13:59:05 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jECjG-0000fl-4b
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 13:57:59 +0000
Received: by mail-wr1-x435.google.com with SMTP id z15so25776685wrl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 06:57:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aJ6WBkhO3K4OzsJINoEYvBbfmbxMU3iYiQ/cJbW0xDo=;
 b=g961w6HILHFqpDyFSns33LU0XmgMSPUSxr8P9etyj+evR/2wwGCLVQH4uB+PHcuCDK
 PWKNLyUII/jas7FoO5LE1NTUjtXDk9k0Y6EIViorMQdTN0ZxBaoiFJPhf4v4Nf/3zy00
 FUsYD0x7uD/JUu7epLOzCdGFP/lxPbQ9xS+PHV++AcJlwIJmZOMLGJBQOeApI5/GdreX
 wts8dEJX0Xb9e8PHe/hVQYGyfAgnMSeoM9F5bATTBxbI/V6N+xCjRiXNfZXBYs6Os0Mc
 IIl5YLQUegLfCoiRILfuOOi9bsro62LdEKBED9EPrpEU/oCp+UteuSqYXeEgaqKglkTG
 O+nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aJ6WBkhO3K4OzsJINoEYvBbfmbxMU3iYiQ/cJbW0xDo=;
 b=g97lwZnUagHazanSetryItyfm6hervu0XhAkIgV06OiUsBtP54qb3tWMyzD8sMqijF
 6oQlajP6gufthXK8CQ78ClnJN2WDixn069LBWyLU40ojhg5PEUe+LMWOe1H6b6I9StHO
 SxHJksaXvoc8exlOC4g6biYHYob5s72TIrDBY0xmHMF8BZT5sr1ZNPT8I247v1NGOYfv
 8qvpNUGSzQapIab/wotJwfkeqa0OdBxrapkawK4i+AUPIWNWaBccefOwgSQAJtf502Ba
 TU1b7vkBYxTGUG3pr+8Y+4auuaiwJxlOeWT/X3Yq7KXFhljK9KqjZ7aM/d4ipNhfB3AH
 7Z2w==
X-Gm-Message-State: ANhLgQ2tRucadgVsvsOLHYvQsYV6gOz3CrqvzKD7Y/qxtPRamqDB1Rs9
 rqxDUe08ot3nSiUrh8IiCAixGw==
X-Google-Smtp-Source: ADFU+vuEQpGGjN2Y6PiGYYhYPKWhI4pKxDM+6JY/eVnr92WFJO7DQJ+ODChwu2MU9pQRB6o9WKPrXw==
X-Received: by 2002:adf:f5c1:: with SMTP id k1mr6279100wrp.91.1584453476447;
 Tue, 17 Mar 2020 06:57:56 -0700 (PDT)
Received: from xps7590.local ([2a02:2450:102f:13b8:84f7:5c25:a9d8:81a1])
 by smtp.gmail.com with ESMTPSA id r3sm2976558wrn.35.2020.03.17.06.57.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Mar 2020 06:57:55 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 shawnguo@kernel.org, olof@lixom.net, maxime@cerno.tech,
 Anson.Huang@nxp.com, dinguyen@kernel.org, leonard.crestez@nxp.com,
 marcin.juszkiewicz@linaro.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Loic Poulain <loic.poulain@linaro.org>
Subject: [v2 4/6] arm64: dts: sdm845-db845c: Add pm_8998 gpio names
Date: Tue, 17 Mar 2020 14:57:38 +0100
Message-Id: <20200317135740.19412-5-robert.foss@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200317135740.19412-1-robert.foss@linaro.org>
References: <20200317135740.19412-1-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_065758_188442_6D246581 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:435 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
index a6b6837c3d68..efb0086e2aa1 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -365,6 +365,34 @@
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
