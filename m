Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9A51FED6A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 10:18:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YY3xDCuZbRS6EpLGrDKG4sYGTD3VtaxCITbpmciBkBE=; b=sPDE1Q3ohHMszF
	SGgrsJjXGtfNQefyV86RWGrGZygVMM+FOGh4FotPpc2vRnC4TkIEcS5PkvzOBsIbTjo7QwFQdCM4o
	n5xsgOJFgyn6/N1TeASXTaRyz5HoKBGoSkftDi48QJaZE+ggmY4525x1SQmjsXnma9b9+Wd6FNSzu
	V0xh3h1i1M5ffqBO003kY11fjGlHz/9TnKKNIW4BNvZDSteG16ga7twwJVf9ngOtrIwYIToS/+JMD
	XWiRwTW4/J8GfXIpLYxz7NN9yCEfiORT/wi/xFb2F26P3ooIXwSG3R1wbyfcoC66D9QQ9B4452n7g
	pWbtahN9Bw9965re19Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlpl4-0005Tw-4i; Thu, 18 Jun 2020 08:18:50 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlpkG-00057S-TF
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 08:18:02 +0000
Received: by mail-pj1-x1044.google.com with SMTP id u8so2196469pje.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 01:18:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0/j4lz8e312J9gqDQle5+Czh+8aD3rzQh6Eq9ULGAuI=;
 b=RrkJOwr/g8SsBdGksexkQvk3ctT+Mb6RiwWgiCOlkIGDk12nQIblPpzjXep8RUF9q8
 PyESA919QIjX4IaVj2aFv4rejKo0Y0pBtREGjS8m/S7Vaos7yTd5mRk7TK9CvD2JCenG
 zfA5zNiw6q94EYYiq7Sn5KCulLcCaQyUsZlCyO3W3XoRQPQOHCccie7xzFQt6AWeHvbd
 s2PJ73zTxE3+1w1gv0XC/lJ0NFGAUMwOyGswCKuA17cUL0cAZxRbkiVqCupRI/gWWm5R
 3BGiTbjS/wnWA5aYvWpUd3suBl8xY0jn+1H1WaSOqSRQmcp0+L0KxKF8JN5Ma6WyJOsx
 +hLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0/j4lz8e312J9gqDQle5+Czh+8aD3rzQh6Eq9ULGAuI=;
 b=G3fnktERx50cSWFNGKlLmtNEM7ZeLRh+2MAp7NQhr/CbI2jvCd/oyNrRSMTQ10feVh
 4CrIQX9ooVoW2lRy+GY1ZIUQ0gyCaEQiSBfNM3A3xbfI5qtUh0UXDr3FKcp8NzQn7Chl
 5pH9K9ocZ4Zq0HVEnASJ1aRD9Sk58L2iqA0N7yzQSsfDXpT7C07RodYcH+v11wmWWFU1
 ikpRrevZTsu3pPu51EMOI/ssl72+zStF6jEMBw1MWonA9l0FQYT0VhEnBfo4s35W2aMx
 80ueZLL2zL3rIchXZ8zACQWFsebt0gIZ5gQ+8NGtfnGTtPz8JZdFdLE9JFAalBEjNTo4
 F4tA==
X-Gm-Message-State: AOAM533qwdQMoBb6/DdBZ67veS9gYNZB9KqLKuWjp5PLyFuBw8RZnLip
 0paqOWhjakTFnov8J2qT2ffoWZgk9OYtSLAmAJA=
X-Google-Smtp-Source: ABdhPJyscf5NEQ/BIUYwjTjCSvoTJNw50TUXXg+adzLOX+5uYCSAsbfWwtwy5S9Aw9ln921/3ZR8DWJVxNYy8OXTtfU=
X-Received: by 2002:a17:90a:220f:: with SMTP id
 c15mr3206084pje.129.1592468279221; 
 Thu, 18 Jun 2020 01:17:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200617224813.23853-1-Sergey.Semin@baikalelectronics.ru>
In-Reply-To: <20200617224813.23853-1-Sergey.Semin@baikalelectronics.ru>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 18 Jun 2020 11:17:47 +0300
Message-ID: <CAHp75VfPEdxN1UeKJ+gCWpgJymK7YzQs1Lznq1aBfoRNBiMHbQ@mail.gmail.com>
Subject: Re: [PATCH RESEND v6 0/3] serial: 8250_dw: Fix ref clock usage
To: Serge Semin <Sergey.Semin@baikalelectronics.ru>,
 Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_011800_996192_AC6E6309 
X-CRM114-Status: GOOD (  23.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
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
Cc: Maxime Ripard <mripard@kernel.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Vadim Vlasov <V.Vlasov@baikalelectronics.ru>,
 Maxim Kaurkin <Maxim.Kaurkin@baikalelectronics.ru>,
 Ramil Zaripov <Ramil.Zaripov@baikalelectronics.ru>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>, Serge Semin <fancer.lancer@gmail.com>,
 Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
 Alexey Kolotnikov <Alexey.Kolotnikov@baikalelectronics.ru>,
 Arnd Bergmann <arnd@arndb.de>,
 Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>,
 Ekaterina Skachko <Ekaterina.Skachko@baikalelectronics.ru>,
 Jiri Slaby <jslaby@suse.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Will Deacon <will@kernel.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 18, 2020 at 1:52 AM Serge Semin
<Sergey.Semin@baikalelectronics.ru> wrote:
>
> Greg, Jiri. We've missed the last merge window. It would be pity to miss
> the next one. Please review/merge in the series.
>
> Regarding the patchset. It might be dangerous if an UART port reference
> clock rate is suddenly changed. In particular the 8250 port drivers
> (and AFAICS most of the tty drivers using common clock framework clocks)
> rely either on the exclusive reference clock utilization or on the ref
> clock rate being always constant. Needless to say that it turns out not
> true and if some other service suddenly changes the clock rate behind an
> UART port driver back no good can happen. So the port might not only end
> up with an invalid uartclk value saved, but may also experience a
> distorted output/input data since such action will effectively update the
> programmed baud-clock. We discovered such problem on Baikal-T1 SoC where
> two DW 8250 ports have got a shared reference clock. Allwinner SoC is
> equipped with an UART, which clock is derived from the CPU PLL clock
> source, so the CPU frequency change might be propagated down up to the
> serial port reference clock. This patchset provides a way to fix the
> problem to the 8250 serial port controllers and mostly fixes it for the
> DW 8250-compatible UART. I say mostly because due to not having a facility
> to pause/stop and resume/restart on-going transfers we implemented the
> UART clock rate update procedure executed post factum of the actual
> reference clock rate change.
>
> In addition the patchset includes a small optimization patch. It
> simplifies the DW APB UART ref clock rate setting procedure a bit.
>
> This patchset is rebased and tested on the mainline Linux kernel 5.7-rc4:
> base-commit: 0e698dfa2822 ("Linux 5.7-rc4")
> tag: v5.7-rc4

I'm wondering how this will collaborate with runtime PM.

> Changelog v3:
> - Refactor the original patch to adjust the UART port divisor instead of
>   requesting an exclusive ref clock utilization.
>
> Changelog v4:
> - Discard commit b426bf0fb085 ("serial: 8250: Fix max baud limit in generic
>   8250 port") since Greg has already merged it into the tty-next branch.
> - Use EXPORT_SYMBOL_GPL() for the serial8250_update_uartclk() method.
>
> Changelog v5:
> - Refactor dw8250_clk_work_cb() function cheking the clk_get_rate()
>   return value for being erroneous and exit if it is.
> - Don't update p->uartclk in the port startup. It will be updated later in
>   the same procedure at the set_termios() function being invoked by the
>   serial_core anyway.
>
> Changelog v6:
> - Resend
>
> Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>
> Cc: Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>
> Cc: Maxim Kaurkin <Maxim.Kaurkin@baikalelectronics.ru>
> Cc: Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>
> Cc: Alexey Kolotnikov <Alexey.Kolotnikov@baikalelectronics.ru>
> Cc: Ramil Zaripov <Ramil.Zaripov@baikalelectronics.ru>
> Cc: Ekaterina Skachko <Ekaterina.Skachko@baikalelectronics.ru>
> Cc: Vadim Vlasov <V.Vlasov@baikalelectronics.ru>
> Cc: Alexey Kolotnikov <Alexey.Kolotnikov@baikalelectronics.ru>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Will Deacon <will@kernel.org>
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: linux-mips@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-serial@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
>
> Serge Semin (3):
>   serial: 8250: Add 8250 port clock update method
>   serial: 8250_dw: Simplify the ref clock rate setting procedure
>   serial: 8250_dw: Fix common clocks usage race condition
>
>  drivers/tty/serial/8250/8250_dw.c   | 116 +++++++++++++++++++++++++---
>  drivers/tty/serial/8250/8250_port.c |  38 +++++++++
>  include/linux/serial_8250.h         |   2 +
>  3 files changed, 144 insertions(+), 12 deletions(-)
>
> --
> 2.26.2
>


-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
