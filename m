Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA556BBF19
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 01:51:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cnLtNM/wpg832xFGf0z4hdcpvL9hQ43HTh7A6reDg4k=; b=ETuk7+/YNKVqTe
	whJZzYQmf6Dk/38LHJQwuuz6yFdKJ06SUcUbN/CdAb6Xh450YwaJbn5xrpw3Q9fJBS0gazLA+xNGm
	RnY3Bma4Nndxpgo/QVxXxNI1scHoPKyUqY7yhDyA5wo74NnUM/peoadkyAwexhEbIQEFHE+zeHXVt
	RVektpcAmUk+VivUkhRTO40ynNzN+JbxPkPwDUiFRY1PPpHhQjxqWAGNe1tEuoqdNn4LFuvyTQfPD
	2rleUbLxjXOPY7ALXLy6c0FwGunnPzTZE8+LjByQqFzXyxQY9gmOJ9ivjl8bbnnJ+kQTp+/uVjRD+
	ks6tpV7526aSApZVuYXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCY6e-0003b2-GD; Mon, 23 Sep 2019 23:51:00 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCY6U-0003aT-TO
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 23:50:52 +0000
Received: by mail-ot1-x343.google.com with SMTP id 67so13788512oto.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 16:50:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6M82BLCcE+lzgAzJr+gcYZskquFS/0tUba7YEQFFpD8=;
 b=RLSl3v4uVz2nh2chdLQMPZc4yPsWrga3M3sSUvkQjPS8INpeBpOXG19ea1L8TrJfb7
 xCDcIDFT2kv3MRMb2omXbaaT3u21A/w990Gak8suvu/HmV+qRRFntqTE/iOVVN49Fo7J
 vCPHlQqnhjGEC+5J4xw4EIOCuWMBX2PuUgLYoK3xrIzw+Tl1gUf54bXKVKOf4XM66hJe
 xj1k7wIjUxfC9AzYLQ9KhiDXlRIq69f67DzVHq7bMWzcIC/ALCQWWxSynAdjBrVHoLce
 S7c6ARxmxjr4qaj6Kjg8eOryfuGwaYrp1nKc+1wBsdPa85JFYOajqdP4Da4ci8AUywDp
 v1gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6M82BLCcE+lzgAzJr+gcYZskquFS/0tUba7YEQFFpD8=;
 b=QHQD2WHnjlwJXFeIN1u1GqZOIwoT4JdodIHR9f9dtTxxoT4jjNY/WC5AVSawl8p7Y8
 IOaaH+JnRhHCBG60AOw7Icshb/n3eRs4N2bJUocTqu3TN5lFkDu9ZawN/rDhXk1MoRDC
 EOmGmQfbrF5qIkU00+ySuWlC6p8w8ZPp9JbJbEK1T07j9GfHce6LrXDzENmoBd63x7Wj
 a4OD2Qp09mr1ZPxYFDfzBr8ZBLMws4PvdAepzOhIDuZvP9El2HMIMPOx/0r0/FMfQLGc
 t96ewT4nd8on8tjGwZKZLbgoUtyaycpANLK9puaXjbBaS5KeitVzKmmac03OkEvcoxdg
 cnRA==
X-Gm-Message-State: APjAAAXKpf0J7YUcQEEnB7gooUdTTu7wMe0WWS7ADIdXvlSlf5yvf1Sp
 OCXR4LCJYrw0nt62I8in26L8P8Tf7EPhHUtODVg=
X-Google-Smtp-Source: APXvYqy8rVmzK8V5x/5OG5ZUuvoTSroLiPRbreBASHZA2q+yyWSmak83DDpKcyg8w7QM1+AHOj6MAt9/+/zffGcjQSE=
X-Received: by 2002:a05:6830:86:: with SMTP id a6mr173496oto.353.1569282642422; 
 Mon, 23 Sep 2019 16:50:42 -0700 (PDT)
MIME-Version: 1.0
References: <E1hv5vZ-0000jN-M8@stardust.g4.wien.funkfeuer.at>
 <CA+E=qVdHOtebR6xjpwTY_Whp0cHLtv82YULmxLPSEzdLN9TnVg@mail.gmail.com>
 <36e60078-7dd5-9c07-ffa1-6092d8c70fa8@arm.com>
 <CA+E=qVeAR4AFN99ZVy8EZLW6p_8ucTewOdMis37wnpV3DObaGg@mail.gmail.com>
 <20190807115614.phm7sbyae6yajkug@flea>
 <CA+E=qVdh3MHMsEC9XKe5-7O8fGTHFh76WLOgVf+PZPv7c4JE9w@mail.gmail.com>
 <20190808162628.pthvy3tgf3naj76s@flea>
 <CA+E=qVeiWoRGn05HpMzx_5yidit4GM18tBrziW5MBo00f_-PKQ@mail.gmail.com>
 <20190812080420.saelmqb36vkelxn4@flea>
 <CA+E=qVchsqOF_hVD-qBuKwi7PTMYtUR-LE2dD_mpptFJcWE_yw@mail.gmail.com>
 <20190813053905.hu2hyi7fah2vujzz@flea>
In-Reply-To: <20190813053905.hu2hyi7fah2vujzz@flea>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Mon, 23 Sep 2019 16:51:03 -0700
Message-ID: <CA+E=qVegU8M09tmbxGUaBSoueGU6PRsAtr9XWrc8V8HnCPjULg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_165050_959051_CAA726CA 
X-CRM114-Status: GOOD (  32.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
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

On Mon, Aug 12, 2019 at 10:39 PM Maxime Ripard
<maxime.ripard@bootlin.com> wrote:
>
> On Mon, Aug 12, 2019 at 11:01:51AM -0700, Vasily Khoruzhick wrote:
> > On Mon, Aug 12, 2019 at 1:04 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > >
> > > On Thu, Aug 08, 2019 at 12:59:07PM -0700, Vasily Khoruzhick wrote:
> > > > On Thu, Aug 8, 2019 at 9:26 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > >
> > > > > On Wed, Aug 07, 2019 at 10:36:08AM -0700, Vasily Khoruzhick wrote:
> > > > > > On Wed, Aug 7, 2019 at 4:56 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > > >
> > > > > > > On Tue, Aug 06, 2019 at 07:39:26PM -0700, Vasily Khoruzhick wrote:
> > > > > > > > On Tue, Aug 6, 2019 at 2:14 PM Robin Murphy <robin.murphy@arm.com> wrote:
> > > > > > > > >
> > > > > > > > > On 2019-08-06 9:52 pm, Vasily Khoruzhick wrote:
> > > > > > > > > > On Tue, Aug 6, 2019 at 1:19 PM Harald Geyer <harald@ccbib.org> wrote:
> > > > > > > > > >>
> > > > > > > > > >> Vasily Khoruzhick writes:
> > > > > > > > > >>> On Tue, Aug 6, 2019 at 7:35 AM Robin Murphy <robin.murphy@arm.com> wrote:
> > > > > > > > > >>>>
> > > > > > > > > >>>> On 06/08/2019 15:01, Vasily Khoruzhick wrote:
> > > > > > > > > >>>>> Looks like PMU in A64 is broken, it generates no interrupts at all and
> > > > > > > > > >>>>> as result 'perf top' shows no events.
> > > > > > > > > >>>>
> > > > > > > > > >>>> Does something like 'perf stat sleep 1' at least count cycles correctly?
> > > > > > > > > >>>> It could well just be that the interrupt numbers are wrong...
> > > > > > > > > >>>
> > > > > > > > > >>> Looks like it does, at least result looks plausible:
> > > > > > > > > >>
> > > > > > > > > >> I'm using perf stat regularly (cache benchmarks) and it works fine.
> > > > > > > > > >>
> > > > > > > > > >> Unfortunately I wasn't aware that perf stat is a poor test for
> > > > > > > > > >> the interrupts part of the node, when I added it. So I'm not too
> > > > > > > > > >> surprised I got it wrong.
> > > > > > > > > >>
> > > > > > > > > >> However, it would be unfortunate if the node got removed completely,
> > > > > > > > > >> because perf stat would not work anymore. Maybe we can only remove
> > > > > > > > > >> the interrupts or just fix them even if the HW doesn't work?
> > > > > > > > > >
> > > > > > > > > > I'm not familiar with PMU driver. Is it possible to get it working
> > > > > > > > > > without interrupts?
> > > > > > > > >
> > > > > > > > > Yup - you get a grumpy message from the driver, it will refuse sampling
> > > > > > > > > events (the ones which weren't working anyway), and if you measure
> > > > > > > > > anything for long enough that a counter overflows you'll get wonky
> > > > > > > > > results. But for counting hardware events over relatively short periods
> > > > > > > > > it'll still do the job.
> > > > > > > >
> > > > > > > > I tried to drop interrupts completely from the node but 'perf top' is
> > > > > > > > still broken. Though now in different way: it complains "cycles: PMU
> > > > > > > > Hardware doesn't support sampling/overflow-interrupts. Try 'perf
> > > > > > > > stat'"
> > > > > > >
> > > > > > > I have no idea if that's the culprit, but what is the state of the
> > > > > > > 0x09010000 register?
> > > > > >
> > > > > > What register is that and how do I check it?
> > > > >
> > > > > It's in the CPUX Configuration block, and the bits are labelled as CPU
> > > > > Debug Reset.
> > > > >
> > > > > And if you have busybox, you can use devmem.
> > > >
> > > > CPUX configuration block is at 0x01700000 according to A64 user
> > > > manual, and particular register you're interested in is at 0x01700080,
> > > > its value is 0x1110110F.
> > > >
> > > > Bits 16-19 are not defined in user manual and are not set.
> > >
> > > Sorry, I somehow thought this was for the H6...
> > >
> > > I don't have any idea then :/
> >
> > OK, so what should we do? 'perf top'/'perf record' work fine if PMU
> > node is dropped, but they don't work if PMU node is present (even with
> > interrupts dropped). I'd prefer to have 'perf top' and 'perf record'
> > working instead of 'perf stat'
>
> Well, it doesn't work so we should just remove the node, and if
> someone wants it back, they should figure it out.

Hey Maxime,

So can you merge this patch?

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
