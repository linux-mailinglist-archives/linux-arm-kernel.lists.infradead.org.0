Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D868BBDE3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 23:27:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7I6lpXtoqkqW4Ch7P3F7sScZoRlBg9NQjrheB8z8lyc=; b=WFKrPii64GAp4r
	sIL61Oh0VNhaxxeJeL4Ht5V8a8w1r2MP2dypDOzV/Oa3uaaLsL6NivZ355DY9wnRCn1M6KiAeAUyz
	ZL40mOzEbcBSKHDD4/O/MCUyy1OQFUS061uJIcHX5WGa9XbTdBJfB/P7vcrUnz0mIRHgFKqVxN4Vl
	Q/D90qx1jUtBDSq9VhEpY84InFOHdWD3zuTkde4B1AS/H0DMwPNk1IOxRljNirsa39yUp7nWpmsls
	B+V8rmNYESpNLOvtoyQxd1oUopAT5g5/DgsF6iZ6NHKWu7jrLbbRqTyJcDa+1eQ3iEW5z1WAxMFsN
	VDHz5ffe4/RpnzlNL84Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCVre-0002AY-2k; Mon, 23 Sep 2019 21:27:22 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCVrT-00029n-UW
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 21:27:13 +0000
Received: by mail-vs1-xe43.google.com with SMTP id b123so10490212vsb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 14:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vHhoKNkWQVSufR3socq4cNGUkfXrLe9oTzZQhchj07M=;
 b=oJ7mFrs+CX8HcCeUoV4cxxIhKHBAgKIptVakUct/KMBnxPRemecLsY/zsxfcjfjWWD
 q3N59EbMs2fjh6/EJEtKiji1eWeaeTnO7jFKvYnDzxHIKaVXs8x1sk8/lPDRZueEwjEs
 X4Q7TaC+k51MWL+E6SoWtKz0NGUWL9dDz+rkawvYChol4Min6XRWH9b7/JZ2OyXgQMbE
 GciNXsttI+1/LOYR9nQha972hQJG7TdsPVlNCuzHgtVB6CvUiQ8hSCgrAg5HYcSjkeTW
 a9ynPr1mGXxip7SZCDIwbwRgO0Ve5otdu+NtgdiJq3Pf42O60Mj3WYSti4tS043dT71R
 WxYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vHhoKNkWQVSufR3socq4cNGUkfXrLe9oTzZQhchj07M=;
 b=jUn/HNvigZp5RyRIGXPPPEZp/8Rl8CPPw7T7xnUniENUM8NjYCP5/JyRU62tjpJmNb
 0zK9ohBYM43H6vSXL70jyxP1vWuNZG/MMviSmHS4p+0E+LqhjGrgGERpUiWkAd+xqGRO
 WBtFsVPk1soH6Wk+thFzu/pUuMNs6JXF1+wAaX5b6UYBde3+iPmDw0WNdxrpWqJyQYMe
 kjw28J50KlA+9gPspwavH/lBoWlHepF/ryZ41t/4BGbf0Zh8WLZ0ZwimsPSc/CnYE6WM
 NyTN/ER/wEj8qNrhzdbX4Bt40KqGg6FFhi1KBwbB0DIS4FKrLhceOZWvyB0VRZ//W2Vp
 m/Ig==
X-Gm-Message-State: APjAAAVG53wwxXOfLMshFGYy6tKdemdL2679YrsaDJ6IgWNDFnR7hBUB
 49NoaRX11lyBKHeyY1Onr0LRPhZUTxZlAUVYM/V8Bw==
X-Google-Smtp-Source: APXvYqxSg5HVU2OBPLas5RQxs9WB7nMgbaCdCpJnSD0j0TgQb0cn+xS/yZmPUhwvVecDG/FJ7rHDc891MtIOVED4ANs=
X-Received: by 2002:a67:e414:: with SMTP id d20mr775921vsf.191.1569274029637; 
 Mon, 23 Sep 2019 14:27:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190922102341.GO25745@shell.armlinux.org.uk>
 <E1iBz55-0008Mj-CX@rmk-PC.armlinux.org.uk>
In-Reply-To: <E1iBz55-0008Mj-CX@rmk-PC.armlinux.org.uk>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 23 Sep 2019 23:26:33 +0200
Message-ID: <CAPDyKFpQn+O-M60q-Tc4QOBM+WhFhmnkU6_-t5hnQcndLo==YA@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: mark lx2160a esdhc controllers dma
 coherent
To: Russell King <rmk+kernel@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_142711_990597_E36E1757 
X-CRM114-Status: GOOD (  19.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 dann frazier <dann.frazier@canonical.com>, Will Deacon <will.deacon@arm.com>,
 Li Yang <leoyang.li@nxp.com>, Nicolin Chen <nicoleotsuka@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, "Y.b. Lu" <yangbo.lu@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 22 Sep 2019 at 12:29, Russell King <rmk+kernel@armlinux.org.uk> wrote:
>
> The LX2160A esdhc controllers are setup by the driver to be DMA
> coherent, but without marking them as such in DT, Linux thinks they
> are not.  This can lead to random sporadic DMA errors, even to the
> extent of preventing boot, such as:
>
> mmc0: ADMA error
> mmc0: sdhci: ============ SDHCI REGISTER DUMP ===========
> mmc0: sdhci: Sys addr:  0x00000000 | Version:  0x00002202
> mmc0: sdhci: Blk size:  0x00000008 | Blk cnt:  0x00000001
> mmc0: sdhci: Argument:  0x00000000 | Trn mode: 0x00000013
> mmc0: sdhci: Present:   0x01f50008 | Host ctl: 0x00000038
> mmc0: sdhci: Power:     0x00000003 | Blk gap:  0x00000000
> mmc0: sdhci: Wake-up:   0x00000000 | Clock:    0x000040d8
> mmc0: sdhci: Timeout:   0x00000003 | Int stat: 0x00000001
> mmc0: sdhci: Int enab:  0x037f108f | Sig enab: 0x037f108b
> mmc0: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00002202
> mmc0: sdhci: Caps:      0x35fa0000 | Caps_1:   0x0000af00
> mmc0: sdhci: Cmd:       0x0000333a | Max curr: 0x00000000
> mmc0: sdhci: Resp[0]:   0x00000920 | Resp[1]:  0x001d8a33
> mmc0: sdhci: Resp[2]:   0x325b5900 | Resp[3]:  0x3f400e00
> mmc0: sdhci: Host ctl2: 0x00000000
> mmc0: sdhci: ADMA Err:  0x00000009 | ADMA Ptr: 0x000000236d43820c
> mmc0: sdhci: ============================================
> mmc0: error -5 whilst initialising SD card
>
> These are caused by the device's descriptor fetch hitting speculatively
> loaded CPU cache lines that the CPU does not see through the normal,
> non-cacheable DMA coherent mapping that it uses for non-coherent
> devices.
>
> DT and the device must agree wrt whether the device is DMA coherent or
> not.
>
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

As I am picking up patch1 and patch2 from this series, I can also help
out and pick up this one, if that is okay by people?

Kind regards
Uffe

> ---
>  arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> index 36b153e3da47..508af23edef0 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> @@ -593,6 +593,7 @@
>                         reg = <0x0 0x2140000 0x0 0x10000>;
>                         interrupts = <0 28 0x4>; /* Level high type */
>                         clocks = <&clockgen 4 1>;
> +                       dma-coherent;
>                         voltage-ranges = <1800 1800 3300 3300>;
>                         sdhci,auto-cmd12;
>                         little-endian;
> @@ -605,6 +606,7 @@
>                         reg = <0x0 0x2150000 0x0 0x10000>;
>                         interrupts = <0 63 0x4>; /* Level high type */
>                         clocks = <&clockgen 4 1>;
> +                       dma-coherent;
>                         voltage-ranges = <1800 1800 3300 3300>;
>                         sdhci,auto-cmd12;
>                         broken-cd;
> --
> 2.7.4
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
