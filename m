Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC10C14FD2F
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 14:01:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1264eUBmfH78E5HgwZ0pXtIY2rrSeX/koXAOHdQDCTQ=; b=nVDCydccjtS0bU
	oXT/V0QsQpPSd9Qh+Lz5lzqd7E3zKZ5Mll+KoxJeaPMhGG5hmkYZXtP5g9qQ1ZHGAR7ENspZDg+ax
	7eV5KG6D1wB6LlUILxduhw+lvw2ovMVsxzaiGEZT1TpGmJoUBkCb1wtlMC4cMZtk//xCCRQPuSoMJ
	ApD5zI95+xf/obRMiOYVLA6aLGhvB3UhPkfHFd5ovHLWdRU6JpxRa2OdZD6HYcDw/2jpsJNLauQTG
	hCXtqnt6FHkkiyKvFXSz+WLQG8KRiEhCvYVqcNP6cJqzN5NxciCM2hrj1JUnjGPOBwlA4DBuRTPmJ
	KgDUS9zfhj53FSMI/cMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyEsH-0000Fs-6a; Sun, 02 Feb 2020 13:01:17 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyErD-0007oe-K4
 for linux-arm-kernel@lists.infradead.org; Sun, 02 Feb 2020 13:00:13 +0000
Received: by mail-yw1-xc43.google.com with SMTP id z141so10004408ywd.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 02 Feb 2020 05:00:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SsuOPfBklrufoFfToRN135Zc2rs5UCZymJ1rqf8A5fk=;
 b=ijQUUDtGpKwfUbhvL5SVvpt+vqVbACJ6PiX35Y/j3JCg7NaDX+nNFSzWxCY9E/N1as
 KJIQssRUYrJ5ld+sdSLiWQT9E2gNxGNdFY/oX0piRs9BzNuBEK/HbIbQKIjNgviAQnq9
 mIwSnp/k7mxRI5y1lQ4VZyUsZdxrL65GNXGr5NXT/beG5LN/rl/Un2kFCUF4RqpQMCJ3
 hNqY4MRMggzNmJ5mwJqGINLoxEJWLQO70fK6nhvoDmmskdGFHYtIE9nS/HD6aXZvm6k1
 QGoty3d4PEiK/vAk9l/jlWPHACltCHxjsjYehOde4gXI1v3qJwEgchSPbFBAZIN7TZwS
 vUWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SsuOPfBklrufoFfToRN135Zc2rs5UCZymJ1rqf8A5fk=;
 b=JTmwuCnIgT0XOxtmNqnATEX5GRkSMOIp8j9+2UTd34oejsBhNMeA/9cFtp2QbpICd2
 Vglsc7E1sKvSznzaamYyt67z+YYDUOIE4goQuxwQa+XPAdF1jYTvya+xdJ51NbEiFjbM
 61jTMpXypOwoV8Mo5vP+++i0PBYWUl57YRUxwIcRS3RbEsEDDiVleXo7Ej6ytHcoQZrZ
 4rSeuO5FTte9g70JpkFKseJBLGNj7Ir4nvS5RCIhTYJRjXlXxc14GempJgpXYb6K2JSg
 90FD0hnkP2vYhkn+E024lGoduaY8sOnLrRbj/0gLtl25MXQg3bTV04AT4RUH9Aw7mzS9
 +F5g==
X-Gm-Message-State: APjAAAW8zNSBKF1uYWapXsv/I9I03oKP5hw9k8sCMdx87ymq0DHtlhxv
 wgX2nf8SsRp8mzhG+PA0w80=
X-Google-Smtp-Source: APXvYqxcps2+b1RjCFnMPuOPzXi0K2uJFw8vIjvBLVbqj1s91p0IDLSQuX06wGYKgxezMcLqCo3DQw==
X-Received: by 2002:a0d:e802:: with SMTP id r2mr15745234ywe.471.1580648410303; 
 Sun, 02 Feb 2020 05:00:10 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id m137sm7090013ywd.108.2020.02.02.05.00.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 05:00:09 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-spi@vger.kernel.org
Subject: [PATCH V2 5/5] arm64: dts: enable fspi in imx8mm dts
Date: Sun,  2 Feb 2020 06:59:50 -0600
Message-Id: <20200202125950.1825013-5-aford173@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200202125950.1825013-1-aford173@gmail.com>
References: <20200202125950.1825013-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_050011_725503_228D516C 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ashish Kumar <ashish.kumar@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Yogesh Gaur <yogeshgaur.83@gmail.com>, Mark Brown <broonie@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Han Xu <han.xu@nxp.com>,
 Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Pull in upstream patch from NXP repo to:
enable fspi in imx8mm DT file

Signed-off-by: Han Xu <han.xu@nxp.com>
Signed-off-by: Adam Ford <aford173@gmail.com>
---
V2: Reorder s-o-b lines to give credit in proper order.

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 1e5e11592f7b..679769fe6cab 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -558,7 +558,21 @@ aips3: bus@30800000 {
 			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
-			ranges = <0x30800000 0x30800000 0x400000>;
+			ranges = <0x30800000 0x30800000 0x400000>,
+				 <0x8000000 0x8000000 0x10000000>;
+
+			flexspi: spi@30bb0000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "nxp,imx8mm-fspi";
+				reg = <0x30bb0000 0x10000>, <0x8000000 0x10000000>;
+				reg-names = "fspi_base", "fspi_mmap";
+				interrupts = <GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MM_CLK_QSPI_ROOT>,
+					 <&clk IMX8MM_CLK_QSPI_ROOT>;
+				clock-names = "fspi", "fspi_en";
+				status = "disabled";
+			};
 
 			ecspi1: spi@30820000 {
 				compatible = "fsl,imx8mm-ecspi", "fsl,imx51-ecspi";
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
