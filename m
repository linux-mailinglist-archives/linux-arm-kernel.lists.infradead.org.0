Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F02D585229
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 19:36:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E3XCP7wpLBHylIz+2ARerqJj7n0NjUZfCVxsHajP1Qs=; b=Sz+cGMaeRg4ffV
	cWLfTXdfM5uPx0sO0eNn+9zDxM3smc/DO18M/SS4RigIrX/KRFzNVkI40J5YEqGqkD/tT/SGiYM+p
	w/insIf5dq/n8Ok4X9LWDMnWOhJIYBADdfKm9WcVKEKkLUcjsu51r1dMcUVAA0LlQR2cJvpjpmwdL
	7ngkm4/Ye85s0dcEdUR4jJpCBluel4l8LSjEqQPV7qo54YuB5Y95J9D4fczjM30uofumURi9iy92J
	7lJx7Tm3XPBe5QSLwVSPScFeLrJvj4PU7q1bdQfpduVmnFxUXqYwLpox/DvQZcg4vsz6EGRLcuS6V
	fBUn7XknvH04RBjVIYPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvPri-0001zv-Lf; Wed, 07 Aug 2019 17:36:46 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvPrY-0001zX-2T
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 17:36:37 +0000
Received: by mail-ot1-x344.google.com with SMTP id q20so107429269otl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 10:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/ahAdMt9y/VNsV/qQd6y/xJHn8I5CpQDY3tZMcrNs4A=;
 b=ObxZYrA6VNyw2WNd9bgMvlmNcd6/7eKohgKlkt3sxiubQYzfbsyzxbYugiXVl+rX6s
 KFEry7YGiKl/RAY2GZm9y6E/eUl/XXHmlLb5jkJEPYReR4vAkzelXXuW7WC8PEdwTMSJ
 KyDx+yOUTM3DrtzDmCVw2B1qL1vPd5kdKRbttLIi3c3Boc/FTIuytauTWGJbpuEAX+S/
 jmmqu6q0WyUOtRdrCzZGiajrJU1Msg+wObjOEvuoPKnVVlJbKIpg/8PJeGx0RbImPetv
 NRJEN5oeKRArWHmglyLAamgBHZVl8BAs9J3+WnHNDhilpGpK+MOA5JypatKOPtqwHQ7u
 ll8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/ahAdMt9y/VNsV/qQd6y/xJHn8I5CpQDY3tZMcrNs4A=;
 b=XuVhUu3Rb395P4OkwVtIdnYgDLrWNwf0GJJKnPYi1S+HZYWTI+S6ADafQzqjxYNqvZ
 P43jd80cf6Im4kE6nrGmbrof8iF2sdkegZNolJiYU2pXuuVQTM/d+RvLKTeHF4S/vbCc
 b/T2TqSinb23QMjPYVzESjUVYnCRlmUsRwffgD7c33fWsma1IWRj5ZHPC59aIbd7cGCf
 QTRr70ueWOLgdsFnAMSwnNyWs7FfpP2h0azpgboUTvtMl0PCtRKq1BoIe27y1UGAkGlO
 rrCizpFA/oVL20iOA1JSTSLpms1oQKbETYdjGdnBWxG/DLAxiQE66HM+FGPYS+LD/5HP
 JDgA==
X-Gm-Message-State: APjAAAUIaGT3Vx60CXmtrLZvsA1rYSdN/gRWt/ZQamVx9NpKj0Gb+7R3
 T6yV0WUovgiBHmFV6JDe+feEcijIeZyIX16Bumw=
X-Google-Smtp-Source: APXvYqzm6lbogH9emHG1HDu2xLWRfSw8r9srFqMIQuNwbv5KIxsLZzTEMC+DTxul5+vbGLi2ABtMU/29NyjFq/6ZiJs=
X-Received: by 2002:a9d:6742:: with SMTP id w2mr9272816otm.371.1565199394377; 
 Wed, 07 Aug 2019 10:36:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190806140135.4739-1-anarsoul@gmail.com>
 <89402d22-d432-9551-e787-c8ede16dbe5f@arm.com>
 <CA+E=qVfh7mirJhRsDTeuAVgG55ia936uFSFVKR0N5Pn4GCF1UA@mail.gmail.com>
 <E1hv5vZ-0000jN-M8@stardust.g4.wien.funkfeuer.at>
 <CA+E=qVdHOtebR6xjpwTY_Whp0cHLtv82YULmxLPSEzdLN9TnVg@mail.gmail.com>
 <36e60078-7dd5-9c07-ffa1-6092d8c70fa8@arm.com>
 <CA+E=qVeAR4AFN99ZVy8EZLW6p_8ucTewOdMis37wnpV3DObaGg@mail.gmail.com>
 <20190807115614.phm7sbyae6yajkug@flea>
In-Reply-To: <20190807115614.phm7sbyae6yajkug@flea>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Wed, 7 Aug 2019 10:36:08 -0700
Message-ID: <CA+E=qVdh3MHMsEC9XKe5-7O8fGTHFh76WLOgVf+PZPv7c4JE9w@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_103636_141105_DE143A00 
X-CRM114-Status: GOOD (  25.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 "Jared D . McNeill" <jmcneill@netbsd.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Harald Geyer <harald@ccbib.org>,
 Robin Murphy <robin.murphy@arm.com>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 7, 2019 at 4:56 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Tue, Aug 06, 2019 at 07:39:26PM -0700, Vasily Khoruzhick wrote:
> > On Tue, Aug 6, 2019 at 2:14 PM Robin Murphy <robin.murphy@arm.com> wrote:
> > >
> > > On 2019-08-06 9:52 pm, Vasily Khoruzhick wrote:
> > > > On Tue, Aug 6, 2019 at 1:19 PM Harald Geyer <harald@ccbib.org> wrote:
> > > >>
> > > >> Vasily Khoruzhick writes:
> > > >>> On Tue, Aug 6, 2019 at 7:35 AM Robin Murphy <robin.murphy@arm.com> wrote:
> > > >>>>
> > > >>>> On 06/08/2019 15:01, Vasily Khoruzhick wrote:
> > > >>>>> Looks like PMU in A64 is broken, it generates no interrupts at all and
> > > >>>>> as result 'perf top' shows no events.
> > > >>>>
> > > >>>> Does something like 'perf stat sleep 1' at least count cycles correctly?
> > > >>>> It could well just be that the interrupt numbers are wrong...
> > > >>>
> > > >>> Looks like it does, at least result looks plausible:
> > > >>
> > > >> I'm using perf stat regularly (cache benchmarks) and it works fine.
> > > >>
> > > >> Unfortunately I wasn't aware that perf stat is a poor test for
> > > >> the interrupts part of the node, when I added it. So I'm not too
> > > >> surprised I got it wrong.
> > > >>
> > > >> However, it would be unfortunate if the node got removed completely,
> > > >> because perf stat would not work anymore. Maybe we can only remove
> > > >> the interrupts or just fix them even if the HW doesn't work?
> > > >
> > > > I'm not familiar with PMU driver. Is it possible to get it working
> > > > without interrupts?
> > >
> > > Yup - you get a grumpy message from the driver, it will refuse sampling
> > > events (the ones which weren't working anyway), and if you measure
> > > anything for long enough that a counter overflows you'll get wonky
> > > results. But for counting hardware events over relatively short periods
> > > it'll still do the job.
> >
> > I tried to drop interrupts completely from the node but 'perf top' is
> > still broken. Though now in different way: it complains "cycles: PMU
> > Hardware doesn't support sampling/overflow-interrupts. Try 'perf
> > stat'"
>
> I have no idea if that's the culprit, but what is the state of the
> 0x09010000 register?

What register is that and how do I check it?

> (in particular, are the bits 16-19 and 24 set or not?
>
> Maxime
>
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
