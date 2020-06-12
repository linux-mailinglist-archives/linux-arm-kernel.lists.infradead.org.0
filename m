Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AACD1F719F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 03:15:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3A9nha6c8zYBZalKN6G24W1dLChPjJ03WT827cYFWGA=; b=Dk9S/tBtgNQiuX
	9EEYbprX+xCTF7jBtn4P3VoMeM7e23KA3cQdrLffrbxDI6mnBoRHIWvLRe0BWkqr1Co+d+gI6g3mm
	skcYkxXOtlIPwAT1uRmlrTXLHuNZ0gNW5sAlENCV5xVXsAXZJO4TxZjB/kptk37NmC2Nv/ozRRCRs
	epcQM3PkYRKu42Jsxq9y33V3cV37hmbgOcjsUNKKg1DUdEidHVZi9KtJ4nabvSmzIaPJgaTYlHETI
	jsmDR3yGIa/P0RUIkoaz07bgggiMpgWfCXWtlCn3vMv33UQlNGxM181FRIsqOxSrEQat1de/wpRyN
	MIujFeW77Xssg79yElEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjYIJ-0002fq-3j; Fri, 12 Jun 2020 01:15:43 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjYI7-0002eL-RY; Fri, 12 Jun 2020 01:15:34 +0000
Received: by mail-ed1-x544.google.com with SMTP id s28so3201063edw.11;
 Thu, 11 Jun 2020 18:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WrXOAPR1wUIoCz970nhKAMLDJMKaQFBhK9kaj7+c6o0=;
 b=SScLMHqvdfTGJ4XcYw/pdc3oc6RjUnJ5qkedbCLfkGyQGpxl/6/5SFXJAJoi6ninOB
 v5uAGMs+3NrtiOooTsQw22dcG0kHNgNrTEgCTxXgE/SQ6MPMMly9DuEZ5R940F/QmDSR
 ijJp+63tgkpG//qDR2D99dezWkbQJ0WM57e9I2mGLaZInRIu1In5Ozhj57a38WJUn6JN
 uRTEdNkH8idNZNrl72iWC51hmQS9/6ZIds+qo366r1GUPGFJ3Lt5R+NSmjhJm9cf8kbZ
 1lc1ty5ZDfMBN8b6CIRbk8hA4ma52xhvz+yoz6KFKfu0rahW8caETMgbWXlIHNgkdeam
 JW/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WrXOAPR1wUIoCz970nhKAMLDJMKaQFBhK9kaj7+c6o0=;
 b=U7vAip1ktUXt1PyqT+RhWRSmBhf1pqR39OHBQL7juBdPSm4by+YfO5lroOBbLLlGzk
 mMTGNY2XCWSYivmQ/BthL1ePB+mc+5zxSANE1jImIC/mCi2uki83UkqvgcPP+gm35RGD
 MTLhS4m5aF9zL2a8N+/t5RWROr56ZCEE2SnPyHtpcy5kRL4I3ulOnb1hnb+UPo0gEURG
 bJxPTwIKSMHcBqiFrSDetsvgHggZ/ORZSrPmHDF1cNQ0fTXKCohX3uLrIwdHytNHag8a
 hJcLSbuovdz8uoob2cgPhju2FAm1BnmXKZzlk4421iBJhSxPFJDTJL5uond0VSZ5xZLL
 58wQ==
X-Gm-Message-State: AOAM533KS5YghXpWrO8t2yyeJR1zoF5XPxBPcV1QaSguBknSd32nWjgG
 e4rRMQ08mhHTWQK5+803lJElRNMbDFbSorj9Fz4=
X-Google-Smtp-Source: ABdhPJy9T4eu6IOqnyeQMZ34m2hL2Q7kSjQjI0lZKf4aSXI+VN7o0jMNAKociU3mfaxZazZru8sdte/ZygxwmqluBuM=
X-Received: by 2002:a50:cdc6:: with SMTP id h6mr9230698edj.111.1591924530127; 
 Thu, 11 Jun 2020 18:15:30 -0700 (PDT)
MIME-Version: 1.0
References: <1591665267-37713-1-git-send-email-sugar.zhang@rock-chips.com>
 <CAMdYzYr+NF7L3KKzcGano=j9V844Gy8gH03hD++CoPe8Ao1QxQ@mail.gmail.com>
In-Reply-To: <CAMdYzYr+NF7L3KKzcGano=j9V844Gy8gH03hD++CoPe8Ao1QxQ@mail.gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 11 Jun 2020 21:15:17 -0400
Message-ID: <CAMdYzYqRTbePLKZ6q39Ao3sgLU0xUvrLmwYTVU3feEb4ob6FuQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/13] Patches to improve transfer efficiency for
 Rockchip SoCs.
To: Sugar Zhang <sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_181531_914602_C249FE56 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pgwipeout[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, Carlos de Paula <me@carlosedp.com>,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "Leonidas P. Papadakos" <papadakospan@gmail.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, dmaengine@vger.kernel.org,
 Andy Yan <andy.yan@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Robin Murphy <robin.murphy@arm.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 11, 2020 at 9:06 PM Peter Geis <pgwipeout@gmail.com> wrote:
>
> Good Evening,
>
> I am currently testing this on the rk3399-rockpro64, and it appears to
> fully fix the gmac problem without using txpbl.
> PCIe also seems to be more stable at high load.
> I need to conduct long term testing, but it seems to be doing very well.

Belay that, it does make it harder to trigger, but the issue still
remains on the rk3399.

>
> Unfortunately it doesn't fix the rk3328 gmac controller.
>
> Tested-by: Peter Geis <pgwipeout@gmail.com>
>
> On Mon, Jun 8, 2020 at 9:15 PM Sugar Zhang <sugar.zhang@rock-chips.com> wrote:
> >
> >
> >
> > Changes in v2:
> > - fix FATAL ERROR: Unable to parse input tree
> >
> > Sugar Zhang (13):
> >   dmaengine: pl330: Remove the burst limit for quirk 'NO-FLUSHP'
> >   dmaengine: pl330: Add quirk 'arm,pl330-periph-burst'
> >   dt-bindings: dma: pl330: Document the quirk 'arm,pl330-periph-burst'
> >   ARM: dts: rk3036: Add 'arm,pl330-periph-burst' for dmac
> >   ARM: dts: rk322x: Add 'arm,pl330-periph-burst' for dmac
> >   ARM: dts: rk3288: Add 'arm,pl330-periph-burst' for dmac
> >   ARM: dts: rk3xxx: Add 'arm,pl330-periph-burst' for dmac
> >   ARM: dts: rv1108: Add 'arm,pl330-periph-burst' for dmac
> >   arm64: dts: px30: Add 'arm,pl330-periph-burst' for dmac
> >   arm64: dts: rk3308: Add 'arm,pl330-periph-burst' for dmac
> >   arm64: dts: rk3328: Add 'arm,pl330-periph-burst' for dmac
> >   arm64: dts: rk3368: Add 'arm,pl330-periph-burst' for dmac
> >   arm64: dts: rk3399: Add 'arm,pl330-periph-burst' for dmac
> >
> >  .../devicetree/bindings/dma/arm-pl330.txt          |  1 +
> >  arch/arm/boot/dts/rk3036.dtsi                      |  1 +
> >  arch/arm/boot/dts/rk322x.dtsi                      |  1 +
> >  arch/arm/boot/dts/rk3288.dtsi                      |  3 ++
> >  arch/arm/boot/dts/rk3xxx.dtsi                      |  3 ++
> >  arch/arm/boot/dts/rv1108.dtsi                      |  1 +
> >  arch/arm64/boot/dts/rockchip/px30.dtsi             |  1 +
> >  arch/arm64/boot/dts/rockchip/rk3308.dtsi           |  2 +
> >  arch/arm64/boot/dts/rockchip/rk3328.dtsi           |  1 +
> >  arch/arm64/boot/dts/rockchip/rk3368.dtsi           |  2 +
> >  arch/arm64/boot/dts/rockchip/rk3399.dtsi           |  2 +
> >  drivers/dma/pl330.c                                | 44 +++++++++++++++-------
> >  12 files changed, 49 insertions(+), 13 deletions(-)
> >
> > --
> > 2.7.4
> >
> >
> >
> >
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
