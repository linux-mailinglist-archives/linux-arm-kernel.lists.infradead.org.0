Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA76C9695A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 21:25:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9gBAd7Af8wsgBG9jzWD0sA6XTxm2Grc+prZGZX0n4Qo=; b=E6Exv4yvx7MX0j
	NUtP41rCd2M/yKNEat/ZpcG1nD9x4HeOx6+c19mAIdHdSHYKmceHxO4ZTRla6tMH/MprrHgw+dlOJ
	dwaKVSiDbOyLRODKIZ4bQ4NGGxn5g9Xn2LRUIasePqijCgNtBCdA+tm1pwO7WnqoMayhDmjn7+IUs
	9th5ZdeZFdc4EGUjLr72Ur1zH5eIPPtvAwW55WQkjitBK0rlW26de62KxD3szW4xuWai5Wqqls0Ci
	cHG5ug0xxiD2iT8yxWluP/ssm5PZ2eze15ZyobK6h9q6udTXEO7YB3AoQa92yeu2BZPaNZKIP9aEq
	2E+I7Mi7Pg/nFaYEJbag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i09l7-0003tB-16; Tue, 20 Aug 2019 19:25:33 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i09kw-0003r8-GU
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 19:25:24 +0000
Received: by mail-pf1-x441.google.com with SMTP id i30so3964466pfk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 12:25:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=04NKhJxX8FlEE8Vel6IHRyr5QWy4tlrGyOfc2JJ0jY8=;
 b=J3N1iqC05G6BlmLY4sLgvPQbfCir9vXlmBgMbXeWoxCrQa0sEfQpvhYryRBxbpnicF
 KuOORxmryuKtItZFU2oRa2OxtQ6WYJdfy4KqAlR2aknhG0Ab2oSROSnsMaM5LCMBouak
 dpqJizoos6Rol3qdOszaw0O39xHjE0bLSATnqqkLejapRal6IhjmidcjQfjgrXss2r6p
 QP3mdqabnWQ/YoB+hjzaku4yxydrxtd39ko7iH9m2Er7EcnN3Q1EasG3/xHdEtFeXFTh
 sQ8AQI1cuLQogqOlgvFwDghCB/7/gQVaL+zTpm02z2j/S/W04vELGTODYaqgexISopwH
 1lUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=04NKhJxX8FlEE8Vel6IHRyr5QWy4tlrGyOfc2JJ0jY8=;
 b=pNhoJ2PWo/3d6grZgOI4oR1kT7474MCv3G6qZ+mrelkUnixceogUoAro5gk8J2P+kd
 KTtSVH+Q6Ztrp5mK/Ay/vVwdjZLNVGq17DAHiFTpZYqUSkZtP5r+LwsniciB5I+DiRfE
 N2NomF8NRXNCCBVfqkR4but1n8eC+9DMIb6tgD9hnJReMOeHE87uRckbS+NLU46bk6NC
 kOTrXgRjI43REIdcoIjtyzDMSDDcrUNr+gAiEviP8/GOwGBFXk+P10kWfl6XloiF+gdd
 c3g406Fzm1kfBbP4njsB7JBf8WWqBplOTkJ0pIUfa4BIfnEJ79AS3N6x+mVHz4h9xKr3
 nr7Q==
X-Gm-Message-State: APjAAAVHpeGA2oY7EyoYWV2h/NdmKR7I1Y81eH2VG5A8dgMFdznSCs/0
 ZL3AHXZkhmZO5GUr8pb0/KLpwA==
X-Google-Smtp-Source: APXvYqy9P1Z7fPZd3rUvC8bVlPpzVMI8dViZMXku+yepBg0LQT84LhZxNW32ze6tSrgL8aSDhcSDjA==
X-Received: by 2002:a62:c584:: with SMTP id j126mr31758938pfg.21.1566329120713; 
 Tue, 20 Aug 2019 12:25:20 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id w207sm21516280pff.93.2019.08.20.12.25.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 20 Aug 2019 12:25:20 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 0/6] arm64: Add support for Amlogic SM1 SoC Family
In-Reply-To: <20190820144052.18269-1-narmstrong@baylibre.com>
References: <20190820144052.18269-1-narmstrong@baylibre.com>
Date: Tue, 20 Aug 2019 12:25:19 -0700
Message-ID: <7h4l2bej1c.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_122522_545204_490B5759 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> The new Amlogic SM1 SoC Family is a derivative of the Amlogic G12A
> SoC Family, with the following changes :
> - Cortex-A55 cores instead of A53
> - more power domains, including USB & PCIe
> - a neural network co-processor (NNA)
> - a CSI input and image processor
> - some changes in the audio complex, thus not yet enabled
> - new clocks, for NNA, CSI and a clock tree for each CPU Core
>
> This serie does not add support for NNA, CSI, Audio, USB, Display
> or DVFS, it only aligns with the current G12A Support.
>
> With this serie, the SEI610 Board has supported :
> - Default-boot CPU frequency
> - Ethernet
> - LEDs
> - IR
> - GPIO Buttons
> - eMMC
> - SDCard
> - SDIO WiFi
> - UART Bluetooth
>
> Audio (HDMI, Embedded HP, MIcs), USB, HDMI, IR Output, & RGB Led
> would be supported in following patchsets.
>
> Dependencies:
> - g12-common.dtsi from the DVFS patchset at [1]
>
> Changes from rfc at [2]:
> - Removed Power domain patches & display/USB support, will resend separately
> - Removed applied AO-CEC patches
> - Fixed clk-measure IDs
> - Collected reviewed-by tags
>
> [1] https://patchwork.kernel.org/cover/11025309/
> [2] https://patchwork.kernel.org/cover/11025511/

Series queued for v5.4...
> Neil Armstrong (6):
>   soc: amlogic: meson-gx-socinfo: Add SM1 and S905X3 IDs
>   dt-bindings: soc: amlogic: clk-measure: Add SM1 compatible
>   soc: amlogic: clk-measure: Add support for SM1

... these 3 in v5.4/drivers ...

>   dt-bindings: arm: amlogic: add SM1 bindings
>   dt-bindings: arm: amlogic: add SEI Robotics SEI610 bindings
>   arm64: dts: add support for SM1 based SEI Robotics SEI610

... and these 3 in v5.4/dt64 with Rob's tag.

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
