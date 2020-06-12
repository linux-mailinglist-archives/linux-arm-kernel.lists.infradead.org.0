Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5D61F74BB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 09:38:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fF9JKouis2yitFLSqPXy7DWkPkvWZGp9C5uMswWCnM8=; b=ihi5SHo/CnoGII
	XykAilrZb2NUS7pRxRyW6H066n33KDgf4c4701RVtQv5CUXuadYEZiKLzrDJyKb4QeqX4zqFH1zzw
	COoqB0fOPClxHKLdbn6XPRrYCgPJ8p8m4odDoGV5T3+qKyqFFymQj8gMz3yWfxNxAZNekT3YqpCwe
	mGTl6Q29bzXdXaWugaROCZVZMxCEYNGmJVyC0Cki9dJerNzDBV4Upd3DACLR45LglZIR0KmMCBrlH
	cG12k0FReSTGeO/UuZVd72ck+KDikgm3dkzKUNZt2mqhor/o0a1t1fWhVYa4uSO1KLEEaWCCla8BW
	pzP309qAzw2Y9nCxXTBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjeGm-0006E2-9v; Fri, 12 Jun 2020 07:38:32 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjeGb-0006D8-5r
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 07:38:25 +0000
Received: by mail-ed1-f66.google.com with SMTP id g1so5728507edv.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 00:38:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=FWuaSFu9jX7IUIcDf07jPsuJOKsC8Mu741YqNeRzDzY=;
 b=Aom/H14fOzU+I+ha/n1G/C9gFZh3hGsScXtWGS4hUJlK2guDJ1CMAY6zJ3sCvV/Ga4
 l2aSfXyP7RptZU2UPoHGFCyxVFMrddiX2BJjGyBUXKMckM72nFaSf9rLWNa/SkQYBzXn
 g2LXjafuMBe13HmLD+YVdQ1++Ll85/SogBiFGUcvkDUBXkMsFR0hsnba1PN36RdzAHM8
 Gf+bmDeTLHTPlRCYk73c4v/R6j5x2OisE3G6+B7p397QXO1t96VZ1BwVEWOzQG9+rr9I
 F66a0r4/7jNFhAFiBXtGrt0RzcaGbzVjnz3vy+d9VObXnqDBthT2rqAXPD+HR4KfW5f/
 qeeQ==
X-Gm-Message-State: AOAM530tuON2JXXxw6QZFs4phyxB4RYcwQ74TXKhyIaYn55EGiq8riZ/
 1tfDo4uysIrR7frX9ZI0X0A=
X-Google-Smtp-Source: ABdhPJweHlcdWuMQzdxB5rmfs8APfFi+GW/cMHAITZAvIdNpW9I9oqsv3gZnCkzDtnzKBrjZ0gnEKg==
X-Received: by 2002:a50:e1c5:: with SMTP id m5mr10470676edl.47.1591947498509; 
 Fri, 12 Jun 2020 00:38:18 -0700 (PDT)
Received: from pi3 ([194.230.155.184])
 by smtp.googlemail.com with ESMTPSA id i23sm3162911eja.37.2020.06.12.00.38.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 00:38:17 -0700 (PDT)
Date: Fri, 12 Jun 2020 09:38:15 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Subject: Re: [PATCH] i2c: imx: Fix external abort on early interrupt
Message-ID: <20200612073815.GA25803@pi3>
References: <1591796802-23504-1-git-send-email-krzk@kernel.org>
 <20200612055114.alhm2uakoze6epvf@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200612055114.alhm2uakoze6epvf@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_003821_219978_5F2A8D59 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Fugang Duan <B38611@freescale.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Gao Pan <b54642@freescale.com>, Oleksij Rempel <linux@rempel-privat.de>,
 Wolfram Sang <wsa@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, stable@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 12, 2020 at 07:51:14AM +0200, Oleksij Rempel wrote:
> Hi Krzysztof,
> 
> thank you for your patch.
> 
> On Wed, Jun 10, 2020 at 03:46:42PM +0200, Krzysztof Kozlowski wrote:
> > If interrupt comes early (could be triggered with CONFIG_DEBUG_SHIRQ),
> > the i2c_imx_isr() will access registers before the I2C hardware is
> > initialized.  This leads to external abort on non-linefetch on Toradex
> > Colibri VF50 module (with Vybrid VF5xx):
> > 
> >     Unhandled fault: external abort on non-linefetch (0x1008) at 0x8882d003
> >     Internal error: : 1008 [#1] ARM
> >     Modules linked in:
> >     CPU: 0 PID: 1 Comm: swapper Not tainted 5.7.0 #607
> >     Hardware name: Freescale Vybrid VF5xx/VF6xx (Device Tree)
> >       (i2c_imx_isr) from [<8017009c>] (free_irq+0x25c/0x3b0)
> >       (free_irq) from [<805844ec>] (release_nodes+0x178/0x284)
> >       (release_nodes) from [<80580030>] (really_probe+0x10c/0x348)
> >       (really_probe) from [<80580380>] (driver_probe_device+0x60/0x170)
> >       (driver_probe_device) from [<80580630>] (device_driver_attach+0x58/0x60)
> >       (device_driver_attach) from [<805806bc>] (__driver_attach+0x84/0xc0)
> >       (__driver_attach) from [<8057e228>] (bus_for_each_dev+0x68/0xb4)
> >       (bus_for_each_dev) from [<8057f3ec>] (bus_add_driver+0x144/0x1ec)
> >       (bus_add_driver) from [<80581320>] (driver_register+0x78/0x110)
> >       (driver_register) from [<8010213c>] (do_one_initcall+0xa8/0x2f4)
> >       (do_one_initcall) from [<80c0100c>] (kernel_init_freeable+0x178/0x1dc)
> >       (kernel_init_freeable) from [<80807048>] (kernel_init+0x8/0x110)
> >       (kernel_init) from [<80100114>] (ret_from_fork+0x14/0x20)
> > 
> > Additionally, the i2c_imx_isr() could wake up the wait queue
> > (imx_i2c_struct->queue) before its initialization happens.
> > 
> > Fixes: 1c4b6c3bcf30 ("i2c: imx: implement bus recovery")
> > Cc: <stable@vger.kernel.org>
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> 
> I assume register access is aborted, because the IP core clock is not
> enabled. In this case we have bigger problem then just probe.

If by IP core clock you mean the clock which driver is getting, then
answer is no. This clock is enabled.

> Since this driver support runtime power management, the clock will be
> disabled as soon as transfer is done. It means, on shared interrupt, we
> will get in trouble even if there is no active transfer.

The driver's runtime PM plays only with this one clock, so it seems
you meant i2c_imx->clk. It is not this problem.

> 
> So, probably the only way to fix it, is to check in i2c_imx_isr() if the
> HW is expected to be active and register access should be save.

Checking in every interrupt whether the interrupt should be serviced
based on some SW flag because HW might be disabled? That looks unusual,
like a hack.

No, the interrupt should be registered when the driver and some other
pieces of HW are ready to service it.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
