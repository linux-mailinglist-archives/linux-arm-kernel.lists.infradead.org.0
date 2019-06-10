Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C6D3B30C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 12:20:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d1U2Is+0baZh6FnmYwYilfdOxl11XtzEqovbpowXzDo=; b=nd0wB27LGKGHjB
	m8ntISSdo5DWCGz1W/zPhQ9GQxXzvDOg4D/DyWOLea4TDgDHC7f56vbrBhQbtWbvX9IrvonpGhGiv
	cJZdJUVCbsQF7lNgI64ubttDjfM98Z45SS+z8nM+H6Jy8hs7K4uzQ5Ndt8kq0/ryksr8jc90f5IcV
	sbK1goJnsQXvokadMeVVjAwIi6HyT7p2jXSLU+n59SGcuiK68Da3NX6m7Z5ujoNNVg5Im6feHAMXO
	HetqPeYdMcUE+bEr8quOCf2Ljeuyej/conTI9DVkprk9xDAoRhV/xUkTa1FNLNItvbshUw3wfP1Hq
	FhhFXKVXBRA2RNvtHD/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haHQ4-0002h4-Ab; Mon, 10 Jun 2019 10:20:52 +0000
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haHPw-0002gR-Oc
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 10:20:46 +0000
Received: by mail-it1-x142.google.com with SMTP id i21so12358212ita.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 03:20:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TD9nldu+Dkg66DtJL22FIFPPAtJrtLwLTy4JIGvUcQ0=;
 b=xGOZzIJLwgDnCGn+KlPHKMf5rhw1h6HPB+95GrnYpcFyME3d6inxxLyUdmnkUq34J+
 zIomGN+MLBR/oBWOe0ulrBE7Z4E32pfkipA+UvLZ1HSdKDy8GC6l8Mp9wJ803ogYGbAJ
 XkKTMgVLsEwE6FpWaaDwbvNxWnbiruke6qUOyB0ejNsZuBRBi3b43yVy4fvDCb91ewO2
 Zjef6VagFWfnsI0m34DKo41NNnLdVP9/Dyh1VbdA8PowiwZdyPE/WzmPhq03ic8Wi1/B
 bsA1uFFW4PNjaH9sgcjjZ0hpbNNQwDPdUAJ2P909ro09PZSJ1gys4wpgtKshS4+ctbrH
 zTDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TD9nldu+Dkg66DtJL22FIFPPAtJrtLwLTy4JIGvUcQ0=;
 b=Ew7s7xjdSXJk47sAwOSW5SRhUdtz+BKwX7iLNM9FpwmbuwM+KpIZK6VEFD80tEha8e
 vziDurjGGvlpRphnTmx1HA/XQoLcXKtlKxc2oubKnLqnx5yXXkXCfd1JqxyXAquFzzf/
 OZxMVMQRIDUZSF8IUynsI9klLvtp8p/x6HNh6MvkvCJe80mYNC5ASfCjKJ3l321z06OU
 P+npQveCUCQI96U9x8qYNi7mnFB5GtBCvG/Vr5gRzKQFhDa1gEdZewBJxt6BdQtWdUul
 ZA8Rd/jAFwrOueVzhs9+sLOSP1Z/fDDWEPmfQsqOkvDkNsOzduxMluKmxB9xjPwOgHyi
 Fh9w==
X-Gm-Message-State: APjAAAW/cYxQr4FYiWjpL6vxFos+RFHQYX0YTeqNeBNlLFxINC20bqOb
 TnrTsTKOFAh5bGk7v9WUDXkiOdA1LMs4PNrXtKAYGw==
X-Google-Smtp-Source: APXvYqz8+9gsk4GZjuP3WNO3dIJxKVqLA91XwEqoIRkCKyS++7skP/Y8F+BITEkNQ+1mKDd2q8VehsdTmYGSs98dr0s=
X-Received: by 2002:a05:660c:44a:: with SMTP id
 d10mr12222840itl.153.1560162043688; 
 Mon, 10 Jun 2019 03:20:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190610084213.1052-1-lee.jones@linaro.org>
 <20190610084213.1052-4-lee.jones@linaro.org>
 <CAKv+Gu_s7i8JC4cv-dJMvm1_0cGzzhzf+Dxu0rxcF7iugF=vHg@mail.gmail.com>
 <20190610085542.GL4797@dell>
 <CAKv+Gu8rhxciy1cOG3B3pda9+p4R_COGrrqa7S_Rj9y2HeBxYw@mail.gmail.com>
 <20190610092245.GN4797@dell>
In-Reply-To: <20190610092245.GN4797@dell>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 10 Jun 2019 12:20:30 +0200
Message-ID: <CAKv+Gu94ES4_SjkmAMaAgwCtsx_YmOn0=yaeM9GFjPCCxrANoQ@mail.gmail.com>
Subject: Re: [PATCH v3 4/8] pinctrl: qcom: sdm845: Provide ACPI support
To: Lee Jones <lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_032044_804040_D6A73D9F 
X-CRM114-Status: GOOD (  25.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
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
Cc: balbi@kernel.org, wsa+renesas@sang-engineering.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-usb <linux-usb@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Brown <david.brown@linaro.org>, alokc@codeaurora.org,
 linux-i2c <linux-i2c@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Andy Gross <andy.gross@linaro.org>, Jeffrey Hugo <jlhugo@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 10 Jun 2019 at 11:22, Lee Jones <lee.jones@linaro.org> wrote:
>
> On Mon, 10 Jun 2019, Ard Biesheuvel wrote:
>
> > On Mon, 10 Jun 2019 at 10:55, Lee Jones <lee.jones@linaro.org> wrote:
> > >
> > > On Mon, 10 Jun 2019, Ard Biesheuvel wrote:
> > >
> > > > On Mon, 10 Jun 2019 at 10:42, Lee Jones <lee.jones@linaro.org> wrote:
> > > > >
> > > > > This patch provides basic support for booting with ACPI instead
> > > > > of the currently supported Device Tree.  When doing so there are a
> > > > > couple of differences which we need to taken into consideration.
> > > > >
> > > > > Firstly, the SDM850 ACPI tables omit information pertaining to the
> > > > > 4 reserved GPIOs on the platform.  If Linux attempts to touch/
> > > > > initialise any of these lines, the firmware will restart the
> > > > > platform.
> > > > >
> > > > > Secondly, when booting with ACPI, it is expected that the firmware
> > > > > will set-up things like; Regulators, Clocks, Pin Functions, etc in
> > > > > their ideal configuration.  Thus, the possible Pin Functions
> > > > > available to this platform are not advertised when providing the
> > > > > higher GPIOD/Pinctrl APIs with pin information.
> > > > >
> > > > > Signed-off-by: Lee Jones <lee.jones@linaro.org>
> > > >
> > > > For the ACPI probing boilerplate:
> > > > Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > > >
> > > > *However*, I really don't like hardcoding reserved GPIOs like this.
> > > > What guarantee do we have that each and every ACPI system
> > > > incorporating the QCOM0217 device has the exact same list of reserved
> > > > GPIOs?
> > >
> > > This is SDM845 specific, so the chances are reduced.
> >
> > You don't know that.
>
> All the evidence I have to hand tells me that this is the case.  Even
> on very closely related variants Qualcomm uses different H/W blocks
> for GPIO.
>
> > > However, if another SDM845 variant does crop up, also lacking the
> > > "gpios" property, we will have to find another differentiating factor
> > > between them and conduct some matching.  What else can you do with
> > > platforms supporting non-complete/non-forthcoming ACPI tables?
> > >
> >
> > Either we don't touch any pins at all if they are not referenced
> > explicitly anywhere
>
> I guess this would require an API change, which is out of scope of
> this patch-set.  Happy to change this implementation later if the
> subsystem allows for it though.
>
> > or we parse the PEP tables, which seem to cover
> > some of this information (if Bjorn's analysis is correct)
>
> Maybe someone can conduct some further work on this when we start to
> enable or write a driver for the PEP (Windows-compatible System Power
> Management Controller).  The tables for the PEP look pretty complex,
> so this task would be extremely difficult if not impossible without
> Qualcomm's help.  I wouldn't even know how to extrapolate this
> information from the tables.
>
> > (if Bjorn's analysis is correct)
>
> Bjorn is about to provide his Reviewed-by for this implementation.
>

If Bjorn can live with it, then so can I.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
