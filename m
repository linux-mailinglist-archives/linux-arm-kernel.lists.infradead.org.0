Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4844F1504A1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 11:54:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wJsv1wSVKe7fnFKBu9JiwCTpaHRobGzmW/jcweKjHhE=; b=GW7svSB1ZgxcM6
	HUeohldDzITycVRLRt8IwHBI9mzCaGbD6qm0QjIvBO/EFTfTkh/eWw8GNLrUKN5N4bmlDqmCS+6FG
	Zq34QexRmMyVAKAxvii8BRVsegM1zo6Uttw/Ik8OueSTHmiyTySs1erQXgL+DPwsaB0tfuE0CHfIx
	6cTjOfQaNQlLXkyWLM8fsgnC758E88S31Nd5f+fC8uMSKq2sR0PC1iPTSu9jgr9geKHNqgP9/GR3X
	mv9RS6JZ6Q7p8E8k4nQFr5y6j5n2sxR5I7XtYnZeOBRuhEWFNTOxFJiTdsRxZuITv8pTjC+8O4tMZ
	YJNlh+/g4xI2whNl/eUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyZNG-0005hD-IJ; Mon, 03 Feb 2020 10:54:38 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyZN9-0005fI-Kh
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 10:54:32 +0000
Received: by mail-pg1-x535.google.com with SMTP id k25so7609214pgt.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 02:54:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ADW24ulzjRxWFs8Inpi2MLUJLlYv0kpD0PDD8jb7dpI=;
 b=gng9XmRj2Jusgtv+OYAhFWAfvviQ4ANaqX3dAANJ1k+PZMrE4ERLooYqWXjiNk3lNK
 nH5zqTbV/Q52LMsnKyq/zfmgTAe0RB9n1NxSy2kAeAvwI7psST63mCuiC4vDRhHjQpz/
 9q/rXFgPt7i+vBrEhnU9H7PTU0M039FzoSKC0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ADW24ulzjRxWFs8Inpi2MLUJLlYv0kpD0PDD8jb7dpI=;
 b=ZbJNdNGuzoM7hYxe1J0Va0hQmV7Pnz3IIwaxnL58UrBxNwGKcTwSzmUDf1nvjI+fLQ
 1xU4rdWsVjt8CiIPC50CJko0fQhEnxiOhzKNQH1cglqwJxfazgaiHvq96SVWlhTDFNRc
 tKzwE/jmUKaYab/QggfRrUpCCw2JNl/CWjA6ubWFdrRHjsniaftIZVBo1Mw+kpXBO43o
 +AvhhqcyiKTl+0MbscyArvSBB39300m50zrlbs62+tcmpxMrywGfCjKnC/iuGrs4oP1M
 nnL1nzXHoF/2WXDtg6NaQk3iRIrwApVqqXbM3ZuiBn9NPpZYPPe5v1KFz5iUXqyQqcIW
 xX7w==
X-Gm-Message-State: APjAAAUXQvPYPDtB4nPejmMCnr6O73S0b3MPav9gqZ9jRtjF6fPjMw+z
 LvlOES7R7MUMN4m7RckwAY74WrtHsV/iCQ==
X-Google-Smtp-Source: APXvYqwmogyQ4tkjuKnABxnJkcUDNUWk6sjSeWh+MezxRj8XAoT7P+8oP0g/yi1wYM4Yic/x6imZaQ==
X-Received: by 2002:aa7:9796:: with SMTP id o22mr23897517pfp.101.1580727270135; 
 Mon, 03 Feb 2020 02:54:30 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id 11sm20923835pfz.25.2020.02.03.02.54.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Feb 2020 02:54:29 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 0/3] Add mt8173 elm and hana board
Date: Mon,  3 Feb 2020 18:53:45 +0800
Message-Id: <20200203105345.118294-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_025431_677064_164F0E15 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:535 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Nicolas Boichat <drinkcat@chromium.org>, linux-kernel@vger.kernel.org,
 Daniel Kurtz <djkurtz@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds devicetree and binding document for Acer Chromebook R13 (elm)
and Lenovo Chromebook (hana), which are using mt8173 as SoC.

Changes in v5:
- add gpio-line-names for gpio controller

Changes in v4:
- fix dtbs_check errors on cros-ec-keyboard
- add comments for second source touchscreen and trackpad

Changes in v3:
- address comments in v2, major changes include:
  * move uart aliases from mt8173-elm.dtsi to mt8173.dtsi
  * remove brightness-levels in backlight
  * add interrupt for da9211
  * move pinmux for sdio_fixed_3v3 from mmc3_pins_default
  * remove some non upstream property
  * checked on schematic, cd-gpio in mmc1 should be GPIO_ACTIVE_LOW

Changes in v2:
- fix mediatek.yaml
- fixup some nodes and remove unused nodes in dts


Hsin-Yi Wang (3):
  dt-bindings: arm64: dts: mediatek: Add mt8173 elm and hana
  arm64: dts: mt8173: add uart aliases
  arm64: dts: mediatek: add mt8173 elm and hana board

 .../devicetree/bindings/arm/mediatek.yaml     |   22 +
 arch/arm64/boot/dts/mediatek/Makefile         |    3 +
 .../dts/mediatek/mt8173-elm-hana-rev7.dts     |   27 +
 .../boot/dts/mediatek/mt8173-elm-hana.dts     |   14 +
 .../boot/dts/mediatek/mt8173-elm-hana.dtsi    |   70 +
 arch/arm64/boot/dts/mediatek/mt8173-elm.dts   |   14 +
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi  | 1169 +++++++++++++++++
 arch/arm64/boot/dts/mediatek/mt8173.dtsi      |    5 +-
 8 files changed, 1323 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana-rev7.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi

-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
