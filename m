Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 921F6155439
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 10:03:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jdNxjtF8hlzQPdVqiSMGs18V/H422zxV8lnzFQYOUyw=; b=Fs15/7DtaNFeA6
	eBLG5aOlkR3saYpOqg6wJ28HLhBr3e9LwB5Hnj3pZToJRa9sLqDBVOOYKf/GSZJFqynr2Jf6KcsOf
	1LB81bvdBa9H6jmPXD3pF5FZ4CNEj+dtqv7zvhb+ZcHUF48tHMvnzmZg5t7WJkDfCtygnIwVzzjNv
	zy6ZAYmum3wY7FYrBh/Pjidf49iJyHs6smqgpCaGDoEM3hCcdGuv7AoRRtvAj2DUp8FoB8C7Jbv6o
	NyO0FvSGKtGIvfwA/lohWzp4KhinV6LjqoiQ9rQqKxuom2rgGlEs3rD42Liu9DvxUJk0sJ9h7Arlf
	MmWtomovBf25/zF+nOBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izzXS-0005fI-Rt; Fri, 07 Feb 2020 09:03:02 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izzXC-0005dF-FF
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 09:02:47 +0000
Received: by mail-pg1-x52e.google.com with SMTP id l3so787794pgi.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Feb 2020 01:02:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=op1HXNhATyHRgyyhvfgTZxFzh1I8MPtGuBHJSPNyYOk=;
 b=V11ZRlSVoy8l/X+8crvCfDhWVEeNs7U6MYjmhE5PH3dH/QgD5ZXbfebDNDY+TVuxS2
 EF3b24coOyyCvvlqkO2mz17Pdt1JPDmLGRFZyjnK4KtDkGILDVe4ZEvAT+LAPlLhWDkf
 nB7KDKdqJTaxNX4qtPaYyp522JBRelU6OJr8U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=op1HXNhATyHRgyyhvfgTZxFzh1I8MPtGuBHJSPNyYOk=;
 b=kfkH8q1fLXw5nL0adOJK9Qc4cjY9zir87lCFF+3M7QLYDdI5GkDqsKtaA+9KM7WvHi
 gjJZf6V+RuF5ZHaPVFZtrtp6Cmp5Jiq89C0gCaGjUDAzOqt4dXILeJRrTW4wCAsNzmbm
 pHGUVI16c966x0W1nZMQahyCNNJO57fh0N7EHVATlFmzcS1G/jadQ6zIYpqukrZMCvRz
 ZmVPGtFBpM9c3s6FWTe2yqDlqAZUxNminiEwqjsvmXVnHifu6J1D6CHeFtSIEkygFGRb
 B7kFrxXYyX7jENrxDWTGX9poKC0IhaQhwkXl+qDRQcjjC0ZLYcRCXS5ekiE7epos2YhA
 tIDQ==
X-Gm-Message-State: APjAAAVGkHNKkEGthB90hAe8xx1cBTMUsiZ3CH08+a3GV0ZH+rqx8IKG
 9Ffr7F98QFJP1tKZctKOFa5vJI4Zr+Vw0Q==
X-Google-Smtp-Source: APXvYqxN/ldFiwGp0nM9WRPRSNpu6gFYZl5ZXHD3UiPJnYNWxmaakrmXDFCuyvReK7SQz/hZZl3wKg==
X-Received: by 2002:a62:1a97:: with SMTP id a145mr9181514pfa.244.1581066165016; 
 Fri, 07 Feb 2020 01:02:45 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id w6sm2309463pfq.99.2020.02.07.01.02.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Feb 2020 01:02:44 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v6 0/5] Add mt8173 elm and hana board
Date: Fri,  7 Feb 2020 17:02:23 +0800
Message-Id: <20200207090227.250720-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.225.g125e21ebc7-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_010246_505321_88A44816 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi  | 1166 +++++++++++++++++
 arch/arm64/boot/dts/mediatek/mt8173.dtsi      |   43 +-
 drivers/media/platform/mtk-mdp/mtk_mdp_comp.c |    8 +-
 9 files changed, 1343 insertions(+), 24 deletions(-)
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
