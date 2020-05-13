Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3383B1D17C2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 16:38:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wAkImB2SUd7UQy4l6rj6rr2L16zJrsatQe0G3aXzDt4=; b=MHzeEzN7M2ZJlu
	jneu3shmpHj3lC7IlahcvyMcWDe9HDbVPojrBjmrvxd/2pTYkdvd/Vwzlyn8Tta8fA570MtN7fYWy
	m3ZDiHtKnnCRGP2DL1zLJGayfJ9T0B6s3nLCF/kccd69ZkUJwrQ4W10NAPWdHCu/ejKC/Xe4nP9AR
	zdY7FrzAayUYpD554EE6EIWOcjY7KuoL/BSwkSFhxG7GlJ1eog00I4nFZ/neqcSPKQv2MZaX7kND+
	Uc+0pj798UcCwX9lGxEu2gJmUY22oAje+f2IQJYhS3NGfZgxhPw0epSLPEUMVkvg5c8/e4kMOiba7
	WWa6TwUFqOaMkd71hXYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYsWc-0006tS-L4; Wed, 13 May 2020 14:38:22 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYsWK-0006ko-HB
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:38:07 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 0F268ADF8;
 Wed, 13 May 2020 14:38:01 +0000 (UTC)
Date: Wed, 13 May 2020 16:37:55 +0200
From: Petr Mladek <pmladek@suse.com>
To: Alper Nebi Yasak <alpernebiyasak@gmail.com>
Subject: Re: [RFC PATCH v2 0/3] Prefer working VT console over SPCR and
 device-tree chosen stdout-path
Message-ID: <20200513143755.GM17734@linux-b0ei>
References: <20200430161438.17640-1-alpernebiyasak@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430161438.17640-1-alpernebiyasak@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_073804_879905_A2CABC72 
X-CRM114-Status: GOOD (  23.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Thu 2020-04-30 19:14:34, Alper Nebi Yasak wrote:
> I recently experienced some trouble with setting up an encrypted-root
> system, my Chromebook Plus (rk3399-gru-kevin, ARM64) would appear to
> hang where it should have asked for an encryption passphrase; and I
> eventually figured out that the kernel preferred the serial port
> (inaccessible to me) over the built-in working display/keyboard and was
> probably asking there.
> 
> Running plymouth in the initramfs solves that specific problem, but
> both the documentation and tty-related kconfig descriptions imply that
> /dev/console should be tty0 if graphics are working, CONFIG_VT_CONSOLE
> is enabled and no explicit console argument is given in the kernel
> commandline.
> 
> However, I'm seeing different behaviour on systems with SPCR (as in QEMU
> aarch64 virtual machines) and/or a device-tree chosen stdout-path node
> (as in most arm/arm64 devices). On these machines, depending on the
> console argument, the contents of the /proc/consoles file are:

I dug many times into the history of the console registration code.
The following table mostly confirms my expectations.


>                     |     "console=tty0"    |    (no console arg)   |
>   ------------------+-----------------------+-----------------------+
>   QEMU VM           | tty0     -WU (EC p  ) | ttyAMA0  -W- (EC   a) |
>   (w/ SPCR)         | ttyAMA0  -W- (E    a) |
>   |

The SPCR handling is inconsistent over architectures, see
https://lkml.kernel.org/r/20180830123849.26163-1-prarit@redhat.com

IMHO, arm developers decided that consoles defined by SPCR are always
enabled when existing.

In 1st column: tty0 is the preferred console because it is defined
on the commandline.

In 2nd column: tty0 is not enabled at all because another console was
defined by SPCR. Note that ttySX and ttyX consoles are registered only
as a fallback when there is no other console defined.

The following code is responsible for the fallback, see register_console()

	/*
	 *	See if we want to use this console driver. If we
	 *	didn't select a console we take the first one
	 *	that registers here.
	 */
	if (!has_preferred) {
		if (newcon->index < 0)
			newcon->index = 0;
		if (newcon->setup == NULL ||
		    newcon->setup(newcon, NULL) == 0) {
			newcon->flags |= CON_ENABLED;
			if (newcon->device) {
				newcon->flags |= CON_CONSDEV;
				has_preferred = true;
			}
		}
	}


>   ------------------+-----------------------+-----------------------+
>   Chromebook Plus   | tty0     -WU (EC p  ) | ttyS2    -W- (EC p a) |
>   (w/ stdout-path)  |                       | tty0     -WU (E     ) |

Hmm, of_console_check() explicitly ignores the console defined by
stdout-path when there is a console on the commandline. This explains
1st column.

I am not sure about 2nd column. My guess is that ttyX consoles are
tried first. tty0 is registered as a fallback because there is no
other console at the moment. ttyS2 is tried later and it is
registered because it is in stdout-patch and there is no console
in the command line. It is somehow consistent with  CONFIG_VT_CONSOLE
description.

Sadly, it is different logic than with SPCR :-(


>   ------------------+-----------------------+-----------------------+
>   Chromebook Plus   | tty0     -WU (EC p  ) | tty0     -WU (EC p  ) |
>   (w/o either)      |                       |                       |
>   ------------------+-----------------------+-----------------------+

This variant is easy and everyone would probably expect this.


Regarding the description of CONFIG_VT_CONSOLE option. I am afraid
that it was created and true only before SPCR and device tree support
was introduced.


Now, it is really sad that SPCR and device tree have different
behavior even across architectures. But I am afraid that we could
not change it without breaking many setups.

The only common rules are:

   + The last console on the command line should always be the
     preferred one when defined.

   + Consoles defined by the device (SPCR, device tree) are used
     when there is no commandline.

   + ttyX or ttySX are used as a fallback when nothing else is defined.


My suggestion is:

   + Fix SPCR setting or device tree of your device when the defaults
     are not as expected.

   + Use command line to force your value when the defaults are not
     as expected and you could not change them.


I am afraid that we could not fix your problem on the kernel side. It
would broke other setups that depend on the existing behavior.

Best Regards,
Petr

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
