Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF756E0C7D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 21:21:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=eWFZq4SIC5kPeAw6xdEdjjw4HT0SDX083gIONL6lep4=; b=lrt
	dtgLFlXMR7kpX8D8hSNC6ncHkghRniUlpiSLO49Wk4ZlsnhGvoFovFYZDEDvnlRafCvRxCSaWFso0
	9SLEvoIpImHVVIu0hzeC5aT71hw+jTkjBPxUdubA47kbSoDSq7RJ1j413ojwOzKIkqAktAR1k6Qaq
	1lmdBjNbO7kt4A1W+MdBnuPpFwrlmyfTn4M31jMtWNG16E1M4vC2DhSidof5wTX3yYtfey4WyOh1o
	yi278YkWxt7uUgZNJMw6dETQhJcHEr0QPojsS18MANkxn3vIn/CN21rLFDIKBZhYd5onxwnnYcB+3
	NOxGki43L6SErLeW1Q/bEVbuK279K/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMziZ-0007Ik-K2; Tue, 22 Oct 2019 19:21:19 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMziP-0007Ho-0y
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 19:21:11 +0000
Received: by mail-qt1-x841.google.com with SMTP id w14so28472198qto.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 12:21:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=p3HQhINpc7sZsIcpNCn/h8geG6mtLx6BBg3t3ICTUhg=;
 b=pMXoI8ZHhGZcW/PUKZ0iseGz3giLQXTTrrO+IGc6who5BO+L9ecTquG6EerKy1i86J
 Fcu488f3Aa7B+qe5IDaHvkaGntiwBcF4RF5Dm25f0HueFN2+NlW4FGm3/4JpP4df/2NZ
 hmQI8vsK7dJJX2BY4cJASDZ18EkacZYjjwwCzTkWTg7H0ZCIQFmp1d9qeM0jJ+WJ7ffG
 S+5PHNyYMz4EH+zRdeWb2UTAIFp6RVSR/WLLc8S3fcMRuebkIqkOAhGnHJklPt2rYofZ
 rpNikWcoi4RNqcbS8BU9/zlo8CyEGYF3CSPlMPP1xuSGwCqmMbi4InOsFIlelX/wh75V
 sdIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=p3HQhINpc7sZsIcpNCn/h8geG6mtLx6BBg3t3ICTUhg=;
 b=b8gqxKoHTJV/F9azNWMBeH1yA8JZ+LWUnLogIGpmJSEep6xoJo5Mb/GVLxF1cdSstm
 wvR/tsu1ngfP2+yy+B2pZHiwrxEvfIwt8APfn6pnUsnpChPkrDIzIpKNrkEz5aHktrnR
 /h+eG68dXQIgXjTDzpHNX3RKSMms2iPzWk2TOnMZZ22WXkGJ/9H0P0BuwxkJyk3Phlkc
 mzsAJ6iYXZc/MMA0D9X+IVAyVgbBxwygM4chFSuw9wLjrdOPHlmmPAkUowdJIbxf0utr
 NKwem7EExvrlFZ3woPGwHKzb/t1ObK4uoq+HJLwbkSpE5Gvy9vWXfgbLEOxJHSfNFuVV
 qJhw==
X-Gm-Message-State: APjAAAWnZybzBYkzEu2j6uMEllw+LjutFULLiwt+FxLHWkUgADxII8WD
 IKRfbTx6jv1nkhEdLoKp/60=
X-Google-Smtp-Source: APXvYqxo6yjcFHy00Qtvm6n/aWHlQmpIUDixfzEK4DqPUaT+bhPco4Rl8Q6Ob6JJu+WOl+bpRZJMPA==
X-Received: by 2002:ac8:1e89:: with SMTP id c9mr5258144qtm.226.1571772067051; 
 Tue, 22 Oct 2019 12:21:07 -0700 (PDT)
Received: from rogerio-Latitude-7490.nxp.com ([177.221.114.206])
 by smtp.gmail.com with ESMTPSA id h20sm8185938qtp.93.2019.10.22.12.21.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 12:21:06 -0700 (PDT)
From: Rogerio Pimentel da Silva <rpimentel.silva@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Lucas Stach <l.stach@pengutronix.de>, Carlo Caione <ccaione@baylibre.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>, Baruch Siach <baruch@tkos.co.il>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: imx8mq-evk: Add remote control
Date: Tue, 22 Oct 2019 16:20:34 -0300
Message-Id: <20191022192038.30094-1-rpimentel.silva@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_122109_067778_879D2C29 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rpimentel.silva[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: rpimentel.silva@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add remote control to i.MX8M EVK device tree.

The rc protocol must be selected by writing to:
/sys/devices/platform/ir-receiver/rc/rc0/protocols

On my tests, I used "nec" rc protocol:
echo nec > protocols

Tested using evetest:
evtest /dev/input/event0

Output log for each key pressed:
Event: 
time 1568122608.267845, -------------- SYN_REPORT ------------
Event: 
time 1568122610.503835, type 4 (EV_MSC), code 4 (MSC_SCAN), value 440

Signed-off-by: Rogerio Pimentel da Silva <rpimentel.silva@gmail.com>
---
 arch/arm64/boot/dts/freescale/imx8mq-evk.dts | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-evk.dts b/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
index 6ede46f7d45b..bd81e4a45ff5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
@@ -50,6 +50,13 @@
 			  900000 0x1>;
 	};
 
+	ir-receiver {
+		compatible = "gpio-ir-receiver";
+		gpios = <&gpio1 12 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_ir>;
+	};
+
 	wm8524: audio-codec {
 		#sound-dai-cells = <0>;
 		compatible = "wlf,wm8524";
@@ -340,6 +347,12 @@
 		>;
 	};
 
+	pinctrl_ir: irgrp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_GPIO1_IO12_GPIO1_IO12		0x4f
+		>;
+	};
+
 	pinctrl_pcie0: pcie0grp {
 		fsl,pins = <
 			MX8MQ_IOMUXC_I2C4_SCL_PCIE1_CLKREQ_B		0x76
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
