Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 661991D0484
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 03:49:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tEVZFBrXCN3nG2Jg3cIYy1u1eJl1+o/wCExl64uKjfY=; b=q+qxJbnTl2v8ON
	0U7eHbvUlTIC0+I4b9cz6acQukBd0eMXG54CqpjgtCq1OKzylorN7ijQUAvObYsKvhOU8QlfpzjpS
	JWgi2dOIsH0v+si8ePQX4djEihbpFUrayK+IhI7sKZ7LijpaslZ0wy8S1kKvROvIxuTZ3r6gm6WHB
	s675gTDO8drPVZs0kp0sYnpn5ltIaOJXNzeR+inbBbGm7QNr6K8BrCyxEaokaPDKKz/5ucrzrLD3b
	GzW7PR14C7kR8EHs7dH/4z3graBBktHeO1Z0GneQjILgNOaNUIVl+zTa3vTW7ZSF+4O3gmyIRtgum
	YrE5xIqw95iBpRcxkgNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYgWm-0005My-JN; Wed, 13 May 2020 01:49:44 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYgWb-0005MQ-LR
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 01:49:35 +0000
Received: by mail-pl1-x642.google.com with SMTP id y9so3600542plk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 18:49:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:content-transfer-encoding:in-reply-to:references
 :subject:from:cc:to:date:message-id:user-agent;
 bh=U2hp63rB3CAsIMl65Ej4coylrrRKqe2rh9YYq0s3+D4=;
 b=fjo2f4jjwjlGrZLW0umi8KQVQ/SpOTRvxPCxg7/SXNWvLZ8NY0bQjILkLvMijENLAL
 DaYjYVCogiZ8Mzq9wc4I6XvuoU8bwwJCm9lP2cm7idra2RkODAuxrLQ+BybX+BSfJFcj
 1WGHR86kiV0W51KHc8dOh31+3kiii6qmc4nQo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding
 :in-reply-to:references:subject:from:cc:to:date:message-id
 :user-agent;
 bh=U2hp63rB3CAsIMl65Ej4coylrrRKqe2rh9YYq0s3+D4=;
 b=rmDgHkhr3Oznf5VD2rA88e36Yv2B0XxcKL1rqyZYsaA1WxszxHZv6S/zNv9++ATotp
 /HRa06uXsQaJPp+sCac2FjLginT5BZCPXII1UVebXc8d0NJBZrdN6Xyh7149WtHVDWIq
 qjqVMOAkjlpFOJW25xQlAuYV1xIyxapgOtvRkq3oOsUsMyuwtOyNR6Qz5A4dO2sMeSai
 bn2Gjq0dxCwX1VfgyJl979bqylKg8KXCM0ngRq92IDEBoS/moybztl/WfAcAY0Nr9p+E
 KCYfPsuY7eLEezvOblj28p08nlk7z3Rbaty41rKb2yUzo0GfVM576MDOXnoagjaEctgr
 UhOg==
X-Gm-Message-State: AOAM533Be5OTIebzWKiN4umX92KTz3izFOpXyCdFbqTg1LeD1wa7UQbb
 w0pJvypakrTa8L4/ep8EagVmSA==
X-Google-Smtp-Source: ABdhPJyTgU82y5UQvggP1k+g6dpTekcpClcW+m31+DiTuU/jeT9Hw0cvKUFxkM4ZDZI8daX7aleqAg==
X-Received: by 2002:a17:90b:357:: with SMTP id
 fh23mr7538321pjb.225.1589334572331; 
 Tue, 12 May 2020 18:49:32 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id f136sm12739777pfa.59.2020.05.12.18.49.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 18:49:31 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAJ9a7VjAoUmMG9pLEzE_rMSpOjwVOi-ZCinF87n9H0JgfMDsiQ@mail.gmail.com>
References: <20200426143725.18116-1-saiprakash.ranjan@codeaurora.org>
 <b8c1cc35846d425a1677c73fddf5874d@codeaurora.org>
 <eee1b9a90266eed9a9c75401f0679777@codeaurora.org>
 <CAJ9a7Vjd0XG+rAvHptAAjGtE6xRhYsPaOSC_Bf9B-w-FZFu_Qw@mail.gmail.com>
 <47f6d51bfad0a0bf1553e101e6a2c8c9@codeaurora.org>
 <37b3749e-2363-0877-c318-9c334a5d1881@arm.com>
 <d47271ee6a2a6f0f30da7e140b6f196c@codeaurora.org>
 <CAJ9a7Vg95tcgMXgQKLAZc=TpV6FnPZ7wdF=Kwbuy7d2kRCjYQw@mail.gmail.com>
 <364049a30dc9d242ec611bf27a16a6c9@codeaurora.org>
 <CAJ9a7VjAoUmMG9pLEzE_rMSpOjwVOi-ZCinF87n9H0JgfMDsiQ@mail.gmail.com>
Subject: Re: [PATCH] coresight: dynamic-replicator: Fix handling of multiple
 connections
From: Stephen Boyd <swboyd@chromium.org>
To: Mike Leach <mike.leach@linaro.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Date: Tue, 12 May 2020 18:49:30 -0700
Message-ID: <158933457051.215346.13515171569230202840@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_184933_726812_15FC3E82 
X-CRM114-Status: GOOD (  25.94  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Mike Leach (2020-05-12 14:52:33)
> HI Sai,
> 
> On Tue, 12 May 2020 at 18:46, Sai Prakash Ranjan
> <saiprakash.ranjan@codeaurora.org> wrote:
> >
> > Hi Mike,
> >
> > On 2020-05-12 17:19, Mike Leach wrote:
> > [...]
> >
> > >> >>
> > >> >> Sorry for hurrying up and sending the patch -
> > >> >> https://lore.kernel.org/patchwork/patch/1239923/.
> > >> >> I will send v2 based on further feedbacks here or there.
> > >> >>
> > >> >>>
> > >> >>> 1) does this replicator part have a unique ID that differs from the
> > >> >>> standard ARM designed replicators?
> > >> >>> If so perhaps link the modification into this. (even if the part no
> > >> >>> in
> > >> >>> PIDR0/1 is the same the UCI should be different for a different
> > >> >>> implementation)
> > >> >>>
> > > I have reviewed the replicator driver, and compared to all the other CS
> > > drivers.
> > > This driver appears to be the only one that sets hardware values in
> > > probe() and expects them to remain in place on enable, and uses that
> > > state for programming decisions later, despite telling the PM
> > > infrastructure that it is clear to suspend the device.
> > >
> > > Now we have a system where the replicator hardware is behaving
> > > differently under the driver, but is it behaving unreasonably?
> >
> > Thanks for taking your time to review this. For new replicator behaving
> > unreasonably, I think the assumption that the context is not lost on
> > disabling clock is flawed since its implementation defined. Is such
> > assumption documented in any TRM?
> >
> 
> Looking at the AMBA driver there is a comment there that AMBA does not
> lose state when clocks are removed. This is consistent with the AMBA
> protocol spec which states that AMBA slaves can only be accessed /
> read / write on various strobe signals,  or state reset on PRESET
> signal, all timed by the rising edge of the bus clock. state changes
> are not permitted on clock events alone. Given this static nature of
> AMBA slaves then removing the clock should not have any effect.

I believe the "clock" that is being used here is actually a software
message to the power manager hardware that the debug subsystem isn't
being used anymore. When nothing is requesting that it be enabled the
power manager turns off the power to the debug subsystem and then the
register context is lost. It shouldn't be a clock in the clk subsystem.
It should be a power domain and be attached to the amba devices in the
usual ways. Then the normal runtime PM semantics would follow. If amba
devices require a clk then we'll have to provide a dummy one that
doesn't do anything on this platform.

> 
> The AMBA driver only /drivers/amba/bus.c  gives permission to
> remove/restore the clocks from the devices (pm_suspend pm_resume
> callbacks) - this reduces the power consumption of these devices if
> the clock is not running, but state must be retained.
> 

Ideally the drivers can have enough knowledge about this situation to do
the proper save/restore steps so that if the coresight hardware isn't
being used we don't keep it powered forever and so that across system
wide suspend/resume we can properly power it off.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
