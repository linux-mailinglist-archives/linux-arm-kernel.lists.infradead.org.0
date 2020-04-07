Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8539B1A1201
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 18:46:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RY5Z0KSjl/otFI6n5ocoX9mUH0ZO4wWpONDkyND06KE=; b=Mr2DsKZm052LtE
	Kwf475C/AweyvO4DzMQW3gG46hpqWwqsg4fMD6HCH9yPDUY9PszY2vg6WTNsjT7L8ZPsgHZHc26HC
	CV0RHSvUPXhmPEnhlHxhFBQnm1lVXsRVMUruIJ2O5gITwjOkyOj1sW2xKiuxmGNpfh1+YK7S81bR1
	N5tVLfFicEHSh+LOauweDOuN+B6J1Wf+xT4sDVdQT/jik8CZhPXcuSbM+l/eambpXwQRKX9bmXzBG
	B3lFZbzMbKnE2NmLDiJNPlyfFB/HWd6RvUFs6wDhk5ua+qe/w8uMmfcE4pVEM6MnV9VQesp9FOdyR
	tmAhayzIxuYPSmm2Z2Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLrMu-0004Yh-1p; Tue, 07 Apr 2020 16:46:32 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLrMl-0004Y4-TQ
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 16:46:25 +0000
Received: by mail-ed1-x541.google.com with SMTP id cw6so4854846edb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 09:46:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BMeg8/u+aAWyp+BW+T1dMXhjJgPZOJD50ZkqHJzzRoE=;
 b=f5RWEbf+E0nWNJpvEWdEO8ocghgxfw4wvjDh9gLkUt0zvFUzMbiSxfotaP5774Ypuf
 lTmNnoMP6E7bkI5RDgeZqPaGu2ZZNhCC4a9oR8gdn1sr0AhsRh5VOEIieUEMYhlKwF02
 cG9muzV5Wbm2HWH/7PNjnhkB+sSrU9DCGcGwU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BMeg8/u+aAWyp+BW+T1dMXhjJgPZOJD50ZkqHJzzRoE=;
 b=JmGOvOBjdLQUI1iVkoWI10aPzn4z+FZh89tJ4XCi39eZ7PFPs/8opbPaJXiLQ+nVrN
 5WCBH3zKHv8emGjN5kjIRRMvv7Sy6F7q7pOOPLOPgfjLOnIDv7KSdUcXSCh/mH+FYrPY
 UVIuilOPWip502nynzNRjAmizaIn5z+sI54tvi2UbFhrOwQP/ICvnn5QqMO+nJNjf5e7
 aRJwkpwF516AfsKQW4xa0CaTAgS58+Um1EhbkY7AsIZ1bZthtZgmwvShOy3LWk2x7Nfx
 hq7Vlc2NTjouSZN8/L2Vnd84W7iTPzMjFmb5QZU6nVKWc2CRyoswMmjJuSVJnorgWTKY
 IP5g==
X-Gm-Message-State: AGi0PuYH2DQO5NZtUviHuvhDK9/u/dHhWpevbdiMQ0Vm4IwOiBqmu3AB
 GJObkbXGIbfZwUqUBu6WBWs9NLqTbWOcwg==
X-Google-Smtp-Source: APiQypLNqq/j+NawRA4/KLDXiW9RWthasuBX359tLfoI6S/+MH7jdV9U/nXjYdgJQ1b5TB3NHvn0tg==
X-Received: by 2002:a05:6402:48b:: with SMTP id
 k11mr2882558edv.34.1586277980943; 
 Tue, 07 Apr 2020 09:46:20 -0700 (PDT)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com.
 [209.85.128.44])
 by smtp.gmail.com with ESMTPSA id t3sm915190ejr.6.2020.04.07.09.46.19
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Apr 2020 09:46:20 -0700 (PDT)
Received: by mail-wm1-f44.google.com with SMTP id d77so2424651wmd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 09:46:19 -0700 (PDT)
X-Received: by 2002:a1c:a913:: with SMTP id s19mr215349wme.134.1586277979069; 
 Tue, 07 Apr 2020 09:46:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200331133346.372517-2-robert.foss@linaro.org>
 <20200401080705.j4goeqcqhoswhx4u@gilmour.lan>
 <CAG3jFyvUd08U9yNVPUD9Y=nd5Xpcx34GcHJRhtvAAycoq3qimg@mail.gmail.com>
 <20200403232736.GA6127@valkosipuli.retiisi.org.uk>
 <20200404093446.vuvwrhn5436h4d3s@gilmour.lan>
 <20200406083506.GE6127@valkosipuli.retiisi.org.uk>
 <20200407083647.4mocdl7aqa3x737q@gilmour.lan>
 <CAG3jFyvd32pWppubMoOoyH9eO2XLjwUXMC7p4xtv8m+JkPv6vw@mail.gmail.com>
 <20200407123232.ktvaifhqntgzvkap@gilmour.lan>
 <CAG3jFysSrZJRE2TvL0bWoRFNnscgDGj8yGr-iwWBm4=1wMbJ9A@mail.gmail.com>
 <20200407163916.GL6127@valkosipuli.retiisi.org.uk>
In-Reply-To: <20200407163916.GL6127@valkosipuli.retiisi.org.uk>
From: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 7 Apr 2020 18:46:06 +0200
X-Gmail-Original-Message-ID: <CAAFQd5BGFB5znb9QyyPVL47kc809Ktu33bssvqg5eA-WwvMgOw@mail.gmail.com>
Message-ID: <CAAFQd5BGFB5znb9QyyPVL47kc809Ktu33bssvqg5eA-WwvMgOw@mail.gmail.com>
Subject: Re: [PATCH v6 1/3] media: dt-bindings: ov8856: Document YAML bindings
To: Sakari Ailus <sakari.ailus@iki.fi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_094623_951916_F63C6431 
X-CRM114-Status: GOOD (  29.03  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Robert Foss <robert.foss@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Maxime Ripard <maxime@cerno.tech>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 7, 2020 at 6:40 PM Sakari Ailus <sakari.ailus@iki.fi> wrote:
>
> On Tue, Apr 07, 2020 at 05:47:41PM +0200, Robert Foss wrote:
> > On Tue, 7 Apr 2020 at 14:32, Maxime Ripard <maxime@cerno.tech> wrote:
> > >
> > > Hi Robert,
> > >
> > > On Tue, Apr 07, 2020 at 01:29:05PM +0200, Robert Foss wrote:
> > > > On Tue, 7 Apr 2020 at 10:36, Maxime Ripard <maxime@cerno.tech> wrote:
> > > > > On Mon, Apr 06, 2020 at 11:35:07AM +0300, Sakari Ailus wrote:
> > > > > > > But that 19.2MHz is not a limitation of the device itself, it's a
> > > > > > > limitation of our implementation, so we can instead implement
> > > > > > > something equivalent in Linux using a clk_set_rate to 19.2MHz (to make
> > > > > > > sure that our parent clock is configured at the right rate) and the
> > > > > > > clk_get_rate and compare that to 19.2MHz (to make sure that it's not
> > > > > > > been rounded too far apart from the frequency we expect).
> > > > > > >
> > > > > > > This is doing exactly the same thing, except that we don't encode our
> > > > > > > implementation limitations in the DT, but in the driver instead.
> > > > > >
> > > > > > What I really wanted to say that a driver that doesn't get the clock
> > > > > > frequency from DT but still sets that frequency is broken.
> > > > > >
> > > > > > This frequency is highly system specific, and in many cases only a certain
> > > > > > frequency is usable, for a few reasons: On many SoCs, not all common
> > > > > > frequencies can be used (e.g. 9,6 MHz, 19,2 MHz and 24 MHz; while others
> > > > > > are being used as well), and then that frequency affects the usable CSI-2
> > > > > > bus frequencies directly --- and of those, only safe, known-good ones
> > > > > > should be used. IOW, getting the external clock frequency wrong typically
> > > > > > has an effect that that none of the known-good CSI-2 bus clock frequencies
> > > > > > are available.
> > > > >
> > > > > So clock-frequency is not about the "Frequency of the xvclk clock in
> > > > > Hertz", but the frequency at which that clock must run on this
> > > > > particular SoC / board to be functional?
> > > > >
> > > > > If so, then yeah, we should definitely keep it, but the documentation
> > > > > of the binding should be made clearer as well.
> > > >
> > > > Alright so, let me summarise the desired approach then.
> > >
> > > There's a separate discussion on the same topic here:
> > > https://lore.kernel.org/linux-media/20200407122106.GD4751@pendragon.ideasonboard.com/
> >
> > Thanks for the link.
> >
> > >
> > > > ACPI:
> > > >   - Fetch the "clock-frequency" property
> > > >   - Verify it to be 19.2Mhz
> > > >
> > > > DT:
> > > >   - Fetch the "clock-frequency" property
> > > >   - Verify it to be 19.2Mhz
> > > >   - Get xvclk clock
> > > >   - Get xvclk clock rate
> > > >   - Verify xvclk clock rate to be 19.2Mhz
> > >
> > > The current status is that you should
> > > 's/clock-frequency/link-frequencies/', and in order to replace
> > > assigned-clock-rates, you'll want to have a clk_set_rate to 19.2MHz
> > > between steps 3 and 4
> >
> > Would we want to 's/clock-frequency/link-frequencies/' for ACPI too?
> > I imagine that would cause some breakage.
>
> It would, yes, and it would be no more correct on DT either.
>
> There are basically two possibilities here; either use the clock-frequency
> property and set the frequency, or rely on assigned-clock-rates, and get
> the frequency instead.
>
> The latter, while I understand it is generally preferred, comes with having
> to figure out the register list set that closest matches the frequency
> obtained. The former generally gets around this silently by the clock
> driver setting the closest frequency it can support.

Wouldn't the former actually cause problems, because the closest
frequency the clock driver can support could be pretty far from the
one requested? (E.g. 19.2 MHz vs 24 MHz) The driver needs to check the
resulting frequency anyway.

Perhaps a simplified approach of rounding the result of clk_get_rate()
to a multiple of 100 KHz and comparing it to the hardcoded value would
be enough in practice?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
