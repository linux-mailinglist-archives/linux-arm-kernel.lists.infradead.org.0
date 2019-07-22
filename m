Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 421736FDC6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 12:28:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LOQ4PdHv9JmuqdBQ+xWWyTYIAqnBdTBQTRUP/xth6w8=; b=Tb0
	GTxMnmTfBdr0F9z33Wk5UpcTT+UU6DB9duKMKgt+evEcLAM0djts13/fIvjz/YbdbkzBUajEgVYso
	naSkLcly+fRaLMae4H7eYYVrvzBcIrSq5tawSrdzB0Z2QubsdsWofQUc4mrBMo+gUWHPt5xW3ybcq
	1ptQVamvR10YbFJbh3I8yNb0zS54ui2qnh2PQ8b7GYALM8QiYMix7XMLWII2qzcA6QkxA0M4tRQQv
	70fEDAdYSl8c7N3sBsLgpOiYYVo62RbvEXxPr5LqTQ+c+OD+GKkXhneJQWikhFHwqu5ztabRitnmN
	vFrsNOFTngdnvWg4WiQmqM87SiDCpBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpVYD-00083C-4C; Mon, 22 Jul 2019 10:28:13 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpVXu-0007xh-Qf
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 10:27:56 +0000
Received: by mail-wr1-x441.google.com with SMTP id n9so13761119wrr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 03:27:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=O1NaI+e167gwqp1nbI+Zw4QE6pCqjybTcpuP6XfDCIw=;
 b=thLDftGmHKLnBj5QnR1d2+Vbfmk8FQ7L68PDST3PbFkzu8WNFsZUACurPi27NsjEjI
 E00CIuQXpOWTgNAWd39DIoPgiU+l5o/qU47v6byjEdXgVjHmcSp+u6SLDb2W3QKxBjp3
 8xJTLB9ytSP7JyBd/tRAuaUDBx6m5/Fc3LUdaFu84tSspGPirhMtT7sQf/NzTnNJQ6X/
 cRcIa1aQT++/5sW0xXDrNsl6X6RgS2cqwM+88F5h4evYSmYLcxV3WVYoR76ILaJETQAn
 In4B+RWbXDc8KVwQMw0Y0n73WcdW5SYOB6Avni/Pw+GT3hYAtx7fXoSBjIA4MGGmnu+1
 WAyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=O1NaI+e167gwqp1nbI+Zw4QE6pCqjybTcpuP6XfDCIw=;
 b=URwgd4J0P5c7o/bBoz3qQ/IGhp0swQ6Vj5cRWwXtXvagwRkjlkwnLKy5RvOLORpOMj
 7vn6ovdHFHl26A2To4jxYiQofQ/ZTAbRMCNXoc7gvVOa5MerRmhoaQj1d5BRXwqQYiO1
 qfcJ8WOon+tFOCr8iAwSunj7qML3pENAFduWmPSAWmmYOyVlZ67XgLUye/mh0RPEU+/m
 DVbJELKtrpy31ZVNTAwbvKhV1sBvhMDLHlpt6tnDATdxMyJ4JyN5+1ZoP1RJsENBGO7V
 80azlI+aumsjfsrxislP1CPqp9dwoVsr89SLeLqocd/7olQt8FVs0U03kd8xRUbwWW9A
 /o0g==
X-Gm-Message-State: APjAAAUrY7vghaT6qDir5GgGNcOvW8EI20gEJSQnRe5jjgrbYsGgLY7q
 uM5HvwN/IBkzbU41lVqOJqk=
X-Google-Smtp-Source: APXvYqw8KaHNWY+yHPA2KIxFuie1Vc/IBYqd9mApKV+7G+3KDcScbci3+uU0LXIqGdEPbIaBSPPHdw==
X-Received: by 2002:adf:f206:: with SMTP id p6mr849488wro.216.1563791272953;
 Mon, 22 Jul 2019 03:27:52 -0700 (PDT)
Received: from localhost.localdomain ([212.146.100.6])
 by smtp.gmail.com with ESMTPSA id o7sm34515181wmf.43.2019.07.22.03.27.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 03:27:52 -0700 (PDT)
From: andradanciu1997 <andradanciu1997@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH v6 0/2] Add basic support for pico-pi-imx8m
Date: Mon, 22 Jul 2019 13:27:28 +0300
Message-Id: <20190722102730.15763-1-andradanciu1997@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_032755_032914_D6FAB0B6 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andradanciu1997[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (andradanciu1997[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, ping.bai@nxp.com, bhaskar.upadhaya@nxp.com,
 angus@akkea.ca, manivannan.sadhasivam@linaro.org, festevam@gmail.com,
 richard.hu@technexion.com, andrew.smirnov@gmail.com, pankaj.bansal@nxp.com,
 linux-imx@nxp.com, u.kleine-koenig@pengutronix.de, devicetree@vger.kernel.org,
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

Changes since v5:
 - removed comment /* PMIC BD71837 PMIC_nINT GPIO1_IO12 */
 - added "Reviewed-by" tags

Changes since v4:
 - removed #address-cells and  #size-cells from regulators node

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
 arch/arm64/boot/dts/freescale/imx8mq-pico-pi.dts | 413 +++++++++++++++++++++++
 3 files changed, 415 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mq-pico-pi.dts

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
