Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C91DE134E35
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 21:59:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=g9n0CV1knRJOvh37q0y9Q5tmpejB7nD1zh+8skMBeRs=; b=MyY+sYUSwJTDOUkACcZHud52iP
	wGrHXCVS5gTTcaku4ipa91o1JF1MGvFYfdAMLKyFxBEEtawrEcYWfKfjpWbM9GLemdGYDnPliTl3T
	YFol8BrfZC+GXxDryYB99oYpVvvFB3ZoBIPFA7jNDvlvaipI3c82AzqKO4TEiD8csDZUnRa82Qu8w
	LEMk9t2bqcddhn53w/M9oJhTMTcfhHz483/EKltT9u4xL2RR12sPdFWO5Rh6LUPJtZjMkuBJTojOH
	8Z8fejXt8c0Z+IF1z44SclOkuENngGXswfAWHMDLThMlFxKAs49lyf/pa/APkuJA90A8PbyD4g51Y
	kw4bQ98Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipIPt-0003A2-Fa; Wed, 08 Jan 2020 20:59:01 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipIKv-0006O0-8j; Wed, 08 Jan 2020 20:53:55 +0000
Received: by mail-wr1-x443.google.com with SMTP id y17so4943270wrh.5;
 Wed, 08 Jan 2020 12:53:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6wZ7x22wSXIg5bl9Oow5ZKhvHAS5XTDENGb2Cb6nT5M=;
 b=kOLe1VNJ78Dhvq4QYaA8kd+GrZDXdFnLdaMSxdj9vIFC69Ismok3BjzzU7GMw0oKif
 k4mxQm8XjndK9iiVCjRHL4Lh1gzaDDD//2CzGtuXg4JuaaAJqK5KDBnstz28OzlEgFsE
 zfO5/JVdsbN20xILLbDCsOTqGHJpL3tLJWoGhYoG5Cc0pUflX06IzdzZcc1RUVYwS28+
 yclPK7y9D5XuVrgHlV+wqg7cJArx1ZlPl/yejz7kDeYPVEch/yKA4dQyy3YTWHYjgwf/
 5pj/FLaZ36chPFoSyWV+HkLs3x2rUzoRgK5zcALjA8CRw1DXS8OKJ48SJmu+Cx0/CTQs
 a7+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6wZ7x22wSXIg5bl9Oow5ZKhvHAS5XTDENGb2Cb6nT5M=;
 b=RCq6F3hb0gpIfNJ2gg2KqeJZHdhO0nPaS5ai+6rPacc5WNqxupiLuJRpZD4G66AyQr
 yQa/gr4JzO4zGUy0Glenu4hfHO6Q2ypO7D2bqyqht8+9pGdx0jFjt9bCfmK+KU9Q1tb8
 qEjLft5pAFtsdk/Ps49KnWQuaP2i+uKAjUax3DfvAGSbyfSU01aRiNP8C16N4/1GUj5D
 IsSh4jJ/xrLtcpKz1q03ukVQ4cre6ccpn9VPfvjv/xTDWxfYzbkNoKxVl1iFiK4YSAQM
 Ua+otsDST6rT2Z+Jh6fyA8Vor/HpODsNBtHkjcdsEIUHN0yVYiX2Rp0o+uFi19evYyc4
 TYUg==
X-Gm-Message-State: APjAAAVjlEvxDChJxjqrmPO4eeMxfgM9nq1+aDPuwZDoj0173qgdyoe4
 dVhsNCqFtipsztEKXRxCfsE=
X-Google-Smtp-Source: APXvYqy2OynSIqj7hv4Oh/Z1uZuPF0gapDkWQQTlinfn9ySqo2/ZfkPS/B0kyZUjHdYpsFFpyQngBQ==
X-Received: by 2002:adf:f1d0:: with SMTP id z16mr6594981wro.209.1578516832028; 
 Wed, 08 Jan 2020 12:53:52 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id c5sm311835wmd.42.2020.01.08.12.53.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 Jan 2020 12:53:51 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: miquel.raynal@bootlin.com
Subject: [RFC PATCH v1 05/10] ARM: dts: rockchip: add nandc nodes for rk3288
Date: Wed,  8 Jan 2020 21:53:33 +0100
Message-Id: <20200108205338.11369-6-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200108205338.11369-1-jbx6244@gmail.com>
References: <20200108205338.11369-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_125353_423021_13188123 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, vigneshr@ti.com,
 richard@nod.at, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 heiko@sntech.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jianqun Xu <jay.xu@rock-chips.com>

Add nandc nodes for rk3288.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3288.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 415c75f57..704a101d8 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -30,6 +30,8 @@
 		mshc1 = &sdmmc;
 		mshc2 = &sdio0;
 		mshc3 = &sdio1;
+		nandc0 = &nandc0;
+		nandc1 = &nandc1;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
@@ -596,6 +598,28 @@
 		status = "disabled";
 	};
 
+	nandc0: nand-controller@ff400000 {
+		compatible = "rockchip,nandc-v6";
+		reg = <0x0 0xff400000 0x0 0x4000>;
+		interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_NANDC0>, <&cru HCLK_NANDC0>;
+		clock-names = "clk_nandc", "hclk_nandc";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	nandc1: nand-controller@ff410000 {
+		compatible = "rockchip,nandc-v6";
+		reg = <0x0 0xff410000 0x0 0x4000>;
+		interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_NANDC1>, <&cru HCLK_NANDC1>;
+		clock-names = "clk_nandc", "hclk_nandc";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
 	usb_host0_ehci: usb@ff500000 {
 		compatible = "generic-ehci";
 		reg = <0x0 0xff500000 0x0 0x100>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
