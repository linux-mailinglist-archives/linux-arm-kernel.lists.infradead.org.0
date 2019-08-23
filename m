Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 296E69B015
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 14:58:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kf/qu1xZD7E3JiG1QtTkR72Ruwsa/dIT5yuWq/TM1Ks=; b=K2lhocEtYtTLBe
	mAOCqkBU8b1FYf0LQSTdv01+XFBQ14mS1eOm2Ac2x/wICcZLhHfwGvPcFZ5VqByxqiyMMjJqN73e0
	tlCMv1Dzf4wHxn8OweboKU+7TANb9/19vBXuTFSOGAX7Bhz9+Wn38pD6CQ1vLOYAjSyYr+ud1Cwk/
	1gv1CEUaAxTzVCaQfAeCoITvMltVTme1TSgEVInGzEdFCfi0gmIjj8Tx4xZqGdFh9ey2dTovlosaq
	jwb+QkyeFqUU9kV96EQkvnY1aFtiVAu9G4nTwIDiWg6rt5C2JA+r+dmYOnL9JPl1crVJtItcX7vjP
	PpqyqTXkRwS5vxpTi/kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i198n-0001Z5-KX; Fri, 23 Aug 2019 12:58:05 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i198f-0001Yh-An
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 12:57:59 +0000
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com
 [209.85.217.41]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id x7NCvTVI031822
 for <linux-arm-kernel@lists.infradead.org>; Fri, 23 Aug 2019 21:57:29 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com x7NCvTVI031822
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1566565050;
 bh=Ub/aJVgL0Rn8PS4l6h9MNegKzCHvoAER+77sx19M0UY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=x3UMbC/bnXW7WwUIPfky1srdR+lkOf6ENu7W4g32BgP9neaRCruuC32JcjlhjxN50
 JCL5rpdimcwEhwnUW6elfxYfS2nlO2SCXR6k01yAU1wN83eOMb5beFGx/3cx7HTwq6
 n+rpv8LepgsA0BDfGZ0UHdpzQ5RSS7mI5TAxFCuzoboOT0g3d/M0HxQu4SVst8XDYo
 Ud5zaiI4DPM58r7+q3a6n5/a8MgSRX31R8Xn3IsduQFic7/qGwzMYkn6xELF578JDr
 aZxbRSKfBjDcn4O0xsYJjWy3uimPl8qTSQPR0ww3RhRIGaDq66wYW2dit4Q6M7c7ja
 N/LW4Lt0Fgyng==
X-Nifty-SrcIP: [209.85.217.41]
Received: by mail-vs1-f41.google.com with SMTP id y16so6164351vsc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 05:57:29 -0700 (PDT)
X-Gm-Message-State: APjAAAVUVFOi3RWT1w6CvWb3XPTGA+Clrm6Vo4BQJOVeukPjfTZtJ8hd
 4HD14aGJ3m6bNHTuNsQHQLuwaXC4O1ul4g+Gtf4=
X-Google-Smtp-Source: APXvYqxkUJRBa4Gu9eJJ/5yY3HcOprjiA+d7CfrbMqgNuwpDTZWvyQ2suLPAbzt4RY2ouQTzsdu17SpfNRdBFLKueKM=
X-Received: by 2002:a67:8a83:: with SMTP id m125mr2655031vsd.181.1566565048153; 
 Fri, 23 Aug 2019 05:57:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190506223334.1834-1-nicoleotsuka@gmail.com>
 <20190506223334.1834-3-nicoleotsuka@gmail.com>
 <CAK7LNARacEorb38mVBw_V-Zvz-znWgBma1AP1-z_5B_xZU4ogg@mail.gmail.com>
In-Reply-To: <CAK7LNARacEorb38mVBw_V-Zvz-znWgBma1AP1-z_5B_xZU4ogg@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 23 Aug 2019 21:56:52 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQfYBCoChMV=MOwcUyVoqRkrPWs7DaWdzDqjBe18gGiAQ@mail.gmail.com>
Message-ID: <CAK7LNAQfYBCoChMV=MOwcUyVoqRkrPWs7DaWdzDqjBe18gGiAQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] dma-contiguous: Use fallback alloc_pages for
 single pages
To: Nicolin Chen <nicoleotsuka@gmail.com>, Christoph Hellwig <hch@lst.de>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_055757_596274_7B440F2F 
X-CRM114-Status: GOOD (  22.03  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.90 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Chris Zankel <chris@zankel.net>, linux-xtensa@linux-xtensa.org,
 Kees Cook <keescook@chromium.org>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Tony Lindgren <tony@atomide.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 Russell King <linux@armlinux.org.uk>, iommu@lists.linux-foundation.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Max Filippov <jcmvbkbc@gmail.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>, iamjoonsoo.kim@lge.com,
 Andrew Morton <akpm@linux-foundation.org>, Thierry Reding <treding@nvidia.com>,
 Robin Murphy <robin.murphy@arm.com>, David Woodhouse <dwmw2@infradead.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+ linux-mmc, Ulf Hansson, Adrian Hunter,


ADMA of SDHCI is not working
since bd2e75633c8012fc8a7431c82fda66237133bf7e


Did anybody see the same problem?


Masahiro




On Fri, Aug 23, 2019 at 9:49 PM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> On Tue, May 7, 2019 at 7:36 AM Nicolin Chen <nicoleotsuka@gmail.com> wrote:
> >
> > The addresses within a single page are always contiguous, so it's
> > not so necessary to always allocate one single page from CMA area.
> > Since the CMA area has a limited predefined size of space, it may
> > run out of space in heavy use cases, where there might be quite a
> > lot CMA pages being allocated for single pages.
> >
> > However, there is also a concern that a device might care where a
> > page comes from -- it might expect the page from CMA area and act
> > differently if the page doesn't.
> >
> > This patch tries to use the fallback alloc_pages path, instead of
> > one-page size allocations from the global CMA area in case that a
> > device does not have its own CMA area. This'd save resources from
> > the CMA global area for more CMA allocations, and also reduce CMA
> > fragmentations resulted from trivial allocations.
> >
> > Signed-off-by: Nicolin Chen <nicoleotsuka@gmail.com>
>
>
> This commit (bd2e75633c8012fc8a7431c82fda66237133bf7e)
> broke the DMA for my MMC driver in the following way:
>
>
>
>
> [    1.876755] mmc0: ADMA error
> [    1.883385] mmc0: sdhci: ============ SDHCI REGISTER DUMP ===========
> [    1.889834] mmc0: sdhci: Sys addr:  0x00000000 | Version:  0x00000002
> [    1.896284] mmc0: sdhci: Blk size:  0x00007200 | Blk cnt:  0x00000001
> [    1.902733] mmc0: sdhci: Argument:  0x00000000 | Trn mode: 0x00000013
> [    1.909182] mmc0: sdhci: Present:   0x01ff02f6 | Host ctl: 0x00000019
> [    1.915631] mmc0: sdhci: Power:     0x0000000b | Blk gap:  0x00000000
> [    1.922081] mmc0: sdhci: Wake-up:   0x00000000 | Clock:    0x0000fa07
> [    1.928530] mmc0: sdhci: Timeout:   0x0000000b | Int stat: 0x00000001
> [    1.934981] mmc0: sdhci: Int enab:  0x03ff008b | Sig enab: 0x03ff008b
> [    1.941429] mmc0: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00000001
> [    1.947880] mmc0: sdhci: Caps:      0x546ec800 | Caps_1:   0x00000000
> [    1.954329] mmc0: sdhci: Cmd:       0x0000083a | Max curr: 0x00000000
> [    1.960778] mmc0: sdhci: Resp[0]:   0x00000900 | Resp[1]:  0xffffffff
> [    1.967229] mmc0: sdhci: Resp[2]:   0x320f5903 | Resp[3]:  0x3fd05e00
> [    1.973678] mmc0: sdhci: Host ctl2: 0x00000000
> [    1.978125] mmc0: sdhci: ADMA Err:  0x00000001 | ADMA Ptr: 0x000000013965b200
> [    1.985271] mmc0: sdhci: ============================================
> [    1.991758] mmc0: error -5 whilst initialising MMC card
> [    1.991913] 43fb0000.uart: ttyS1 at MMIO 0x43fb0000 (irq = 0,
> base_baud = 768000) is a 16550A
> [    2.011011] hctosys: unable to open rtc device (rtc0)
> [    2.017694] Freeing unused kernel memory: 2368K
> [    2.027131] Run /init as init process
> Starting syslogd: OK
> Starting klogd: OK
> Initializing random number generator... [    2.074399] random: dd:
> uninitialized urandom read (512 bytes read)
> done.
> Starting network: OK
> [    2.109593] mmc0: ADMA error
> [    2.112488] mmc0: sdhci: ============ SDHCI REGISTER DUMP ===========
> [    2.118941] mmc0: sdhci: Sys addr:  0x00000000 | Version:  0x00000002
> [    2.125389] mmc0: sdhci: Blk size:  0x00007200 | Blk cnt:  0x00000001
> [    2.131840] mmc0: sdhci: Argument:  0x00000000 | Trn mode: 0x00000013
> [    2.138289] mmc0: sdhci: Present:   0x01ff02f6 | Host ctl: 0x00000019
> [    2.144738] mmc0: sdhci: Power:     0x0000000b | Blk gap:  0x00000000
> [    2.151188] mmc0: sdhci: Wake-up:   0x00000000 | Clock:    0x00004e47
> [    2.157637] mmc0: sdhci: Timeout:   0x0000000b | Int stat: 0x00000001
> [    2.164087] mmc0: sdhci: Int enab:  0x03ff008b | Sig enab: 0x03ff008b
> [    2.170536] mmc0: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00000001
> [    2.176987] mmc0: sdhci: Caps:      0x546ec800 | Caps_1:   0x00000000
> [    2.183435] mmc0: sdhci: Cmd:       0x0000083a | Max curr: 0x00000000
> [    2.189886] mmc0: sdhci: Resp[0]:   0x00000900 | Resp[1]:  0xffffffff
> [    2.196335] mmc0: sdhci: Resp[2]:   0x320f5903 | Resp[3]:  0x3fd05e00
> [    2.202784] mmc0: sdhci: Host ctl2: 0x00000000
> [    2.207232] mmc0: sdhci: ADMA Err:  0x00000001 | ADMA Ptr: 0x000000013965b200
> [    2.214379] mmc0: sdhci: ============================================
>
> [    2.220881] mmc0: error -5 whilst initialising MMC card
> Welcome to Buildroot
> buildroot login: [    2.332786] mmc0: ADMA error
> [    2.335668] mmc0: sdhci: ============ SDHCI REGISTER DUMP ===========
> [    2.342119] mmc0: sdhci: Sys addr:  0x00000000 | Version:  0x00000002
> [    2.348568] mmc0: sdhci: Blk size:  0x00007200 | Blk cnt:  0x00000001
> [    2.355018] mmc0: sdhci: Argument:  0x00000000 | Trn mode: 0x00000013
> [    2.361468] mmc0: sdhci: Present:   0x01ff02f6 | Host ctl: 0x00000019
> [    2.367917] mmc0: sdhci: Power:     0x0000000b | Blk gap:  0x00000000
> [    2.374367] mmc0: sdhci: Wake-up:   0x00000000 | Clock:    0x0000f447
> [    2.380816] mmc0: sdhci: Timeout:   0x0000000b | Int stat: 0x00000001
> [    2.387267] mmc0: sdhci: Int enab:  0x03ff008b | Sig enab: 0x03ff008b
> [    2.393716] mmc0: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00000001
> [    2.400166] mmc0: sdhci: Caps:      0x546ec800 | Caps_1:   0x00000000
> [    2.406615] mmc0: sdhci: Cmd:       0x0000083a | Max curr: 0x00000000
> [    2.413065] mmc0: sdhci: Resp[0]:   0x00000900 | Resp[1]:  0xffffffff
> [    2.419515] mmc0: sdhci: Resp[2]:   0x320f5903 | Resp[3]:  0x3fd05e00
> [    2.425963] mmc0: sdhci: Host ctl2: 0x00000000
> [    2.430412] mmc0: sdhci: ADMA Err:  0x00000001 | ADMA Ptr: 0x000000013965b200
> [    2.437557] mmc0: sdhci: ============================================
> [    2.444031] mmc0: error -5 whilst initialising MMC card
> [    2.572203] mmc0: ADMA error
> [    2.575089] mmc0: sdhci: ============ SDHCI REGISTER DUMP ===========
> [    2.581540] mmc0: sdhci: Sys addr:  0x00000000 | Version:  0x00000002
> [    2.587989] mmc0: sdhci: Blk size:  0x00007200 | Blk cnt:  0x00000001
> [    2.594439] mmc0: sdhci: Argument:  0x00000000 | Trn mode: 0x00000013
> [    2.600889] mmc0: sdhci: Present:   0x01ef02f6 | Host ctl: 0x00000019
> [    2.607339] mmc0: sdhci: Power:     0x0000000b | Blk gap:  0x00000000
> [    2.613788] mmc0: sdhci: Wake-up:   0x00000000 | Clock:    0x0000e8c7
> [    2.620237] mmc0: sdhci: Timeout:   0x0000000b | Int stat: 0x00000001
> [    2.626686] mmc0: sdhci: Int enab:  0x03ff008b | Sig enab: 0x03ff008b
> [    2.633137] mmc0: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00000001
> [    2.639586] mmc0: sdhci: Caps:      0x546ec800 | Caps_1:   0x00000000
> [    2.646036] mmc0: sdhci: Cmd:       0x0000083a | Max curr: 0x00000000
> [    2.652485] mmc0: sdhci: Resp[0]:   0x00000900 | Resp[1]:  0xffffffff
> [    2.658936] mmc0: sdhci: Resp[2]:   0x320f5903 | Resp[3]:  0x3fd05e00
> [    2.665384] mmc0: sdhci: Host ctl2: 0x00000000
> [    2.669832] mmc0: sdhci: ADMA Err:  0x00000001 | ADMA Ptr: 0x000000013965b200
> [    2.676979] mmc0: sdhci: ============================================
> [    2.683450] mmc0: error -5 whilst initialising MMC card
>
> CTRL-A Z for help | 115200 8N1 | NOR | Minicom 2.7.1 | VT102 | Offline
> | ttyUSB0
>
> Reverting this commit fixed the problem.
>
>
>
> --
> Best Regards
> Masahiro Yamada



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
