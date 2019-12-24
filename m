Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95ECC12A1A7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 14:12:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nt1+y7mL8+yIrvm1GEkrOcNznabAEeBvV6qjB5bllh0=; b=nbg6v36a8ffGPM
	3NfxZChHuGVfZlkrSxOJtUS7j9Zts7VcNcH3q55PcDaHapOCZwPmeuKaVz0dGinztsWHC0sBaQ7Re
	sFmr40/iDpGEf/rlW/HHJxdqkKZbD0U84HczuZ+spv1aKA5FgkrjekG3lCGWquzA1KD74n7vk8L3N
	qtQvAA2ERa7olpL7Rxc/1CYu2szyKiA7aMuCUMLVWTAOXHkuV+btoep0qreiFbCz3gMBzripNy+wf
	LQmbqq/mtKPjzC3ENLROc6JM1hLfJHDV0+p9GqQr8WvhK8g4E92jruaF+ME+DGM7wwhLq6CIuc5SM
	mFUbKvoAALzb99L/pD4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijjyw-0007kE-VD; Tue, 24 Dec 2019 13:12:15 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijjyj-0007jm-MQ
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 13:12:03 +0000
Received: by mail-wm1-x344.google.com with SMTP id d73so2398977wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Dec 2019 05:11:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xv6fj//PLhqbq16JTfxLOSmf7sN0fE/sKGiYmf3uDbg=;
 b=lEzXy/5fCv6xqhHgtLqYCRDpU59kJQsMB9S1Dx3oM9bFlHPVeS5ca4OfJTlyWxf0R1
 qHO+4Bdmh3LXlSLS8AYFJucCKjK6aB4Xr5F9sNKT+crnsL5rCODfPefYP7gOlHARlQ5c
 jmpGjV9TiV2vSRXcp0E7YXYJLkHcNrWqpLMqmj6s2AsV5JEfWWqm7qQxsuqqkHjyNhJI
 Dy052j+I4s9f/5Lg1Gu8gjvDW1RDVabHP8Rfah8Lp4KJoRsiA9SsYHe0NyAiIsiGor6J
 /gUUuFULmKaO0Yh2M0+wyF5uqXhZ5F3/0PtNvic/kO2UO5gCLdz7tND8ZeVyhTy/WnsQ
 dE1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xv6fj//PLhqbq16JTfxLOSmf7sN0fE/sKGiYmf3uDbg=;
 b=Rnd4vk6gvAdH/epoF9DME1eXm+0gBEn4J20PQwtGaQPX0JjX9b4DHkwJztrosi3SAR
 EPQG/MJscWX5UOMCaAljxLNELI0VYVK9XU9S3gKprKF8s9FyoX6kAERoWHH44B27a9/g
 zZxAEorXTgRDNk3saQmR2kS2Q7A/VjpuhHW8WZU8Hh4/p//c42dxHHChSf74Jc0JipHr
 7vTc7/CCBCIvXpzPik6jA7mzriKGBjvb5BlcsI8ZCsOBh93TSJ00KJmKNsS3gUx2hHfB
 6W9N1rxS90lN7zfdS+vnePGQ3tUypTSAELmN9ceIOdAJifurtIoSzY5DJG2JfR4AR7kv
 Ypyw==
X-Gm-Message-State: APjAAAW6FqNpBdHdh3wszlW8KtUAzqKUnViKdqIaIwbAOjwQJiIozuxj
 QUqxFgG2mJ5UU090bBckQHo=
X-Google-Smtp-Source: APXvYqzRuYR6134pRDFq3Yf9xY6KpX3WI/tV3Jrpy6rro6JAMVg6375WF3SECTkCFDEBgqcM698j1A==
X-Received: by 2002:a7b:c4cc:: with SMTP id g12mr4445625wmk.68.1577193118768; 
 Tue, 24 Dec 2019 05:11:58 -0800 (PST)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id g7sm24175656wrq.21.2019.12.24.05.11.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Dec 2019 05:11:57 -0800 (PST)
Date: Tue, 24 Dec 2019 14:11:55 +0100
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH v8 0/7] add thermal sensor driver for A64, A83T, H3, H5,
 H6, R40
Message-ID: <20191224131155.GA17359@Red>
References: <20191219172823.1652600-1-anarsoul@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191219172823.1652600-1-anarsoul@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_051201_755733_98E2EEB7 
X-CRM114-Status: GOOD (  18.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Amit Kucheria <amit.kucheria@verdurent.com>, linux-pm@vger.kernel.org,
 Yangtao Li <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>,
 =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 09:28:16AM -0800, Vasily Khoruzhick wrote:
> This patchset adds driver for thermal sensor in A64, A83T, H3, H5,
> H6 and R40 SoCs.
> 
> v8:
> 	- [vasily] Address more Maxime's comments for dt-schema
> 	- [vasily] Add myself to MAINTAINERS for the driver and schema
> 	- [vasily] Round calibration data size to word boundary for H6 and A64
> 	- [vasily] Change offset for A64 since it reports too low temp otherwise.
> 	           Likely conversion formula in user manual is not correct.
> 
> v7:
> 	- [vasily] Address Maxime's comments for dt-schema
> 	- [vasily] Move common part of H3 and H5 dts into sunxi-h3-h5.dtsi
> 	- [vasily] Add Maxime's a-b to the driver patch 
> 
> v6:
> 	- [ondrej, vasily] Squash all driver related changes into a
> 			   single patch
> 	- [ondrej] Rename calib -> calibration
> 	- [ondrej] Fix thermal zone registration check
> 	- [ondrej] Lower rate of sensor data interrupts to 4/sec/sensor
> 	- [ondrej] Rework scale/offset values, H6 calibration
> 	- [ondrej] Explicitly set mod clock to 24 MHz
> 	- [ondrej] Set undocumented bits in CTRL0 for H6
> 	- [ondrej] Add support for A83T
> 	- [ondrej] Add dts changes for A83T, H3, H5, H6
> 	- [vasily] Add dts changes for A64
> 	- [vasily] Address Maxime's comments for YAML scheme
> 	- [vasily] Make .calc_temp callback mandatory
> 	- [vasily] Set .max_register in regmap config, so regs can be
> 		   inspected using debugfs
> 
> Ondrej Jirman (4):
>   ARM: dts: sun8i-a83t: Add thermal sensor and thermal zones
>   ARM: dts: sun8i-h3: Add thermal sensor and thermal zones
>   arm64: dts: allwinner: h5: Add thermal sensor and thermal zones
>   arm64: dts: allwinner: h6: Add thermal sensor and thermal zones
> 
> Vasily Khoruzhick (1):
>   arm64: dts: allwinner: a64: Add thermal sensors and thermal zones
> 
> Yangtao Li (2):
>   thermal: sun8i: add thermal driver for H6/H5/H3/A64/A83T/R40
>   dt-bindings: thermal: add YAML schema for sun8i-thermal driver
>     bindings
> 
>  .../thermal/allwinner,sun8i-a83t-ths.yaml     | 160 +++++
>  MAINTAINERS                                   |   8 +
>  arch/arm/boot/dts/sun8i-a83t.dtsi             |  36 +
>  arch/arm/boot/dts/sun8i-h3.dtsi               |  20 +
>  arch/arm/boot/dts/sunxi-h3-h5.dtsi            |   6 +
>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |  42 ++
>  arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi  |  26 +
>  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  |  33 +
>  drivers/thermal/Kconfig                       |  14 +
>  drivers/thermal/Makefile                      |   1 +
>  drivers/thermal/sun8i_thermal.c               | 639 ++++++++++++++++++
>  11 files changed, 985 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
>  create mode 100644 drivers/thermal/sun8i_thermal.c
> 
> -- 
> 2.24.1
> 

Hello

Thanks for your work.

Tested-by: Corentin Labbe <clabbe.montjoie@gmail.com>
Tested-on: sun50i-h6-pine-h64-model-b
Tested-on: sun50i-h6-pine-h64
Tested-on: sun8i-a83t-bananapi-m3
Tested-on: sun8i-h2-plus-orangepi-zero
Tested-on: sun8i-h2-plus-orangepi-r1
Tested-on: sun8i-h2-plus-libretech-all-h3-cc
Tested-on: sun8i-h3-libretech-all-h3-cc
Tested-on: sun50i-h5-libretech-all-h3-cc
Tested-on: sun50i-a64-pine64-plus

Note that your patch serie support R40 but you do not have any R40 DT patch.
If you need testing, do not hesitate to ask.

Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
