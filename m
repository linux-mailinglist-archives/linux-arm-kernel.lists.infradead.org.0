Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6D8B984E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 22:12:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4eecCMiKhCvX/UxQBqGAAg4rTxmXyhwuxubCNCCBosQ=; b=uiXo6Uphm9ycNo
	lwGjdSWnkemaNx4nL+xHy77jsozqGluSwc/lV76xop/F4Y3NJdlAb8xkFUSiIdEUnsuFsHb0jEJEJ
	V7bQfIFD8+M5+362/ijaDhKHHrRpYpaH+lzGMAjam3FVKLVZKdzjTT10qxwWugyYbnD+x1qY6i7Pc
	XQSzpaP9aYmPkURWR4A842dIdkfDbFproOcUxDtJOje5OrpXA2yVEBg0ZPmDuFuZVAafv4zUvtPjn
	UTSvsRXUzHG5CEKLPfhraZWtN365g77eL1p3rLIN79tSOFoFDZp3zNj52wdjCTeIA6Q6VrNrNSFBK
	ehUtzATfz3WnjUnMEXhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBPGY-000220-G8; Fri, 20 Sep 2019 20:12:30 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBPGR-00021H-B9
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 20:12:24 +0000
Received: by mail-qt1-x841.google.com with SMTP id d2so10126429qtr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Sep 2019 13:12:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=t1DVA3vKOlm/AZ8L4zulEE1hMXuljgOJAsGAyVpUvUI=;
 b=YUxS8rzK+f0gbi1Cu0GWV0MhZV0YpDvHEnfJ4R8mcMrXdyvN91fGs0GZgDxvaGqP/m
 KpoMUYs+uf0bq4QbaK9tVHYnq16V1te91foBq4Qnk6EdJi9dXmaVjil+q5LdeIdWgppR
 UujYQE/f8DTiORI37BMmMNemWvW1tl3Vf5qTRc/feiWdPr1yMbJkG8AwT+fjyt4M67jL
 7btY37HOE/cfp8/BA1Rjf11cLr9Yv1P76R2jUQNTph0AdSUCDPBvn+Ncs33PCrsiqGEf
 Zdm0/Ik8AUEMg9tShfWSUnr6VwNcKH3rC/IuxqZ9okbs7uRHiOAzAMrjb5HDyAekYvOl
 SmFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t1DVA3vKOlm/AZ8L4zulEE1hMXuljgOJAsGAyVpUvUI=;
 b=PLvPCPvbxp9QFdwrsmR9qQhsPI7CUS5iYA8ScvsTA8Y1swDFczq5iwnrzDbhkMaSVO
 1pNh5CkxrL3xlLBTlsaevO6Sj9Adjh99So4Pim4+BCZ/IOblK6J9oLa1XLQx3jwND6S/
 lJpR0aZ85038rcDkfJLTSR63+ph6pe8cNg85A7x72P9LzywOgBnMSEeM0V+5dJ8UUyPa
 iXDgo9LcJrUZVPyexS3NExHms2Db2z5PGm9OZbnjffpIuu6ufxf4ZXePOzXF3HuO12KA
 qRi4NSMUVStbqRBY5xA3mqpSREXIBI3LFg5AhODPI87AYDUzl9Kx6DkXjNK1dNJz2AO2
 v5dw==
X-Gm-Message-State: APjAAAVihlC0jSlsGmg3Dl8lwPHyjPRC5i9vaAZUP9fyhKhUmb4C1YYN
 BSTQrn0DHi9iyNFgze2CJwgRMSxC12/k4LxWwevHXw==
X-Google-Smtp-Source: APXvYqz/pNz6cRXqH8bTMfzVNZ+nlOMnGpp+f52AX7IwmjRsndWr0wWX0fLW2Hnxw2cuDZB95eiTwEgdZSrpMiawh30=
X-Received: by 2002:ad4:44e2:: with SMTP id p2mr14478831qvt.126.1569010340743; 
 Fri, 20 Sep 2019 13:12:20 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1568239378.git.amit.kucheria@linaro.org>
 <8f539b28c25d22b8f515c131cd6b24c309f7ca90.1568239378.git.amit.kucheria@linaro.org>
 <20190913101239.GB2559@bogus>
In-Reply-To: <20190913101239.GB2559@bogus>
From: Amit Kucheria <amit.kucheria@linaro.org>
Date: Fri, 20 Sep 2019 13:12:09 -0700
Message-ID: <CAP245DUykhQ0OCs=BvM6nYD63NoBndn=vGUFEJ=DK7tEXp_=KQ@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: Kconfig: Fix VEXPRESS driver dependencies
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_131223_396635_3822B9F6 
X-CRM114-Status: GOOD (  19.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Liam Girdwood <lgirdwood@gmail.com>, Stephen Boyd <sboyd@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, arm-soc <arm@kernel.org>,
 Mark Brown <broonie@kernel.org>, Sebastian Reichel <sre@kernel.org>,
 Will Deacon <will@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Lists LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 13, 2019 at 3:12 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Thu, Sep 12, 2019 at 03:48:47AM +0530, Amit Kucheria wrote:
> > Push various VEXPRESS drivers behind ARCH_VEXPRESS dependency so that it
> > doesn't get enabled by default on other platforms.
> >
>
> I couldn't understand the motivation for these changes from the cover letter.

Yes, the cover letter for this series needs to be a lot better. Sorry.
In summary, I found a bunch of drivers in defconfig that were getting
called in early_initcall and core_initcall even when the platform or
COMPILE_TEST was not enabled. So I was just trying to ring fence some
of those drivers as a proof of concept to see if these changes were
acceptable upstream.

Let me try again with a better cover letter and using the pattern Arnd
suggested elsewhere.

> > Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
> > ---
> >  drivers/bus/Kconfig           | 2 +-
> >  drivers/clk/versatile/Kconfig | 4 ++--
> >  2 files changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/bus/Kconfig b/drivers/bus/Kconfig
> > index d80e8d70bf10..b2b1beee9953 100644
> > --- a/drivers/bus/Kconfig
> > +++ b/drivers/bus/Kconfig
> > @@ -166,7 +166,7 @@ config UNIPHIER_SYSTEM_BUS
> >
> >  config VEXPRESS_CONFIG
> >       bool "Versatile Express configuration bus"
> > -     default y if ARCH_VEXPRESS
> > +     depends on ARCH_VEXPRESS
> >       depends on ARM || ARM64
> >       depends on OF
> >       select REGMAP
> > diff --git a/drivers/clk/versatile/Kconfig b/drivers/clk/versatile/Kconfig
> > index ac766855ba16..826750292c1e 100644
> > --- a/drivers/clk/versatile/Kconfig
> > +++ b/drivers/clk/versatile/Kconfig
> > @@ -5,8 +5,8 @@ config ICST
> >  config COMMON_CLK_VERSATILE
> >       bool "Clock driver for ARM Reference designs"
> >       depends on ARCH_INTEGRATOR || ARCH_REALVIEW || \
> > -             ARCH_VERSATILE || ARCH_VEXPRESS || ARM64 || \
> > -             COMPILE_TEST
> > +             ARCH_VERSATILE || ARCH_VEXPRESS || COMPILE_TEST
> > +     depends on ARM64
>
> This will break 32-bit platforms.
>
> --
> Regards,
> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
