Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A183135CFE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 16:42:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z70sGMudUOz3+32rRJ6sOvBgROT4gtuS4qWkLLqSt/M=; b=QixzRp2FEm1rjO
	HVkhYlwCPJGFbtmGOSB8VpO6MsU2cLOioAOGl5PaeJknbvWt68/94uwyo+c3XaLfRIxaJgyw2gkAo
	9y7Ha1xnBq2ODLwdGcs+hSyouAkTX41ocT7htbGmpxxq9d///WFant3DkeOjrsaHK5k1kFT6m178D
	140i+ZhP7CFjsVB0YxYWqU531M/u9k7wrWY/LIzcDJBMW+VHYlAboONJkp4AB3flb42XnO3+yNlZ7
	rW6f10QAxPYbMysfyBtT8XhjGRzr3zSUsXIi1tgvjnr1tq7piM7z+O++Gnr1BYNWOcGve5CEP1lRD
	FjllyWfOQm8Qc4x9yLjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipZx9-0003kJ-64; Thu, 09 Jan 2020 15:42:31 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipZx1-0003jH-4u; Thu, 09 Jan 2020 15:42:24 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1ipZws-0004wt-5f; Thu, 09 Jan 2020 16:42:14 +0100
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from roc-pc (p5098d998.dip0.t-ipconnect.de [80.152.217.152])
 (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 009FgCHr032463
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 9 Jan 2020 16:42:13 +0100
From: Markus Reichl <m.reichl@fivetechno.de>
To: linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>
Subject: [RESEND PATCH 3/3] arm64: dts: rockchip: Enable sdio0 and uart0 on
 rk3399-roc-pc-mezzanine
Date: Thu,  9 Jan 2020 16:42:10 +0100
Message-Id: <20200109154211.1530-1-m.reichl@fivetechno.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-bounce-key: webpack.hosteurope.de; m.reichll@fivetechno.de; 1578584543;
 8040eb79; 
X-HE-SMSGID: 1ipZws-0004wt-5f
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_074223_331801_E076ACD7 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Markus Reichl <m.reichl@fivetechno.de>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The mezzanine board carries an E key type M.2 slot. This is
connected to USB, SDIO and UART0. Enable sdio and uart0 for use
with wlan and/or bt M.2 cards.

Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
---
Wifi via SDIO has been tested with Laird ST60-2230C (Marvell 88W8997)
Bluetoth via USB has been tested with Intel 9260
Bluetooth via UART has not been tested.
---
Patch 1/3 of this series has been merged already [1]
Patch 2/3 of this series needs further discussion [2]
[1] https://lkml.org/lkml/2019/12/10/516
[2] https://lkml.org/lkml/2019/12/10/517
---
 .../dts/rockchip/rk3399-roc-pc-mezzanine.dts  | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
index 2db9d32ad54a..2acb3d500fb9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
@@ -70,3 +70,24 @@ pcie_perst: pcie-perst {
 		};
 	};
 };
+
+&sdio0 {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc3v3_ngff>;
+	vqmmc-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
+	status = "okay";
+};
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
