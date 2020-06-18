Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0444C1FEDA1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 10:30:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HpnAOe0NhI9GnvBtK/TIorH+76BP12u3vSfo0+Bhnoo=; b=ONpt5UoLqRuN21
	/EypXpGmIOr7GHZYG6qL2ERsmbgiuWYBoEqy8UN7OkZTAsdDxtsENUuN1xm2ggODItXz25Wz7q0aE
	V4iQ9lrpOfaSxtTQuw/YwRD3FSaSC0UsazxYBC07hv0l6b40zixOYkBR3ecLKEghW4FoRbkolA280
	KJaYCtsOzWA0LoZem295FMAiUTsRbsSGUZv3OuIPg6S1OZN6TgyNAggaNTlwwwvqQZCdLtZIRGiRn
	Uoxn2iU/CphtGMrZmcJwndfin58NDstfjvPSspGg0FJuRCV+A79SvvBJeMEP70f5geHdGwwqonYAS
	YleFUM1Ih7umKvcSW2xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlpvp-0003pr-1U; Thu, 18 Jun 2020 08:29:57 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlpvg-0003pX-WF
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 08:29:50 +0000
Received: by mail-pf1-x444.google.com with SMTP id x22so2469583pfn.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 01:29:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PNkYlKMTKD0nY2ft6SL6vkNJkTU4JHHeRX00KlE38Uo=;
 b=HC7oJmceAMFXDvqAs302XPmSJcwa3sGH3SYfkaWHVROr67UEl1LHSP+1zz5ohCpKEU
 DXSohxPyxYCx1febPMLyT7ZdedQLwMtJRuFXKQdn0W5kE8uyfz5E1yD5nP2qxRqqydYq
 bN2HzPqScZO16D6AwcuY28AHCXqxkDTruXRiJk1BOOCk7QqyKJlwqdqrlAmxda6bf84D
 tRQ890EH6o+jtBCH+mgM7S2AwHfxhKy53lsKi/HMYSyr3UXz68maQUKZJcLSUoj2MPpB
 HqBn+VeT5OuFU6rVR0CNyJLaw0MLq8XJr2vDw/NkD48BENqI5SpzF5lwsjOnDXzYatfE
 4qSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PNkYlKMTKD0nY2ft6SL6vkNJkTU4JHHeRX00KlE38Uo=;
 b=XyykPYRRGlvpzzr28FnrW1ALwCT2/C+8f2vUHvf/5L51NCvmU73adoLJ5eu7PHrvYo
 g4i5iopYsYnSvtf/OrABivWTnIqnujNnWikZE3tWkDwEnyGkidmoeAv2ZIhkilPBBhkh
 3LWsnHYDiq0OJAoxyNuuul+3cdIMVBhHHGqoqy4QN1j5jZ6WVC57sZ88Nv9iSLmYvGgy
 Foj7lG//d/bNmevMi61YAenBiRYvqqDh64K8Xi676VaFB6HZtckJ67AdWMSFYH1fP6s3
 rNdrCiRXbVO6XwEbqQijnGUZ6EgvEjrC7V2wx8Ql5+UA8kgKkEhXR9Q35j0eNDUmZSbp
 DKnA==
X-Gm-Message-State: AOAM533Q0aQ8NwFslyiIMBH5/s1SJTfHVbHGdbTkK/rB8d3czWAIQ4tM
 4kj77y02LmR6HKTsbxgndyhNSiN4cOD18K+Qq9U=
X-Google-Smtp-Source: ABdhPJxo1rTNkcU25bfjIo8wr+8okh95vw5wNnt/QQ56aTnDHxWEAgUSUGoJhH7bRhnRRZLlmczzNLCm8ubnvibA9MQ=
X-Received: by 2002:a62:3103:: with SMTP id x3mr2561582pfx.130.1592468988208; 
 Thu, 18 Jun 2020 01:29:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200617224813.23853-1-Sergey.Semin@baikalelectronics.ru>
 <20200617224813.23853-4-Sergey.Semin@baikalelectronics.ru>
In-Reply-To: <20200617224813.23853-4-Sergey.Semin@baikalelectronics.ru>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 18 Jun 2020 11:29:36 +0300
Message-ID: <CAHp75VcoV+aC9H5TYAxQX2O9HLz==xnts9bcKKQBcdtvohpi6g@mail.gmail.com>
Subject: Re: [PATCH v6 3/3] serial: 8250_dw: Fix common clocks usage race
 condition
To: Serge Semin <Sergey.Semin@baikalelectronics.ru>,
 Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_012949_054958_904848DA 
X-CRM114-Status: GOOD (  19.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
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
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-mips@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>, Serge Semin <fancer.lancer@gmail.com>,
 Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
 Maxime Ripard <mripard@kernel.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Will Deacon <will@kernel.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 18, 2020 at 1:50 AM Serge Semin
<Sergey.Semin@baikalelectronics.ru> wrote:
>
> The race condition may happen if the UART reference clock is shared with
> some other device (on Baikal-T1 SoC it's another DW UART port). In this
> case if that device changes the clock rate while serial console is using
> it the DW 8250 UART port might not only end up with an invalid uartclk
> value saved, but may also experience a distorted output data since
> baud-clock could have been changed. In order to fix this lets at least
> try to adjust the 8250 port setting like UART clock rate in case if the
> reference clock rate change is discovered. The driver will call the new
> method to update 8250 UART port clock rate settings. It's done by means of
> the clock event notifier registered at the port startup and unregistered
> in the shutdown callback method.
>
> Note 1. In order to avoid deadlocks we had to execute the UART port update
> method in a dedicated deferred work. This is due to (in my opinion
> redundant) the clock update implemented in the dw8250_set_termios()
> method.
> Note 2. Before the ref clock is manually changed by the custom
> set_termios() function we swap the port uartclk value with new rate
> adjusted to be suitable for the requested baud. It is necessary in
> order to effectively disable a functionality of the ref clock events
> handler for the current UART port, since uartclk update will be done
> a bit further in the generic serial8250_do_set_termios() function.

So, regarding runtime PM...

> +static void dw8250_clk_work_cb(struct work_struct *work)
> +{
> +       struct dw8250_data *d = work_to_dw8250_data(work);
> +       struct uart_8250_port *up;
> +       unsigned long rate;
> +
> +       rate = clk_get_rate(d->clk);
> +       if (rate <= 0)
> +               return;
> +

> +       up = serial8250_get_port(d->data.line);

(Btw, this can be done directly in the definition block above.)

> +       serial8250_update_uartclk(&up->port, rate);

This I think should require a device to be powered on. What in your
opinion is a better place to have it done?
To me it looks like serial8250_update_uartclk() misses it.

> +}

--
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
