Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A091BBD38
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 14:14:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JBA+E1O+SZ1nXb3L2VxVnU0MZ7phjpVMwlgqYaCHTXU=; b=gdn2MQLOnJPmni
	C/wWdAgYIaJkWmh8g3Od9uDe2uWZ3ho1egJ0o3Xo3M+9rxFoHmYOqaYjbR5fJTfICr/9oEELT4GZU
	mJu9sS63/ma1LXvIY/cHmczPm6iiAXOYT5lHSeGVH+h9Ya1bSo2mg57Y1NPm39s0A7wEHoo6n5650
	HmmhrpyEGmZ+Dr5kWqMBNqqXbJZYnRXt7XmvM+xuu8PGsMVWiTQx8EVZE6OcAhg8Isnf9pQOZMVoZ
	WWu4D17N2EGvc4G6IesCJqac9llIeewpNExfsekLr0uvW0xzDNE/VL68wdLTSa3+WaGgt2j0TYRnv
	17Su2pBSlq3d9r/Ib3Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTP7w-0001ce-D2; Tue, 28 Apr 2020 12:14:16 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTP7m-0001bb-KG
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 12:14:08 +0000
Received: by mail-ua1-x941.google.com with SMTP id m9so7392862uaq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 05:14:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Si7QUx2lJaDXoOqwKRzvd/FqwJiW8O4bymVE3/8B3ns=;
 b=A5Sijg+k44OBG56boCW5SC8UnJ7ex3iO/soWNrUQ5voF2m/ptYSQIKN71PHSiPPkoO
 eigYpYxmn6IxQ9IL7wRTmGeXrXf71r2La7KtTzOtGIfY1YtExiSFtYxvPIXBiJfIovsD
 VOcBL9NUzfeaw+ldYSjxbBxWl8FO3zJGE8Tt/4pjWZqRZFxEhgYYLmK1ornUQMBAqnm0
 WTv3YzAb4txKP30dESYuDYf7O+vmvPoky1fidkQ52iKdlVE49UK6+Y9UvKgxjx7/kA8N
 EbUWenpXx5R1hjPo4LxyJaRTmL4Hf2L1g/UGjW8rCflH6my2LPpxPAQpUjZoU2WNixyw
 39aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Si7QUx2lJaDXoOqwKRzvd/FqwJiW8O4bymVE3/8B3ns=;
 b=Pmg2xeZLUx2/Q++pRajQ2yn5gdOWWmYXODNpOzaqijrfOnGPXgcU9Xo3QBcJf8yTH3
 IsUitwSd4IwzN8nM5LFznC6QFFVbwcW93CInIi4XAAO9sAb10FsgKqNgCBWjOEUd0I7m
 hkNL8XqKYaX75QOQ92BLxiRZHmr1cci2PKuRFmIVgbPbBSPoUWgAWEpiCldg2yb3kMlh
 0EffTsvrTaWo0yEqhguYhQl/e+th4qBUvT78gAEzqtUlM4bZ2E135pSEh3OiLvTcPLDQ
 3W51/Xnszw/6rWLt/3XYUGdo50tOhrxN9z6InWnN6lYTKrTboAnJd11cFxg0sGMROo+G
 ar7g==
X-Gm-Message-State: AGi0Puan9en/mr4V/VP4tF26BxzSi1dmyQ3uo24IlMWIjlXa9YHv5vbq
 TcxpEIm+Q3ZNAAUQx2Yu0Gat7j30c89IfLVMf5FE6A==
X-Google-Smtp-Source: APiQypLbHUMx3UMDbWJ6CNDiWmz1dbLLDJ3jr2Zb9fx7iExKVYW+P1I0WNBMwukiq/PNOP+qA0Yx6/Ewnd9S2sheWhk=
X-Received: by 2002:a67:f24b:: with SMTP id y11mr20631794vsm.165.1588076045066; 
 Tue, 28 Apr 2020 05:14:05 -0700 (PDT)
MIME-Version: 1.0
References: <1586835611-13857-1-git-send-email-yong.mao@mediatek.com>
 <1586835611-13857-2-git-send-email-yong.mao@mediatek.com>
 <CAPDyKFo40tBpowmWN3gxH8b=jMmCK8O5ALNQ7y6XZ5AosX=GUA@mail.gmail.com>
 <1588066038.30914.28.camel@mhfsdcap03>
In-Reply-To: <1588066038.30914.28.camel@mhfsdcap03>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 28 Apr 2020 14:13:28 +0200
Message-ID: <CAPDyKFrBd0E2Qy89JgTE3YH0iiXB7due0JmnSVAhYL5aubSczA@mail.gmail.com>
Subject: Re: [PATCH 1/3] mmc: core: need do mmc_power_cycle in
 mmc_sdio_resend_if_cond
To: "yong.mao@mediatek.com" <yong.mao@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_051406_805078_3F38556C 
X-CRM114-Status: GOOD (  35.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: srv_heupstream <srv_heupstream@mediatek.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Matthias Kaehlcke <mka@chromium.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Chaotian Jing <chaotian.jing@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 Apr 2020 at 11:28, yong.mao@mediatek.com
<yong.mao@mediatek.com> wrote:
>
>
> On Fri, 2020-04-24 at 12:09 +0200, Ulf Hansson wrote:
> > On Tue, 14 Apr 2020 at 05:40, Yong Mao <yong.mao@mediatek.com> wrote:
> > >
> > > From: yong mao <yong.mao@mediatek.com>
> > >
> > > When mmc_sdio_resned_if_cond is invoked, it indicates the SDIO
> > > device is not in the right state. In this condition, the previous
> > > implementation of mmc_sdio_resend_if_cond can't make sure SDIO
> > > device be back to idle state. mmc_power_cycle can reset the SDIO
> > > device by HW and also make sure SDIO device enter to idle state
> > > correctly.
> > >
> > > Signed-off-by: Yong Mao <yong.mao@mediatek.com>
> > > ---
> > >  drivers/mmc/core/sdio.c | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/drivers/mmc/core/sdio.c b/drivers/mmc/core/sdio.c
> > > index ebb387a..ada0a80 100644
> > > --- a/drivers/mmc/core/sdio.c
> > > +++ b/drivers/mmc/core/sdio.c
> > > @@ -546,6 +546,7 @@ static int mmc_sdio_init_uhs_card(struct mmc_card *card)
> > >  static void mmc_sdio_resend_if_cond(struct mmc_host *host,
> > >                                     struct mmc_card *card)
> > >  {
> > > +       mmc_power_cycle(host, host->card->ocr);
> >
> > This looks wrong to me. mmc_sdio_resend_if_cond() is called from two places.
> >
> > 1. In the case when mmc_set_uhs_voltage() fails in
> > mmc_sdio_init_card(), which means a call to mmc_power_cycle() has
> > already been done.
> >
>   Thanks for your comment.
>   Yes. It is right that mmc_power_cycle() has already been done when
>   mmc_sdio_resend_if_cond() is called. In normal re-initialization case,
>   this mmc_power_cycle() (currently in 1.8v voltage and 208Mhz clock)
>   can make SDIO device really back to idle state. Unfortunately, in some
>   special SDIO device, it will enter to unstable state.
>
>   At this unstable state, device may keep data0 always low after receiving CMD11.
>   And then every other SDIO CMD can't be sent to device any more due to card
>   is busy(data0 is low). Therefore, previous implementation can't save the
>   device. At this time, mmc_power_cycle() may be the final solution to make
>   sure SDIO device can back to idle state correctly.

Well, this still sounds a bit vague to me. I need to understand more
exactly under what circumstances the problem occurs.

What platform are you testing with and what SDIO card is being used?

Is the problem happening during the system resume phase?

Are the SDIO func driver using runtime PM and then is the host capable
of MMC_CAP_POWER_OFF_CARD?

Is it easy to reproduce the problem for you?

>
> > 2. Wen sdio_read_cccr() fails and when we decide to retry the UHS-I
> > voltage switch. Then perhaps it could make sense to run a power cycle.
> > But if so, we better do it only for that path.
> >
> > I will continue to look a bit, as I think there are really more issues
> > that we may want to look into while looking at this piece of code.
> > However, allow me some more time before I can provide some more ideas
> > of how to move forward.
>   In the actual project, we do encounter many relative issues about re-initialized card.
>   The following two categories are the most common issue we met before.
>   A. the SDIO card is initialized by UHS-I mode at the first time, but will be
>      re-initialized by High Speed mode at the second time.
>      ==> All this type of issues is relative with S18A in response of CMD5.
>          And most of the issues are related to the interval between powering off and
>          powering on card.
>   B. If there is something wrong in the flow of voltage switch(after CMD11), card will
>      always keep all data pins to low. And then it hangs up because data0 is always low.
>   Hope this information will be helpful for you.

Thanks for sharing these details! I think we need to continue to debug
this issue, to fully understand.

In principle, it sounds to me that maybe mmc_power_cycle(), isn't
really successfully power-cycling the SDIO card. Perhaps insert a few
delays or so in that code to see how that would affect things?

Anyway, how is the power to the SDIO card controlled in this case? Are
you using a mmc-pwrseq?

>
>   Anyway, we will wait for your advises.
> >
> > >         sdio_reset(host);
> > >         mmc_go_idle(host);
> > >         mmc_send_if_cond(host, host->ocr_avail);
> > > --
> > > 1.9.1
> >
> > Kind regards
> > Uffe

I have a few patches in the pipe, which fixes some other problems in
mmc_sdio_init_card(). Possibly those can be related, but I need a day
or so to post them, let's see.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
