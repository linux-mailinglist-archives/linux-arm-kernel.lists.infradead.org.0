Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01EAB95FC7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 15:17:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qU6NnFFJlPiFAWMuzUlFwyUgl1HRn55pjrYGMJq7HO8=; b=acdkuDrBuK2/FR
	ojpoI/tVClmCJP9fpkWstoUTPcKP8AjfNZsl90+NZN9Nyo45GLhiUoAb2gMHPPl54/BFd9uX121MT
	+o1xRueMm0awidmQD8TDykTYJ5PGwp9V2mFLx48D4s1zj8RDtCmZk0uNI5zakTUagUgrsR8bpIz2I
	d9Bt7T2qT4GsagGyuDdxwb0drxC8ckudOA+dSbn7p46caFn+j0I4ycZCJ1WgNCLL4o8E72JKsmKzF
	9Pl6zSfTdmGXaqtYEzwz3CkT1bclESpbjZmsELE0kocoXkfZfHjK6WRZKLKHQHCn00axF/LLbsCLb
	tEyyntQlBu9G08pWZx5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i040z-0008UL-43; Tue, 20 Aug 2019 13:17:33 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i040H-0008Rd-AX
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 13:16:52 +0000
Received: by mail-wr1-x442.google.com with SMTP id y8so12355639wrn.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 06:16:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=9qx4eMERV4IYSxubbJ9kymQuWPOVCkxnIO1q9A2cokQ=;
 b=vWSg8wKkLC+Q2n3D8QUTcZRdX2JVEE3J2rLrIPwBjBAfQaMWu67tDpIq8ee/CUWRVI
 RTDDfRbnTnvTwAXuXAkDLLOJ6NIM2+GCaNMLlX+oJqccI1dwdJCQeR3q4l3hLf+0k8R/
 WfttgLU3RzKiyzTRlco5dRx+PvX6d3flpD4Fp5LiyjVAx1ozm1ivjyHl1ynPC5/vs2HG
 ruvMPISG0/7yhwebAPIBHh2t470bkF9mRDnI7odqkSAd1VYfPXaOLohM8pHKzeh5IJmQ
 LMgG7AZKzSIyo3gf7s9vvcCtI9JeMbcSS4Ejl+fc6xVnC49vSmWM1yZ+trLqWgaeFZDH
 /TNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=9qx4eMERV4IYSxubbJ9kymQuWPOVCkxnIO1q9A2cokQ=;
 b=fZSHCWoPNtdWLTkbOh8G+MiRsDmoSi2R8pIontVOv9j2dcVVJgTOLTg2WOo/4/32pn
 rM3+rhKydEbpkKoTKyU/T6jLGbDku/9QIfhb2CoUOHv4SRnHFcPFc439W4/7F0pHXCL7
 faqxyKFaDC67x5w3aGwnsNfkjm+d7Gy8onvAjEnCFpo9CjKsgl6HTI8j+rJvqEvWzTFR
 Azb7O+rhuVy/kxLwCsNtparLeR/fqdnINmycMVNNIDB/cTf948drRz6j7H47NsqAbCBo
 V3v0eID931DkD4W3G2iE/QZPKArrFuZ+JRuadUlwPnq5QxHATnnlBcSxjwBdW6FO3xcT
 jGTg==
X-Gm-Message-State: APjAAAWAGmXOEbjJD1WUcHl4Scv+oYcjsZIkdqdxXiA9eslz7BmFT/dy
 5v75F+SXWVBWR3OetfUiLqWnBw==
X-Google-Smtp-Source: APXvYqyXs7pIVMqpwrAgZepW9zZ8Bkzc64T4uhTcQwCeDt52DU4X/tVmTamdwwNqzNtkjq6yyFlkCg==
X-Received: by 2002:a5d:6a12:: with SMTP id m18mr34553082wru.306.1566307007265; 
 Tue, 20 Aug 2019 06:16:47 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id c187sm24644224wmd.39.2019.08.20.06.16.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 20 Aug 2019 06:16:46 -0700 (PDT)
Subject: Re: [RFC 00/11] arm64: Add support for Amlogic SM1 SoC Family
To: jbrunet@baylibre.com, khilman@baylibre.com
References: <20190701104705.18271-1-narmstrong@baylibre.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <66111697-00b8-4874-f7f9-bc8573e562c7@baylibre.com>
Date: Tue, 20 Aug 2019 15:16:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190701104705.18271-1-narmstrong@baylibre.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_061649_643973_AA33C86C 
X-CRM114-Status: GOOD (  19.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

He Kevin, Martin,

On 01/07/2019 12:46, Neil Armstrong wrote:
> The new Amlogic SM1 SoC Family is a derivative of the Amlogic G12A
> SoC Family, with the following changes :
> - Cortex-A55 cores instead of A53
> - more power domains, including USB & PCIe
> - a neural network co-processor (NNA)
> - a CSI input and image processor
> - some changes in the audio complex, thus not yet enabled
> - new clocks, for NNA, CSI and a clock tree for each CPU Core
> 
> This serie does not add support for NNA, CSI or DVFS, it only
> aligns with the current G12A Support.
> 
> With thie serie, the SEI610 Board has supported :
> - Default-boot CPU frequency
> - 4k60 HDMI without audio
> - USB3 & USB-C OTG
> - Ethernet
> - LEDs
> - IR
> - GPIO Buttons
> - eMMC
> - SDCard
> - SDIO WiFi
> - UART Bluetooth
> 
> Audio (HDMI, Embedded HP, MIcs), IR Output, & RGB Led would be
> supported in following patchsets.

Following the comments in the power domain patches, I'll respin in 2 distinct
patches :
- initial support without USB, Display & power domain updated
- power domain support with USB & Display support

Neil

> 
> Dependencies:
> - g12-common.dtsi from the DVFS patchset at [1]
> 
> [1] https://patchwork.kernel.org/cover/11025309/
> 
> Neil Armstrong (11):
>   soc: amlogic: meson-gx-socinfo: Add SM1 and S905X3 IDs
>   dt-bindings: power: amlogic, meson-gx-pwrc: Add SM1 bindings
>   soc: amlogic: gx-pwrc-vpu: add SM1 support
>   soc: amlogic: Add support for SM1 power controller
>   dt-bindings: soc: amlogic: clk-measure: Add SM1 compatible
>   soc: amlogic: clk-measure: Add support for SM1
>   dt-bindings: media: meson-ao-cec: add SM1 compatible
>   media: platform: meson-ao-cec-g12a: add support for SM1
>   dt-bindings: arm: amlogic: add SM1 bindings
>   dt-bindings: arm: amlogic: add SEI Robotics SEI610 bindings
>   arm64: dts: add support for SM1 based SEI Robotics SEI610
> 
>  .../devicetree/bindings/arm/amlogic.yaml      |   5 +
>  .../bindings/media/meson-ao-cec.txt           |   8 +-
>  .../bindings/power/amlogic,meson-gx-pwrc.txt  |  35 ++
>  .../bindings/soc/amlogic/clk-measure.txt      |   1 +
>  arch/arm64/boot/dts/amlogic/Makefile          |   1 +
>  .../boot/dts/amlogic/meson-sm1-sei610.dts     | 329 ++++++++++++++++++
>  arch/arm64/boot/dts/amlogic/meson-sm1.dtsi    |  77 ++++
>  drivers/media/platform/meson/ao-cec-g12a.c    |  37 +-
>  drivers/soc/amlogic/Kconfig                   |  11 +
>  drivers/soc/amlogic/Makefile                  |   1 +
>  drivers/soc/amlogic/meson-clk-measure.c       | 134 +++++++
>  drivers/soc/amlogic/meson-gx-pwrc-vpu.c       | 120 +++++++
>  drivers/soc/amlogic/meson-gx-socinfo.c        |   2 +
>  drivers/soc/amlogic/meson-sm1-pwrc.c          | 245 +++++++++++++
>  include/dt-bindings/power/meson-sm1-power.h   |  15 +
>  15 files changed, 1017 insertions(+), 4 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
>  create mode 100644 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
>  create mode 100644 drivers/soc/amlogic/meson-sm1-pwrc.c
>  create mode 100644 include/dt-bindings/power/meson-sm1-power.h
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
