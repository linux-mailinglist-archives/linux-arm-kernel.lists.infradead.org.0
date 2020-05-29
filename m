Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C934E1E8460
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 19:10:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tBM2YPabV/QYuKf1B8vdTFp30Ejgbl55uio76xN0x8s=; b=FwoWXGYK6V68LH
	7PygzUCMHEGScg0wT2x9h2mDE3AS5RXqJbEYCipdX9CbZaI6sKIxVbBDEIojg3I74fKly8w1ao0ME
	QB0anFLFP8K2RZ6RuBQque5/lTFN6gH3nSAIaD+nm0kBDEFnU8dfN+UZ5pWYqhPPwbVnMsPrRwiJM
	d63RD1KpTXomvtahAnbSKrj5v7j24i9FUMxmm4vX7jaxHPp97XLiLizahshHWbQwJA5sFXc7nL/8C
	rIHZPWc2gVAC7GZY4F2lNV+RhWuU/PcgIcyRZ0Wj85MP+MYNxGmaxQ4ikyeBuDKcBMCSGhd5dmJ+f
	ws9DKlsl0OMqI9cHWnNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeiWy-0004qY-NJ; Fri, 29 May 2020 17:10:52 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeiWo-0004pb-2r; Fri, 29 May 2020 17:10:43 +0000
Received: by mail-ej1-x642.google.com with SMTP id a2so2754623ejb.10;
 Fri, 29 May 2020 10:10:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=WDKIKX1lbJucTTgJr5+MTkahkiaPobMxaKnS1Wdvl/c=;
 b=oJJA9uvozHW0ofiymw21F8d1PYu2PWYbNXATWv2Cma0j7/VjXp6mi1yS0jKvwr3kED
 zUZweQgWNosYY5HQrBS1mNWkVZcvstkkUutLLm6G2+qzUHx1wpM1JTOLQ/iFRc1vetix
 izmUASDNm51tZW2QK7UhSQfiZVurM2MjYVabi30WhmkqeHzJHNl5QgPcRA1x+/oOCjSW
 RF39a33sE/lbKpj1ABUUUAnbiAm/2e2RaGa/hfSb4bRxHehLDY9Kdq9A1munTtMaSbw0
 bI96rsrrKCRD7xTqf4WIdWFfNF/tGKZ7iKfWNFnu+tlX9M7vjGA4Q5/8cmPYnbiSh8l1
 qRvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=WDKIKX1lbJucTTgJr5+MTkahkiaPobMxaKnS1Wdvl/c=;
 b=L2e6VZqyZZLsV1wI8suKgTzHGFBzfZfBL093gF//OfnPUxFWEgWhkkzpURJrJ1uKbH
 qj48TuOCU8BNecPErCgafTATnThB66aKLciBrNhkl/b8IWXJrdDaZlZY2QASKHHFwXOT
 yIJQvMDCRI0vVP5PwPUlAaDiXEPzdoOvsHFlgMBFLRKQbucPROatKvJKa4yI80o3yQc9
 /JNx/jcnV9hIWdkk3JZh8TzEgjiCRGTGPD8BtAM2N1ZiB9ocscgtu35fXesnRN/SU+EW
 /z+/s0X+Nh/fnowkZfEO9Vn1yw59cJhF2GtH9xMrjfAxsa33UAuM//leho0+Hy6oEDkh
 p62w==
X-Gm-Message-State: AOAM532VnV9dxz6pcHmHx56HxQPVE0N45K5+skmYohFovunUSTiHY7OE
 TqXi8FFaWpsUSJbLbfgvMCk=
X-Google-Smtp-Source: ABdhPJw6wUAlq2Fosg/mAumHMUr0rJcmxqFtd4b6i9qv98juDHBgQYVuNyHFlfQU7csJJhx0XejmRA==
X-Received: by 2002:a17:906:2c07:: with SMTP id
 e7mr8620770ejh.172.1590772237131; 
 Fri, 29 May 2020 10:10:37 -0700 (PDT)
Received: from BV030612LT ([188.27.38.213])
 by smtp.gmail.com with ESMTPSA id s2sm7740809ejm.50.2020.05.29.10.10.34
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 29 May 2020 10:10:35 -0700 (PDT)
Date: Fri, 29 May 2020 20:10:32 +0300
From: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [PATCH 1/1] tty: serial: owl: Add support for kernel debugger
Message-ID: <20200529171032.GA26724@BV030612LT>
References: <6ee88060c129715980592a1ae33c93923916a14b.1590766726.git.cristian.ciocaltea@gmail.com>
 <16ff435f-9172-e01d-dfe6-7aa8575c4bd6@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <16ff435f-9172-e01d-dfe6-7aa8575c4bd6@suse.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_101042_154504_B58B589E 
X-CRM114-Status: GOOD (  23.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cristian.ciocaltea[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 29, 2020 at 05:56:47PM +0200, Andreas F=E4rber wrote:
> Hi,
> =

> Am 29.05.20 um 17:50 schrieb Cristian Ciocaltea:
> > Implement poll_put_char and poll_get_char callbacks in struct uart_ops
> > that enables OWL UART to be used for KGDB debugging over serial line.
> > =

> > Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
> > ---
> >   drivers/tty/serial/owl-uart.c | 45 ++++++++++++++++++++++++++++++-----
> >   1 file changed, 39 insertions(+), 6 deletions(-)
> > =

> > diff --git a/drivers/tty/serial/owl-uart.c b/drivers/tty/serial/owl-uar=
t.c
> > index c2fa2f15d50a..26dcc374dec5 100644
> > --- a/drivers/tty/serial/owl-uart.c
> > +++ b/drivers/tty/serial/owl-uart.c
> > @@ -12,6 +12,7 @@
> >   #include <linux/console.h>
> >   #include <linux/delay.h>
> >   #include <linux/io.h>
> > +#include <linux/iopoll.h>
> >   #include <linux/module.h>
> >   #include <linux/of.h>
> >   #include <linux/platform_device.h>
> > @@ -20,13 +21,13 @@
> >   #include <linux/tty.h>
> >   #include <linux/tty_flip.h>
> > -#define OWL_UART_PORT_NUM 7
> > -#define OWL_UART_DEV_NAME "ttyOWL"
> > +#define OWL_UART_PORT_NUM		7
> > +#define OWL_UART_DEV_NAME		"ttyOWL"
> > -#define OWL_UART_CTL	0x000
> > -#define OWL_UART_RXDAT	0x004
> > -#define OWL_UART_TXDAT	0x008
> > -#define OWL_UART_STAT	0x00c
> > +#define OWL_UART_CTL			0x000
> > +#define OWL_UART_RXDAT			0x004
> > +#define OWL_UART_TXDAT			0x008
> > +#define OWL_UART_STAT			0x00c
> =

> Please do not unnecessarily re-indent kernel code. You can do so when you=
're
> actually adding something new.
> =


Hi Andreas,

Thank you for reviewing!

Sure, I will revert unnecessary changes.

>
> >   #define OWL_UART_CTL_DWLS_MASK		GENMASK(1, 0)
> >   #define OWL_UART_CTL_DWLS_5BITS		(0x0 << 0)
> > @@ -461,6 +462,34 @@ static void owl_uart_config_port(struct uart_port =
*port, int flags)
> >   	}
> >   }
> > +#ifdef CONFIG_CONSOLE_POLL
> > +
> > +static int owl_uart_poll_get_char(struct uart_port *port)
> > +{
> > +	u32 c =3D NO_POLL_CHAR;
> > +
> > +	if (!(owl_uart_read(port, OWL_UART_STAT) & OWL_UART_STAT_RFEM))
> > +		c =3D owl_uart_read(port, OWL_UART_RXDAT);
> > +
> > +	return c;
> > +}
> > +
> > +static void owl_uart_poll_put_char(struct uart_port *port, unsigned ch=
ar c)
> > +{
> > +	/* Wait while TX FIFO is full */
> > +	while (owl_uart_read(port, OWL_UART_STAT) & OWL_UART_STAT_TFFU)
> > +		cpu_relax();
> > +
> > +	/* Send the character out */
> > +	owl_uart_write(port, c, OWL_UART_TXDAT);
> > +
> > +	/* Wait for transmitter to become empty */
> > +	while (owl_uart_read(port, OWL_UART_STAT) & OWL_UART_STAT_TRFL_MASK)
> > +		cpu_relax();
> > +}
> =

> How is this different from earlycon? I dislike that this is being
> open-coded. Please try to reuse existing functions for this.
>

I actually tried initially to reuse the existing code, but I found
a few (possible) issues:

- owl_uart_port_write() does more things than I think it's really
needed here, i.e. I'm not sure if the locking stuff and the IRQ
setup are required. From what I've noticed, most serial drivers provide
a very simple implementation (and lock free) for the callbacks, but
I couldn't figure out if locking could be required in some
circumstances.

- owl_console_putchar() could be a better alternative, but it depends
on CONFIG_SERIAL_OWL_CONSOLE which might not be enabled if the user
only chooses CONFIG_KGDB_SERIAL_CONSOLE, although this is probably
not a valid scenario.

Kind regards,
Cristi

> =

> Regards,
> Andreas
> =

> > +
> > +#endif /* CONFIG_CONSOLE_POLL */
> > +
> >   static const struct uart_ops owl_uart_ops =3D {
> >   	.set_mctrl =3D owl_uart_set_mctrl,
> >   	.get_mctrl =3D owl_uart_get_mctrl,
> > @@ -476,6 +505,10 @@ static const struct uart_ops owl_uart_ops =3D {
> >   	.request_port =3D owl_uart_request_port,
> >   	.release_port =3D owl_uart_release_port,
> >   	.verify_port =3D owl_uart_verify_port,
> > +#ifdef CONFIG_CONSOLE_POLL
> > +	.poll_get_char	=3D owl_uart_poll_get_char,
> > +	.poll_put_char	=3D owl_uart_poll_put_char,
> > +#endif
> >   };
> >   #ifdef CONFIG_SERIAL_OWL_CONSOLE
> > =

> =

> =

> -- =

> SUSE Software Solutions Germany GmbH
> Maxfeldstr. 5, 90409 N=FCrnberg, Germany
> GF: Felix Imend=F6rffer
> HRB 36809 (AG N=FCrnberg)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
