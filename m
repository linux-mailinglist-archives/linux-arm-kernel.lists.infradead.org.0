Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBA21D59FD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 21:27:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dkSy8wmff6ho3X+6AglUTYLxOt/ffNuKVNNpyxayaQM=; b=KARWNnBNKcXWTo
	kzyx02+E+LkR9Rt8dUl95n5cwRYcwzTMnJN5/Crz9yVdqAjrKfEEqrpJ7OniyV6RvcVva6TsSEY9c
	oJ9EwKOd+3FeNcQ8P9bAVA32hvJ1CPU9PtHlg40exhSNaCEs1gMq8DMm3iknur21qUr0frhwBa4jv
	zUOHt1y9tsKNP0p95jqtVX3f+hDjHR3XGoeNiHolS6gT86NbAJPhhfw6FHujwtbJvMLeb2yyDxARG
	MrMVGNInuCiMQWOrX8sekM6sssyJ3Po4sv8eoyCRuhtNRq+9VewXmP8U+srCSGpuWkDCnccKN45h5
	G39qnNyP8JWr3H4q1mUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZfzO-0006VT-PJ; Fri, 15 May 2020 19:27:22 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZfzF-0006V6-0V
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 19:27:14 +0000
Received: by mail-lf1-x143.google.com with SMTP id a9so2760112lfb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 12:27:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=7E4qCSn8oxzjOFDM+y/8aBx6q/mStgeLmNNkLN6O2YE=;
 b=PnPXgaxgJcJ1zI/iJwPLheVYxyuwB5vSys0IhWKE+ReVyxhbGIYG+/w1Fq6+38JNi+
 avEJuToJU5mGXmCrMserZ9Anx5CTfttitC/ve6wuX/BR/WpfVkjU+Lysuq0gT42N6kjM
 iB3sa1AS+rojJK2vy4ewPybVlAVITQVnIacwY7qfVqVh8jsmO+bcRCyKEhMu5BLCyWcX
 poJlyby8vVkZiR5mXyCPXasC1F8/zQw39R9eTVjk+KqnuP+7/OelgORAmQ5OggULLkyH
 MCN7dAXZbJBRLbas/b+nc6Ys67+H+cYlo+Uw44TylSjuSHXhOwxR2G5eArahPLOT0INi
 62XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7E4qCSn8oxzjOFDM+y/8aBx6q/mStgeLmNNkLN6O2YE=;
 b=FYipx7RhkZmD7vrTkOqjIxm3yD4wjlnGhNtY3uKgn/yINZzoOujzu7oLtKjyPD51Ok
 wzxNMEbij/Qofv5ptgxHZTq9ETJ22HvVnvckvcq5ER39m+lhR19bTfeklBfgIaVwpZvF
 NCsyR34FAZWMI7hW8Tz8SHvqFsRbD77Zwmnyw+sPe3pNL4hLPcMWj82uZf8Vu4+O1mwo
 pnFMZemN/gbN8yac2FcIscBbouy4YU99lghmgeP1Z14bwBbJSQkK/gqilCDozhBrVWVT
 URgyvGYsKBEblZ94+/vbS792DBMcHwXmijf5sQFj7TpXRe6G9mYqNtLm0ZnwKyd8DMaO
 xLDA==
X-Gm-Message-State: AOAM5339hM41avsaUDUbswiTKf6253r/8VPTvxcLOhPjQgA/qwojwEnb
 yX1zJBgAqN1Ij1EB5K+rarY=
X-Google-Smtp-Source: ABdhPJwnqVU1YyjUD8x5ydVPwEj7EJSzVUtMDTSJGgGDHWg+Hzlw/B1vJKtRsSmzCc51+lcYYmSPKg==
X-Received: by 2002:a05:6512:3384:: with SMTP id
 h4mr3426972lfg.150.1589570830859; 
 Fri, 15 May 2020 12:27:10 -0700 (PDT)
Received: from [192.168.0.74] ([178.233.178.9])
 by smtp.gmail.com with ESMTPSA id s11sm1831143lfo.86.2020.05.15.12.27.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 15 May 2020 12:27:09 -0700 (PDT)
Subject: Re: [RFC PATCH v2 0/3] Prefer working VT console over SPCR and
 device-tree chosen stdout-path
To: Petr Mladek <pmladek@suse.com>
References: <20200430161438.17640-1-alpernebiyasak@gmail.com>
 <20200513143755.GM17734@linux-b0ei>
From: Alper Nebi Yasak <alpernebiyasak@gmail.com>
Message-ID: <dd19946d-32e9-89e8-3b35-faea9941f107@gmail.com>
Date: Fri, 15 May 2020 22:27:02 +0300
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200513143755.GM17734@linux-b0ei>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_122713_056987_D5E0D92C 
X-CRM114-Status: GOOD (  30.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alpernebiyasak[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On 13/05/2020 17:37, Petr Mladek wrote:
> On Thu 2020-04-30 19:14:34, Alper Nebi Yasak wrote:
>>                      |     "console=tty0"    |    (no console arg)   |
>>    ------------------+-----------------------+-----------------------+
>>    QEMU VM           | tty0     -WU (EC p  ) | ttyAMA0  -W- (EC   a) |
>>    (w/ SPCR)         | ttyAMA0  -W- (E    a) |
>>    |
> 
> The SPCR handling is inconsistent over architectures, see
> https://lkml.kernel.org/r/20180830123849.26163-1-prarit@redhat.com
> 
> IMHO, arm developers decided that consoles defined by SPCR are always
> enabled when existing.

I'm OK with those being enabled. Though, I hope "not registering tty0"
wasn't an explicit decision, but maybe an oversight/trade-off due to
assuming SPCR code will only run on servers without displays (where tty0
wouldn't matter). (I understand it might be too late to change that.)

So I'd want the 2nd column to be: tty0(EC) ttyAMA0(E) at best, and
ttyAMA0(EC) tty0(E) at worst.

> In 1st column: tty0 is the preferred console because it is defined
> on the commandline.
> 
> In 2nd column: tty0 is not enabled at all because another console was
> defined by SPCR. Note that ttySX and ttyX consoles are registered only
> as a fallback when there is no other console defined.
> 
> The following code is responsible for the fallback, see register_console()
> 
> 	/*
> 	 *	See if we want to use this console driver. If we
> 	 *	didn't select a console we take the first one
> 	 *	that registers here.
> 	 */
> 	if (!has_preferred) {
> 		if (newcon->index < 0)
> 			newcon->index = 0;
> 		if (newcon->setup == NULL ||
> 		    newcon->setup(newcon, NULL) == 0) {
> 			newcon->flags |= CON_ENABLED;
> 			if (newcon->device) {
> 				newcon->flags |= CON_CONSDEV;
> 				has_preferred = true;
> 			}
> 		}
> 	}
> 
> 
>>    ------------------+-----------------------+-----------------------+
>>    Chromebook Plus   | tty0     -WU (EC p  ) | ttyS2    -W- (EC p a) |
>>    (w/ stdout-path)  |                       | tty0     -WU (E     ) |
> 
> Hmm, of_console_check() explicitly ignores the console defined by
> stdout-path when there is a console on the commandline. This explains
> 1st column.
> 
> I am not sure about 2nd column. My guess is that ttyX consoles are
> tried first. tty0 is registered as a fallback because there is no
> other console at the moment. ttyS2 is tried later and it is
> registered because it is in stdout-patch and there is no console
> in the command line. It is somehow consistent with  CONFIG_VT_CONSOLE
> description.
> 
> Sadly, it is different logic than with SPCR :-(

I like the fact that this one has tty0. For example, Debian's installer
iterates over /proc/consoles and launches itself on all the consoles it
finds there, so it wouldn't launch on my chromebook's screen if tty0
wasn't included (just like it doesn't launch on a QEMU aarch64 VM's
framebuffer).

>>    ------------------+-----------------------+-----------------------+
>>    Chromebook Plus   | tty0     -WU (EC p  ) | tty0     -WU (EC p  ) |
>>    (w/o either)      |                       |                       |
>>    ------------------+-----------------------+-----------------------+
> 
> This variant is easy and everyone would probably expect this.

I think things run roughly in the following order (from what I can
decipher from kernel messages) and I think it matches your explanations:

|            ACPI SPCR            |      dt chosen stdout-path      |
+=================================+=================================+
| acpi_parse_spcr()               |                                 |
| -> add_preferred_console(uart0) |                                 |
|    (if not on x86)              |                                 |
+---------------------------------+---------------------------------+
|                        console_setup()                            |
|                        -> add_preferred_console(tty0)             |
|                           (if console=tty0)                       |
+---------------------------------+---------------------------------+
|                        register_console(vt)                       |
+---------------------------------+---------------------------------+
|                                 | of_console_check()              |
|                                 | -> add_preferred_console(uart2) |
|                                 |    (if no console arg)          |
+---------------------------------+---------------------------------+
|                        register_console(serial)                   |
+---------------------------------+---------------------------------+

> Regarding the description of CONFIG_VT_CONSOLE option. I am afraid
> that it was created and true only before SPCR and device tree support
> was introduced.

OK. Assuming these changes won't go any further, maybe I'll try
documenting the current behavior in relevant places.

> Now, it is really sad that SPCR and device tree have different
> behavior even across architectures. But I am afraid that we could
> not change it without breaking many setups.
> 
> The only common rules are:
> 
>     + The last console on the command line should always be the
>       preferred one when defined.
> 
>     + Consoles defined by the device (SPCR, device tree) are used
>       when there is no commandline.
> 
>     + ttyX or ttySX are used as a fallback when nothing else is defined.
> 
> 
> My suggestion is:
> 
>     + Fix SPCR setting or device tree of your device when the defaults
>       are not as expected.

Maybe I can get QEMU's SPCR use conditional on the existence a
framebuffer, and get distributions to remove stdout-path from certain
device-trees; but that would disable the serial console completely
(instead of having it enabled where tty0 is still preferred).

>     + Use command line to force your value when the defaults are not
>       as expected and you could not change them.

This works; but I'd have to know the machine's serial configuration in
advance to put it in the cmdline as "console=<serial> console=tty0", or
lose the serial console as in the above. (A "console=dt" like that
"console=spcr" patch you linked to would be useful here if it existed.)

Both seem imperfect in that sense, but tolerable.

> I am afraid that we could not fix your problem on the kernel side. It
> would broke other setups that depend on the existing behavior.
> 
> Best Regards,
> Petr

Thanks for the detailed reply.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
