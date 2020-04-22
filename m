Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E609D1B4D3D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 21:21:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AHDN7+CkABDPk8kf5baSnS2Uon8c1sNhpq8hWWQjy+A=; b=Uusc9LAeWDYiNM
	xN+wv+I6DT/Ho+C4Pioqt8KkBJdzF7OwgcceJTI4nXT2z6csU5BlVRzWZRh4S0+dA784qchr6JEZW
	YlE6wiFrJ3c2cmLxDygMdRcUcfmEwpYti74Sw4bcQiCbWBLrmvlqi4RPZRPuW/EmSrc2l1rqTwvZH
	IMerfx8hjYsw7olXUK+IJto53qFyhbTJhtHTY2N/ggCgp/9fUvUnhAFrfY5p1pVyhwgpl5jxU5Ip0
	ciRC7H7sanzGzhCrxU9icfuKgX1TXJhEWzNhXPWldEQ+3/pmIiJWjqKGumLJMacRV5y1znkIOaAMW
	GL188IQl6QdhVoDrx5+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRKvc-0007ot-IU; Wed, 22 Apr 2020 19:21:00 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRKvQ-0007mh-7e; Wed, 22 Apr 2020 19:20:49 +0000
Received: by mail-pf1-x443.google.com with SMTP id v63so1601572pfb.10;
 Wed, 22 Apr 2020 12:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KtmFmWbQrY8pc1EpVQXZVMz+o7YgDf3mMA7eDgpe41c=;
 b=uhT1tnQfPSj/TjtZ3wZw+so7Z0Vt7cA+7T6xXaEseKDmfs5FBjyrvrTomdpZvQDiY2
 2k5+TnTWWIoEE8Acv1BllsIWWxWBlBAcIqY4aYLDMMMYGCq2FM+9mKXgjzqBDTt8pqMC
 oNbP3xVPWlH15/zlEZOQTawwTnBtbtNgjGJIxDlJlY0ETcRFB3H59NFbDMKKvi+PYdlF
 P9XmiAm9GYIflk6+mwaBhQviWGrRoBjEM6x1PIPNbs5d04JFOQ4gfn6liDfD+LG8wOKn
 3aFUdAl0kNG+iGbWf5QmqIkoszQHtXkfvo2qM3zaqtCD0YV82j+Q21XA6mhylE7eaIem
 tXRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KtmFmWbQrY8pc1EpVQXZVMz+o7YgDf3mMA7eDgpe41c=;
 b=mGVNfw3RhwNbitNcqUV4xuBAzzMhp05X6BUAZ8nXLQ3UoWOUPjolFzjmK7xrUieg4q
 q+lArSGl68nfkHU+Rdjjx4W3O9timECncyp0DoYWcXN4+3ZepUODZEkDHm4kwBhvaCW0
 BQM/NUcNkCgbohFgZ8pb9DQjBvKVGDJYRPsXD4JE00KQDCB0Czd/xMazrfGfqTLAoBM5
 CB84Eo7hxhnsyJYvdr80ZFWLR7YmU6dDk228wexxRN0DjQQ5v33ahbNIkSArBr8pxcoX
 tnNSVkvriZ3BJIDkmzfyv6Ju8+UPKC0pX324EzSlzu42ulbbW0cNkyHKZ4lGOw3L0sI4
 whSw==
X-Gm-Message-State: AGi0PuYR2Uq+Z1I+yQXASliwpHlqN4oujUFukF8BdE/oAI89fpE2ruqs
 dOSj1/H1ifpu77Xr8ZGFI0kao3NJ54IKj5mtFVQ=
X-Google-Smtp-Source: APiQypITCf2xMd3UMkVUBCj0ZbhYW1/aHWeFytRZabsdA3yMLAvCt9JL2QIHRkyc3NlzpGV3HtiJhypU95zkkNQfOWE=
X-Received: by 2002:a63:5511:: with SMTP id j17mr576026pgb.4.1587583245100;
 Wed, 22 Apr 2020 12:20:45 -0700 (PDT)
MIME-Version: 1.0
References: <cc41ea10be9ab96568f0371784e3b9f8d9f434b9.1587577548.git.sean.wang@mediatek.com>
In-Reply-To: <cc41ea10be9ab96568f0371784e3b9f8d9f434b9.1587577548.git.sean.wang@mediatek.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 22 Apr 2020 22:20:33 +0300
Message-ID: <CAHp75VdSvE9RPq3V8LTVX7OjaYs1PThVi2f1roh3p5EY_k0ANA@mail.gmail.com>
Subject: Re: [PATCH v3] tty: serial: don't do termios for BTIF
To: Sean Wang <sean.wang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_122048_294197_A2CB640C 
X-CRM114-Status: GOOD (  22.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Steven Liu <steven.liu@mediatek.com>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ryder Lee <ryder.lee@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 tthayer <tthayer@opensource.altera.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Stefan Roese <sr@denx.de>, Mika Westerberg <mika.westerberg@linux.intel.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 22, 2020 at 9:05 PM <sean.wang@mediatek.com> wrote:
>
> From: Sean Wang <sean.wang@mediatek.com>
>
> Bluetooth Interface (BTIF) is designed dedicatedly for MediaTek SOC with
> BT in order to be instead of the UART interface between BT module and Host
> CPU, and not exported to user space to access.
>
> As the UART design, BTIF will be an APB slave and can transmit or receive
> data by MCU access, but doesn't provide termios function like baudrate and
> flow control setup.
>
> Even LCR on offset 0xC that is just a FAKELCR
> a. If FAKELCR[7] is equaled to 1, RBR(0x00), THR(0x00), IER(0x04)
>    will not be readable/writable.
>
> b. If FAKELCR is equaled to 0xBF, RBR(0x00), THR(0x00), IER(0x04),
>    IIR(0x08), and LSR(0x14) will not be readable/writable.
>
> So adding a new capability 'UART_CAP_NTIO' for the unusual unsupported
> case.
>
> Fixes: 1c16ae65e250 ("serial: 8250: of: Add new port type for MediaTek BTIF controller on MT7622/23 SoC")
> Cc: Steven Liu <steven.liu@mediatek.com>

> Suggested-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

I didn't suggest this change. I only commented on the name of the macro.

> Signed-off-by: Sean Wang <sean.wang@mediatek.com>
> Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
>
> --
> v1->v2:
> no change on termios->c_cflag and refine commit message
>
> v2->v3:
> change the naming from NMOD to NTIO as TIO is a well established prefix
> for termios IOCTLs.
> ---
>  drivers/tty/serial/8250/8250.h      | 1 +
>  drivers/tty/serial/8250/8250_port.c | 5 ++++-
>  2 files changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/tty/serial/8250/8250.h b/drivers/tty/serial/8250/8250.h
> index 33ad9d6de532..234d8db470c0 100644
> --- a/drivers/tty/serial/8250/8250.h
> +++ b/drivers/tty/serial/8250/8250.h
> @@ -82,6 +82,7 @@ struct serial8250_config {
>  #define UART_CAP_MINI  (1 << 17)       /* Mini UART on BCM283X family lacks:
>                                          * STOP PARITY EPAR SPAR WLEN5 WLEN6
>                                          */
> +#define UART_CAP_NTIO  (1 << 18)       /* UART doesn't do termios */
>
>  #define UART_BUG_QUOT  (1 << 0)        /* UART has buggy quot LSB */
>  #define UART_BUG_TXEN  (1 << 1)        /* UART has buggy TX IIR status */
> diff --git a/drivers/tty/serial/8250/8250_port.c b/drivers/tty/serial/8250/8250_port.c
> index 0325f2e53b74..abc974b4113f 100644
> --- a/drivers/tty/serial/8250/8250_port.c
> +++ b/drivers/tty/serial/8250/8250_port.c
> @@ -286,7 +286,7 @@ static const struct serial8250_config uart_config[] = {
>                 .tx_loadsz      = 16,
>                 .fcr            = UART_FCR_ENABLE_FIFO |
>                                   UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT,
> -               .flags          = UART_CAP_FIFO,
> +               .flags          = UART_CAP_FIFO | UART_CAP_NTIO,
>         },
>         [PORT_NPCM] = {
>                 .name           = "Nuvoton 16550",
> @@ -2544,6 +2544,9 @@ serial8250_do_set_termios(struct uart_port *port, struct ktermios *termios,
>         unsigned long flags;
>         unsigned int baud, quot, frac = 0;
>
> +       if (up->capabilities & UART_CAP_NTIO)
> +               return;
> +
>         if (up->capabilities & UART_CAP_MINI) {
>                 termios->c_cflag &= ~(CSTOPB | PARENB | PARODD | CMSPAR);
>                 if ((termios->c_cflag & CSIZE) == CS5 ||
> --
> 2.25.1



-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
