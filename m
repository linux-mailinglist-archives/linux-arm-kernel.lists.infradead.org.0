Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC216E579
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 14:15:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SLylzIjETC1stI07on++441yjzNlCkOA+gPBn332SaM=; b=Msq
	8/42Uh2dk/z3EiWibX9u4xFzAEpcUUjd7uk0XSaFc5/rXrGpyrrvUsRU+5qpKcPJxJke6z2ryLIiD
	n9bK1sgtsaxY+wqBL111JNhFRkIt3yfTJH7jAtsBJE0IcWkIjq0M/tOfH8CYgQci/cCa3AXfSO91o
	hyFft0S140JIqUS817HXb9FLAJjt6Cc8i0QlQ/8NKt+C9Wl4/da/D/Oglae4Cjprnue3rRNzvzxQ8
	hz2lCd91z0j9JPA2x5I6RnWpt81UfQMl+0HPVxAWx1IB4fOZ5tybXDsLrmVPmvPDCI3yDBUNkm6ne
	Nj5By0uRdpyAJJ4NRTXhDpf5Q4njRig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoRn2-0000m1-WB; Fri, 19 Jul 2019 12:15:09 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoRmj-0000kv-Fb
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 12:14:51 +0000
Received: by mail-wr1-x443.google.com with SMTP id g17so32064465wrr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 05:14:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=wmETNdP8G4IomK6UdNByAWasEGXpLpu0D66rsobKPls=;
 b=lVStTN9LxMvaF3HLQiIoaRpoAHy2uYjWyTEQ5UAU8MCqeh5e3EhPpC2uG+mRAkv5rk
 NR0HRS1l1Tgrhjx/s6O38KKl1bYJbQecSBHTQJrRD/Jd7BF2ul/noqpKRsAdcqA185Xh
 EFCsuGBkjxVLIQ239cCNYLCMTJDG627NuEnrONnAs7uWuaOuUd9UEBBNqYJ34ENcRnOT
 /wqUpls/N0E/GuVhiiocrnK+Jdz3U6UWMFgt8u5xL0dX18x2HOy25vN86zke9fDJ/pMK
 BGqNDUA4WoSRBxcKG/SMuPswzSOJDlqUknAqovuzdv7MEJ7wysS4o5w3GODPy3PAssxc
 wnpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=wmETNdP8G4IomK6UdNByAWasEGXpLpu0D66rsobKPls=;
 b=GWlY89wzfTsbhbGLKCT+yywM9Ygbvae09vloSucj3DXBvmJcstZl40eX2RPhi62e+g
 qVF5J40s4ZhV6G8EYoWfBDgW4XH1/k9W0FPSLL/IwVar/54dvYFTJxxwWnFtjhB94jmn
 pXyaO2alZZzUwN2Op+481dbbxa4EpG651c4HaIVvhEdIatyseXclSFOcuLjPX4vRc6ra
 rN901oVIOFb7RFJfJNWg3qeCSg8ZLgHzAIAILYuerx/8GmMtwpPh6yb8c5R9qdQuhWAT
 i+i1TCQXFzlMAFmb/a5rMVe3PZm7RocJQ85JX9ZxMhxTUPHbgbQ1cVafTFONwzdYUaQd
 l+KA==
X-Gm-Message-State: APjAAAWIMZyC/dll9ikEghOlR5ndy5VyPRmny7eXSGg0yxxZjFBlI6kG
 WlKmWlquDvnrx7LV4XuG3Xs=
X-Google-Smtp-Source: APXvYqxk5QuuVR5lXOLPTqmA0tHUgcecgIlI/ixpqMS3k1E8fLqpCMSKDN2mww5m5DioeAB18LmQsQ==
X-Received: by 2002:a5d:6949:: with SMTP id r9mr53174197wrw.73.1563538486503; 
 Fri, 19 Jul 2019 05:14:46 -0700 (PDT)
Received: from localhost.localdomain ([212.146.100.6])
 by smtp.gmail.com with ESMTPSA id y18sm30135261wmi.23.2019.07.19.05.14.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 19 Jul 2019 05:14:45 -0700 (PDT)
From: andradanciu1997 <andradanciu1997@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH v5 0/2] Add basic support for pico-pi-imx8m
Date: Fri, 19 Jul 2019 15:14:28 +0300
Message-Id: <20190719121430.9318-1-andradanciu1997@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_051449_548924_D7F94FC7 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: mark.rutland@arm.com, aisheng.dong@nxp.com, andradanciu1997@gmail.com,
 pramod.kumar_1@nxp.com, devicetree@vger.kernel.org, andrew.smirnov@gmail.com,
 linux-kernel@vger.kernel.org, s.hauer@pengutronix.de, angus@akkea.ca,
 j.neuschaefer@gmx.net, leoyang.li@nxp.com, richard.hu@technexion.com,
 robh+dt@kernel.org, bhaskar.upadhaya@nxp.com, linux-imx@nxp.com,
 kernel@pengutronix.de, manivannan.sadhasivam@linaro.org, festevam@gmail.com,
 pankaj.bansal@nxp.com, linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for TechNexion PICO-PI-IMX8M based on patches from Richard Hu
Datasheet is at: https://s3.us-east-2.amazonaws.com/technexion/datasheets/picopiimx8m.pdf

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
 arch/arm64/boot/dts/freescale/imx8mq-pico-pi.dts | 414 +++++++++++++++++++++++
 3 files changed, 416 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mq-pico-pi.dts

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
