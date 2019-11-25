Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6951094C1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 21:44:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lf9p+XQra9KHykjI6qPQJT7qxozVU/pYGVtXaq1Rrh8=; b=rxwnJ4dz8gGdNy
	cLeTz8KeR5AQEEqE+1biw+B5+505SDld4YZeTICOEVYNl29nM/CppXMQgu2gwJSy9IHZ/1/inWJti
	mO7dkpfKRMVfws/wpJmNgPYUIKiLk/wH/wj8nBUXKq8YjJ4CxuqS+hbzHyOhLPsDZ5lKzz0c+52xx
	Whqae7KbrGo2zbHteqTHEFVdHWgmB6f6fJhg+UMc+FujBXOMz3FVby9qA5jD5A37MnH4Upi4evbP4
	cXMvJ6aqmnnNkiOJ8a20vZ0XtuCevI6JtBHzTc+HgjXkxCeW7ZfYzUdTIc5/aOaBhw/089X6F936l
	lA/nDutKH2/nEkuI4BHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZLDB-00079S-48; Mon, 25 Nov 2019 20:43:57 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZLD0-00078b-R9
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 20:43:48 +0000
Received: by mail-ot1-f66.google.com with SMTP id n23so13826795otr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 Nov 2019 12:43:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vkN17VKr1QonsL4KEkyHopuTh41vqxivJMdU6x1c6F8=;
 b=Q4uKgT2Bei9W94uK8IOdIPK05HrPA/Wm5UKrIJwh+JhD8R7/Avz5rNbN0xwffKwVFL
 K3Dg3+RNsn9H9JK+rRA42W1NUPFeFgaEwrn8agl+Z0+JMKbKN71GZNGDTyJe8TnLasAr
 1nW8PyYENON43NiADvzrWEodGT/a+sWQLaLXPjF6pGi9+hoqiVrNpOz2Xg5Q8H2aEGjE
 9T/Y0bmdoM6Ew/MlkZ0X2s3ynaZaK6RU63w/AUMKr1DQNiAn+XRGlYqnSCQaQfAVOB/U
 fkzO0g5GgP4vnAXkOG1WgZ+lAm3ovKa3IrhX/9SI8+MrmPkFrDh9D3FXZJq2TpnnXgPz
 vlHQ==
X-Gm-Message-State: APjAAAVjrK0GNPZsPDwRw+PHPSKf8rfWsFJLelF1+JCEt8DUezWaLrg3
 K+/LaUj/k2biFY5FiHOQHhQfXkOuoVPt1rga7y8=
X-Google-Smtp-Source: APXvYqx7zhO+FIeXSjEth0eVOFf+CJ3kUYyafgplkB8JwQg5X9n0L7sXm2e57q/4uZZvCl18+4TpKc3rWwdbo7y/G4k=
X-Received: by 2002:a9d:2073:: with SMTP id
 n106mr11207489ota.145.1574714625036; 
 Mon, 25 Nov 2019 12:43:45 -0800 (PST)
MIME-Version: 1.0
References: <1d7a1b3b-e9bf-1d80-609d-a9c0c932b15a@free.fr>
 <34e32662-c909-9eb3-e561-3274ad0bf3cc@free.fr>
 <20191125125530.GP25745@shell.armlinux.org.uk>
 <c7414301-da0d-cd4d-237d-34277f5ee1d2@free.fr>
 <20191125133752.GS25745@shell.armlinux.org.uk>
 <21c242a9-3599-3288-79bf-a8889fad2a73@free.fr>
In-Reply-To: <21c242a9-3599-3288-79bf-a8889fad2a73@free.fr>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 25 Nov 2019 21:43:33 +0100
Message-ID: <CAMuHMdXtnm25RFuLjnko0mYijgH-8J6KnQ+f1xo1PjBCKUvznQ@mail.gmail.com>
Subject: Re: [PATCH v1] clk: Add devm_clk_{prepare,enable,prepare_enable}
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_124346_879841_A960C3BB 
X-CRM114-Status: GOOD (  25.54  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On Mon, Nov 25, 2019 at 3:11 PM Marc Gonzalez <marc.w.gonzalez@free.fr> wrote:
> On 25/11/2019 14:37, Russell King - ARM Linux admin wrote:
> > On Mon, Nov 25, 2019 at 02:10:21PM +0100, Marc Gonzalez wrote:
> >> On 25/11/2019 13:55, Russell King - ARM Linux admin wrote:
> >>> It's also worth reading https://lore.kernel.org/patchwork/patch/755667/
> >>> and considering whether you really are using the clk_prepare() and
> >>> clk_enable() APIs correctly.  Wanting these devm functions suggests
> >>> you aren't...
> >>
> >> In that older thread, you wrote:
> >>
> >>> If you take the view that trying to keep clocks disabled is a good way
> >>> to save power, then you'd have the clk_prepare() or maybe
> >>> clk_prepare_enable() in your run-time PM resume handler, or maybe even
> >>> deeper in the driver... the original design goal of the clk API was to
> >>> allow power saving and clock control.
> >>>
> >>> With that in mind, getting and enabling the clock together in the
> >>> probe function didn't make sense.
> >>>
> >>> I feel that aspect has been somewhat lost, and people now regard much
> >>> of the clk API as a bit of a probe-time nuisance.
> >>
> >> In the few drivers I've written, I call clk_prepare_enable() at probe.
> >
> > Right, so the clocks are enabled as soon as the device is probed,
> > in other words at boot time. It remains enabled for as long as the
> > device is bound to its driver, whether or not the device is actually
> > being used. Every switching edge causes heat to be generated. Every
> > switching edge causes energy to be wasted.
> >
> > That's fine if you have an infinite energy supply. That hasn't been
> > discovered yet.
> >
> > Given the prevalence of technology, don't you think we should be
> > doing as much as we possibly can to reduce the energy consumption
> > of the devices we use? It may be peanuts per device, but at scale
> > it all adds up.
>
> OK, I'm starting to see the bigger picture.
>
> (To provide some rationale for the patch, I think devm is a huge
> improvement for probe error-handling, and I did not understand
> why every driver must do manual error-handling when dealing with
> clocks in probe.)
>
> I did envision kernel modules being loaded on an as-needed basis,
> somewhat side-stepping the energy-waste issue you point out.
> But I realize that such a use-case may be uncommon. (Especially
> due to module auto-loading.)
>
> A few months ago, I was discussing a similar issue with GKH:
> Consider a device with a "START" register. Basically, if we write 0,
> the device turns itself off; if we write 1, it runs as configured.
>
> I was trying to start the device only when at least one user had
> it "open". So I used reference counting, and started the device
> on 0->1 open transitions, and stopped the device on 1->0 close
> transitions. GKH told me that was the wrong way to do it, and IIRC
> suggested to start the device in probe.
>
> I probably misunderstood Greg's suggestion. Where is the right place
> to start/stop a device (or gate its clocks)?

In the device driver's Runtime PM callbacks?
In the Power/Clock Domain Controller driver?

See drivers/base/power/domain.c:genpd_{start,stop}_dev(), and how/when
it's called.

Embedded device driver writers typically care.
Server device driver writes typically don't.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
