Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC71196323
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 03:34:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1xJY8F5IjZum6VMplq75ZWN+YX94FakVjRlhjQxIvMQ=; b=T+sbjym1vmNpTW
	1cLFoa1RuQnlfqUkVUS151VNw8zdkZefyqRO8DxEhkMuaiqRfDaTWkEqfs8rITRr9EVDIwVe07b+K
	4Ebo6kTsP00OFT6kmvweek+7TO3BIwJ8WjeaTtoDWbI45+wYlj7uTwCR+hBWhuR863mkUakqiwCpj
	ks+OVYxiUrEzywwGfN3UBT9xFbbGmrSt66Ck0JkouKKWToJg2hTpU5GQaN5s74f9TpX0toO6cbfg1
	RXmiaK/8zx5mQx3WSY6YLFLBwnEZvkBLuJS2k7JTh43EIagPUSmvGnMOa5xckCegpIgTo65T+3txd
	F3TqiQxhJYgul0VRClYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI1In-0001pi-MA; Sat, 28 Mar 2020 02:34:25 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI1If-0001oG-6q
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 02:34:18 +0000
Received: by mail-qt1-x841.google.com with SMTP id t9so10356804qto.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 19:34:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=h9FUiJnnr5PX2/0tdiYpKEU/w0yDcw3x3MQa3IPxCF8=;
 b=dw8jxJiID7bRFJDPdTiFwwqJqlfjX8HMUqDHr9GcqNPu75kEYsuaXT2+KaS0/6++f4
 LZOvHSW2v/zvknpClBWQM7Zwx2+FNLjxlA8T4OzUs+ZspSE8yczmu1lZzpfUnrd1JIpN
 jHB0qR5Byz+lihhGJomIy1bm6TjbuT8BXUq1FJgWjArqYzbhn+0j3Uif6epT2udRORX1
 2bp26WjVxHi4lry9YPi/tjIjiuneeEAkvp+T4qGJsaizPBQmQzmyuP4nLjEfNMTz1XNl
 /nRYEEPf8u62CGK78uTIo+0C3WvACle7rdEmQk0xSmvSgiOuwY19xNY33f9WPYr6OpRH
 vjJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=h9FUiJnnr5PX2/0tdiYpKEU/w0yDcw3x3MQa3IPxCF8=;
 b=MQDQFnbcjS0wepUUTAEic6Xh5ZtFVp2SIiQYPoPV5V6JGKNGr6+ZnWXDjqIzNgPiG8
 UACf8zqWdS2svM0IV3ixDVEb0tnnBtlNrldgGQTGGUv7boGBT5+JFpvkGsE9NQxC/u9/
 3l2Zq0YTsqmNcabXsVRveGw1gGSyA1NsScHKDGDwxCgMHZadYDHmHOBPCuzY3HBuz88X
 PVPh/m84CHZ/95Wa+Lz3cfjE1fiKsrh/0r/dQbX8twl1sQurQPjcpsD0SczMIwo1d/OS
 Bno31cXPjMaPfbIi/MwZ7gCki1H23H1wbIRQivTlhrTLnv1MDgGIW3Kw1rRZOOQLP32n
 6Wgg==
X-Gm-Message-State: ANhLgQ1N4IQuX3xcOCmg6aoBcgYLo83vAu5daj0Sl81RtIPTjFwv/NaK
 mx5c/igzTjqTgGMaSsIhTRF0LBRFsUg=
X-Google-Smtp-Source: ADFU+vv8zDTvr87UFUjjRLpX/3/jOQn9JKQUGc8o7COhSoa7xaMmmQ5xMhKlPTxhG/DT6jD+iHVfxg==
X-Received: by 2002:ac8:3565:: with SMTP id z34mr2390096qtb.168.1585362853420; 
 Fri, 27 Mar 2020 19:34:13 -0700 (PDT)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id p191sm5069913qke.6.2020.03.27.19.34.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Mar 2020 19:34:12 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: imx8mn: Change SDMA1 ahb clock for imx8mn
Date: Fri, 27 Mar 2020 21:33:53 -0500
Message-Id: <20200328023353.156929-1-aford173@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_193417_276631_3F1A225F 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Anson Huang <Anson.Huang@nxp.com>,
 Adam Ford <aford173@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 aford@beaconembedded.com, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Using SDMA1 with UART1 is causing a "Timeout waiting for CH0" error.
This patch changes to ahb clock from SDMA1_ROOT to AHB which fixes the
timeout error.

Fixes: 6c3debcbae47 ("arm64: dts: freescale: Add i.MX8MN dtsi support")

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index a44b5438e842..882e913436ca 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -661,7 +661,7 @@ sdma1: dma-controller@30bd0000 {
 				reg = <0x30bd0000 0x10000>;
 				interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX8MN_CLK_SDMA1_ROOT>,
-					 <&clk IMX8MN_CLK_SDMA1_ROOT>;
+					 <&clk IMX8MN_CLK_AHB>;
 				clock-names = "ipg", "ahb";
 				#dma-cells = <3>;
 				fsl,sdma-ram-script-name = "imx/sdma/sdma-imx7d.bin";
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
