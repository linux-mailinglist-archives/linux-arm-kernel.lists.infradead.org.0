Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA357DCF6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 15:57:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zEaJ+RQGa8mlOU6+qYX2yHrtyWPQ3dJVVtmjMFxZF6A=; b=RYJnkBHEgk4ABa
	Sf4lbjfxGef49f9e5CEHTDgR0UOmiCeU9+9VLbO5hSKX519hTLNmfAWYIbMDsJF0qaWhTzTSNO9xI
	uX6Y0aLsWWBbchNZcYmbE8Zh7GxxFqi5qELTMsoce9D9qplsugNNgYLV9xTc5wfLp2j2yrA7xXIeA
	/6+T7dfNpzyqTUVZJIj19EA/C2rIqe7+4UJC8dXuCLCe0yNfGceC+CFjhCoZEaFDxzd5YnVdikoEV
	LU5EwUnUmQVJ3IAiO/EyAWPqb2PAP5f1B0833K2WLsK1P00XbAlGqatzyW/digfDOFirXnoc/6keZ
	pY0tvGqcmDVmI/3/FGyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htBZn-00012e-0v; Thu, 01 Aug 2019 13:57:03 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htBZa-0000zY-H8
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 13:56:52 +0000
Received: by mail-wm1-x32e.google.com with SMTP id s15so41943868wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 06:56:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lIm81eDhukyw6fbCl/+3h+QPFrHXYcRhnM9vCZm0FBU=;
 b=13O0vL5DX2cs4dd++hzfRHv1CPifo+nEBZIfEK/xPAm8LBOTVk9bmKI2ZMbRTH1Qny
 gGc5Etb+oieTHOJzEcqzxWDGO6QQqX8ZqANnbyLDBv2TvisCVoaDgG+Sk1kHTmon4u7p
 23GDtno64u2hTvVK4IASbns2pDTl99MQ9lBi+m6sVEXUkUpyjOdGM2BNfLvVc5T/fqbP
 9RYMi1RBDw8zjzxwomGDcNw8yXfmP3fnwqKgmxCfWTSa6c7Ru6292ZJe91J3mLvVO1do
 1LdLqXyr4MpjfSurQz0trb5nuP2J9ZMxqd5XwmuOpZpWwQRuERRQeyL/kh7Wen7RuCof
 AwZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lIm81eDhukyw6fbCl/+3h+QPFrHXYcRhnM9vCZm0FBU=;
 b=nL8mvEgxSUR/b8MobT5eTvAOfXxU28Laeft7FH8mmHZoRJ3sUOcsQwNbzzr/+p2oUf
 GhA6yyRvbqo0fQdDx8148JHi+RtsyRND/6K0Jkg6usgz3v2AfGoVsOxTYrhJOTIJfUln
 M8pyQS4sySPw2Hr8fRmQ+BxabiLCrwONmYaifiAreaggNH/6ENwmfd8qXY9WlWJIgNqS
 VI0WAVeH/AmE2rjRFn+BEUxEZvAdot9LpF8xS6/4Bakzd7Hp9Xz0w+7HVy7K11U0b8tu
 19h77E4Ub0D498wAv/RZ+2IFAyMinznlNdHdMPntPNzi9Zp6AtUcgICJR4N/+4EJRJpq
 lfRA==
X-Gm-Message-State: APjAAAXIPHExob4v9ZyJC9ZcG+z84KRqoosgeGFU1govjknl4zl421vy
 AJER0T+dRd6Xyqdbo8MQp2evaw==
X-Google-Smtp-Source: APXvYqz463HiGivdjA4sUX+UrCKICPNW2Wd+t3590qMCqsuXMkM9GjxeAukrBa4PObzWj+jGQXbYjg==
X-Received: by 2002:a1c:ef0c:: with SMTP id
 n12mr111159574wmh.132.1564667808166; 
 Thu, 01 Aug 2019 06:56:48 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id u6sm69659952wml.9.2019.08.01.06.56.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 06:56:47 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: robh+dt@kernel.org
Subject: [RFC 0/9] dt-bindings: first tentative of conversion to yaml format
Date: Thu,  1 Aug 2019 15:56:35 +0200
Message-Id: <20190801135644.12843-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_065650_575817_3FC1AC33 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: p.zabel@pengutronix.de, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 jassisinghbrar@gmail.com, linux-spi@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-amlogic@lists.infradead.org, kishon@ti.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a first tentative to convert some of the simplest Amlogic
dt-bindings to the yaml format.

All have been tested using :
$ make ARCH=arm64 dtbs_check

Issues with the amlogic arm64 DTs has already been identified thanks
to the validation scripts. The DT fixes will be pushed once these yaml
bindings are acked.

Neil Armstrong (9):
  dt-bindings: mailbox: meson-mhu: convert to yaml
  dt-bindings: rng: amlogic,meson-rng: convert to yaml
  dt-bindings: spi: meson: convert to yaml
  dt-bindings: reset: amlogic,meson-reset: convert to yaml
  dt-bindings: arm: amlogic: amlogic,meson-gx-ao-secure: convert to yaml
  dt-bindings: phy: meson-g12a-usb2-phy: convert to yaml
  dt-bindings: phy: meson-g12a-usb3-pcie-phy: convert to yaml
  dt-bindings: serial: meson-uart: convert to yaml
  dt-bindings: watchdog: meson-gxbb-wdt: convert to yaml

 .../amlogic/amlogic,meson-gx-ao-secure.txt    | 28 -------
 .../amlogic/amlogic,meson-gx-ao-secure.yaml   | 42 +++++++++++
 .../devicetree/bindings/mailbox/meson-mhu.txt | 34 ---------
 .../bindings/mailbox/meson-mhu.yaml           | 53 +++++++++++++
 .../bindings/phy/meson-g12a-usb2-phy.txt      | 22 ------
 .../bindings/phy/meson-g12a-usb2-phy.yaml     | 67 +++++++++++++++++
 .../bindings/phy/meson-g12a-usb3-pcie-phy.txt | 22 ------
 .../phy/meson-g12a-usb3-pcie-phy.yaml         | 61 +++++++++++++++
 .../bindings/reset/amlogic,meson-reset.txt    | 19 -----
 .../bindings/reset/amlogic,meson-reset.yaml   | 40 ++++++++++
 .../bindings/rng/amlogic,meson-rng.txt        | 21 ------
 .../bindings/rng/amlogic,meson-rng.yaml       | 37 +++++++++
 .../bindings/serial/amlogic,meson-uart.txt    | 38 ----------
 .../bindings/serial/amlogic,meson-uart.yaml   | 75 +++++++++++++++++++
 .../bindings/spi/amlogic,meson-gx-spicc.yaml  | 74 ++++++++++++++++++
 .../bindings/spi/amlogic,meson6-spifc.yaml    | 57 ++++++++++++++
 .../devicetree/bindings/spi/spi-meson.txt     | 55 --------------
 .../bindings/watchdog/meson-gxbb-wdt.txt      | 16 ----
 .../bindings/watchdog/meson-gxbb-wdt.yaml     | 37 +++++++++
 19 files changed, 543 insertions(+), 255 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.txt
 create mode 100644 Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml
 delete mode 100644 Documentation/devicetree/bindings/mailbox/meson-mhu.txt
 create mode 100644 Documentation/devicetree/bindings/mailbox/meson-mhu.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/meson-g12a-usb3-pcie-phy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/meson-g12a-usb3-pcie-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/reset/amlogic,meson-reset.txt
 create mode 100644 Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
 delete mode 100644 Documentation/devicetree/bindings/rng/amlogic,meson-rng.txt
 create mode 100644 Documentation/devicetree/bindings/rng/amlogic,meson-rng.yaml
 delete mode 100644 Documentation/devicetree/bindings/serial/amlogic,meson-uart.txt
 create mode 100644 Documentation/devicetree/bindings/serial/amlogic,meson-uart.yaml
 create mode 100644 Documentation/devicetree/bindings/spi/amlogic,meson-gx-spicc.yaml
 create mode 100644 Documentation/devicetree/bindings/spi/amlogic,meson6-spifc.yaml
 delete mode 100644 Documentation/devicetree/bindings/spi/spi-meson.txt
 delete mode 100644 Documentation/devicetree/bindings/watchdog/meson-gxbb-wdt.txt
 create mode 100644 Documentation/devicetree/bindings/watchdog/meson-gxbb-wdt.yaml

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
