Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F0C1B12D4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 19:18:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K6FUVxLW1APCb0VIAIDCjqDqNbXD82Pr2NGDPxlrUdY=; b=nowu6cPVTD5nLa
	Yy9dBuh4jz9R5hjqDrOLqfO2JnQvjYSWNYe7TDrNXc92yoBh0HCHbABd13st2QTnnZaR+dCxZZfB+
	S+OB+Mhcuo5R9/hJe1C++dN9NkX4agj8DUGJVSG2alFFptmMb91V9tSdT46Fb3wj+hGFF0UVw2r8a
	wT4WzmEUNuvkAL8zECM/obQ4B4vHZ+omTE81G9V24RTtovPAl5nZrHp/ZMVMwtBrLiSi3zR2q8Dvd
	+8z9Aof68nIAScUqkLhxlR+27k2nYqRl+kLTmV1FACZT16njOKB4NEjyb8Flyo2ymZuafdEq/7dLR
	ef22+6GWproJSKhWFEPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQa4E-0002ff-90; Mon, 20 Apr 2020 17:18:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQa3p-0002Ri-0b
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 17:18:22 +0000
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
 [209.85.222.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B86C8221F4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 17:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587403099;
 bh=MrAH2VsY+TtODBX+fkAcZq5uw1kTGKG8R7HORSOSQ/0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=JApMb1e4vC54i64Ik32l+IgfX1JaXzs+OgggR9IYG6T8OqAzdISMsR3/gqcukApT9
 Ej5J3hNwvzi8GEfCZKycTuZ3e48jJoxHFMy0KKji32mE2H1mCcKP9EemAHgt5/7/ZF
 04AHn/xCJO8E6lre5jdeyufKMEsTNuPdwWLdB/uE=
Received: by mail-qk1-f180.google.com with SMTP id s63so11487233qke.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 10:18:19 -0700 (PDT)
X-Gm-Message-State: AGi0PubgxpeJh0uqMW603STtQyqol2TMKDIkDaQJc8EAinnaNxqCo0Z6
 apzcOYzmfeBy889qEoL8wD+lHQ+xg8fusPz40w==
X-Google-Smtp-Source: APiQypJNfkN/fMd0KGM+5Vg1LBXgehBt4JTvfg6zC0uiCkKgQlI0eLwWlHUfc/lg4IOOlDLeLOR+fGB8lSNqdL7SWWM=
X-Received: by 2002:a37:c43:: with SMTP id 64mr15949855qkm.119.1587403098789; 
 Mon, 20 Apr 2020 10:18:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-9-robh@kernel.org>
 <CAK8P3a0YmD6Ay6t=Wxmugvg=YM0fCtetgnqz1vTYs1rFD-9TFg@mail.gmail.com>
In-Reply-To: <CAK8P3a0YmD6Ay6t=Wxmugvg=YM0fCtetgnqz1vTYs1rFD-9TFg@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 20 Apr 2020 12:18:06 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLZ4S=no9hPQO+jtwfd7E7HrHm8dAt9jZ3eh96dYCcy-g@mail.gmail.com>
Message-ID: <CAL_JsqLZ4S=no9hPQO+jtwfd7E7HrHm8dAt9jZ3eh96dYCcy-g@mail.gmail.com>
Subject: Re: [PATCH 08/17] clk: vexpress-osc: Support building as a module
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_101821_122771_0AF27BB9 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Will Deacon <will@kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 20, 2020 at 10:28 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Sun, Apr 19, 2020 at 7:08 PM Rob Herring <robh@kernel.org> wrote:
> >
> > Enable building the vexpress-osc clock driver as a module.
>
> >
> >  config CLK_VEXPRESS_OSC
> > -       bool "Clock driver for Versatile Express OSC clock generators"
> > -       depends on VEXPRESS_CONFIG || COMPILE_TEST
> > +       tristate "Clock driver for Versatile Express OSC clock generators"
> > +       depends on VEXPRESS_CONFIG
>
> Why do you remove the "|| COMPILE_TEST" here?

Looks like a rebasing error. I only added it in patch 5.

It has to depend on VEXPRESS_CONFIG because
devm_regmap_init_vexpress_config doesn't have an empty function.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
