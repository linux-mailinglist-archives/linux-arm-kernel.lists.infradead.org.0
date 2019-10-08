Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A31ACF1D6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 06:41:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q/O5idPkIPPL9QalHfwJsP+D9eBBCfZCYHpGesAH+k0=; b=WPHLVerrgzauZj
	o7H7hdwdOgYFCeiIt4sXg/v9BjrSmtQi40cw5hTKsAbXHTsCn11JmZniV9MSbBjycRnSftzVSnQRl
	beXQG2ANbHQFjwUaePHHQiB1dULQRzt3o1SsHugaE567GwHHO/pQgk6IFMx9adk9/5MX1F0rGGQ0W
	FNQ3oCm8rxbSeEwlZ/EWUqJX6BsRoo0+EIoEz0CMjTnTdFoU93QDFnVrCx0Ct5ckC17BGuoiuMkZz
	Q+z3zNGNF1zM/JdzFWXEYTlX4pDQMpsRJ3OEo4/zd+rOzNGjoDcBLew5NFl+5k6LhyU1RRuPf64Pp
	KB23pduk/MHUrsO5tVVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHhJe-0007NQ-0W; Tue, 08 Oct 2019 04:41:42 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHhJQ-0007Ll-Od
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 04:41:30 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 983CE5B3E;
 Tue,  8 Oct 2019 00:41:25 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 08 Oct 2019 00:41:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=GhXRb+nFJbQ1J
 lYVdwDdYTE4/+duajXpoQXuOmm9rjs=; b=OA7b7JRy4RKEomRGji3QCRpTtMQji
 AiW0QomZFSXLidGORl5iEszZ1mSxL5u2O5N+O5OELQYGjy5TutWzdr6ai2PTZSF2
 YGZ23vHDCAdN+QrLxdq8N8bG0yl3iLv0SyJJ84WR0VR9IYQFmGtUgqXDg/QlIr+n
 n0dmtZB1oKW51cW1TxzLPSdUWaJD9HSgqPpySph7lf7lLyLEfbDNbwwc1s81tEl3
 pxrNbo9c2fk1xLKCpauuSJaxPcOr+D9Tyh9bRGkWgiCk0L9dJt4wK9RDsgvW2YmE
 RBCEAjz4t/vDjttAuy+b7NTZmXjCoaCKo+W+xwIp4IIpBJqMpZDBBml3A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=GhXRb+nFJbQ1JlYVdwDdYTE4/+duajXpoQXuOmm9rjs=; b=AuQK1eI4
 jOoeqajlYPJaY6zz+52orU7B7GOsUutq4zj9ufgl6S6Jcs60Qbd/QA3/4fjivzWy
 usIKStP5zifpZE2lIX7E019zrDDF6DMYQE6oVMTeiQXE0+p7ytnNdjyd045gTkAh
 vU6wdz6nH5sWQDA1RaSmVEFg3QLTH/2BwmeTlIxz7uAC7wJ1Kox1RD4/eYG4gobW
 rSt6IDGdlKrlwgVsCghjlyRWOW7/Rg6JKNexWukHHMz9qurk1ZJkj6RTrVNC6Q0s
 LbqCZCiHG0f+IHo+iRxmfz8aOEBWlFxzGI2CKvmRQoLubOZ74W05w6M/Sl+ADFT/
 2O9SAom49fax+A==
X-ME-Sender: <xms:cxOcXe8J5rfoK2Qn2N8i44u8jO_k1EE-wBuIxac6uM9Ddcvyql2jBQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrheekgdekgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucfkphepvddtvddrkedurddukedrfedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgep
 td
X-ME-Proxy: <xmx:cxOcXeSL2gMAhYkOcuJiSRCkDfcFKPFq3QG_pYT0RfozXCOlveefJA>
 <xmx:cxOcXae4bFswYcCz6e0yMBxoaN0Uoe7RBAqUrh3vUfqTjMVwwCWSPA>
 <xmx:cxOcXWB38CiAxQAjPzbiKLlB4yfxioP5DDcwYCkPZUsBVn5rQrzzqQ>
 <xmx:dROcXWWVRT-jYrYz5KUZnh9KQ9UqKQACsoEZN7szALw4xDA3RMxFAQ>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 24B4280065;
 Tue,  8 Oct 2019 00:41:19 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH 1/7] dt-bindings: pinctrl: aspeed-g6: Rework SD3 function and
 groups
Date: Tue,  8 Oct 2019 15:11:47 +1030
Message-Id: <20191008044153.12734-2-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191008044153.12734-1-andrew@aj.id.au>
References: <20191008044153.12734-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_214129_113388_86398F2A 
X-CRM114-Status: UNSURE (   6.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 johnny_huang@aspeedtech.com, linux-aspeed@lists.ozlabs.org,
 linus.walleij@linaro.org, ryanchen.aspeed@gmail.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rename SD3 functions and groups to EMMC to better reflect their intended
use before the binding escapes too far into the wild. Also clean up the
SD3 pin groups to eliminate some silliness that slipped through the
cracks (SD3DAT[4-7]) by unifying them into three new groups: EMMCG1,
EMMCG4 and EMMCG8 for 1, 4 and 8-bit data buses respectively.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
Unfortunately reflowing the list creates a lot of noise in this change. As
mentioned the SD3DAT[4-7] groups are renamed, as is the SD3 function. There
should be no functional changes beyond that.

 .../pinctrl/aspeed,ast2600-pinctrl.yaml       | 86 +++++++++----------
 1 file changed, 42 insertions(+), 44 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2600-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2600-pinctrl.yaml
index f83d888176cc..064b7dfc4252 100644
--- a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2600-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2600-pinctrl.yaml
@@ -33,13 +33,13 @@ patternProperties:
           allOf:
             - $ref: "/schemas/types.yaml#/definitions/string"
             - enum: [ ADC0, ADC1, ADC10, ADC11, ADC12, ADC13, ADC14, ADC15,
-              ADC2, ADC3, ADC4, ADC5, ADC6, ADC7, ADC8, ADC9, BMCINT, ESPI,
-              ESPIALT, FSI1, FSI2, FWSPIABR, FWSPID, FWSPIWP, GPIT0, GPIT1,
-              GPIT2, GPIT3, GPIT4, GPIT5, GPIT6, GPIT7, GPIU0, GPIU1, GPIU2,
-              GPIU3, GPIU4, GPIU5, GPIU6, GPIU7, I2C1, I2C10, I2C11, I2C12,
-              I2C13, I2C14, I2C15, I2C16, I2C2, I2C3, I2C4, I2C5, I2C6, I2C7,
-              I2C8, I2C9, I3C3, I3C4, I3C5, I3C6, JTAGM, LHPD, LHSIRQ, LPC,
-              LPCHC, LPCPD, LPCPME, LPCSMI, LSIRQ, MACLINK1, MACLINK2,
+              ADC2, ADC3, ADC4, ADC5, ADC6, ADC7, ADC8, ADC9, BMCINT, EMMC,
+              ESPI, ESPIALT, FSI1, FSI2, FWSPIABR, FWSPID, FWSPIWP, GPIT0,
+              GPIT1, GPIT2, GPIT3, GPIT4, GPIT5, GPIT6, GPIT7, GPIU0, GPIU1,
+              GPIU2, GPIU3, GPIU4, GPIU5, GPIU6, GPIU7, I2C1, I2C10, I2C11,
+              I2C12, I2C13, I2C14, I2C15, I2C16, I2C2, I2C3, I2C4, I2C5, I2C6,
+              I2C7, I2C8, I2C9, I3C3, I3C4, I3C5, I3C6, JTAGM, LHPD, LHSIRQ,
+              LPC, LPCHC, LPCPD, LPCPME, LPCSMI, LSIRQ, MACLINK1, MACLINK2,
               MACLINK3, MACLINK4, MDIO1, MDIO2, MDIO3, MDIO4, NCTS1, NCTS2,
               NCTS3, NCTS4, NDCD1, NDCD2, NDCD3, NDCD4, NDSR1, NDSR2, NDSR3,
               NDSR4, NDTR1, NDTR2, NDTR3, NDTR4, NRI1, NRI2, NRI3, NRI4, NRTS1,
@@ -48,47 +48,45 @@ patternProperties:
               PWM8, PWM9, RGMII1, RGMII2, RGMII3, RGMII4, RMII1, RMII2, RMII3,
               RMII4, RXD1, RXD2, RXD3, RXD4, SALT1, SALT10, SALT11, SALT12,
               SALT13, SALT14, SALT15, SALT16, SALT2, SALT3, SALT4, SALT5,
-              SALT6, SALT7, SALT8, SALT9, SD1, SD2, SD3, SD3DAT4, SD3DAT5,
-              SD3DAT6, SD3DAT7, SGPM1, SGPS1, SIOONCTRL, SIOPBI, SIOPBO,
-              SIOPWREQ, SIOPWRGD, SIOS3, SIOS5, SIOSCI, SPI1, SPI1ABR, SPI1CS1,
-              SPI1WP, SPI2, SPI2CS1, SPI2CS2, TACH0, TACH1, TACH10, TACH11,
-              TACH12, TACH13, TACH14, TACH15, TACH2, TACH3, TACH4, TACH5,
-              TACH6, TACH7, TACH8, TACH9, THRU0, THRU1, THRU2, THRU3, TXD1,
-              TXD2, TXD3, TXD4, UART10, UART11, UART12, UART13, UART6, UART7,
-              UART8, UART9, VB, VGAHS, VGAVS, WDTRST1, WDTRST2, WDTRST3,
-              WDTRST4, ]
+              SALT6, SALT7, SALT8, SALT9, SD1, SD2, SGPM1, SGPS1, SIOONCTRL,
+              SIOPBI, SIOPBO, SIOPWREQ, SIOPWRGD, SIOS3, SIOS5, SIOSCI, SPI1,
+              SPI1ABR, SPI1CS1, SPI1WP, SPI2, SPI2CS1, SPI2CS2, TACH0, TACH1,
+              TACH10, TACH11, TACH12, TACH13, TACH14, TACH15, TACH2, TACH3,
+              TACH4, TACH5, TACH6, TACH7, TACH8, TACH9, THRU0, THRU1, THRU2,
+              THRU3, TXD1, TXD2, TXD3, TXD4, UART10, UART11, UART12, UART13,
+              UART6, UART7, UART8, UART9, VB, VGAHS, VGAVS, WDTRST1, WDTRST2,
+              WDTRST3, WDTRST4, ]
         groups:
           allOf:
             - $ref: "/schemas/types.yaml#/definitions/string"
             - enum: [ ADC0, ADC1, ADC10, ADC11, ADC12, ADC13, ADC14, ADC15,
-              ADC2, ADC3, ADC4, ADC5, ADC6, ADC7, ADC8, ADC9, BMCINT, ESPI,
-              ESPIALT, FSI1, FSI2, FWSPIABR, FWSPID, FWQSPID, FWSPIWP, GPIT0,
-              GPIT1, GPIT2, GPIT3, GPIT4, GPIT5, GPIT6, GPIT7, GPIU0, GPIU1,
-              GPIU2, GPIU3, GPIU4, GPIU5, GPIU6, GPIU7, HVI3C3, HVI3C4, I2C1,
-              I2C10, I2C11, I2C12, I2C13, I2C14, I2C15, I2C16, I2C2, I2C3,
-              I2C4, I2C5, I2C6, I2C7, I2C8, I2C9, I3C3, I3C4, I3C5, I3C6,
-              JTAGM, LHPD, LHSIRQ, LPC, LPCHC, LPCPD, LPCPME, LPCSMI, LSIRQ,
-              MACLINK1, MACLINK2, MACLINK3, MACLINK4, MDIO1, MDIO2, MDIO3,
-              MDIO4, NCTS1, NCTS2, NCTS3, NCTS4, NDCD1, NDCD2, NDCD3, NDCD4,
-              NDSR1, NDSR2, NDSR3, NDSR4, NDTR1, NDTR2, NDTR3, NDTR4, NRI1,
-              NRI2, NRI3, NRI4, NRTS1, NRTS2, NRTS3, NRTS4, OSCCLK, PEWAKE,
-              PWM0, PWM1, PWM10G0, PWM10G1, PWM11G0, PWM11G1, PWM12G0, PWM12G1,
-              PWM13G0, PWM13G1, PWM14G0, PWM14G1, PWM15G0, PWM15G1, PWM2, PWM3,
-              PWM4, PWM5, PWM6, PWM7, PWM8G0, PWM8G1, PWM9G0, PWM9G1, QSPI1,
-              QSPI2, RGMII1, RGMII2, RGMII3, RGMII4, RMII1, RMII2, RMII3,
-              RMII4, RXD1, RXD2, RXD3, RXD4, SALT1, SALT10G0, SALT10G1,
-              SALT11G0, SALT11G1, SALT12G0, SALT12G1, SALT13G0, SALT13G1,
-              SALT14G0, SALT14G1, SALT15G0, SALT15G1, SALT16G0, SALT16G1,
-              SALT2, SALT3, SALT4, SALT5, SALT6, SALT7, SALT8, SALT9G0,
-              SALT9G1, SD1, SD2, SD3, SD3DAT4, SD3DAT5, SD3DAT6, SD3DAT7,
-              SGPM1, SGPS1, SIOONCTRL, SIOPBI, SIOPBO, SIOPWREQ, SIOPWRGD,
-              SIOS3, SIOS5, SIOSCI, SPI1, SPI1ABR, SPI1CS1, SPI1WP, SPI2,
-              SPI2CS1, SPI2CS2, TACH0, TACH1, TACH10, TACH11, TACH12, TACH13,
-              TACH14, TACH15, TACH2, TACH3, TACH4, TACH5, TACH6, TACH7, TACH8,
-              TACH9, THRU0, THRU1, THRU2, THRU3, TXD1, TXD2, TXD3, TXD4,
-              UART10, UART11, UART12G0, UART12G1, UART13G0, UART13G1, UART6,
-              UART7, UART8, UART9, VB, VGAHS, VGAVS, WDTRST1, WDTRST2, WDTRST3,
-              WDTRST4, ]
+              ADC2, ADC3, ADC4, ADC5, ADC6, ADC7, ADC8, ADC9, BMCINT, EMMCG1,
+              EMMCG4, EMMCG8, ESPI, ESPIALT, FSI1, FSI2, FWSPIABR, FWSPID,
+              FWQSPID, FWSPIWP, GPIT0, GPIT1, GPIT2, GPIT3, GPIT4, GPIT5,
+              GPIT6, GPIT7, GPIU0, GPIU1, GPIU2, GPIU3, GPIU4, GPIU5, GPIU6,
+              GPIU7, HVI3C3, HVI3C4, I2C1, I2C10, I2C11, I2C12, I2C13, I2C14,
+              I2C15, I2C16, I2C2, I2C3, I2C4, I2C5, I2C6, I2C7, I2C8, I2C9,
+              I3C3, I3C4, I3C5, I3C6, JTAGM, LHPD, LHSIRQ, LPC, LPCHC, LPCPD,
+              LPCPME, LPCSMI, LSIRQ, MACLINK1, MACLINK2, MACLINK3, MACLINK4,
+              MDIO1, MDIO2, MDIO3, MDIO4, NCTS1, NCTS2, NCTS3, NCTS4, NDCD1,
+              NDCD2, NDCD3, NDCD4, NDSR1, NDSR2, NDSR3, NDSR4, NDTR1, NDTR2,
+              NDTR3, NDTR4, NRI1, NRI2, NRI3, NRI4, NRTS1, NRTS2, NRTS3, NRTS4,
+              OSCCLK, PEWAKE, PWM0, PWM1, PWM10G0, PWM10G1, PWM11G0, PWM11G1,
+              PWM12G0, PWM12G1, PWM13G0, PWM13G1, PWM14G0, PWM14G1, PWM15G0,
+              PWM15G1, PWM2, PWM3, PWM4, PWM5, PWM6, PWM7, PWM8G0, PWM8G1,
+              PWM9G0, PWM9G1, QSPI1, QSPI2, RGMII1, RGMII2, RGMII3, RGMII4,
+              RMII1, RMII2, RMII3, RMII4, RXD1, RXD2, RXD3, RXD4, SALT1,
+              SALT10G0, SALT10G1, SALT11G0, SALT11G1, SALT12G0, SALT12G1,
+              SALT13G0, SALT13G1, SALT14G0, SALT14G1, SALT15G0, SALT15G1,
+              SALT16G0, SALT16G1, SALT2, SALT3, SALT4, SALT5, SALT6, SALT7,
+              SALT8, SALT9G0, SALT9G1, SD1, SD2, SD3, SGPM1, SGPS1, SIOONCTRL,
+              SIOPBI, SIOPBO, SIOPWREQ, SIOPWRGD, SIOS3, SIOS5, SIOSCI, SPI1,
+              SPI1ABR, SPI1CS1, SPI1WP, SPI2, SPI2CS1, SPI2CS2, TACH0, TACH1,
+              TACH10, TACH11, TACH12, TACH13, TACH14, TACH15, TACH2, TACH3,
+              TACH4, TACH5, TACH6, TACH7, TACH8, TACH9, THRU0, THRU1, THRU2,
+              THRU3, TXD1, TXD2, TXD3, TXD4, UART10, UART11, UART12G0,
+              UART12G1, UART13G0, UART13G1, UART6, UART7, UART8, UART9, VB,
+              VGAHS, VGAVS, WDTRST1, WDTRST2, WDTRST3, WDTRST4, ]
 
 required:
   - compatible
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
