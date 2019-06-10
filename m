Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 210B63BF75
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 00:26:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Subject:From:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KYJktwr2smeWYUZhftA6mTV0X8Nypdx2Vx3XCS003t0=; b=OZfewmL1Hwpul4
	SWSzTJ0G3m3p2fDMshHzG2YRL/HcFSZHVTYbwAeJjeAOYo4bsyFquRWoEw0VaTUxMrv3SeoO00k8C
	i2Vqy6vKg2cyeE76gpz5hSmTv8kqUOT65nRFuOenp5Lt0C9OFyoGwFQH5BXHYr0g6b3+5jEVIkteM
	bPHq7lrZwwbyByPQ+aph77nhS+Q3Ol6oIWHYCur0aNynOqbWMSsgyI9/yW/MNOPybvoOf63zwh5Fn
	oaJMLEpJ2hlO9F6ssHwFSYO8KE+Lwd/helFpwElg/DvaNA5sJQufT4Kg0lJkNeIloj+NLRnirzF0b
	cqdd2PPIiThgUFnt8hdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haSjw-0007bn-C9; Mon, 10 Jun 2019 22:26:08 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haSjm-0007aN-0j
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 22:25:59 +0000
Received: by mail-pg1-x542.google.com with SMTP id s27so5769367pgl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 15:25:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:from:cc:subject:to:user-agent:date;
 bh=9hBqZJD2Tz09wfOJDUxIvJB/XBCbBflZm3IPa1V/vxE=;
 b=anjqADdvlUHgxpXTA/xLq/4vsfjEG1pLhPFxuBOoSnhDfQK/DLla5XumwWWyElC6Pc
 PS/vAaTAZ0X4ENtlyOgXM52+IXMmYlK/mrW38hordPGkJpua0G7qIjeRrGDafXtUX4JO
 TTshciiU8SjktCILESKUC21nDTZENol6TjYeY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:from:cc:subject:to
 :user-agent:date;
 bh=9hBqZJD2Tz09wfOJDUxIvJB/XBCbBflZm3IPa1V/vxE=;
 b=MG96N19pjwFTLzqstnUhevEv47t66LpKG2K9OxstisjzQwq7QrTp2Lf9KkPYPRcNTp
 1nB5yWPn3C8hFJw1q4x0u1e4pKRVnrreYgZP1joHbxB5JXUMN5hmilb7M9rrd8TvzZsX
 jDW+rlfxtE0kXHzjMFThGVT5liPsxatVJ+cqLcRqo+LXEhqf9t9yJ+ehGPcFILT+3vMu
 H63QthJtFjKR3NCPuwbaXQU8DaStHPABy0yEE5L96A/HOUaPHldwGmh1f9LoEbhlGmOP
 VAiKSU/H+zDa/N3yLjrYd+fV/ITJmD4x7EwtkXPFn39e9lVH/C7sv8RaNnzuDsyPNN/g
 ok1Q==
X-Gm-Message-State: APjAAAXBVhu2lTR+QL0TecrhfARdENQhbOJcKRPyNG8baZ+J69XzhjoI
 vS3+UKBS/77T/QKKZrCYSgAEGA==
X-Google-Smtp-Source: APXvYqywzldrMc5v86IYfA+eXCNafyrhC15q1lAcvIj3lXXvZ4LL1QGrW0wDFfeIOenalH46fBvZdg==
X-Received: by 2002:aa7:8219:: with SMTP id k25mr79051964pfi.38.1560205555034; 
 Mon, 10 Jun 2019 15:25:55 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id v138sm8863906pfc.15.2019.06.10.15.25.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 15:25:54 -0700 (PDT)
Message-ID: <5cfed8f2.1c69fb81.1dcd3.27c1@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <CAE=gft6jxR9Lt7tLwm6VKy9_shMVW7wf3g6rBGEqtB7oNH0hUA@mail.gmail.com>
References: <20190429035515.73611-1-drinkcat@chromium.org>
 <20190429035515.73611-3-drinkcat@chromium.org>
 <155778659317.14659.136626364818483852@swboyd.mtv.corp.google.com>
 <CANMq1KBMd7eR3dP=V9gJ6G4OgE6DsXad_gzvuNJ25_pee4+6eg@mail.gmail.com>
 <155786487644.14659.17142525593824613967@swboyd.mtv.corp.google.com>
 <CANMq1KCNzn-5sYJZGivUedsNaQfVW_MjgDZn27W6sz8Fk3beNA@mail.gmail.com>
 <CAE=gft6jxR9Lt7tLwm6VKy9_shMVW7wf3g6rBGEqtB7oNH0hUA@mail.gmail.com>
From: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH 2/2] pinctrl: mediatek: Update cur_mask in mask/mask ops
To: Evan Green <evgreen@chromium.org>, Nicolas Boichat <drinkcat@chromium.org>
User-Agent: alot/0.8.1
Date: Mon, 10 Jun 2019 15:25:53 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_152558_078585_3C0B3CFD 
X-CRM114-Status: GOOD (  32.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Chuanjia Liu <Chuanjia.Liu@mediatek.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sean Wang <sean.wang@kernel.org>,
 lkml <linux-kernel@vger.kernel.org>, linux-gpio@vger.kernel.org,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Evan Green (2019-05-30 10:12:03)
> On Wed, May 15, 2019 at 1:05 AM Nicolas Boichat <drinkcat@chromium.org> wrote:
> >
> > On Wed, May 15, 2019 at 4:14 AM Stephen Boyd <swboyd@chromium.org> wrote:
> >
> > > We could immediately unmask those lines in the hardware when the
> > > set_wake() callback is called. That way the genirq layer can use the
> > > driver to do what it wants with the hardware and the driver can make
> > > sure that set_wake() will always cause the wakeup interrupt to be
> > > delivered to genirq even when software has disabled it.
> > >
> > > But I think that there might be a problem with how genirq understands
> > > the masked state of a line when the wakeup implementation conflates
> > > masked state with wakeup armed state. Consider this call-flow:
> > >
> > >         irq masked in hardware, IRQD_IRQ_MASKED is set
> > >         enable_irq_wake()
> > >           unmask_irq in hardware
> > >         IRQD_WAKEUP_ARMED is set
> > >         <suspend and wakeup from irq>
> > >         handle_level_irq()
> > >           mask_ack_irq()
> > >             mask_irq()
> > >               if (irqd_irq_masked()) -> returns true and skips masking!
> > >             if (desc->irq_data.chip->irq_ack)
> > >               ...
> > >           irq_may_run()
> > >             irq_pm_check_wakeup()
> > >               irq_disable()
> > >                 mask_irq() -> does nothing again
> > >
> > > In the above flow, we never mask the irq because we thought it was
> > > already masked when it was disabled, but the irqchip implementation
> > > unmasked it to make wakeup work. Maybe we should always mask the irq if
> > > wakeup is armed and we're trying to call mask_irq()? Looks hacky.
> > >
> > > diff --git a/kernel/irq/chip.c b/kernel/irq/chip.c
> > > index 51128bea3846..20257d528880 100644
> > > --- a/kernel/irq/chip.c
> > > +++ b/kernel/irq/chip.c
> > > @@ -411,7 +411,7 @@ static inline void mask_ack_irq(struct irq_desc *desc)
> > >
> > >  void mask_irq(struct irq_desc *desc)
> > >  {
> > > -       if (irqd_irq_masked(&desc->irq_data))
> > > +       if (!irqd_is_wakeup_armed(&desc->irq_data) && irqd_irq_masked(&desc->irq_data))
> > >                 return;
> > >
> > >         if (desc->irq_data.chip->irq_mask) {
> >
> > I'm... really not sure what's the best approach here. But basically,
> > yes, if we can find a way to properly handle wake and interrupt
> > behaviour for drivers with a single mask, that'd be good.
> > IRQCHIP_MASK_ON_SUSPEND only seems to be doing half of the work, since
> > it does not cover the disable+wake source case.
> >
> > Thanks,
> 
> I finally got around to studying this patch. This series seems okay to
> me. The underlying problem is really that the hardware IRQ enabled
> state is out of sync with what Linux thinks. This happens during
> suspend because Linux thinks the irq is disabled, but due to the
> hardware constraints on this platform, the interrupt has to be enabled
> for it to be a wake source. So the mtk driver re-enables the
> interrupt, and then has to find a way to get back in sync with Linux's
> IRQ mask state.
> 
> One possible approach is mentioned above by Stephen: stop calling
> disable_irq in the cros EC driver. Then both linux and mtk agree the
> interrupt is enabled at suspend time. I think this ran into other
> problems though, where the EC gets its interrupt but is unable to
> silence it because the underlying SPI bus is still suspended.

Does this happen? I thought the interrupt would only be delivered once
all drivers have resumed from the noirq resume phase. Maybe the SPI
controller needs to resume there instead of in the normal resume path
and then this isn't a problem.

> 
> The other approach, taken here, is to mask the interrupt when it first
> comes in, getting Linux and mtk back in agreement that yes, the
> interrupt is masked. Outside of enlightening the generic IRQ core
> about these types of interrupts that need to get re-enabled to be wake
> sources, this seems like a reasonable approach.

I prefer we teach the genirq layer about these types of irqchips. That
way the solution is common and not a one-off fix for Mediatek chips. I'm
sure that this same problem will come up again for another SoC vendor
out there so having a chip flag that does the other half of
IRQCHIP_MASK_ON_SUSPEND would be appropriate.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
