Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEBB09AB18
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 11:07:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X1zhR3fnaSMR05N1RUGlqCVBXj6kGAhrXdgCepYKNng=; b=FwMYgxLQ8Oo4QT
	xLppg/K3n0Gza+hdCCiW6uvF6ngqYmff7G/2Rv7Sq6EN+CKezjah0oasd7l/b1gSdDBUFwYCnYWK9
	R5kktcuuMJZF2xCuZw+kzCSoZ/+bc5btR1+t9SmnBPa2BooIvn6Bw1/h0JbAigr9OQSGBh7DLBqvL
	dZNpLThb7tg/q1i2ALGG4m46hmo+tcghb5K1rfndyC4OIYu90m7KHPgZPo2znp/6cZxpKW4b2e3bX
	/gDiZuEa6sS6TMOdEAWGe3GNEO2Fpm8Dloq+BGbSXg1TFurwqt7EGxfks7UX8VPdsKOfbFElrTzbc
	mrL0TQcNdCURatdWY9pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i15XC-0003MM-Ss; Fri, 23 Aug 2019 09:07:03 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i15Ud-0000ri-Nf
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 09:04:26 +0000
Received: by mail-wm1-x341.google.com with SMTP id o4so8207657wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 02:04:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Dl/uscAowXukXuhpqgLF0MCIjY2hwV9HUJY7MTPFx+U=;
 b=m7Lm47K3lfmXXBH6bb1ALP6Euh07K7vyM5wb7vvgY1B/1TR9RRsENy/mPoA/yPIk/e
 p4efrhHsjMIdMdqdpRRb6j2eazLpFHK0x8RbKnmNFLtBD3KJ9gSq/RgvvS0jQ1xWpzDb
 Td7RNmf5S4vIqYxm+tQBGBfFowm9P6Ul0t2yjFo6I8FlGfhngtHEG1mwNBaLM5rxKIRe
 WLurq85T17urVVGq9y/qSw8gPnT7vV0ks2XJ/CA8pLLLdg5yJWFK4k5SlmGNe6bNrA65
 G6REu8wlkQTiZSn9ltQIqMPhfYCZpnPhmwkfksyfImvLuI/2yy3EEz5rHZv7/VmGEt2N
 Fj2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Dl/uscAowXukXuhpqgLF0MCIjY2hwV9HUJY7MTPFx+U=;
 b=lv/4XlKon2TiWLCq5E/ur7uQpkeW6aVoTOnsEK7/3SjlcYQ7bZ1n+ftza9zwJmlu+O
 dzmGwa3P07IooZM/psMhWVbnIleGBl0VKm/L6A9T8fHhDIHSwhOGzhRfKURfNyXP3Uk5
 yC92S3ekO1wOjvLLyzItn8U24pA5EEA3dJt0Nu3Hh213+glZJjw0vrSPxM8l1xbe0cJr
 J5wASmF7tysfKIcIMWRSTXKLq1sgcGAlbsgUlStxH4EtMcsqMxMrE9HI5bhfL8ED6PVf
 gvT761sxoYl8zBYReJW2lZbo9JHIb2B8xiU7jtOdOQPGYp2b8Pl+tHEOorIpwqGdFEyA
 x4dQ==
X-Gm-Message-State: APjAAAUPnGCSAkk1pTjeut7PW/8eAEtuhZctxSeackE0FOINT6GgtAlB
 7tyT+eOx50K9NcwljRFc8Y5/Kw==
X-Google-Smtp-Source: APXvYqwmq4sNSi424dS+1qU5TMcPyATzSUaYYh47inFl7d7klYRZCt3JcgSepJzzLt1ujHPiHmZPhQ==
X-Received: by 2002:a1c:64c5:: with SMTP id y188mr4038875wmb.154.1566551060583; 
 Fri, 23 Aug 2019 02:04:20 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id x26sm1625544wmj.42.2019.08.23.02.04.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 02:04:20 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com,
	ulf.hansson@linaro.org
Subject: [PATCH v2 0/5] arm64: meson: add support for SM1 Power Domains
Date: Fri, 23 Aug 2019 11:04:13 +0200
Message-Id: <20190823090418.17148-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_020424_663102_2FE24E1B 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset introduces a new "Everything-Else Power Domain Controller"
designed to handle all the different non-Always On peripherals like :
- VPU
- Ethernet Memories
- USB, PCIe, Audio, NNA on SM1

The current "gx-vpu-pwrc" process has been integrated to support the VPU
and the other power domains in a single driver.

Support for SoC domains has been made generic and easily extendable.

In order to restart from clean architecture :
- the PWRC node has been moved into the HHI simple-mfd, this suits much
  better than beeing in the AO RTI simple-mfd
- a brand new yaml bindings schemas has been written
- reset-names has been added to clarify which resets are needed, so we can
  dispatch them to domains

For G12A, the PWRC now offers support for the ethmac memory power domain.

For SM1, it also offers support for PCIe, USB, NNA, ethmac and Audio power
domains.

The DOS domains has been excluded for now, but can be added very easily.

GX hasn't been integrated for now, but it would follow the same scheme
as G12A support.

Changes since v1 at [1]:
- removed open-coded reset & clock get, enable/assert, disable/deassert
- moved to clk_bulk and reset_array with count check with a warning
- removed remaining sm1_pwrc in probe
- reordered arguments for VPU_PD and TOP_PD
- added get_power for TOP_PD aswell
- ported special VPU handling from gx-vpu-pwrc
- added shutdown driver call to avoid errors on reboot
- fixed patch 4 commit log
- collected rob's review tag on patch 1

[1] https://patchwork.kernel.org/cover/11106393/

Neil Armstrong (5):
  dt-bindings: power: add Amlogic Everything-Else power domains bindings
  soc: amlogic: Add support for Everything-Else power domains controller
  arm64: meson-g12: add Everything-Else power domain controller
  arm64: dts: meson-sm1-sei610: add HDMI display support
  arm64: dts: meson-sm1-sei610: add USB support

 .../bindings/power/amlogic,meson-ee-pwrc.yaml |  93 ++++
 .../boot/dts/amlogic/meson-g12-common.dtsi    |  92 ++--
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi   |   9 +
 arch/arm64/boot/dts/amlogic/meson-g12b.dtsi   |   9 +
 .../boot/dts/amlogic/meson-sm1-sei610.dts     |  28 +
 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi    |  15 +-
 drivers/soc/amlogic/Kconfig                   |  11 +
 drivers/soc/amlogic/Makefile                  |   1 +
 drivers/soc/amlogic/meson-ee-pwrc.c           | 492 ++++++++++++++++++
 include/dt-bindings/power/meson-g12a-power.h  |  13 +
 include/dt-bindings/power/meson-sm1-power.h   |  18 +
 11 files changed, 733 insertions(+), 48 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/power/amlogic,meson-ee-pwrc.yaml
 create mode 100644 drivers/soc/amlogic/meson-ee-pwrc.c
 create mode 100644 include/dt-bindings/power/meson-g12a-power.h
 create mode 100644 include/dt-bindings/power/meson-sm1-power.h

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
