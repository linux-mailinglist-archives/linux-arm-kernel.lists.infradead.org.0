Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C90D79C1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 17:28:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d3kb0EushMCnedPq3BhZgz9b8q9AwBbrYrZx+c0dlMA=; b=tM3cqfJC61GQ5S
	XzGlelO7Tx0mI7ULtUfEdQLQUvDXvztOMjYMfk5ELCx/bgQ38sVPrAjo4Q78H+N2xhZXIQxOHsasN
	xvM1dEzYmibkHkMcaz72Iyb2FLDsA7qoGBtyj7njmi0WamRm899Nl7vwzfmjeg1DlmhrcjeO3ZjZZ
	sFp7mmlFPoZ8Bd1SGW/NhLDNAM62MwpvPmUXRaLDgVr3J1o1mNzsHs3fgSbsqlhj8NhD8G4P6+pMn
	H7a1wsP81YI8Pj4F+vugE3Kpe5du0fJ0qNE+dlu+GvYHczxIFQ/6OK11EyRfByp8W6VZ4l8yQ/ZLz
	3Hvf1IBB7e5KlGevIHEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKOk0-000196-2e; Tue, 15 Oct 2019 15:28:04 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKOjN-0000iT-Ic
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 15:27:26 +0000
Received: by mail-pf1-x441.google.com with SMTP id q5so12679775pfg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 08:27:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3STC62uX1LOFWn2/FmxkJuEB5bdiiyaCnOBZryIGQaY=;
 b=IS5v+aCvGsRk59ZFIRRyaOwbReneKHG1yZP1HIsbfySuDdJzYuaycAtnOW3Ut3NhOo
 HeyllnaQGFHUcNlxNy3bEFfyrPw1WY9vEyAS/treqiRAIAy7vy4/ncxSm6YYEpikCR/z
 at9JRXUCombNSkBeKfNYWrmIPN4oZE805oweUprVfQ83xLIhlEXjghyKyHZ9YgVEBTRi
 8HHgk1ve3VEPx4Y8c7W6uEkFoNRdGLpCeTzLESoULdBy0Ndfk+cdeXxvfm8Qbyr/7ew4
 n3sjvLMygBuHu6yUAOueFtseAXnAGB6fgkASI6bAxm1mJpmfyfyujnaAi5ctm31kSS0i
 Ycgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3STC62uX1LOFWn2/FmxkJuEB5bdiiyaCnOBZryIGQaY=;
 b=VSNa+5u0P3JanyhayFhsQxG5aRQzFUGLn4gJ1dgq9OvtVE1pQ8Q0GZU0c2PRpPu2KC
 wWBsI9q/rkfHu9jxo/jWzMJofHmu8jGWCZo79IAaexGJDXAEFjfv7/ovJeRc8AuxWIwC
 dNDJ6MtEnUtu14xeBWeQxRHUA6bW6+nDHnq1vo3Kj6tyzS1ho5d28yw71EGXbMq+B9kz
 gnwMZdmqcWccahSRVeI3J/pV6/qWDuyM0RWcVXWosiguST6MBOeyVvmMO/10j5H1VyNH
 H+bjk1wf94Z7b+G93z/gsSIcxlsiPU+Y69JDCPs440a++8Aelz/c4whlTEC7dzj0Hwjo
 K+OQ==
X-Gm-Message-State: APjAAAWLwHzlvJg9BeVb9J3x7hNjt7FO2qzb59loqfYO1BGo4DFL4S87
 iXuGTga3ZkxkDR3HkTNiZqsPiKXe9qM=
X-Google-Smtp-Source: APXvYqzBLhQZidCNp2+fuvAICwYLOr5FvcIHI1/8XBIqLSmL5cmk/+85uIsm9eI1OJKkhxm0j/KVfw==
X-Received: by 2002:a17:90a:bc06:: with SMTP id
 w6mr42632084pjr.138.1571153244400; 
 Tue, 15 Oct 2019 08:27:24 -0700 (PDT)
Received: from localhost.lan (c-67-185-54-80.hsd1.wa.comcast.net.
 [67.185.54.80])
 by smtp.gmail.com with ESMTPSA id w11sm21158957pgl.82.2019.10.15.08.27.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 08:27:23 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/4] arm64: dts: zii-ultra: Add node for accelerometer
Date: Tue, 15 Oct 2019 08:26:53 -0700
Message-Id: <20191015152654.26726-3-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191015152654.26726-1-andrew.smirnov@gmail.com>
References: <20191015152654.26726-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_082725_633831_EE0A71D5 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, linux-kernel@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Chris Healy <cphealy@gmail.com>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add I2C node for accelerometer present on both Zest and RMB3 boards.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
Cc: linux-kernel@vger.kernel.org
---
 .../boot/dts/freescale/imx8mq-zii-ultra.dtsi   | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
index 21eb52341ba8..8395c5a73ba6 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
@@ -262,6 +262,18 @@
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
 
+	accel@1c {
+		compatible = "fsl,mma8451";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_accel>;
+		reg = <0x1c>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <20 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-names = "INT2";
+		vdd-supply = <&reg_gen_3p3>;
+		vddio-supply = <&reg_gen_3p3>;
+	};
+
 	ucs1002: charger@32 {
 		compatible = "microchip,ucs1002";
 		pinctrl-names = "default";
@@ -522,6 +534,12 @@
 };
 
 &iomuxc {
+	pinctrl_accel: accelgrp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SAI5_RXC_GPIO3_IO20		0x41
+		>;
+	};
+
 	pinctrl_fec1: fec1grp {
 		fsl,pins = <
 			MX8MQ_IOMUXC_ENET_MDC_ENET1_MDC			0x3
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
