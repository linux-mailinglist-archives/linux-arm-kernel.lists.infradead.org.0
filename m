Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C41F156F7F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 07:36:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=o5q9bql7M1C0L0qLy7yYHd6uL0ou3tngl51Pua6Fbag=; b=i/L+KS9qX51M7I
	qFjyrrNJW+Op3JNjjFflteiXgGYhvKBmn4xX9TgPJcSojsPgKD1LfRiaGH60rhZNSyFFKNo4KpqUj
	1L1VkG09/k2K/vbkFc8zlWXAQRTDQDQnVQGPUMqQvjju4oOPCbGXOGBCymkhPt/9ieZ64BHVwetcn
	DSUauAkNAz6DHxzbilKndnRmxryQi+2R4y2vENgZNoenQ6r+K+elk8VH4ZtREYPeafXikrAeneWig
	z3srZRqh6Z14f6QhhCDKWs/6iYtgZ1EoPwSDra/gB69fX8FOyJPREdxH0XxgmA/uwJ1q/TnCMXZyv
	R1HwBaJM7/B/dYLwoG2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j12gG-00013S-RO; Mon, 10 Feb 2020 06:36:28 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j12g9-00011p-Ku
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 06:36:23 +0000
Received: by mail-pg1-x52d.google.com with SMTP id j4so3375330pgi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Feb 2020 22:36:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Lo17ppS/z0H1lSs1uTt0PZLLJNNtFvUKsUcqWlfn7Dc=;
 b=bUN6TfTE7usvEbrf47ULqCV7Q1Wmo6/Vzyto8zU5n07Oijvw4PAsNQlaYy5fRB+Own
 LBZXlJr3KquKZ+JciXDyIRgUHtAVe27qImHD4CtpQCOp6qC9h4wib31fnJ40b+jIxn/S
 6ytT9ejZ497xQAfK5M11UhTtxBHR5HpdXQsBM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Lo17ppS/z0H1lSs1uTt0PZLLJNNtFvUKsUcqWlfn7Dc=;
 b=ky3FpmjwoW2a7AjldFH4azwgU4F0sWfpp8QibB0Vz4UxwC35TeBi4EbPYljLsQtqeI
 P5iYxtWFkdhG2eOr+O3y5eGBGLHl04aQFjKi+RZ43A9JUbgLRqqOemr5tDSu8pcvpCmr
 gf9BY1Y2vZM+nE4tctuldwpHFCQb2sFpMz5jRKRahRU7qxnZikRIP0YNvX/wQbDzTdlA
 16WVJPExxZjbv1ZnXpLslsG0qaPZAJGc+hH63avsi20SpzWXs9yWcKP4efEo0fZN52nj
 gEz+DzpCpAvuYeYdYNdunVS3ASgz4ELUpvhfO8y3fpynJ+Zwd750IbkRNxonxrpFOKAe
 u0ag==
X-Gm-Message-State: APjAAAW2u7jAG68moH00vUURnwSqgw+1UOa3x2Wa01fXQVz6zp19OiEj
 xdM9ORiLbOGGv9VHJXfzh6+yKUBawYijsA==
X-Google-Smtp-Source: APXvYqyV5uXjYlcd6ghIM6ap/HEp0sTQIJM1ZhrD03kxdqxEcvdfBDVhE8hzFps31kS5WDBa6r922Q==
X-Received: by 2002:a62:6342:: with SMTP id x63mr11616369pfb.103.1581316580334; 
 Sun, 09 Feb 2020 22:36:20 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id f15sm11070041pgj.30.2020.02.09.22.36.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 09 Feb 2020 22:36:19 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v7 0/5] Add mt8173 elm and hana board
Date: Mon, 10 Feb 2020 14:35:19 +0800
Message-Id: <20200210063523.133333-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.225.g125e21ebc7-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_223621_717560_85B497C9 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Changes in v7:
- add pull-up for da9211 to fix spurious interrupts

Changes in v6:
- fix several unit name warnings in mt8173.dtsi and mt8173-elm.dtsi

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

Hsin-Yi Wang (5):
  dt-bindings: arm64: dts: mediatek: Add mt8173 elm and hana
  arm64: dts: mt8173: add uart aliases
  arm64: dts: mt8173: fix unit name warnings
  arm64: dts: mediatek: add mt8173 elm and hana board
  media: mtk-mdp: Use correct aliases name

 .../devicetree/bindings/arm/mediatek.yaml     |   22 +
 arch/arm64/boot/dts/mediatek/Makefile         |    3 +
 .../dts/mediatek/mt8173-elm-hana-rev7.dts     |   27 +
 .../boot/dts/mediatek/mt8173-elm-hana.dts     |   14 +
 .../boot/dts/mediatek/mt8173-elm-hana.dtsi    |   70 +
 arch/arm64/boot/dts/mediatek/mt8173-elm.dts   |   14 +
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi  | 1173 +++++++++++++++++
 arch/arm64/boot/dts/mediatek/mt8173.dtsi      |   43 +-
 drivers/media/platform/mtk-mdp/mtk_mdp_comp.c |    8 +-
 9 files changed, 1350 insertions(+), 24 deletions(-)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana-rev7.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi

-- 
2.25.0.225.g125e21ebc7-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
