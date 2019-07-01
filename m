Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4799C5BAE9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 13:43:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NqFPy3eWtbd/fSVtvJMQxNCe9KlMbSdnfi//gP9aO2A=; b=UNoSc5yr6S4y/h2lLIWQFl7d2B
	xoaExqJNS1AemU2/9k/FLFr8Ycca1U8b6+BTgf91/bg90Cm8xjnJ5sVKBIV3XpOFYPWdDh0YWWvkf
	oQQqfSSG3GED1Fok+VWU5HWCbLIH+s3iumI2LyciipkVqALKsKdn00gbOMT7Cj+qyg4oVP+LDEJI9
	fgFBjLAhRmZVsilsjRgNhzdHTbvEYM2vJRLD6s6QrmI2FIdnL36rlJCi0DOrsiSCAInvpHKhCaEqP
	Dv4JNSmYPl3PCiHYoXyZKrYwa7uJPU/VWF7tueY1Mpo48ZcmqzmagUe1ujUmxDNCXRJHvOdCNL4Zw
	MKmEXnkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhuiS-0003SX-Dv; Mon, 01 Jul 2019 11:43:24 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhuiG-0003Qp-Pw
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 11:43:14 +0000
Received: by mail-wr1-x444.google.com with SMTP id c2so13463737wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 04:43:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=nlvG1Oeh5iwoJZL6P2V9jRC59SO8k9eeIkjL+7+wPvc=;
 b=s0HhR+VLDw0dHjeetEwFglZJmc1xYcHfCtDrDK3KNoPfzUfX1FWIsxf3yQttWDnZNN
 p0oHKHeX/yWz+Vt3BAgmcobll1C8FR2/KM/7ZahFvSYuOrfHWYX4DDdRGAALCy6u+7ia
 HNvJZ2f84EqFvx7Ce79wgRdshOfzdgNitK9jTlgfBk5Lna6noSDXAU0KzoaKxtzdQvaB
 S1feTT+R94cOeMRE7FdvWRWrFGnXxTX++XE5lbr4KOFLKo/clzRQNKR/u0whJOgt95k/
 M6J7q63gDfzZkbMJgnOOGDIR1I17BWu2JD6mxgkZkt3F1EhBBYq7QoNCfkdRaxgwXXAJ
 aycA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=nlvG1Oeh5iwoJZL6P2V9jRC59SO8k9eeIkjL+7+wPvc=;
 b=Z5J61WsVrXnjAf3yegDxQsR8X2H2AnZsM5qmMHjRzquB+c2s4GU4DX8Yx39qtPw5Zo
 3jgdHeVUPz1ZR9AyBb8c328O2KGZkFj6dfUqknb46mE/U05fw7rcfbM0J9MxQtV48LAZ
 Blq3hKN05VmdHLivhJ/oJdymlRKeaqpCEZXLAwlsGKOsqj7pfIVPLZq+ilqav4cA2xxn
 Wid5lEk7+KY4J33apaABxuMxfOXvPsSu1wHAxGAAIbkVJ8MneQbIKsYOrYW9c9Xwsc06
 qU9VIFIYDjpMERufPBUXjHoBeNJ73UJqvpVoZFSOGZMyDQBrVAJOv7QERTzL78DEhsll
 FngQ==
X-Gm-Message-State: APjAAAVzk1at4CFNKVRf35Y3/RS13F/22IdOGwWBPwXyPMT415c4VSBu
 F2BxuxE5yrY3Ra2jHE7/+1I=
X-Google-Smtp-Source: APXvYqwgWj7Up6pniwW0+De8qQVkXxoEUkKa5hEySdPeb/hW2f4XHuyK4Lp2zaK9yIUjEIpR3Auxww==
X-Received: by 2002:a5d:5448:: with SMTP id w8mr18684638wrv.180.1561981391406; 
 Mon, 01 Jul 2019 04:43:11 -0700 (PDT)
Received: from localhost ([193.47.161.132])
 by smtp.gmail.com with ESMTPSA id j189sm12191140wmb.48.2019.07.01.04.43.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 01 Jul 2019 04:43:10 -0700 (PDT)
From: Oliver Graute <oliver.graute@gmail.com>
X-Google-Original-From: Oliver Graute <oliver.graute@kococonnector.com>
To: aisheng.dong@nxp.com
Subject: [PATCHv2 1/2] arm64: add gpio4 and gpio5 to basic DTS for i.MX8MQ
Date: Mon,  1 Jul 2019 13:42:45 +0200
Message-Id: <20190701114253.1538-2-oliver.graute@kococonnector.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190701114253.1538-1-oliver.graute@kococonnector.com>
References: <20190701114253.1538-1-oliver.graute@kococonnector.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_044312_857773_62A382FB 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 mturquette@baylibre.com, Oliver Graute <oliver.graute@kococonnector.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Sriram Dash <sriram.dash@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Anson Huang <anson.huang@nxp.com>, NXP Linux Team <linux-imx@nxp.com>,
 Bhaskar Upadhaya <bhaskar.upadhaya@nxp.com>, devicetree@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Vabhav Sharma <vabhav.sharma@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 linux-arm-kernel@lists.infradead.org, sboyd@kernel.org,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Pramod Kumar <pramod.kumar_1@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Lucas Stach <l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

add gpio4 to imx8qm.dtsi
add gpio5 to imx8qm.dtsi

Signed-off-by: Oliver Graute <oliver.graute@kococonnector.com>
---
 arch/arm64/boot/dts/freescale/imx8qm.dtsi | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8qm.dtsi b/arch/arm64/boot/dts/freescale/imx8qm.dtsi
index 526cbbddc202..fe4c584625cf 100644
--- a/arch/arm64/boot/dts/freescale/imx8qm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qm.dtsi
@@ -121,6 +121,25 @@
 		interrupt-parent = <&gic>;
 	};
 
+	gpio4: gpio@5d0c0000 {
+		compatible = "fsl,imx8qm-gpio", "fsl,imx35-gpio";
+		reg = <0x0 0x5d0c0000 0x0 0x10000>;
+		interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+};
+	gpio5: gpio@5d0d0000 {
+		compatible = "fsl,imx8qm-gpio", "fsl,imx35-gpio";
+		reg = <0x0 0x5d0d0000 0x0 0x10000>;
+		interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
+		 gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+};
+
 	pmu {
 		compatible = "arm,armv8-pmuv3";
 		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
