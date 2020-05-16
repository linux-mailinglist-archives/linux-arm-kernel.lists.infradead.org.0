Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1349E1D63E9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 22:04:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BWezBl02kMkAfQaMd5rNAnD9hMtpOEW7uISfAwbE+rk=; b=Wff3HvA5ZMx1wF
	V1308KMLFFZUgmHBfvkz2RI2i6Zt7qZujjIKC5arcm0NvwvYE1noUi5DcCUK/K1MqB8wsngjp9Lgm
	LdH0lKXR8kk18/K3lsuZFOMS3iCoR7k1x9yoOhHah8xlD6qykmn0638GTblow238pZ3VLarMDRWtD
	EykKcgA/a8xQWPOk9wN7OLPhcfgM8RpC2NO9sKWkuCG73aGZnq6Nq61qhvZjlvMWPoLOTF9JHNBi7
	mv1023Yqt2zRhoRbJJRLcgU7RZe2uUj5O+dbVB2BYPQi3+U5xATwkGjCh3IaH1Sv+dh7iLsDa+ROh
	2dJIwi/2FDtFLAQhq/+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja32o-0000Rn-4N; Sat, 16 May 2020 20:04:26 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja32e-0000Qk-Fq; Sat, 16 May 2020 20:04:18 +0000
Received: by mail-oi1-x243.google.com with SMTP id i22so5477806oik.10;
 Sat, 16 May 2020 13:04:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:autocrypt:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=34LgWJZ4gK/xsz56iZB1XxASII2FaMFp9R5VglP+pnE=;
 b=fxEPjo6Gd7AjTkOmyrCvegSy8/OJ8l1o+8eOEVjTECw52mxx0xlWOLaeLpAqItTnTR
 uZUmWAKfTdA+dRpuVHUstTKo9dYXanILatEeRQWm7Tm3Zr8Cukj9EZJywJGxsaulxvBo
 USEOYPf9BtpKHavCmiXP6UICz8xjz+KqpDLCbSW0mKMgtRlgPLRI266YMm24JIFklubD
 Jr1BgnVNjZuIJcu0RSQORBasL4zrAulwoHV84RqpM+RB3JAt/44dURfKjU6MMl30Pwg1
 bQV46aCxvAsbVocOozMTfd8rA7Sche+FjL4IEe2etCRbeXcWuaOPM0qnho5Y3RN3nWMj
 VRCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:autocrypt:cc:message-id:date
 :user-agent:mime-version:content-language:content-transfer-encoding;
 bh=34LgWJZ4gK/xsz56iZB1XxASII2FaMFp9R5VglP+pnE=;
 b=JbFZ7AadoFVgi/KvIzgDm0Qvp33VHdp0aZU/cN2YBIfYCm997UvcmJBEBnuxf2awnI
 hiyVeT/oQIJxAZCi35xCJqRmKP7mlEBNpKJHGBLV2ddlbxw4lXwuzH/3xhWQ/Pjzt9aA
 8b9D2S01fIrJksiewxo3sT1e2zH5zaj8wqfpygGQ0L5dZQ6BYiqVW2lu3UF2hmlorhgb
 yoiq1WTTlui+Bq+5/MfTqnmYIG8sjv0l7IM4m1ZLmCZOY13+G0/xun4NX1TQXyQBVv6t
 T2gRWKJREl/7Aqb0bvNgYUZA29O66b3+JTkE8fH1jv+ZpCRiwOatMb6Ot8PJqO+aiwPC
 R5DA==
X-Gm-Message-State: AOAM530y0pfyU/OO9oOHvaiYI1kx2cuYX0nqb6j/d0IbW2dP0l6tJz9r
 AZzxYScvTayTAFLxxaQlc8Q=
X-Google-Smtp-Source: ABdhPJwUKDLsTZ55/MXqr69T9uuO5aU4nBQxgc+qbHYuA1/TQqhR0BAxuzVobnekzmaDrczmVxJMSw==
X-Received: by 2002:aca:4785:: with SMTP id u127mr6423776oia.2.1589659455378; 
 Sat, 16 May 2020 13:04:15 -0700 (PDT)
Received: from ziggy.stardust ([213.195.113.243])
 by smtp.gmail.com with ESMTPSA id 95sm1622579otf.72.2020.05.16.13.04.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 16 May 2020 13:04:13 -0700 (PDT)
To: arm-soc <arm@kernel.org>, SoC Team <soc@kernel.org>
From: Matthias Brugger <matthias.bgg@gmail.com>
Subject: [GIT PULL] arm64: mediatek: updates for v5.8
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <2794a8db-c14f-ac34-9e28-9f3700db6c4c@gmail.com>
Date: Sat, 16 May 2020 22:04:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_130416_583427_CEBF7F6F 
X-CRM114-Status: GOOD (  19.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matthias.bgg[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ryder Lee <ryder.lee@mediatek.com>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Michael Kao <michael.kao@mediatek.com>,
 Ulrich Hecht <ulrich.hecht+renesas@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Ikjoon Jang <ikjn@chromium.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olof,
Hi Arnd,

Please have a look on the device tree changes for 64-bit platforms. The
highlight for me is the support for the support for the MT8173 based Chromebooks
(like the Acer R13). This has been around for quite some time, but in the end we
took up the work between several people to get it all ready for upstream.

Regards,
Matthias

---

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/matthias.bgg/linux.git/
tags/v5.7-next-dts64

for you to fetch changes up to f0e5405b9ebf084c34c41f5d38a0013bee166f4d:

  arm64: dts: mt8173: Add capacity-dmips-mhz attributes (2020-05-16 18:36:40 +0200)

----------------------------------------------------------------
MT2712:
- replace deprecated compatible for the usb PHY

MT6797:
- switch to SPDX identifier
- add and enable I2C device for x20 development board
- add I2C compatible to the binding description

MT7622:
- add Wi-Fi device and enable it for the Bananpi-R64

MT8173:
- add CPU capacities based on Dhryston benchmark
- fix DT build warnings
- set throtteling range to limitless
- add Elm and Hana devices on which several chromebooks are based
- add Global Command Queue entries to the users

MT8183:
- split cpuidle states in two as the clusters have different target residencies

----------------------------------------------------------------
Chunfeng Yun (1):
      arm64: dts: mt2712: use non-empty ranges for usb-phy

Hsin-Yi Wang (6):
      arm64: dts: mt8173: Add gce setting in mmsys and display node
      dt-bindings: arm64: dts: mediatek: Add mt8173 elm and hana
      arm64: dts: mt8173: add uart aliases
      arm64: dts: mt8173: fix unit name warnings
      arm64: dts: mediatek: add mt8173 elm and hana board
      arm64: dts: mt8173: fix mdp aliases property name

Ikjoon Jang (1):
      arm64: dts: mt8183: adjust cpuidle target residency

Manivannan Sadhasivam (4):
      dt-bindings: i2c: Document I2C controller binding for MT6797 SoC
      arm64: dts: mediatek: Add I2C support for MT6797 SoC
      arm64: dts: mediatek: Enable I2C support for 96Boards X20 Development board
      arm64: dts: mediatek: Switch to SPDX license identifier for MT6797 SoC

Michael Kao (1):
      arm64: dts: mt8173: fix cooling device range

Ryder Lee (1):
      arm64: dts: mt7622: add built-in Wi-Fi device nodes

Ulrich Hecht (1):
      arm64: dts: mt8173: Add capacity-dmips-mhz attributes

 .../devicetree/bindings/arm/mediatek.yaml          |   22 +
 .../devicetree/bindings/i2c/i2c-mt65xx.txt         |    1 +
 arch/arm64/boot/dts/mediatek/Makefile              |    3 +
 arch/arm64/boot/dts/mediatek/mt2712e.dtsi          |   42 +-
 arch/arm64/boot/dts/mediatek/mt6797-x20-dev.dts    |   49 +
 arch/arm64/boot/dts/mediatek/mt6797.dtsi           |  229 +++-
 .../boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts  |    4 +
 arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts       |    4 +
 arch/arm64/boot/dts/mediatek/mt7622.dtsi           |   11 +
 .../boot/dts/mediatek/mt8173-elm-hana-rev7.dts     |   27 +
 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dts   |   14 +
 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi  |   70 ++
 arch/arm64/boot/dts/mediatek/mt8173-elm.dts        |   14 +
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi       | 1173 ++++++++++++++++++++
 arch/arm64/boot/dts/mediatek/mt8173.dtsi           |   78 +-
 arch/arm64/boot/dts/mediatek/mt8183.dtsi           |   26 +-
 16 files changed, 1705 insertions(+), 62 deletions(-)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana-rev7.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
