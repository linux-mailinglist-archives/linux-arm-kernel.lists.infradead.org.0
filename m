Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC029AA53
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 10:28:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BltjdmW6kSa1mLZTuV0n0qwtZLG01wsEkrce6aK5DQs=; b=PFs2wm/d34TBkd
	TyUUfbkzp27TGxb+WTdUuU5/cGQO9SFs7Pc5cg6zUEIcfCabWr/58aHQ7x6/097oE4ZXy8JHDhhjp
	POcoke+YHdP5xLkTt9aUAxaJn31HT8ycVmGtV/j5QJYJ1SKpieqRYsC6QH3GmPQ8oU/HZf5IpePkg
	SyhhDPaWVBoGo2YCqwKcsiQcsB+UvXmIaQZu5nRPQAziqUByFwsKtJc0Pd2Ft1Wl4Rv1djMOwuEBi
	lky9VVQHuC4AUPzs0NNPi3Ta/KRPUsMDdjHOj5RTK+2uN3+FR24ROqsVldw6NYeChwwFVmwojVI2j
	D4XXd86CRK/r7aBy9k7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i14wI-0000qB-OC; Fri, 23 Aug 2019 08:28:54 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i14w3-0000pS-Il
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 08:28:40 +0000
Received: by mail-ot1-f67.google.com with SMTP id b1so8055353otp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 01:28:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=I01Rd3eaxSJ78FG7Sav/xOd85SsWSsEzvMhKftmhJLE=;
 b=LE+XnW7TZwy5QS75xiNafjEk58cB/ePr3egwxOy0NF/aXWO/pqjzSJu2agt+vf76++
 rYfpoaf/DvTGHnEX9seANxMA0MiU8/Mc9LpLTo8A70XNcRZPSbejSbZp47UT3HHe858X
 k3wiufaNTPeBG7uuN+SGV4vN6qoviE2zaCpBkpKSJqbv7mV/cgapeImsKpJrQK0Z3aJO
 xXMABLdXQRSTlREJLL1mXfvt0csAQMSq740WmeXLK9LFlbKTTDD7vdTIiqoZUSYvnFkt
 3FQtWUKLHDTcJewa271rYvl3v8TBRyPpJaN1/b0ZTwZyJlkNdPS5WIgYNAIen6rq9nZY
 j0YQ==
X-Gm-Message-State: APjAAAUH0pF/nO9hHaEcYEMMhBkPxZcvAot53Wvfu/W1cKUUApxOBhUb
 BDtX51d+Ekhp8gVW4KHVG4R+84sn1tSQ/c1boz4=
X-Google-Smtp-Source: APXvYqyqdAxGVm2yMUytfNc9WX6a5aL/7hEQvriEj+yfmj8WyLMbwK0No6Navxiw9hVPjb9mfFcw4wZ2uC0dwAqCxI4=
X-Received: by 2002:a9d:61c3:: with SMTP id h3mr3269258otk.39.1566548918554;
 Fri, 23 Aug 2019 01:28:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190819080028.13091-1-geert@linux-m68k.org>
 <CACRpkdb66GWnW6j=G==vAP_79ePyVCL=dHwcM2ui-GRC58eCjg@mail.gmail.com>
In-Reply-To: <CACRpkdb66GWnW6j=G==vAP_79ePyVCL=dHwcM2ui-GRC58eCjg@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 23 Aug 2019 10:28:26 +0200
Message-ID: <CAMuHMdWAQn+GmJ6q_VfGdkMmS7amEaSUndSJ73J616nFKNbfFw@mail.gmail.com>
Subject: Re: [PATCH] soc: ixp4xx: Protect IXP4xx SoC drivers by ARCH_IXP4XX ||
 COMPILE_TEST
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_012839_620882_505AB2B8 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linusw@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Krzysztof Halasa <khalasa@piap.pl>, Imre Kaloz <kaloz@openwrt.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

On Fri, Aug 23, 2019 at 10:26 AM Linus Walleij <linus.walleij@linaro.org> wrote:
> On Mon, Aug 19, 2019 at 10:46 AM Geert Uytterhoeven
> <geert@linux-m68k.org> wrote:
> > The move of the IXP4xx SoC drivers exposed their config options on all
> > platforms.
> >
> > Fix this by wrapping them inside an ARCH_IXP4XX or COMPILE_TEST block.
> >
> > Fixes: fcf2d8978cd538a5 ("ARM: ixp4xx: Move NPE and QMGR to drivers/soc")
> > Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
> > ---
> > v2:
> >   - Rebased on top of commit ec8f24b7faaf3d47 ("treewide: Add SPDX
> >     license identifier - Makefile/Kconfig").
>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>
> Do you want me to also take care of sending this into the ARM SoC tree?

Given you're listed as (one of) the maintainer(s), I think that would make
perfect sense.

Thanks!

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
