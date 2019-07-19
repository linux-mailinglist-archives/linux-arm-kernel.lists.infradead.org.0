Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F066E482
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 12:49:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mUVP9TGwILP4C3NQyovuBmctBD4ON4Q7Nq/YjczkrsI=; b=OFx
	Ni6OUyAHmPxWh4t07QZbeF8Skn1BGG9Vs7KxI/zTFQQFgZ/AvkJQmWzRfos0fAEEkBvYlMu+w2wmO
	YIhYJ1KnoCJYm3nRy4tCQBV3Cj3Vs6rwEFN9yi7ncl+jfENFBpnD6zj3uPbetufL75dARndWVpqI5
	NelT5XZAX+uEpnP6lto5UgrcKkF0vfYyCypkSC2uXG89ATAQtdZeynZ0mfIhUwQnCJlmxt1uMpUud
	NN1HXTbVH5x43T8YmzLgijCUtMx74MXlR3+attdnNWRSlPEPqPdy3BcJSyiPH6g0VZAqvwhsfmAYJ
	35K2fNMdljNa8TyHo+LBgaqftscwf3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoQRi-0003Bc-Ks; Fri, 19 Jul 2019 10:49:02 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoQR9-0002yS-HH
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 10:48:32 +0000
Received: by mail-wm1-x32a.google.com with SMTP id w9so23447876wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 03:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=R5IjW3oGqQUq2Up+LhsQmfFvBYfe7qjR4zv8CoQiT3g=;
 b=PUFXT19kUMbTrbKT+P/Ooq6STWmP4QVWYX3TzEK60ioRCOY+okcyE/Ye7H495VxV7m
 3aJaWJ1aujmBY5GSWMvk4ZyZI3mf6edExMJngLHGU8wmSHmLrsNGYkcekQ+t/tVhQy0U
 B6abbtQay8f2toveRVzDVB/TR8jGEXtVDcbAb4s8YpfTwwAz7f4CTvKzSQNXL1NsuRlP
 xc9Q1LMX8jnO39V+U5HDErK+esl6JU7aEKDnplwOJw9j5WGmilfyZ/VXq82nYm/6L+wq
 pDKgk3xK6swBuotGcq2vKqb2hGB4SPWlgt17pvtRPZWgofQQeePudi4SFItjgDjsSlvO
 5XCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=R5IjW3oGqQUq2Up+LhsQmfFvBYfe7qjR4zv8CoQiT3g=;
 b=L9kaD0cqTAIAPW8dbVi6Ss/xHID4CxXbiQ1KcjL8anenkHmPo+h9W0C4tAMP85KfHW
 S7ZpeD843xYl5p02VPxmDeyW4vMcPmIAPvBPno6OTeW96Eh9uStl7W6vcQ2cjWxsQEdg
 xqJPkpzYAa1MJbVWHo9f989azWZ3CB/XJDcJvNH/HjczkcsSQ3OHaAlE28QCwFLt229o
 eBYdUT09I9EvEYWm9XnJGdHwY0Nb//JFElCAwkqlbi6t7XcD58XVfrb664kpkyTieWQ7
 nLkXVaOu9VEU9ivwzFzEBB084+CTyw8Iihc+5N1f4kyW8rHIg8qAOCEorexeM4XRS7CV
 RDvA==
X-Gm-Message-State: APjAAAUoFASUFcXsRboMtHm19SxUy643URh/8luCsiLgTZcxVl03EgY2
 Ax4kPlDOhTCqLpZhfcBRgEw=
X-Google-Smtp-Source: APXvYqxVPF4ktHM35tLzJSykO3KFUi5qSeDGE9eS/cE1UXxbHInkSFMksSH+nYOmCxFeTLN0ceoqHw==
X-Received: by 2002:a1c:d185:: with SMTP id i127mr49196684wmg.63.1563533304710; 
 Fri, 19 Jul 2019 03:48:24 -0700 (PDT)
Received: from localhost.localdomain ([212.146.100.6])
 by smtp.gmail.com with ESMTPSA id j17sm39635565wrb.35.2019.07.19.03.48.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 19 Jul 2019 03:48:24 -0700 (PDT)
From: andradanciu1997 <andradanciu1997@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH v4 0/2] Add basic support for pico-pi-imx8m
Date: Fri, 19 Jul 2019 13:48:00 +0300
Message-Id: <20190719104802.18070-1-andradanciu1997@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_034828_191584_8FF5F5BE 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32a listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andradanciu1997[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (andradanciu1997[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, ping.bai@nxp.com, bhaskar.upadhaya@nxp.com,
 angus@akkea.ca, manivannan.sadhasivam@linaro.org, sriram.dash@nxp.com,
 festevam@gmail.com, richard.hu@technexion.com, andrew.smirnov@gmail.com,
 pankaj.bansal@nxp.com, linux-imx@nxp.com, devicetree@vger.kernel.org,
 andradanciu1997@gmail.com, Michal.Vokac@ysoft.com, pramod.kumar_1@nxp.com,
 s.hauer@pengutronix.de, robh+dt@kernel.org, vabhav.sharma@nxp.com,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, kernel@pengutronix.de,
 l.stach@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for TechNexion PICO-PI-IMX8M based on patches from Richard Hu
Datasheet is at: https://s3.us-east-2.amazonaws.com/technexion/datasheets/picopiimx8m.pdf

Changes since v3:
 - renamed pico-pi-8m.dts to imx8mq-pico-pi.dts
 - moved iomuxc node as the last one
 - removed pinctrl-assert-gpios property from fec1 node
 - removed at803x,led-act-blind-workaround, at803x,eee-disabled
   properties from mdio node
 - added pinctrl-names = "default" to i2c1 node
 - changed bd71837 pmic support properties according to
   Documentation/devicetree/bindings/regulator/rohm,bd71837-regulator.txt
 - removed A53_0 node

Changes since v2:
 - changed PICO-PI-8M bord compatible from wand,imx8mq-pico-pi to
   technexion,pico-pi-imx8m
 - removed bootargs property
 - removed regulators node and put fixed regulator directly under root node
 - changed node name from usb_otg_vbus to regulator-usb-otg-vbus
 - removed pinctrl-names property from iomuxc node
 - removed wand-pi-8m container node
 - sorted pinctrl nodes alphabetically
 - removed tusb320_irqgrp, tusb320_irqgrp nodes because there is no upstream
   driver
 - changed properties' order in usb_dwc3_1 node

Changes since v1:
 - renamed wandboard-pi-8m.dts to pico-pi-8m.dts
 - removed pinctrl_csi1, pinctrl_wifi_ctrl
 - used generic name for pmic
 - removed gpo node
 - delete regulator-virtuals node
 - remove always-on property from buck1-8 and ldo3-7
 - remove pmic-buck-uses-i2c-dvs property for buck1-4

Andra Danciu (1):
  dt-bindings: arm: fsl: Add the pico-pi-imx8m board

Richard Hu (1):
  arm64: dts: fsl: pico-pi: Add a device tree for the PICO-PI-IMX8M

 Documentation/devicetree/bindings/arm/fsl.yaml   |   1 +
 arch/arm64/boot/dts/freescale/Makefile           |   1 +
 arch/arm64/boot/dts/freescale/imx8mq-pico-pi.dts | 417 +++++++++++++++++++++++
 3 files changed, 419 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mq-pico-pi.dts

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
