Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E00085D5E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 10:52:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PkwQ59oVwg6fhCbsZH5JNE/YkZY+lYd6vP/EFTDQjMI=; b=igBrqLSSL0/Cho
	yULELWa2vb+PiS2L2AwNPAAFEBw3VqA+YXycaMsW5ifKQPozPxTUCFwP3nWr9lrW5mMaItqrdaO9t
	fGSrhkXkSYWTJrOydy8wnTTlKFFAPmw7DtK56M50DPO+RB707ZR8bpxvvu4OR7Wb/h6ibWkQch6Yi
	HoHpIty55ARYAHuPcQQc8ffLDB5tHRhJJllRLH7ZvEWUgvR/609iLNvDM/O7YJJBi0O+FtbfgcLnd
	ts/4/WlsLcZtk2Y7xdZOF539Sr+BgTY0X29lHlCsPmMJOr9x8oLav5MhHWhrsakx1F/WRrnaNVB+J
	phsO4PmWCpSjoZJWaSMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hve9e-0000gi-L8; Thu, 08 Aug 2019 08:52:14 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hve9B-0000Zk-9V
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 08:51:47 +0000
Received: by mail-wr1-x442.google.com with SMTP id q12so3798577wrj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 01:51:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vifwZCE4bnskih8jmiWXXxluQMEl4VWESPVBYYZw1Fc=;
 b=OFvZDM2GMu+vNEzqszF7ge0Swd1VEF//llkq14iazVY4eYdAX7SfvBw71e1ROskeQs
 eTdH3onFMmimiTDbMHf9wtIEsKETqkpp9/znyHWDzs4GlVAbIKA4jTEuba2fzW4QST1U
 lC/c7vcgt016PN9/xE2xfZFIbHDkJTzNiXKECIoIYkZu8EE6PnEc7MjW4/qi4JsSqy8R
 tgs4Fojid604Eo4/9TjdzfeFrnVyBUwCZalwvqCe/36SLypMwp2C4Qi75ZuL0y2vWqG5
 SAkAo9ITL5rrygXMNmYZbRWkvOECmyI/ILT6X84dtMcZffLwNvZs0Dga6Pw11fLaKwqR
 fPsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vifwZCE4bnskih8jmiWXXxluQMEl4VWESPVBYYZw1Fc=;
 b=Y6W4iYUMIh+2aWMhNQJAxyOT5ub+qmy9DIvLHtd6FWP6qhWTe5SXmGlWIHrX1Wi+Xv
 5AnphgC9lqKemIClRZe3uyrrRh0E9WhERY9FC07W8J9MZq+VhsJ2iL51cQLEpFX2Nqn7
 +2WvrlNg5KaKZMJEvZdhDhVNLleAXd55/fswIdNSZR+fu0+xiawZEAd2/xtUEJ73W3/S
 5dFsB9u3G+6ajx/VmaD1c9RqVTU0G0YsjocXLIDe1S2h32BkGCNNtOVAygijDRai09jX
 U7LDSemkfRiPkoNSk8JtFNJ4EMPNQ9NGdVG2KZqKzb0Nz+cxKyNshmwXxl6LsnGiML9W
 1Ghg==
X-Gm-Message-State: APjAAAUkoFlLs2an+96bolCla1OCrKYAOJ6N/Lt9YyJYG5+NEkEpKjFb
 JR3hoT/LlbEF7kqwT4/c5N+GRz7g7GbGyQ==
X-Google-Smtp-Source: APXvYqwYEgl9MohCcq4LViUU9lWOpsLOwFkb7HqqBUCOa+plL4VwngfAF9IVJpka4nRbg/TwRZbMuQ==
X-Received: by 2002:adf:f088:: with SMTP id n8mr15584283wro.58.1565254301982; 
 Thu, 08 Aug 2019 01:51:41 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id i66sm3360031wmi.11.2019.08.08.01.51.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 01:51:41 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: robh+dt@kernel.org
Subject: [PATCH 0/9] dt-bindings: first tentative of conversion to yaml format
Date: Thu,  8 Aug 2019 10:51:30 +0200
Message-Id: <20190808085139.21438-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_015145_375732_120A87AB 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

Changes since rfc v2:
- Collected Rob's, Martin's, Philipp's and Guenter's tags
- Removed mhu maxItems: 3 to leave only minItems
- Fixed flash@0 in spifc example

Changes since rfc v1:
- Fixed bindings according to Rob's comments
- Added commit log
- renamed yaml files using amlogic prefix

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
 .../amlogic/amlogic,meson-gx-ao-secure.yaml   | 52 +++++++++++++
 .../mailbox/amlogic,meson-gxbb-mhu.yaml       | 52 +++++++++++++
 .../devicetree/bindings/mailbox/meson-mhu.txt | 34 ---------
 .../phy/amlogic,meson-g12a-usb2-phy.yaml      | 63 ++++++++++++++++
 .../phy/amlogic,meson-g12a-usb3-pcie-phy.yaml | 57 +++++++++++++++
 .../bindings/phy/meson-g12a-usb2-phy.txt      | 22 ------
 .../bindings/phy/meson-g12a-usb3-pcie-phy.txt | 22 ------
 .../bindings/reset/amlogic,meson-reset.txt    | 19 -----
 .../bindings/reset/amlogic,meson-reset.yaml   | 37 ++++++++++
 .../bindings/rng/amlogic,meson-rng.txt        | 21 ------
 .../bindings/rng/amlogic,meson-rng.yaml       | 37 ++++++++++
 .../bindings/serial/amlogic,meson-uart.txt    | 38 ----------
 .../bindings/serial/amlogic,meson-uart.yaml   | 73 +++++++++++++++++++
 .../bindings/spi/amlogic,meson-gx-spicc.yaml  | 67 +++++++++++++++++
 .../bindings/spi/amlogic,meson6-spifc.yaml    | 53 ++++++++++++++
 .../devicetree/bindings/spi/spi-meson.txt     | 55 --------------
 .../watchdog/amlogic,meson-gxbb-wdt.yaml      | 37 ++++++++++
 .../bindings/watchdog/meson-gxbb-wdt.txt      | 16 ----
 19 files changed, 528 insertions(+), 255 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.txt
 create mode 100644 Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml
 create mode 100644 Documentation/devicetree/bindings/mailbox/amlogic,meson-gxbb-mhu.yaml
 delete mode 100644 Documentation/devicetree/bindings/mailbox/meson-mhu.txt
 create mode 100644 Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb2-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb3-pcie-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.txt
 delete mode 100644 Documentation/devicetree/bindings/phy/meson-g12a-usb3-pcie-phy.txt
 delete mode 100644 Documentation/devicetree/bindings/reset/amlogic,meson-reset.txt
 create mode 100644 Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
 delete mode 100644 Documentation/devicetree/bindings/rng/amlogic,meson-rng.txt
 create mode 100644 Documentation/devicetree/bindings/rng/amlogic,meson-rng.yaml
 delete mode 100644 Documentation/devicetree/bindings/serial/amlogic,meson-uart.txt
 create mode 100644 Documentation/devicetree/bindings/serial/amlogic,meson-uart.yaml
 create mode 100644 Documentation/devicetree/bindings/spi/amlogic,meson-gx-spicc.yaml
 create mode 100644 Documentation/devicetree/bindings/spi/amlogic,meson6-spifc.yaml
 delete mode 100644 Documentation/devicetree/bindings/spi/spi-meson.txt
 create mode 100644 Documentation/devicetree/bindings/watchdog/amlogic,meson-gxbb-wdt.yaml
 delete mode 100644 Documentation/devicetree/bindings/watchdog/meson-gxbb-wdt.txt

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
