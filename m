Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 503BF146983
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 14:47:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lNUgTULV2Lu9Fz2bM8eeyz7xCMpNaUapaNNCwaiSJ+Y=; b=L/wbUVyNGrVdFz
	SSKc/HTiKAIyyyrwrg1x9t6HHpYOfxO6tLddPiSLHwOJc9xgGVbh19DfkFRzqBasa7eaotHEz28Zk
	dAouUkTpnkplWWtlK58cDRVOjG3Qd49yHy7HPVeMSoowy17CPhIahe5VWIllH5iwUqyObdTWDqkfz
	aOTRQgibM7FtdWZT36iF4fz3vE0cg9SPH3pSRskrW7QRDW2y9hWyLuCsocbphdR2L+YIw8PXfQpFA
	VwcUB2s5G1jImDP+P8aeARCDqeLIEOwKWKS71wEThTNOQ8H9vZxRzn4tshGr3gKfaz2OB8HD9rNh5
	jG9l807173Pq9k4FmUZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iucpY-0008Ad-Vi; Thu, 23 Jan 2020 13:47:33 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iucpA-0007rr-ID
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 13:47:10 +0000
Received: by mail-pl1-x642.google.com with SMTP id y8so1363047pll.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 05:47:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6qQxJ2SyEvVPvMIErsNNl1ijsgX+GmiVrQvVTmqjFSI=;
 b=nOFVLQvmwK7zQcfoX6RgA2rrAPXk4uIPXzRXCI/bneBDiL0Ik2eIKCNwhvr4BnCr5H
 wvsxMbXx6Ve+D9iIe6dS2smIjruESE1T7KPLu5LG0YaI7vKLsy2rK7EFLq5z73+/VkSX
 xjWrBRsLB8Opl9F6BmXyYe+0uWyqsaOK50p2w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6qQxJ2SyEvVPvMIErsNNl1ijsgX+GmiVrQvVTmqjFSI=;
 b=CYeSzXtJ4F1FIBt1WXbqZlC6kykFITdiydI3zudMdqSHirbOUsKQF6wTNloYDTyjtm
 tJnloM1+HAcTtxj/zmk2a49IkH50gMcpUPysUYpD3oGMV0fcsXRsLzaiU42HCsq4YUuG
 JDS2x1oFITf/5z2vkIrXLPCdrd0mnRsUDGNG8pzHUWU6hPhbUxvCfHGCGqhqrzXhTnpO
 NaUU6l294LKQjtW0C7FYynml/EiaNO3VrNv117ly/AXkOnqujkf541LBUn8vmsaukOzd
 FFSPlxNRy/QCw8/7aU3jV3iH1+YR5X00dPBvGlTMZFQQIjWDUx3K6k34MkWTgoXtJzTu
 HtSQ==
X-Gm-Message-State: APjAAAWCLktKVPahPMn+GZ9IPqMpcLg45jOjV0s6r47lGajJ3z702qaq
 VnOkltsDIGassnFiJ26KBXaC1g==
X-Google-Smtp-Source: APXvYqxluBr8pbd/5ZuACzarEI+J3Nv0qKlV4YpT+VWQoiazdSaVUD7XjER8s9Oeyn6ZbbfLh5m2jA==
X-Received: by 2002:a17:902:16a:: with SMTP id
 97mr16134852plb.163.1579787227342; 
 Thu, 23 Jan 2020 05:47:07 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.109])
 by smtp.gmail.com with ESMTPSA id a10sm3119275pgm.81.2020.01.23.05.47.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2020 05:47:06 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 3/3] ARM: dts: rockchip: Add vcc50_hdmi for rk3288-vyasa
Date: Thu, 23 Jan 2020 19:16:41 +0530
Message-Id: <20200123134641.30720-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20200123134641.30720-1-jagan@amarulasolutions.com>
References: <20200123134641.30720-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_054708_621633_F0233AB2 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add vcc50_hdmi regulator for Vyasa RK3288 board.

VCC50_HDMI is the real name used for this regulator as
per the schematics.

This regulator used for HDMI connector by detecting the
cable via HDMI_EN gpio and input rails are sourced from
VSUS_5V regulator.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/boot/dts/rk3288-vyasa.dts | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-vyasa.dts b/arch/arm/boot/dts/rk3288-vyasa.dts
index 88c63946f2a3..52291faf7aef 100644
--- a/arch/arm/boot/dts/rk3288-vyasa.dts
+++ b/arch/arm/boot/dts/rk3288-vyasa.dts
@@ -78,6 +78,17 @@
 		vin-supply = <&vcc_io>;
 	};
 
+	vcc50_hdmi: vcc50-hdmi {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc50_hdmi";
+		enable-active-high;
+		gpio = <&gpio7 RK_PB4 GPIO_ACTIVE_HIGH>; /* HDMI_EN */
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc50_hdmi_en>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vsus_5v>;
+	};
 	vusb1_5v: vusb1-5v {
 		compatible = "regulator-fixed";
 		regulator-name = "vusb1_5v";
@@ -446,6 +457,12 @@
 		};
 	};
 
+	hdmi {
+		vcc50_hdmi_en: vcc50-hdmi-en {
+			rockchip,pins = <7 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pmic {
 		pmic_int: pmic-int {
 			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_up>;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
