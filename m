Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14EA3F55D7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 21:02:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qbxF/DV5HmJr0hkk8saJ0ctAn/rW7SIIW8oTJaPwOTk=; b=JL4C5Zpqs0Urv3
	w4xnv5nuAWHF4NaoBqtjeU9gV+bKPD2pCc/bfNN5zTKgc6zVPyVFIHBevWD9yOkGjbRYcv9h1hr/E
	jFcd0Ll3z2OaPdqTQ7DT9StXrTPFjKaNYvV+gqyZynwjV9XXamFwMhevhPxw7unu+cPpsoakzdWZh
	cHJbov3b30A2GycjyfsDi1oW3uv177+s6zK8YXp+ELFmvljWvHElQn/rt27nzyXcqV89xuq0Lswwe
	Ru4ax2RPGAvoaT+6KmZrU+XfGJMfdctD1ks76yu5LTBRCBnFHnDDgEDjyhX0lZkYrpTMMRGImkGnQ
	9dDQomFzN2KMiiL4uV/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTAT6-00071o-23; Fri, 08 Nov 2019 20:02:52 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTASx-000715-8H
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 20:02:44 +0000
Received: by mail-il1-x143.google.com with SMTP id s5so6212272iln.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 12:02:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mYf/nyD6rltSVBlJ1rEzYYkSo9gCsLs6tcnYeIJug6o=;
 b=hULN7kc6Ntx0VJDf3/r/Ug9KysUhIby/9+oydfz0Fpzli6ZoQi5By2We85qloWst6B
 KxA7mlmhvc4EGkfx4O5/Rjo3X4lURuasgZxveoz5Rwc7Vu3TEPnThe95kgYLEtF/T9NS
 2d3emfu3AjAaSsvEo1kUuny8w3oBima7EHy72jpIdQJZYvTqOgozrbFgbFfJPN10rZts
 E5uMw+UwJ8+Efan0vuD+xVy7VFvetRj4c7eIuMVTxPNafABcb0qCm6CJX+POcsypAcSO
 I5muVAbCYSUVpAjhtGzYGl88oG9TF1ym7IOsepCWEORdapjFaCV1D2GUqlWBkEtzoWuY
 +eyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mYf/nyD6rltSVBlJ1rEzYYkSo9gCsLs6tcnYeIJug6o=;
 b=KrvH8DugUqgSaLVZHYLPi0aUrNlVaamEoT91tvnmmrt3ryQaxLxcYIm9IBQgrhAx0A
 AEVbxgh4OQ+z+BjW7beUSO9a5q84lr1n/cXiluA1NvtS4O/Z3QqRgjFFpjAo0GhmFJcN
 0hRXM1h1uR4yeqPrI3aKWDNzOBGFpx09ibowL6LEBal0Z3abKtjf+OJ2gyiKlK299O2I
 P0UP9PD1K6/D5SxrV2Yet6S9kUii/UYk/qRUUOB6dMjJbfiMXxKJDsyCdWWD6jMoFIl3
 r8N8CEAJm9chhd7M7gK0GRTVyssT21BFpAXsis9eQYlhB3549O2xhDNPLIltaEsK5B3H
 GPHQ==
X-Gm-Message-State: APjAAAXXqZ52FDGNaWcOoO/AnAT44Rsi0AWPZ6OVIL+5xOtjBGhTvUPc
 UBVFa72S0P8UdQ36XMrgs7UUNXzozDfu4KhpOy8=
X-Google-Smtp-Source: APXvYqwFjCYO6s12BEyvIYjLOyp6JD59hgPbNgslBpXqVMXVo7xFRqxpwstlboDNb3up2WkJsPVmP6NtsZNsXXoTNKo=
X-Received: by 2002:a92:ca8d:: with SMTP id t13mr14120645ilo.58.1573243361073; 
 Fri, 08 Nov 2019 12:02:41 -0800 (PST)
MIME-Version: 1.0
References: <20191007220540.30690-1-aford173@gmail.com>
 <20191022162223.GU5610@atomide.com>
 <CAHCN7xLy975mxX+cm56PMx-TKODEZjYPfMHb=byspKxYXXq7OA@mail.gmail.com>
 <20191022221919.GF5610@atomide.com>
 <1CE62E4E-1A38-448C-9197-8FA16747F942@goldelico.com>
 <20191023143646.GG5610@atomide.com>
In-Reply-To: <20191023143646.GG5610@atomide.com>
From: Adam Ford <aford173@gmail.com>
Date: Fri, 8 Nov 2019 14:02:29 -0600
Message-ID: <CAHCN7xKi4oSoVbRM=-D1s2GnMig8xs6iYNwUWj2Ohfj+1okx=Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] configs: ARM: omap2plus: Enable OMAP3_THERMAL
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_120243_296448_5F513D29 
X-CRM114-Status: GOOD (  34.04  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>, Adam Ford <adam.ford@logicpd.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 9:36 AM Tony Lindgren <tony@atomide.com> wrote:
>
> * H. Nikolaus Schaller <hns@goldelico.com> [191023 04:42]:
> >
> > > Am 23.10.2019 um 00:19 schrieb Tony Lindgren <tony@atomide.com>:
> > >
> > > * Adam Ford <aford173@gmail.com> [191022 19:01]:
> > >> On Tue, Oct 22, 2019 at 11:22 AM Tony Lindgren <tony@atomide.com> wrote:
> > >>>
> > >>> Hi,
> > >>>
> > >>> * Adam Ford <aford173@gmail.com> [191007 15:06]:
> > >>>> The some in the OMAP3 family have a bandgap thermal sensor, but
> > >>>> omap2plus has it disabled.
> > >>>>
> > >>>> This patch enables the OMAP3_THERMAL by default like the rest of
> > >>>> the OMAP family.
> > >>>
> > >>> Looks like this breaks off mode during idle for omap3, and that's
> > >>> probably why it never got enabled. The difference in power
> > >>> consumption during idle is about 7mW vs 32mW for the SoC as
> > >>> measured from torpedo shunt for main_battery_som.
> > >>>
> > >>> I think the right fix might be simply to add handling for
> > >>> CPU_CLUSTER_PM_ENTER to the related thermal driver to disable
> > >>> it during idle like we have for gpio-omap.c for example.
> > >>
> > >> I am not sure I know where to start on fixing that issue.  Would you
> > >> entertain enabling the driver if we set the device tree to 'disabled'
> > >> by default?  This way if people want to to use it, it can be enabled
> > >> on a per-device option.  Once the power stuff gets resolved, we might
> > >> be able to enable it by default.  For people who are planning on using
> > >> the DM3730 @ 1GHz in high temp environments, I am not sure they'll
> > >> care about low power.
> > >
> > > They should both work fine together though. They are not mutually
> > > exclusive features.
> > >
> > >> I'll try to look into it when I have time, but I was hoping a
> > >> compromise might be a reasonable work-around.
> > >
> > > It should be hopefully a trivial fix.. I have not looked at the
> > > driver code though.
> >
> > If I am taken right, it is the drivers/thermal/ti-soc-thermal/ti-*.c
> > which is a common driver for omap3, omap4, omap5. They only differ
> > in the thermal data and which registers and bits are used to access
> > the ADC.
>
> Yes so it seems. Enabling OMAP3_THERMAL adds support to
> of_ti_bandgap_match[] for omap3 and causes the issue.
>
> > So is this problem with off mode also known for omap4 and omap5?
>
> Probably. But we don't have off mode working for omap4, and
> it cannot be used for omap5 AFAIK.
>
> My guess is we need to call clk_disable() and call
> ti_bandgap_save_ctxt() on CPU_CLUSTER_PM_ENTER similar to
> what ti_bandgap_suspend does. And then restore it on
> CPU_CLUSTER_PM_EXIT.
>
> There's a similar example already in gpio_omap_cpu_notifier().
> Not sure if there is some related errata to deal with too,
> probably the old Nokia n900 or n9 would provide some hints
> on what exactly needs to be done.

I 'think' I have a patch ready that does what you're asking, but I
will fully admit that I don't completely grasp what's going on.

I'll submit it as an RFC, but I am not even sure I understand what to
put into the description, so if you're OK with reviewing the RFC, feel
free to mark up the actual commit message as well.

From what I can see, the changes haven't negatively impact stuff. I
didn't see the power consumption go up before, so I am not sure I can
replicate your findings.

It'll be posted shortly.

adam
>
> Regards,
>
> Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
