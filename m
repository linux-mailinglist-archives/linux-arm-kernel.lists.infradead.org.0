Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0E37C1D8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:43:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c92DBTKlr68aQ3mt6nC2ijCSdPWOaNZs+3FelVroDf4=; b=HbbTAZvqTxSJJo
	51P7t7lnxMZKxhMHeOVZcdCm8jDIED10VZz1vVcl3SziuKXQ+Jk2T4y163JgGVErRScbE9w4mOWRA
	E+KMRjqNnioFR81NLChXpEoAjFIqqGk3E3ri1YW+GVXvGFVGj86kMKVZ+nTbLphSQs4R5srQo68qe
	heMNv+6rXLePipXB+vM5lveFX9QADVCxAM711EZcgARqQyrxq3Em7b/F/QCN0/Q4q+W4iB5z/Zswp
	1dvp2F+emweLw+sWS6vDbszRubUDdBHRpVfUY9l2N9ukzXSzI4qAOBQMrII8cZ2RbZUqF5iXL22r/
	hu7n/riMRPeTi9zDzgeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnxS-0005aI-0g; Wed, 31 Jul 2019 12:43:54 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsntq-0008RS-5Z
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:40:16 +0000
Received: by mail-wm1-x342.google.com with SMTP id w9so1220003wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 05:40:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EWI8GcxEz+8gc9lvCcOoQING9GchM8UZJzjKufeSqmc=;
 b=KJZc4a+DmVn+4+DGSWDg3GlzhLG6glcKG0j5wUAHME+JibRtdrXRNjSx+a7MyRFDuI
 hd9NV9MqzrJ/yfhsVmI9FywxsVr8GndD0kH+2ROkya1T14Jp7p2MDg0M9asAFCeTsBOp
 6xgrnxr12N5wi8/DD0EsAOL4YSdL51rXYOv4g3mJ+5yoqYlFDs9cZ5oz9Gp32hG3cL2l
 Kqamv6Q1+LgceZ1bIeqvgoTi0+iVmCw4OHvf9OwuAMQBQOXO/8BSoIHiC6NcngAl40Hv
 QBl3FZ8ix9alal5rJIZ0/1oOJ+GxtrSvzwFXNioZ0F2lX78iYTH1+d8jz2zSAL/GpAnb
 YnKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EWI8GcxEz+8gc9lvCcOoQING9GchM8UZJzjKufeSqmc=;
 b=LKk3vaLMApugboxE6enmeRFs/b6Vp3jWSYzT8OgN1g5OM07KBfnjeljO5DObXpk+0V
 MJjRd/Bgc/cnpx9ocmrom1N2OPt/t+sLuvwYiNsiKPP2ctm2rtEuh6H9VrR/uUV3TagD
 lwvlEHxlDhVnieFHPShiQRCkvSqDIE8Eu1tPcxj49J+mv32We5DU8vzf/UsewRmp/uRU
 yz+MmSGdkyHYqoNwo7T9X/QT5X90jKPjL1yDBO6glPNWcWJbPP8AgHYjLaeiqVYMAO2j
 P/KAF6sDi8u9qjS0mJb3frotgAIBj3GypaIql+tY/z72Kub7GSVGUTD+iQ/XinFLkqUa
 fFOA==
X-Gm-Message-State: APjAAAVQ6jx+oQNC8U+smXHNCRF1rNYh/MKunllPqS/Cc5DOH9a+4Wnj
 XkjzJlYHwf6s7y2YYi2vPiQyyw==
X-Google-Smtp-Source: APXvYqy978uWNvioeZ+pGIg+DyWJ20pUO7ItCJsalId7cA/5/FSwIaSFd8Ad245l+bIIqRqGxzP6Aw==
X-Received: by 2002:a1c:1d4f:: with SMTP id d76mr15481312wmd.127.1564576803831; 
 Wed, 31 Jul 2019 05:40:03 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id x185sm62504271wmg.46.2019.07.31.05.40.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 05:40:03 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 0/6] arm64: add support for the Khadas VIM3
Date: Wed, 31 Jul 2019 14:39:54 +0200
Message-Id: <20190731124000.22072-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_054010_724619_1F3EE696 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, christianshewitt@gmail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Khadas VIM3 uses the Amlogic S922X or A311S SoC, both based on the
Amlogic G12B SoC family, on a board with the same form factor as the
VIM/VIM2 models. It ships in two variants; basic and
pro which differ in RAM and eMMC size:

- 2GB (basic) or 4GB (pro) LPDDR4 RAM
- 16GB (basic) or 32GB (pro) eMMC 5.1 storage
- 16MB SPI flash
- 10/100/1000 Base-T Ethernet
- AP6398S Wireless (802.11 a/b/g/n/ac, BT5.0)
- HDMI 2.1 video
- 1x USB 2.0 + 1x USB 3.0 ports
- 1x USB-C (power) with USB 2.0 OTG
- 3x LED's (1x red, 1x blue, 1x white)
- 3x buttons (power, function, reset)
- IR receiver
- M2 socket with PCIe, USB, ADC & I2C
- 40pin GPIO Header
- 1x micro SD card slot

First of all, the S922X and A311D are now specified since they differ
by some HW features and the capable operating points.

A common meson-g12b-khadas-vim3.dtsi is added to support both S922X and
A311D SoCs supported by two variants of the board.

Odroid-N2 is changed to use the s922x.dtsi include.

Dependencies:
- patch 5 & 6: "arm64: g12a: add support for DVFS" at [1]

[1] https://patchwork.kernel.org/cover/11063837/

Christian Hewitt (4):
  soc: amlogic: meson-gx-socinfo: add A311D id
  dt-bindings: arm: amlogic: add support for the Khadas VIM3
  arm64: dts: meson-g12b: support a311d and s922x cpu operating points
  arm64: dts: meson-g12b-khadas-vim3: add initial device-tree

Neil Armstrong (2):
  dt-bindings: arm: amlogic: add bindings for G12B based S922X SoC
  dt-bindings: arm: amlogic: add bindings for the Amlogic G12B based
    A311D SoC

 .../devicetree/bindings/arm/amlogic.yaml      |   9 +
 arch/arm64/boot/dts/amlogic/Makefile          |   2 +
 .../amlogic/meson-g12b-a311d-khadas-vim3.dts  |  15 +
 .../boot/dts/amlogic/meson-g12b-a311d.dtsi    | 149 +++++
 .../dts/amlogic/meson-g12b-khadas-vim3.dtsi   | 542 ++++++++++++++++++
 .../boot/dts/amlogic/meson-g12b-odroid-n2.dts |   2 +-
 .../amlogic/meson-g12b-s922x-khadas-vim3.dts  |  15 +
 .../boot/dts/amlogic/meson-g12b-s922x.dtsi    | 124 ++++
 arch/arm64/boot/dts/amlogic/meson-g12b.dtsi   | 115 ----
 drivers/soc/amlogic/meson-gx-socinfo.c        |   1 +
 10 files changed, 858 insertions(+), 116 deletions(-)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-a311d.dtsi
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-s922x-khadas-vim3.dts
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-s922x.dtsi

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
