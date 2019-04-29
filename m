Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB3AE799
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 18:18:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IHEE//+Kx/MMFoRxsYAxONUSU7R4efmnumBG5P1o34g=; b=VRGO9HAoHoCWP6
	D5lY9ZDSfRYRxXq5I9gOjkhVySYV+SgcafUz5KYiE0NiM8IFAjAnd7VfRo7VM29qI9Cn40Oqt8nGj
	jZA6KEaiGU6utuWvjHxAiear0PcW334VuxzudgiZwZtOhVmAAkoD7zH/NKfJdW8lEvxV/Jc3hh/cR
	MY0qzoWPYjbxR1PUObjSkeQI5dozXe1gA4xulHq6hUpYMpqAbO/yEZWrTbiHM+eZi5GlkJkTeydIT
	QslYo66c3/2FZMHwMkDIkO4i+xQ2ckJaQ92BXfYkrLchRQ6Ko5hlbiry37reZrZvvyNIZkzaCtNZq
	6CHZM8iMd987TjP//bbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL8zS-0000lg-Pl; Mon, 29 Apr 2019 16:18:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL8zL-0000kj-1O
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 16:18:44 +0000
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
 [209.85.160.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F1B10216FD
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 16:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556554722;
 bh=y+8rKTlzq61ygqpRLwRIKyd+HPW/HceVYVOZlw5ZooE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=cAszN/xU6nogM20gyC6HXrHhU4HZtFzFs8Xz0vUh77Fokj1XAWwp3bh6DryIw11R2
 GfkPiX1NXpGSJRFIE3vm9LCIMdVrj/joj7rl/EAukRhXXAznX1W9Qc/OJnAMAWxlXb
 DgCdG4gX1SWabm5LQSftTtV9D2WcIlTKq/+YNsE8=
Received: by mail-qt1-f178.google.com with SMTP id s10so12553888qtc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 09:18:41 -0700 (PDT)
X-Gm-Message-State: APjAAAV67iMXadkRfh9hrp7o6XHU7b/HGBwy84bzwtjhMZDqwDpksqqm
 xL1mBV8oc+SdlLOJKUaDto+speeAqTQiaEzkkw==
X-Google-Smtp-Source: APXvYqyzqs09hNBiab7wqw3JOVfJ9CFkM2ZcAO05H+2Yc6TdhfKWUtxNLYtavldF7yNklJkdWImkkMHYR0Y3l+v22yw=
X-Received: by 2002:aed:306c:: with SMTP id 99mr2856198qte.38.1556554721170;
 Mon, 29 Apr 2019 09:18:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190410174139.20012-1-tiny.windzz@gmail.com>
 <20190410174139.20012-3-tiny.windzz@gmail.com>
 <20190426211540.GA890@bogus>
 <CAEExFWs2UwPLzgyO0apMOZf56um5isdZmf+7-wj_TqMozxZJQg@mail.gmail.com>
In-Reply-To: <CAEExFWs2UwPLzgyO0apMOZf56um5isdZmf+7-wj_TqMozxZJQg@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 29 Apr 2019 11:18:29 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+0mQYyAqfY3nmF-oFx2X4qHU567chQ1s8p-rgD2GEFnw@mail.gmail.com>
Message-ID: <CAL_Jsq+0mQYyAqfY3nmF-oFx2X4qHU567chQ1s8p-rgD2GEFnw@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] dt-bindings: cpufreq: Document allwinner,
 cpu-operating-points-v2
To: Frank Lee <tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_091843_241640_B245B85F 
X-CRM114-Status: GOOD (  21.47  )
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Nishanth Menon <nm@ti.com>, Mark Rutland <mark.rutland@arm.com>,
 Linux PM <linux-pm@vger.kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Viresh Kumar <vireshk@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 David Miller <davem@davemloft.net>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 28, 2019 at 4:53 AM Frank Lee <tiny.windzz@gmail.com> wrote:
>
> On Sat, Apr 27, 2019 at 5:15 AM Rob Herring <robh@kernel.org> wrote:
> >
> > On Wed, Apr 10, 2019 at 01:41:39PM -0400, Yangtao Li wrote:
> > > Allwinner Process Voltage Scaling Tables defines the voltage and
> > > frequency value based on the speedbin blown in the efuse combination.
> > > The sunxi-cpufreq-nvmem driver reads the efuse value from the SoC to
> > > provide the OPP framework with required information.
> > > This is used to determine the voltage and frequency value for each
> > > OPP of operating-points-v2 table when it is parsed by the OPP framework.
> > >
> > > The "allwinner,cpu-operating-points-v2" DT extends the "operating-points-v2"
> > > with following parameters:
> > > - nvmem-cells (NVMEM area containig the speedbin information)
> > > - opp-microvolt-<name>: voltage in micro Volts.
> > >   At runtime, the platform can pick a <name> and matching
> > >   opp-microvolt-<name> property.
> > >                       HW:             <name>:
> > >                       sun50iw-h6      speed0 speed1 speed2
> >
> > We already have at least one way to support speed bins with QC kryo
> > binding. Why do we need a different way?
>
> For some SOCs, for some reason (making the CPU have approximate performance),
> they use the same frequency but different voltage. In the case where
> this speed bin
> is not a lot and opp uses the same frequency, too many repeated opp
> nodes are a bit
> redundant and not intuitive enough.
>
> So, I think it's worth the new method.

Well, I don't.

We can't have every SoC vendor doing their own thing just because they
want to. If there are technical reasons why existing bindings don't
work, then maybe we need to do something different. But I haven't
heard any reasons.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
