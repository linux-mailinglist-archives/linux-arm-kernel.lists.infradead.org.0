Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A9C180FA5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 06:16:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lEQX7Lw6KTlDbqRv7iun5OV7LwFbffHDKgVLgHJXLRQ=; b=RJ8bGZvuiYyIjH
	JbpxBCj1BO17hiR99cs7DMJiBXQyTY9dZUgbCYYiXJToQsqbZDD4/tzyT0wL6h1xR/0fpbpViLM1V
	avfC6lTibbJh6UN/xbyApAsaAD8ip5r9Xdh8AbA1sdAHHo/qJjO8j2a2y5TlWO91IR0YgaAmhQwVc
	N9TMvjodsnk035ongEdtbJm0mF+dB9vliPCq7a2iF2a7/H60Tv1a2oMlNDWgeZoQY+gI+gg5eU1RS
	DRenTGQMhbjARMo58NSCx4XbcdWW9juoeTjyxXVK3L2aRUeiCF52t5DY+JwW+PpBXYh8x3I65ppvn
	faB++/60xuTuZXK2H2uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBtiz-00045R-Gi; Wed, 11 Mar 2020 05:16:09 +0000
Received: from conssluserg-04.nifty.com ([210.131.2.83])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBtiq-000450-6M
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 05:16:02 +0000
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com
 [209.85.217.49]) (authenticated)
 by conssluserg-04.nifty.com with ESMTP id 02B5Fkuu017169
 for <linux-arm-kernel@lists.infradead.org>; Wed, 11 Mar 2020 14:15:47 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 02B5Fkuu017169
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1583903747;
 bh=AfcAhhaYncg48rG2V8lvHQMNiBncmFjUl9msHr0LZLM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=KvW0KXepxAE2RCGteQEv1YSqRNHr0J2XMAXuIYCj1s+nNf63JyYw/9OC9czBm81xE
 clTtP0F838rdSrlae7fdZfuzjmaW0k88pzKs1nbAHtt3Uyh7o4zAnMyop6uGwQMinE
 NUBaWFVGEx5beaInaYhJb4d+us0M18Nqvb1KiMlrWdMedpw91/J8E1PkpEXG7Ht7zT
 rVUpsbRqkZkR22fGL28i63NHiw+bHariqNs76uyEyY8rldbzsX0Sk34pYYQb0u70Nz
 ULCMR1b9jSK/sN8ZGBLFycql4/3VhoWvwXQ13Iufs7qQd+LmBIQEq4ymjyhFCl2QBq
 HF1nFpJqD1/Zg==
X-Nifty-SrcIP: [209.85.217.49]
Received: by mail-vs1-f49.google.com with SMTP id z125so494018vsb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 22:15:47 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3so7oN2o1yBrxdwFK38/rqM/UFew/n0Txy5gGvlkW7++9n22qe
 TCRwftJEe22M8aKahqRdSCK5+PeuWjwAAqWyJXI=
X-Google-Smtp-Source: ADFU+vueM9zpX/w41+7KRQJKMve2nE9ggiD45SMOr/dEVd886cFoVN80tyg4r4qMFhRNb5dCuud4jNxETWUlZpLQMEc=
X-Received: by 2002:a05:6102:8f:: with SMTP id
 t15mr878244vsp.215.1583903745980; 
 Tue, 10 Mar 2020 22:15:45 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1583896344.git.joe@perches.com>
 <dae0878058223a42c77d725b8d7c5845a7ef9dc0.1583896348.git.joe@perches.com>
In-Reply-To: <dae0878058223a42c77d725b8d7c5845a7ef9dc0.1583896348.git.joe@perches.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 11 Mar 2020 14:15:10 +0900
X-Gmail-Original-Message-ID: <CAK7LNAS7GAk9yXkPhbS3ByU+n9Gb-rk0PeLcXLCNwpW1B22aeg@mail.gmail.com>
Message-ID: <CAK7LNAS7GAk9yXkPhbS3ByU+n9Gb-rk0PeLcXLCNwpW1B22aeg@mail.gmail.com>
Subject: Re: [PATCH -next 005/491] ARM/UNIPHIER ARCHITECTURE: Use fallthrough; 
To: Joe Perches <joe@perches.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_221600_781568_CA155CD1 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.83 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.83 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 2:07 PM Joe Perches <joe@perches.com> wrote:
>
> Convert the various uses of fallthrough comments to fallthrough;
>
> Done via script
> Link: https://lore.kernel.org/lkml/b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe.com/
>
> Signed-off-by: Joe Perches <joe@perches.com>


Acked-by: Masahiro Yamada <yamada.masahiro@socionext.com>


But, I think the patch subject should be prefixed:
"serial: 8250_uniphier:"



> ---
>  drivers/tty/serial/8250/8250_uniphier.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/tty/serial/8250/8250_uniphier.c b/drivers/tty/serial/8250/8250_uniphier.c
> index e0b73a5..a2978ab 100644
> --- a/drivers/tty/serial/8250/8250_uniphier.c
> +++ b/drivers/tty/serial/8250/8250_uniphier.c
> @@ -75,7 +75,7 @@ static unsigned int uniphier_serial_in(struct uart_port *p, int offset)
>                 break;
>         case UART_LCR:
>                 valshift = 8;
> -               /* fall through */
> +               fallthrough;
>         case UART_MCR:
>                 offset = UNIPHIER_UART_LCR_MCR;
>                 break;
> @@ -101,7 +101,7 @@ static void uniphier_serial_out(struct uart_port *p, int offset, int value)
>         case UART_SCR:
>                 /* No SCR for this hardware.  Use CHAR as a scratch register */
>                 valshift = 8;
> -               /* fall through */
> +               fallthrough;
>         case UART_FCR:
>                 offset = UNIPHIER_UART_CHAR_FCR;
>                 break;
> @@ -109,7 +109,7 @@ static void uniphier_serial_out(struct uart_port *p, int offset, int value)
>                 valshift = 8;
>                 /* Divisor latch access bit does not exist. */
>                 value &= ~UART_LCR_DLAB;
> -               /* fall through */
> +               fallthrough;
>         case UART_MCR:
>                 offset = UNIPHIER_UART_LCR_MCR;
>                 break;
> --
> 2.24.0
>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
