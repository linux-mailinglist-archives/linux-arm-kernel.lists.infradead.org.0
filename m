Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B50133ADB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 06:24:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BeJE5a61p0kerRZ8OtMTuVy70I+Ydr2cdEMEUWZ7Cm4=; b=fXxUBuakmEkmrh
	k8+4jED0A9PvqfZB1fnwg1cYXh/TPcqfSWGUXDZGM01r0pTGanwYPxc4lXcM7RNYEB129WKC/VKjL
	nzoweoFW57rdHHRZd53C1KgyNYrluDSq/QZY5N+aiDwvnuRuqjityh9GsOsLKL6djBm/MTsBY9dnd
	LK2j9OdDOwr5wzL2wVUWZBeJUwb7BA60nKq5PLCPseTE0yLpxIENrT2zFWAA2j1UWoFmn6IjYD9Z8
	qFnwYsuEdM8l/4h3qCkOcyZe9ujjyVllgMQtYYB9GeAeJuQHlRBXDy270i3WUSN30oLtbLEZYcRhZ
	gllaY/TrC9YFFTmpBGaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip3pB-0004h2-GL; Wed, 08 Jan 2020 05:24:09 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip3oy-0004ep-EX
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 05:23:58 +0000
Received: by mail-pf1-x442.google.com with SMTP id x185so1017771pfc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 21:23:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=s1KUxpvNC0nSY4c57vW0grBhdHj/br9DS0Gj7LsMqAg=;
 b=UaDMeZnQsg7RWbE0j39tduViiq5tWgb5xwFNLW6CAsuaqrJDAaez2MGnV4PY7kH539
 aj30Ild0XBzKI5+QFVnZnuU/x9R/7QklbyAMShyxgCH4sxK7XMPCA8P3gzkn56vBNgnS
 fkoYP8jneVMWqlDMbIWdMfifnxnN8gAT8lJCU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=s1KUxpvNC0nSY4c57vW0grBhdHj/br9DS0Gj7LsMqAg=;
 b=I73IaHvufNmDSC4hu3fqji1K9OjIuJrUP3NDlMa6+mA/pK43Moxq+s6oY/ABwikx7R
 WbAPsjCqKmgjKgMnFARhLC7FeHZRi0HxP8e1llxtNIlhcg1npBT9OCrasW0LbbvZEO8H
 +zXl57DR5xcr+6mGGqU/fZV9xwNCQ1uuYUyxq+CYv97LE0hq7o4hqyQvJjFi4BlAk9go
 Evd9bZd02VkhFXS5KdiCURA67Q4LD6aM99JOi3f4ResW+QcfCkADpi1oOouli2hB1hxX
 zMnAdgalj0VuWS56Eehqa4LGHP7BSdfK3cxQmLQyNP63PqyA16pFLA5aziA4M3ENviwB
 8j0g==
X-Gm-Message-State: APjAAAWf1O79oWtTBgsTn9jI+lUX7uMAIU2zDRLF0lpg01hAoWAvmdgU
 Vdh6Vyn+VtpLabk5JYxec/xB6A==
X-Google-Smtp-Source: APXvYqxmaLR0+XdqtcLLRTMFj3xPry0wUm49NXvxttElsA1fauDaDpoKgiJkJbYJCbg0zpgZCOqf+g==
X-Received: by 2002:a62:446:: with SMTP id 67mr3056799pfe.109.1578461035208;
 Tue, 07 Jan 2020 21:23:55 -0800 (PST)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id n24sm387505pff.12.2020.01.07.21.23.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 21:23:54 -0800 (PST)
From: Nicolas Boichat <drinkcat@chromium.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 0/7] Add dts for mt8183 GPU (and misc panfrost patches)
Date: Wed,  8 Jan 2020 13:23:30 +0800
Message-Id: <20200108052337.65916-1-drinkcat@chromium.org>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_212356_511820_4B3A456D 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel@lists.freedesktop.org, Steven Price <steven.price@arm.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

Sorry for the long delay since https://patchwork.kernel.org/patch/11132381/,
finally got around to give this a real try.

The main purpose of this series is to upstream the dts change and the binding
document, but I wanted to see how far I could probe the GPU, to check that the
binding is indeed correct. The rest of the patches are RFC/work-in-progress, but
I think some of them could already be picked up.

So this is tested on MT8183 with a chromeos-4.19 kernel, and a ton of
backports to get the latest panfrost driver (I should probably try on
linux-next at some point but this was the path of least resistance).

I tested it as a module as it's more challenging (originally probing would
work built-in, on boot, but not as a module, as I didn't have the power
domain changes, and all power domains are on by default during boot).

Probing logs looks like this, currently:
[  221.867726] panfrost 13040000.gpu: clock rate = 511999970
[  221.867929] panfrost 13040000.gpu: Linked as a consumer to regulator.14
[  221.868600] panfrost 13040000.gpu: Linked as a consumer to regulator.31
[  221.870586] panfrost 13040000.gpu: Linked as a consumer to genpd:0:13040000.gpu
[  221.871492] panfrost 13040000.gpu: Linked as a consumer to genpd:1:13040000.gpu
[  221.871866] panfrost 13040000.gpu: Linked as a consumer to genpd:2:13040000.gpu
[  221.872427] panfrost 13040000.gpu: mali-g72 id 0x6221 major 0x0 minor 0x3 status 0x0
[  221.872439] panfrost 13040000.gpu: features: 00000000,13de77ff, issues: 00000000,00000400
[  221.872445] panfrost 13040000.gpu: Features: L2:0x07120206 Shader:0x00000000 Tiler:0x00000809 Mem:0x1 MMU:0x00002830 AS:0xff JS:0x7
[  221.872449] panfrost 13040000.gpu: shader_present=0x7 l2_present=0x1
[  221.873526] panfrost 13040000.gpu: error powering up gpu stack
[  221.878088] [drm] Initialized panfrost 1.1.0 20180908 for 13040000.gpu on minor 2
[  221.940817] panfrost 13040000.gpu: error powering up gpu stack
[  222.018233] panfrost 13040000.gpu: error powering up gpu stack
(repeated)

So the GPU is probed, but there's an issue when powering up the STACK, not
quite sure why, I'll try to have a deeper look, at some point.

Thanks!

Nicolas

v2:
 - Use sram instead of mali_sram as SRAM supply name.
 - Rename mali@ to gpu@.
 - Add dt-bindings changes
 - Stacking patches after the device tree change that allow basic
   probing (still incomplete and broken).

Nicolas Boichat (7):
  dt-bindings: gpu: mali-bifrost: Add Mediatek MT8183
  arm64: dts: mt8183: Add node for the Mali GPU
  drm/panfrost: Improve error reporting in panfrost_gpu_power_on
  drm/panfrost: Add support for a second regulator for the GPU
  drm/panfrost: Add support for multiple power domain support
  RFC: drm/panfrost: Add bifrost compatible string
  RFC: drm/panfrost: devfreq: Add support for 2 regulators

 .../bindings/gpu/arm,mali-bifrost.yaml        |  20 ++++
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts   |   7 ++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi      | 104 +++++++++++++++++
 drivers/gpu/drm/panfrost/panfrost_devfreq.c   |  18 +++
 drivers/gpu/drm/panfrost/panfrost_device.c    | 108 ++++++++++++++++--
 drivers/gpu/drm/panfrost/panfrost_device.h    |   7 ++
 drivers/gpu/drm/panfrost/panfrost_drv.c       |   1 +
 drivers/gpu/drm/panfrost/panfrost_gpu.c       |  15 ++-
 8 files changed, 267 insertions(+), 13 deletions(-)

-- 
2.24.1.735.g03f4e72817-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
