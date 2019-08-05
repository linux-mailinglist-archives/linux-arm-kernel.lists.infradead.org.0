Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9BD818C5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 14:04:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NyRalFQSZq9V3Q3b7XUUSpGD7EM6mpTPd3d/V+INCNg=; b=PVUycmK/52LMNc
	rTfa7qqytR1eWgQB4mdpLoZG4ZcRb2XPBYOT/2AriC6jPh4pCfp2xI85FZV/uiy2DfT1YDoGk8wtV
	4UeDhoO19EKPN2JxLCj3J+RHQ9OHNVfcDDMw55IkfJl1GcUDszKZjC40A/GCab1KJHub0qzWxXMhz
	o3tNXNQdxZZcKieayzwX1odH99bKow6dGwfrg8GnhijINlpeM51QAcNOEi4JdzJn+Qv8Yo3OqguXn
	U8gXqbJDudt2gi+137BuP+0RbX+pIMl0XkrpNZ9LUJ4bdQaA9qYSwCwF6bubLS/rsAr0gOQKLVZ4r
	m9yQSJQOVrXxjSaGttyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hubiU-0003NK-GL; Mon, 05 Aug 2019 12:03:54 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hubi4-00038q-0C
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 12:03:29 +0000
Received: by mail-wr1-x443.google.com with SMTP id p17so84137076wrf.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 05:03:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=25vkHl8TD36SDkWAHJSebVeUcYzajPzPyvWuGyvsAhE=;
 b=YsSmtNhPFyHUW78r8S8MLbZSVSttppTiKSHIpoTXSYeR5QcxdpBE3Ufjq7uEYjXEgI
 dmPita3jsLeyX+7v624q99DrW+MmNpmWYsEAhy89ozWnEx7jAS7THW7DoJIvKpHLU4Nz
 9aFASsRrlhEZoc2qAjHVR99E+wveNzGFLrFxWo3EKEAk2bNQp8yreK7u4jhnjkQAuZfa
 XWPp8sUcX0TsIg8hykvT+yfFktlIFBGwJluuut+8sWQHkWbrYWSxUl2wwgOseujOmnAW
 4CqAO3UiS22yAK6aVqzOSY60m2gG31BbRwJ4Pq51qzxLNJAVlt43AJ2iVFH8qg/vO1PP
 0Wmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=25vkHl8TD36SDkWAHJSebVeUcYzajPzPyvWuGyvsAhE=;
 b=ULppU27cmLonFZRk2Pmoyv750nnvOddrcHspZXgRdOTVoKJ2vcBRJTnUhsIfm1UeKS
 VaR/H6/56sGxpQR7jak5bLJWgjgMExOJptQWrfUrP1EYtZTbIp60vYXwaV9x2zjkcQEs
 puFY4HyETDj7K8H0rHJFLN1ra1MHun32emnL4+P43aynnHvxNv1pQZ6A+20LNOO9tsBe
 VQ6hc0jc4GMghqXeiY+T4ButAaZKBFAGU0/5k8DElHwajuuNOJy/359jw/s5Fy99xQfB
 S9iInNAqtLkrQOJp+/HFZJ4DUeRf4MvfysyCogyJtpsveX9z0LdWeCCkqmX65OxDxe4c
 7r4Q==
X-Gm-Message-State: APjAAAVw1DQ4m5SypKsj4jrH8DC5/rFZFnJ7UOTZgCIQshupGzxnM3aR
 aQbr3aC1B41cff+vKrzZzh1U5A==
X-Google-Smtp-Source: APXvYqzWNv12kSRQOLPMH0DQ/Rtt60lADy18oRMLOjwk/7REfS0XxZobWQLA74rD/m007PEBCxIPPQ==
X-Received: by 2002:a05:6000:1148:: with SMTP id
 d8mr4777553wrx.354.1565006605620; 
 Mon, 05 Aug 2019 05:03:25 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id x6sm88683668wrt.63.2019.08.05.05.03.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 05:03:25 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: robh+dt@kernel.org
Subject: [RFCv2 0/9] dt-bindings: first tentative of conversion to yaml format
Date: Mon,  5 Aug 2019 14:03:11 +0200
Message-Id: <20190805120320.32282-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_050328_197784_6C8CBCB5 
X-CRM114-Status: UNSURE (   7.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
 .../mailbox/amlogic,meson-gxbb-mhu.yaml       | 53 ++++++++++++++
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
 19 files changed, 529 insertions(+), 255 deletions(-)
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
