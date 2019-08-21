Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA0D97C6E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 16:21:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c6tiVQEwpgHnmewXgpDr2LdNP0B9E4SRLvjxRubjEzk=; b=X+mxc5lqUrpj9Q
	EmknB5SW44LZEFpkJ1NINMmjWfQ/O1JxxDqxyqyFmaMtoRZ9GFdtebH5SF/5+19OG2O3Il0Yh8BnL
	qgCJPqE+COFwnIGYgAmEwj3nVsn/0E2Cg5Mxgu9kcYtDcUqly1++ri20kpqQPcbda0uMbAYU/mcy4
	QpEtpLFCImRWlMgYEv12IQLIlukY71k/M6j+dKyj1ZNRD4BMjHKf5bfomNV1CfHRIcpoVJPMV17ht
	oI+X24KaLKjeFiIwk7InB2NVQmvP1Ea6RBe70k1jp4056Ta6rWByrYnDCPQ1IfiG1dbwoiZ/7Id6P
	4YjEjNITggPVCKNO6nHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0RUB-0006k2-7b; Wed, 21 Aug 2019 14:21:15 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0RTq-0006fg-Iw
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 14:20:56 +0000
Received: by mail-wm1-x342.google.com with SMTP id p74so2318846wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 07:20:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9hgbbdW56kZ9dbt4pURRNeqYEzO7tOgAeaDiUmq4v1w=;
 b=E0MgQD/1DR5lR/EVgfVAzXNjcUBnyq4K7Ghg+Niucl7aAj3rOqg3UJg7t1gBQ2yrb2
 OZLhhSeoR2nsOxtm+miQ2krAI5eyTGHczpNeSNkmY0eEHzuFfUfjl+GLIG1lZ+rzmdKo
 Olh11zxk7rTUK4QUx+w5VTNTZ64pgdRc/lwZ9D+myQk1L9yXgGaVeeoPttE7pNJjYU1/
 FFodCccBS/7U0y200sFowkpauy+YDx8PHdmt0luiyhpc0Rqs18q+jChaZ7WYjxlDINjE
 d3QGYwJpL292p2LjxUAKUgpJ61vJrlRRyVUBAiJWUySDIAVNuqcmuOQWuFpIIl6Mb2Dh
 PSfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9hgbbdW56kZ9dbt4pURRNeqYEzO7tOgAeaDiUmq4v1w=;
 b=S+tPijMxucpwx/11pyR1NJ89vIa+yPO9YSXHILSFHWIAZzwA0R9mV4dIZYXAjBEZ7v
 lTB9aN7Py1N3VoWL71/cDbtnGh8sPK1i7TniSMGFslKY3G7jGoVRArj/jPzzHA7vJA77
 vmo8LVpdB6uVdn+6+9hw2UYglIWiCZRRnUleOruyvgHBpavsv+nbFQO97rLO+p6NnFf4
 nS1dU8hjbetvlKfr/tZ4pK0hJC4mrPevx5z2ssoejKA+JTivqiIjea27oxNAQQP+zK7d
 HeK4Zx0P7D5jDq0hIVakOr7w2M25LiChhFEt0eezMw2ZP3oatuCduLARyCh9mECSgnjI
 RPxQ==
X-Gm-Message-State: APjAAAWwVC+J20S0FI4Lww9Ma87KBAKBB6/7TOFtzuUs+KFKnuNBO7AQ
 9UDOpkqI6cBe6haQhLOQkB+tlEcui1DmnQ==
X-Google-Smtp-Source: APXvYqy+BKmYE4t79zuMDWuHtMYIbNyIVmEb2qK2hKucfvDuuOO+H7pzCxk9BLseZMyZsL1udITvhw==
X-Received: by 2002:a7b:c8cb:: with SMTP id f11mr322764wml.138.1566397252864; 
 Wed, 21 Aug 2019 07:20:52 -0700 (PDT)
Received: from bender.baylibre.local
 (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id o9sm33418939wrm.88.2019.08.21.07.20.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 07:20:52 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v2 00/14] arm64: dts: meson: fixes following YAML bindings
 schemas conversion
Date: Wed, 21 Aug 2019 16:20:29 +0200
Message-Id: <20190821142043.14649-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_072054_633139_DD04975E 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: linux-amlogic@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is the first set of DT fixes following the first YAML bindings conversion
at [1], [2] and [3].

After this set of fixes, the remaining errors are :
meson-axg-s400.dt.yaml: sound: 'clocks' is a dependency of 'assigned-clocks'
meson-g12a-sei510.dt.yaml: sound: 'clocks' is a dependency of 'assigned-clocks'
meson-g12b-odroid-n2.dt.yaml: usb-hub: gpios:0:0: 20 is not valid under any of the given schemas
meson-g12b-odroid-n2.dt.yaml: sound: 'clocks' is a dependency of 'assigned-clocks'
meson-g12a-x96-max.dt.yaml: sound: 'clocks' is a dependency of 'assigned-clocks'

These are only cosmetic changes, and should not break drivers implementation
following the bindings.

Changes since v1 at [4]:
- Added suggested commit text from Martin in patches 1 & 2
- Fixed NanoPi K2 model name

[1] https://patchwork.kernel.org/cover/11083597/
[2] https://patchwork.kernel.org/cover/11103229/
[3] https://patchwork.kernel.org/cover/11083649/
[4] https://patchwork.kernel.org/cover/11094063/

Neil Armstrong (14):
  arm64: dts: meson: fix ethernet mac reg format
  arm64: dts: meson-gx: drop the vpu dmc memory cell
  arm64: dts: meson-gx: fix reset controller compatible
  arm64: dts: meson-gx: fix spifc compatible
  arm64: dts: meson-gx: fix watchdog compatible
  arm64: dts: meson-gx: fix mhu compatible
  arm64: dts: meson-gx: fix periphs bus node name
  arm64: dts: meson-gxl: fix internal phy compatible
  arm64: dts: meson-axg: fix MHU compatible
  arm64: dts: meson-g12a: fix reset controller compatible
  arm64: dts: meson-g12a-x96-max: fix compatible
  arm64: dts: meson-gxbb-nanopi-k2: add missing model
  arm64: dts: meson-gxbb-p201: fix snps,reset-delays-us format
  arm64: dts: meson: fix boards regulators states format

 arch/arm64/boot/dts/amlogic/meson-axg.dtsi    |  6 +++---
 .../boot/dts/amlogic/meson-g12a-x96-max.dts   |  2 +-
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi   |  7 +++----
 .../boot/dts/amlogic/meson-g12b-odroid-n2.dts |  4 ++--
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi     | 19 +++++++++----------
 .../boot/dts/amlogic/meson-gxbb-nanopi-k2.dts |  1 +
 .../dts/amlogic/meson-gxbb-nexbox-a95x.dts    |  4 ++--
 .../boot/dts/amlogic/meson-gxbb-odroidc2.dts  |  4 ++--
 .../boot/dts/amlogic/meson-gxbb-p201.dts      |  2 +-
 .../boot/dts/amlogic/meson-gxbb-p20x.dtsi     |  4 ++--
 .../meson-gxl-s905x-hwacom-amazetv.dts        |  4 ++--
 .../amlogic/meson-gxl-s905x-nexbox-a95x.dts   |  4 ++--
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi    |  5 +----
 13 files changed, 31 insertions(+), 35 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
