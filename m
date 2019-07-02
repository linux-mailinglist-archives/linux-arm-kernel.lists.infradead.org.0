Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DE45CE9F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 13:41:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NWU6ud3rQFb0e3AydxTZu8u7ydRdyN2on33kWfkc20U=; b=Qc5
	wzQq9xoTjNzX71SPBhzeY8lY0uUTG98xbH9wzH/BW7P2S8Dg2ilpDMU+U67VNA0hwqjKoKfdCyxQ4
	sqv/uxs43O3LtpJypimHVcV5mpNiVvE6vsujGV1IaALfiUbCegxT6mJGtGEC3uI+phYfO/Ga6cnri
	+MC5g1HkbpknIy/7JRcMMULsftonEZGifZWLY60AawAZ7Ff/y/QjB2QzJk0rk1lqneZniwa4YtPQd
	zlLX1UP+7vxn5ZUQB78LPr2ucbclWV3ERsRD5EY1YVokE7herx3pmj8t8XLMpx4dEOSGOsLfYMen3
	quFVY1X9kDGZdCiLUzonX/GcmCBmF2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiHA8-0004Z7-Vz; Tue, 02 Jul 2019 11:41:29 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiH9y-0004YN-29
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 11:41:19 +0000
Received: by mail-wr1-x443.google.com with SMTP id f9so17373480wre.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 04:41:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=3ayARXXXxV3IZqjBDFXfm/F9xA0F1MyP5bO9yUsg2Ew=;
 b=AZinVKjD5pKpkyAmHH7XFm1MJdG7VCz5MHEl6HNuf1p4y1EUXDtsY+8mVWGCZqLRje
 D+nMxa/7TuZ3+NykLjkgcBza1N1XSzmFnykOEo5G8RXwP9BK2WY5Rs+yASWm+LuB6n3c
 r0/9su+hOOvStO6ZoBA6V9b3+reXk17DZeOpTMWyhJ0qTipfFrTTIE2X8850LvYgIqQo
 vKAcVq1E/QTU8ivbSQsa2Jj98jIGtlwUPUuLLQTgbpa0UQ+dqat7DyaaSrumZGojLGuH
 YJ+4SPklWMHFTjU8PnGYcT7kbp/l5lLXZmIDUaTKyt6KOWitvfqey7f17442kMuoJrKB
 x22w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=3ayARXXXxV3IZqjBDFXfm/F9xA0F1MyP5bO9yUsg2Ew=;
 b=outCxbkN64px5luUxGCZg9x/UkMTXFi5H/ByMucFzo90zmv+D4Fp96ZIuw3fnuzl1a
 eTqP2eiVJ2sNjrZv86Wn28V9mRcc5JWr9T/pl4fzRfh8dKrWv15SCr+nkecQDtcTSpPS
 IZB9ju12TbEP/t3KS6DXmztjqVIpj5vvyrJ15bf5yVqy/uHXuym4T+hLVV6mLex+Fqgl
 iqFyYDZX2G65hebfWoSaTFjGf/dIahYONW8uEXc0ClXjhw7P2m8enM5DN0wsJCGWP1Kz
 0YGLbN7+WWbl0lv1UdwXmIkFdRJ9c2hLfdjoS9ulfp81kNsvwWDVldw5TgDw9G/+2uFK
 ShxA==
X-Gm-Message-State: APjAAAVf0EmzcixTBuloxEBdnQnM4fCuKgs/VYcKMZ+g943NJO1kYDvp
 Uw4wFQ7i5C7I5JGRWGXoJW8=
X-Google-Smtp-Source: APXvYqzVnJhzYVmt/0FHCQg264+pplDP2RS6ArTB3HMHwEw52k6crvLwZk7yPFAFf8XHcactQ4JYCw==
X-Received: by 2002:adf:f8cf:: with SMTP id f15mr18970181wrq.333.1562067676248; 
 Tue, 02 Jul 2019 04:41:16 -0700 (PDT)
Received: from localhost.localdomain ([212.146.100.6])
 by smtp.gmail.com with ESMTPSA id 5sm2202039wmg.42.2019.07.02.04.41.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 04:41:15 -0700 (PDT)
From: Andra Danciu <andradanciu1997@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH] arm64: dts: imx8mq: Add sai6 node
Date: Tue,  2 Jul 2019 14:41:02 +0300
Message-Id: <20190702114102.1254-1-andradanciu1997@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_044118_111843_EA3444CD 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andradanciu1997[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (andradanciu1997[at]gmail.com)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, abel.vesa@nxp.com,
 Anson.Huang@nxp.com, ccaione@baylibre.com, andrew.smirnov@gmail.com,
 s.hauer@pengutronix.de, angus@akkea.ca, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, agx@sigxcpu.org, linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cc: Daniel Baluta <daniel.baluta@nxp.com>
Signed-off-by: Andra Danciu <andradanciu1997@gmail.com>
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index d09b808eff87..1ff664523f56 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -278,6 +278,20 @@
 			#size-cells = <1>;
 			ranges = <0x30000000 0x30000000 0x400000>;
 
+			sai6: sai@30030000 {
+				compatible = "fsl,imx8mq-sai",
+					"fsl,imx6sx-sai";
+				reg = <0x30030000 0x10000>;
+				interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MQ_CLK_SAI6_IPG>,
+					<&clk IMX8MQ_CLK_SAI6_ROOT>,
+					<&clk IMX8MQ_CLK_DUMMY>, <&clk IMX8MQ_CLK_DUMMY>;
+				clock-names = "bus", "mclk1", "mclk2", "mclk3";
+				dmas = <&sdma2 4 24 0>, <&sdma2 5 24 0>;
+				dma-names = "rx", "tx";
+				status = "disabled";
+			};
+
 			gpio1: gpio@30200000 {
 				compatible = "fsl,imx8mq-gpio", "fsl,imx35-gpio";
 				reg = <0x30200000 0x10000>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
