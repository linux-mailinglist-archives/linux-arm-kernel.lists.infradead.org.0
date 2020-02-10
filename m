Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20069158339
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 20:02:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mnQmNmuLwJG5oFK9hffxSv8I+lB3wQInXsp95oxshhU=; b=Rv/LdkEC4dxxql
	+gs+0RlizDlnqX5k9HU7qZGR8t63vIJFrSApMMf2Vzmv3Broj9qiXkOyj2Kqk4g8jNgJFOW3f5E7a
	wfGvNjeeP6kMwBFe5W83lGDE90HSlzssqwcIEYlRp13Dy9SEyEd2GzIUjpPBcqXP8LNhIz1Qjj50g
	ht1x/r1mGQOkJ2VUbpDmwt1MUTdhnm+4Mt8exPpvUrP9ciSgJ/qvvZbSfUkJYvTr73BEU4sI9OVm6
	MjDX0CyQGldZRCrtLsmd2EjwJdzgFWyVWY3RGJ/9Ow9+adPeT5JCjZs/Afkl8v9qjQ/zhuNRwPb3R
	Eto/8YfKSE5QhzhCsDxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1EK2-00020b-QU; Mon, 10 Feb 2020 19:02:18 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1EJu-0001zG-AY
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 19:02:11 +0000
Received: by mail-ed1-f66.google.com with SMTP id e10so1593204edv.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 11:02:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9cf+4qQjBnlkEW/EJTW7h2vLgsgp1JMVDelx9bM1U3Q=;
 b=M+AIlIEnBnY7z/iQPyjfkfPv+TwaI1Kks/cGl4ILu1o5jWPubGZWk0Wgc8OvduRg99
 MXjBCZ4ICCbUKFSldq0eES79w5hi/q8kk2GMqljuyOsjxqeraqw9dLnZXH2SxCma4TSZ
 lf2n/5g60udvomfHGbNgRbaMzw2QQRMyj1yqyNhvtfHj6Q558rAE7wd1l28ENIu3NU7Y
 z0iZawyuMzL6kt578zxWpJB4GfKHt1HcFsu7TteV1l/IfvORk3nAWiOVJDcrVuS0PsWB
 mQLPpr4EvieiLSjkZf3LIA+eRyL/64hZkahI8Hh8pJpEIyNKv31U48zPPEjl5mF7kvua
 jEqQ==
X-Gm-Message-State: APjAAAVstEmTYvYNweAP3/zaOIEyIMtpLQzhcDkf0IGKXKVXIOnJELSc
 OavFhGcUGgM8tXIQ2m5F8nQ=
X-Google-Smtp-Source: APXvYqwg0KeN1+Nwj6pBAd2zwMoQwpurX7DGIJkYt84IeruJJh8EyS0rccVKqJspTu7bUwyIu3L+rg==
X-Received: by 2002:aa7:df04:: with SMTP id c4mr2519354edy.385.1581361328652; 
 Mon, 10 Feb 2020 11:02:08 -0800 (PST)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id r23sm74834edp.15.2020.02.10.11.02.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 10 Feb 2020 11:02:07 -0800 (PST)
Date: Mon, 10 Feb 2020 20:02:05 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCHv3 0/3] Add support for suspend clk for Exynos5422 SoC
Message-ID: <20200210190205.GB16433@kozik-lap>
References: <20200210105108.1128-1-linux.amoon@gmail.com>
 <20200210135612.GB2163@pi3>
 <CANAwSgT9aq123H-pO2u6iN2E8towsWUFcWDsA9TbVqP30j=10w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANAwSgT9aq123H-pO2u6iN2E8towsWUFcWDsA9TbVqP30j=10w@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_110210_365613_628B5BDD 
X-CRM114-Status: GOOD (  21.67  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, linux-samsung-soc@vger.kernel.org,
 Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 10:38:52PM +0530, Anand Moon wrote:
> Hi Krzysztof,
> 
> On Mon, 10 Feb 2020 at 19:26, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> > On Mon, Feb 10, 2020 at 10:51:05AM +0000, Anand Moon wrote:
> > > Long time ago I tried to add suspend clk for dwc3 phy
> > > which was wrong appoch, see below.
> > >
> > > [0] https://lore.kernel.org/patchwork/patch/837635/
> > > [1] https://lore.kernel.org/patchwork/patch/837636/
> > >
> >
> 
> Thanks for your review comments.
> 
> > You ignored parts of my review from these previous patches. I asked for
> > describing WHY are you doing this and WHAT problem are you trying to
> > solve. I asked for this multiple times. Unfortunately I cannot find the
> > answers to my questions in this patchset...
> >
> > Best regards,
> > Krzysztof
> 
> I dont know how to resolve this issue, but I want to re-post
> some of my changes back for review. let me try again.
> 
> My future goal is to add #power-domain for FSYS and FSYS2
> which I am trying to resolve some issue.
> Also add run-time power management for USB3 drivers.

You can start by describing why FSYS and FSYS2 power domains cannot be
added right now. Maybe this patchset allows this later?

> 
> Here is the clk diagram for FSYS clk as per Exynos5422 user manual.
> [0] https://imgur.com/gallery/zAiBoyh
> 
> As per the USB 3.0 Architecture T I.
> 
> 2.13.1 PHY Power Management
> The SS PHY has power states P0, P1, P2, and P3, corresponding to the
> SS LPM states of U0, U1, U2,and U3. In the P3 state,SS PHY does not drive
> the default functional clock,instead, the *susp_clk* is used in its place.
> 
> So enable the suspend clk help control the power management
> states for the DWC3 controller.

That's too vague because clock usually cannot "help"... The wording is
wrong and the actual problem is not described.

I could guess from your description and driver behavior that SCLK has to
be on during USB DRD suspend.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
