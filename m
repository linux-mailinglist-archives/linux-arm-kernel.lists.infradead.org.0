Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D284D1B5064
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 00:35:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Fab4N8HVVaon3gr5ecbqkwvC9cTt97PNpAXwStWPWo=; b=bi+h8UTU8PBZ1M
	7uZXgduBt6iEMQKYWxYwImkuG42KYPbBhVK3M34Bio6AeMWsTxC0fpouKsry+YcOmnqbQork6mB8z
	+Z8NZONK+aUcjJb6LOX2RSUn1V7ZVoR3eXwRXTyDREXFSe/xGiedoL9PWpeCtJykjm781vftvQ4U6
	iwAzOG0wA3bc65JXiIIv3G+DFKKQ/guqtYCc5Q2mu0qMogx6wNnB1kLmeK6nAsElNmELxd0tDYxap
	pAfKucKgfNCQvlgf9fhX8FfcM3whAG46QyZWjy4/xulhBg6d0dh9yed09X61CAAcqP4iUuVBIxP2P
	UyHfPhJpYTBZDpNwUMrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRNxB-0002Yi-9E; Wed, 22 Apr 2020 22:34:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRNx1-0002XM-9N
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 22:34:40 +0000
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
 [209.85.222.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6C7442084D
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 22:34:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587594878;
 bh=SNLJpvjts7rfI5JB0oV0kkk5fsoKCQ2Y16T9IZfyysU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=jfEGWgL3I7QE5dnT9rxy4Uh0or1xw7bOlQluSsJjQV2pMj3+bHmUWPnl+9rV5U8ne
 AAabN2yFwNtBeg1WcMgBiezmMS82oeM0GmunyElkIOERrFQiLYuPSuBFXrffoNjL7a
 dpAAZK6RY5ygJQAYsPKTD8Zwe73PoTVt8hiAjUCE=
Received: by mail-qk1-f169.google.com with SMTP id c63so4368391qke.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 15:34:38 -0700 (PDT)
X-Gm-Message-State: AGi0Pua9zTQyysUyPqGLt0+2ROG2O2ZtjkSI8oahzAu/7sfPeYp6MOV4
 M6nKpLX6+/eCSlsj8yOLv7uvc0buqTD/zUGy7g==
X-Google-Smtp-Source: APiQypKvREuslhX7owSjgWSS+4M/X4oIDaXzXQlnQscoYPYL8BsUg9lRR4iwpRQ3uKjlf98Z0AnWRF3ELD7q9OJL57M=
X-Received: by 2002:a37:61cd:: with SMTP id v196mr559236qkb.393.1587594877490; 
 Wed, 22 Apr 2020 15:34:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-6-robh@kernel.org>
 <158754886772.132238.8648193086417881263@swboyd.mtv.corp.google.com>
In-Reply-To: <158754886772.132238.8648193086417881263@swboyd.mtv.corp.google.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 22 Apr 2020 17:34:26 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLhdpye3z4-mznA+mV6y-mgfDONYZNW+39nZgEXH2_eEw@mail.gmail.com>
Message-ID: <CAL_JsqLhdpye3z4-mznA+mV6y-mgfDONYZNW+39nZgEXH2_eEw@mail.gmail.com>
Subject: Re: [PATCH 05/17] clk: versatile: Kill CONFIG_COMMON_CLK_VERSATILE
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_153439_347392_F3503A51 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Sebastian Reichel <sre@kernel.org>, Will Deacon <will@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 22, 2020 at 4:47 AM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Rob Herring (2020-04-19 10:07:58)
> > diff --git a/drivers/clk/versatile/Kconfig b/drivers/clk/versatile/Kconfig
> > index c2618f1477a2..3465fb291998 100644
> > --- a/drivers/clk/versatile/Kconfig
> > +++ b/drivers/clk/versatile/Kconfig
> > @@ -1,22 +1,14 @@
> >  # SPDX-License-Identifier: GPL-2.0-only
> >  config ICST
> > -       bool
> > -
> > -config COMMON_CLK_VERSATILE
> > -       bool "Clock driver for ARM Reference designs"
> > -       depends on ARCH_INTEGRATOR || ARCH_REALVIEW || \
> > -               ARCH_VERSATILE || ARCH_VEXPRESS || ARM64 || \
> > -               COMPILE_TEST
> > +       bool "Clock driver for ARM Reference designs ICST" if COMPILE_TEST
> >         select REGMAP_MMIO
> >         ---help---
> >           Supports clocking on ARM Reference designs:
> >           - Integrator/AP and Integrator/CP
> >           - RealView PB1176, EB, PB11MP and PBX
> > -         - Versatile Express
> >
> >  config CLK_SP810
> >         bool "Clock driver for ARM SP810 System Controller"
> > -       depends on COMMON_CLK_VERSATILE
>
> Shouldn't this get the depends from COMMON_CLK_VERSATILE so that this
> option isn't exposed unless someone is compile testing or using that
> platform?

IMO, once the dependencies get complicated enough, it's better to just
expose the option. But I could drop just the select and keep the
depends. It's primarily having both that we didn't need.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
