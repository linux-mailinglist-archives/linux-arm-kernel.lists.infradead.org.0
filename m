Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 603601E0F11
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 15:04:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cs6Vlc+yY8VwxaimCj/MbmPpj5hpXQxQBSAbqUKZgOw=; b=L8HpdulUSm7dQ4
	BKEywj5DqpJLrM/BMRAwwl4WDrTrHlELybQ8xK7P/JDXysHG4Frz75V8bfyMceZKz+nP37KU2yIod
	yhaH71yVr/7QmZzpCc6hIxlLT/wFzcNEWiWsTvlNALc5aZD4ab/UA6QRlnjFDI/erv0XXmv22Iv/Y
	JAmomTb6nsWSKhpVG0gMtRQgo1fpM1of8MVpiv7TNokjx4xsWdzFgVNejFbdUxKCADivITksB2Tw0
	EKx1U/XXFXwQ17PeQsiogmTAGJJE79QqMbth1novRqMGj8tDe0gkIHqTyVjFL9A/LoWkC23OYCVsk
	7i959AW7k/006pv48CaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdCmT-0008QR-Ov; Mon, 25 May 2020 13:04:37 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdCmL-0008QK-82
 for linux-arm-kernel@bombadil.infradead.org; Mon, 25 May 2020 13:04:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Ol885/IH+ZlMc5ShSMqA/ZwJ2Iaqx8W4W16Kf6nI/T8=; b=0F+v1zqIjHb+MIf3lCk9th0TPP
 GiS5F4tI0gcFaLicwYMGEFbkiSHyw6Uao2djXhsf0YBsPhnVH3/Re0IO3H5tvczCtcjUAoJjVjSoS
 cKDJk+j6Nqj/nQ3wmA4qHAHQQ46GOgXXR2W+GU1zUqKqhBRlffl20VxQSdog5HRt/pSBPFTROvzOa
 7cuGvrTdyAW1XRXpuaqQm0aNqkIcu/H81oXRJGeWkRxXc/p3VyzqdJ2P5Z8xtPwfqkfGSHS7xMQN/
 kXIqwY4MfuGXdZoMNcGQiTsNQSReE2HTkKG7OL4Era3JKZMhTpAIf0ImWbDxYxxGUUlzQaZHwy30G
 izQr+tgA==;
Received: from mx2.suse.de ([195.135.220.15])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdCmI-0007Un-N9
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 13:04:27 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 9CA91B03C;
 Mon, 25 May 2020 13:04:24 +0000 (UTC)
Date: Mon, 25 May 2020 15:04:19 +0200
From: Petr Mladek <pmladek@suse.com>
To: Alper Nebi Yasak <alpernebiyasak@gmail.com>
Subject: Re: [RFC PATCH v2 0/3] Prefer working VT console over SPCR and
 device-tree chosen stdout-path
Message-ID: <20200525130417.GN3464@linux-b0ei>
References: <20200430161438.17640-1-alpernebiyasak@gmail.com>
 <20200513143755.GM17734@linux-b0ei>
 <dd19946d-32e9-89e8-3b35-faea9941f107@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dd19946d-32e9-89e8-3b35-faea9941f107@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Feng Tang <feng.tang@intel.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Eric Biggers <ebiggers@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nicolas Pitre <nico@fluxnic.net>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Arvind Sankar <nivedita@alum.mit.edu>, Grzegorz Halat <ghalat@redhat.com>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 Lukas Wunner <lukas@wunner.de>, Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sam Ravnborg <sam@ravnborg.org>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri 2020-05-15 22:27:02, Alper Nebi Yasak wrote:
> On 13/05/2020 17:37, Petr Mladek wrote:
> > On Thu 2020-04-30 19:14:34, Alper Nebi Yasak wrote:
> I think things run roughly in the following order (from what I can
> decipher from kernel messages) and I think it matches your explanations:
> 
> |            ACPI SPCR            |      dt chosen stdout-path      |
> +=================================+=================================+
> | acpi_parse_spcr()               |                                 |
> | -> add_preferred_console(uart0) |                                 |
> |    (if not on x86)              |                                 |
> +---------------------------------+---------------------------------+
> |                        console_setup()                            |
> |                        -> add_preferred_console(tty0)             |
> |                           (if console=tty0)                       |
> +---------------------------------+---------------------------------+
> |                        register_console(vt)                       |
> +---------------------------------+---------------------------------+
> |                                 | of_console_check()              |
> |                                 | -> add_preferred_console(uart2) |
> |                                 |    (if no console arg)          |
> +---------------------------------+---------------------------------+
> |                        register_console(serial)                   |
> +---------------------------------+---------------------------------+


I was first a bit confused by the above table. The order looks fine
but I was not sure about the indentation. I think that some more
details are needed to get the picture and context.

I see the following order in start_kernel():

1. Add spcr consoles: by acpi_parse_spcr() called from setup_arch().
2. Add and register early consoles: by parse_early_param()
3. Add normal consoles from command line: by parse_args()

4. Register tty console: by vty_init() called via long chain
   from fs_initcall(chr_dev_init). It seems to be init call
   in 5th round, see include/linux/init.h

5. Register other (serial) consoles are most likely registered from
   device_initcall() in 6th round, see include/linux/init.h.

The consoles defined by the device tree are not added directly.
Instead, the probe() callbacks checks whether such console is
selected in device tree by of_console_check() called from
uart_add_one_port().


> > My suggestion is:
> > 
> >     + Fix SPCR setting or device tree of your device when the defaults
> >       are not as expected.
> 
> Maybe I can get QEMU's SPCR use conditional on the existence a
> framebuffer, and get distributions to remove stdout-path from certain
> device-trees; but that would disable the serial console completely
> (instead of having it enabled where tty0 is still preferred).

I am afraid that this is a problem with many defaults. They might be
good enough for many people but others would want something else.

It might be acceptable to add consoles. But it might be a problem to
remove consoles or change the currently preferred one.

The only exception would be when most people are annoyed with the
current default. But this need to be discussed with people familiar
with the given architecture or device.


> >     + Use command line to force your value when the defaults are not
> >       as expected and you could not change them.
> 
> This works; but I'd have to know the machine's serial configuration in
> advance to put it in the cmdline as "console=<serial> console=tty0", or
> lose the serial console as in the above. (A "console=dt" like that
> "console=spcr" patch you linked to would be useful here if it existed.)

The generic parameters: console=tty, console=serial, console=dt, console=spcr
looks fine to me. IMHO, the only problem might be when a particular
serial console drive is not able to guess reasonable defaults for the
baud rate, etc.

Best Regards,
Petr

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
