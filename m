Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFC5A326B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 10:30:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JXLh5fF2JrIJMGJczu+PF3GepBnw24U8S0zvdYN+7gI=; b=lOpcvD0c+Nhpu8
	bciMXukj9N19KHU/60DvmnSMVUkjiSODhkGCh+wxCnFOb14tQcysIQZVLZfXPSAJMPJ8GNTlejWYd
	mCjwyD+uX3U9UgALrZ88jWqV4WiWi4EA85RESDCB/noBirujMaqZSOqaoIyKYt+YfikylnsktNFbX
	tAb+qWWZS+SsZTJ7tI/cmMXx+QRgAuqHIZZ4sEep2vyDRQN0wPn4xYM5vmA49QoWG8B/Vibn/ogGt
	nBRQIEFyJLjpaCNptXejNGrYmCFlX3y/i523FaP/rWSzc86GW1mqeXC44gfkzbyk1zjNaLzIOtERX
	MLKYUDB0o2aj+MGtGAtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3cI7-0001aP-C6; Fri, 30 Aug 2019 08:29:55 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3cHv-0001ZU-GS
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 08:29:44 +0000
Received: by mail-vs1-xe44.google.com with SMTP id r1so1457850vsq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 01:29:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uBe6XaZnp1DnbEiSR3tbPdbSTWUBiMGkZ5MQKY+Y/KY=;
 b=HSSx1i5MvIQIppnHZp5fqcZbrHRsEuE5YKsm/+pYHehWrBMRK+Fd6yYLM9RPceYWJd
 2KN6Ql6owRNffruGbdNcZSAqSso17tFIIcpLbRp0zC8kl60dO1JXkxCOZvRcyu1dIufG
 1hvgSKaVKD1JOa1eugdmJFPrx3JHFGraiG6Yc+aNazmxxyKhIeW0A1MPoue8sWBjkHg1
 2U/LjQQvHxtbyHKyKIvRHUSrnvL/0y4viuiAdHl86m6N5FXBwrgxRMsJfPfOTkX2P/xF
 bddVRikttGaleYOjqpQag/5g5JIML0+a/1FaVIA8U+xTCk8rUGlWv6r2EV2vQ8hSxIyC
 SbMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uBe6XaZnp1DnbEiSR3tbPdbSTWUBiMGkZ5MQKY+Y/KY=;
 b=TR7o9bahMlfCHnuK5NCqCg6eI7vj0d17ZqEIhBFhDlGQtUoyG4YAiUkAC72TrSTqSu
 XC4/suS+gMzt6TyTbBOMePrVrLf/QcGSQSYWvsE3N6PZ1QkKBIaEol/F7W4q1EFKOTFd
 Wq7tkh7bE18qNUHZoTS7vkLDJr2DK5lO8OV4XADJRxF1L0g8qiOcbXfSTrryjqOVQuCw
 MATV9wHgmnVvZODvtFkLsG8XtPJuSE4Zzmt/ik5FXLVhDTwqAm7ipSwh5cpc71aLxlUa
 Ls/8K9A1OuzjpMf0urUBjwH5bMWzhZ8OBL9xWQE/1qB3Nz91/jXk1pLoaPi1czLXFsvM
 SVtA==
X-Gm-Message-State: APjAAAU0auV04NFJhc45o684PtSj1o1++YCoc30p+7gAiXB+R0ys7boq
 tFxmLXKtkS9N6VV5R4natJz8Nxs5Sq73EokKD0a2jQ==
X-Google-Smtp-Source: APXvYqwT1/od4MWptrO2+eo5tENQaNYQ7XxIzCOrNHxyh49sPnVWPm0JNv85t1DAPIYt12rpwJzChBk7AwrIozo1u18=
X-Received: by 2002:a67:e287:: with SMTP id g7mr7906924vsf.200.1567153781210; 
 Fri, 30 Aug 2019 01:29:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190830074644.10936-1-andrew@aj.id.au>
 <20190830074644.10936-2-andrew@aj.id.au>
 <CAPDyKFrKXfB1F2dh63KrkCiKGbmbBWaAM16vJqtQncnF4YctQw@mail.gmail.com>
 <6feca359-34ce-445e-87bf-62fa063d785f@www.fastmail.com>
In-Reply-To: <6feca359-34ce-445e-87bf-62fa063d785f@www.fastmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 30 Aug 2019 10:29:04 +0200
Message-ID: <CAPDyKFpiftO194L2pf-_Yxu_BbizP6ss46YUZNO9ZxceeeWw4Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] mmc: sdhci-of-aspeed: Uphold clocks-on post-condition
 of set_clock()
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_012943_576948_4B8B0533 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 linux-mmc <linux-mmc@vger.kernel.org>, openbmc@lists.ozlabs.org,
 Ryan Chen <ryanchen.aspeed@gmail.com>, Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 30 Aug 2019 at 10:07, Andrew Jeffery <andrew@aj.id.au> wrote:
>
>
>
> On Fri, 30 Aug 2019, at 17:31, Ulf Hansson wrote:
> > On Fri, 30 Aug 2019 at 09:46, Andrew Jeffery <andrew@aj.id.au> wrote:
> > >
> > > The early-exit didn't seem to matter on the AST2500, but on the AST2600
> > > the SD clock genuinely may not be running on entry to
> > > aspeed_sdhci_set_clock(). Remove the early exit to ensure we always run
> > > sdhci_enable_clk().
> > >
> > > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> > > ---
> > >  drivers/mmc/host/sdhci-of-aspeed.c | 3 ---
> > >  1 file changed, 3 deletions(-)
> > >
> > > diff --git a/drivers/mmc/host/sdhci-of-aspeed.c b/drivers/mmc/host/sdhci-of-aspeed.c
> > > index d5acb5afc50f..a9175ca85696 100644
> > > --- a/drivers/mmc/host/sdhci-of-aspeed.c
> > > +++ b/drivers/mmc/host/sdhci-of-aspeed.c
> > > @@ -55,9 +55,6 @@ static void aspeed_sdhci_set_clock(struct sdhci_host *host, unsigned int clock)
> > >         int div;
> > >         u16 clk;
> > >
> > > -       if (clock == host->clock)
> > > -               return;
> > > -
> > >         sdhci_writew(host, 0, SDHCI_CLOCK_CONTROL);
> > >
> > >         if (clock == 0)
> > > --
> > > 2.20.1
> > >
> >
> > Further down in aspeed_sdhci_set_clock() you should probably also
> > remove the assignment of host->clock = clock, as that is already
> > managed by sdhci_set_ios().
>
> Ah, I'll fix that in a v2 once I have your thoughts on patch 2/2.

I leave this one to Adrian to comment on, as he knows this better than me.

[...]

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
