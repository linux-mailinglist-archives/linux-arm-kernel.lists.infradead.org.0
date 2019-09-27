Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF870C0B51
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 20:36:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g0jwMQBnM+yjmjXEbalR4EfmezLXzpHrn2+9WtR8sHI=; b=Sgl6FHmkrBbtj8
	5zjMW+I/z1Q6YrDHg09fyb1fQUTkkL+Jh8HT26YgtjhMhwm8kuRBeYUGKnDlpiS/85N4XoUA6IVI3
	TnZRH5rJY9yTTCYD7Szy4gaBvC9p4ItZrhMDY45ldzrvqhSx924CGxLOJN1WGKo2dnJ7WiY1ziqDl
	42lyi19bvSKQxOPhw1I5MPq5I9Pb813aKS46X3JwIB6po8TDtV2gkrulJttSqo+8JQJOPeEmnOHUJ
	yxlBrf/cSwEJkpcz742Agj0qdG3hfITpGJLK2mZJrZe37hU4zXDOfURlr44CpVDYrSSlOLHHpAxIf
	Y8xKQG8nL5MBgAgPY5Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDv6P-0003u0-KW; Fri, 27 Sep 2019 18:36:25 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDv6E-0003tN-Jd
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 18:36:16 +0000
Received: by mail-ua1-x944.google.com with SMTP id n63so2267380uan.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 11:36:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pgw6AMmjd8FcODYhNXJ6h6EuyT3ubSZ01OmcV533FOg=;
 b=eDTJBlEWZDWx0XFuvuALBQtlzosOa7YmfK5ZM7UwW5LFknREGRhpCEAQ0JgHlw7WRo
 pFbve1t00ldHPq2nBuLl0fH7f6lYJEINJFuTXx7Dj+GTsCgipzq3by71xWZrruN+SeS/
 jtBMKwHUsgLedk/Oh6pwTyONVzNMiswP6pQZ3yStgKmZtSYUAxfKDblmz+vRj9Tst6wQ
 yCAP1nM39po/IKL4VDCr7ID//pyvPQv+AtUfr+Iy5Aoid/ybRmZMVdGn3FCNGpPi0rE6
 gtqzUGv2NOFQsD4VSbzWWQkcvrTs4CM2NUuH/aUNfjvGIPAz6P8+3bca8dMwM+V6UY3W
 7xLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pgw6AMmjd8FcODYhNXJ6h6EuyT3ubSZ01OmcV533FOg=;
 b=g2L352InBeanFAZWe6JnWuq9HD+B65tD77TiuZ0tYlpe9TQbmprZct0fZEoZIZemKZ
 dcWQNVWW6EpsC2+DAE7WppndbQmrmsvFo68HE5HAUd8DIoYwOEH3Yjw8Fin3NljnZbvd
 UA0r8N3VQ2dZSN9Q1iQW6KV/N0+Fn6b12vo7SDCp91CgqyLsKB3i1lYokxs+Sp8Smvd8
 eJfFJ2aweS8CtxrEntJBnOcEOg0UV03Wyb8DrbRT6O7BTP6osWpFOo0bsDMWqla+VAfS
 K92Vb2W9rUV8ibgIF278a+BcrP4HGGzdqIj8W2drk4lw0tfOsU+giWq8zVnmkzRqrOMy
 LyWg==
X-Gm-Message-State: APjAAAX1glZXha31w6MGctTeeFr1UOF3BWsw4kS2K4Y1slm6e0O1Z5mG
 Zr89OzJmuV75MNZTn6MggedYvMHZZKM9LVHLQFlcxQ==
X-Google-Smtp-Source: APXvYqzJk+RufAS38mOg2G7I5XaU61Uo/xNb1WDdry5ntpEov4c8yXd8xlDSiZU6gXC/Me/a9M+9jPX0x3jzP1+S8O0=
X-Received: by 2002:ab0:3098:: with SMTP id h24mr5559466ual.100.1569609372593; 
 Fri, 27 Sep 2019 11:36:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190922102341.GO25745@shell.armlinux.org.uk>
 <E1iBz55-0008Mj-CX@rmk-PC.armlinux.org.uk>
 <CAPDyKFpQn+O-M60q-Tc4QOBM+WhFhmnkU6_-t5hnQcndLo==YA@mail.gmail.com>
 <AM0PR04MB66766AC0807A85B3E5428E028F840@AM0PR04MB6676.eurprd04.prod.outlook.com>
 <4cb91a30-ed1b-1fef-58df-fbc46757bd5d@arm.com>
In-Reply-To: <4cb91a30-ed1b-1fef-58df-fbc46757bd5d@arm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 27 Sep 2019 20:35:35 +0200
Message-ID: <CAPDyKFpm-73euWRWDHhMz=aRt38VLWp5-OaTVhVeFwuc+y46mQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: mark lx2160a esdhc controllers dma
 coherent
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_113614_676851_17AC8F17 
X-CRM114-Status: GOOD (  18.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 dann frazier <dann.frazier@canonical.com>, Will Deacon <will.deacon@arm.com>,
 Leo Li <leoyang.li@nxp.com>, Nicolin Chen <nicoleotsuka@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 "Y.b. Lu" <yangbo.lu@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 24 Sep 2019 at 20:04, Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 24/09/2019 04:41, Leo Li wrote:
> >
> >
> >> -----Original Message-----
> >> From: Ulf Hansson <ulf.hansson@linaro.org>
> >> Sent: Monday, September 23, 2019 4:27 PM
> >> To: Russell King <rmk+kernel@armlinux.org.uk>
> >> Cc: Robin Murphy <robin.murphy@arm.com>; dann frazier
> >> <dann.frazier@canonical.com>; Will Deacon <will.deacon@arm.com>;
> >> Nicolin Chen <nicoleotsuka@gmail.com>; Y.b. Lu <yangbo.lu@nxp.com>;
> >> Christoph Hellwig <hch@lst.de>; Mark Rutland <mark.rutland@arm.com>;
> >> DTML <devicetree@vger.kernel.org>; Leo Li <leoyang.li@nxp.com>; Rob
> >> Herring <robh+dt@kernel.org>; Shawn Guo <shawnguo@kernel.org>; Linux
> >> ARM <linux-arm-kernel@lists.infradead.org>
> >> Subject: Re: [PATCH 3/3] arm64: dts: mark lx2160a esdhc controllers dma
> >> coherent
> >>
> >> On Sun, 22 Sep 2019 at 12:29, Russell King <rmk+kernel@armlinux.org.uk>
> >> wrote:
> >>>
> >>> The LX2160A esdhc controllers are setup by the driver to be DMA
> >>> coherent, but without marking them as such in DT, Linux thinks they
> >>> are not.  This can lead to random sporadic DMA errors, even to the
> >>> extent of preventing boot, such as:
> >>>
> >>> mmc0: ADMA error
> >>> mmc0: sdhci: ============ SDHCI REGISTER DUMP ===========
> >>> mmc0: sdhci: Sys addr:  0x00000000 | Version:  0x00002202
> >>> mmc0: sdhci: Blk size:  0x00000008 | Blk cnt:  0x00000001
> >>> mmc0: sdhci: Argument:  0x00000000 | Trn mode: 0x00000013
> >>> mmc0: sdhci: Present:   0x01f50008 | Host ctl: 0x00000038
> >>> mmc0: sdhci: Power:     0x00000003 | Blk gap:  0x00000000
> >>> mmc0: sdhci: Wake-up:   0x00000000 | Clock:    0x000040d8
> >>> mmc0: sdhci: Timeout:   0x00000003 | Int stat: 0x00000001
> >>> mmc0: sdhci: Int enab:  0x037f108f | Sig enab: 0x037f108b
> >>> mmc0: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00002202
> >>> mmc0: sdhci: Caps:      0x35fa0000 | Caps_1:   0x0000af00
> >>> mmc0: sdhci: Cmd:       0x0000333a | Max curr: 0x00000000
> >>> mmc0: sdhci: Resp[0]:   0x00000920 | Resp[1]:  0x001d8a33
> >>> mmc0: sdhci: Resp[2]:   0x325b5900 | Resp[3]:  0x3f400e00
> >>> mmc0: sdhci: Host ctl2: 0x00000000
> >>> mmc0: sdhci: ADMA Err:  0x00000009 | ADMA Ptr: 0x000000236d43820c
> >>> mmc0: sdhci: ============================================
> >>> mmc0: error -5 whilst initialising SD card
> >>>
> >>> These are caused by the device's descriptor fetch hitting
> >>> speculatively loaded CPU cache lines that the CPU does not see through
> >>> the normal, non-cacheable DMA coherent mapping that it uses for
> >>> non-coherent devices.
> >>>
> >>> DT and the device must agree wrt whether the device is DMA coherent or
> >>> not.
> >>>
> >>> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> >>
> >> As I am picking up patch1 and patch2 from this series, I can also help out and
> >> pick up this one, if that is okay by people?
> >
> > There is some concern recently from linux-next maintainer about this causing potential conflicts.  https://lkml.org/lkml/2019/9/15/225
>
> In principle, it should be fine for #2 and #3 to go via separate trees -
> #3 aligns the DT with the existing behaviour of the driver, while #2
> will make the driver behave correctly whichever state the DT is in.
>
> Robin.

That's right, so I am leaving this patch for arm-soc people to pick up then.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
