Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA85B1C0678
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 21:32:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H7SB0IeG8VYi9CNoa9bgjn26bH2QrtJdFxENl6hb8wc=; b=LJPFp6emO5mrzg
	GkrtUIvebnnn7htsZztQv8hocSvJLLlXONtD/SyD/LY9mYa1Aq3zp/u4XxoupQUVSLC+wULh7HMgN
	SVnhhj0gwQI/P/DKbzncWlpc+fx+TJkrRD37Ezp9RCbJaxn/g/lzvou0OSOS7r6/Mvb0331h/wWc7
	T3DgYd5yZ5Y6e2seWY1xiCgZXgi3BB50ruoWO+iI3DCjLUVLmgK6/0NsC/JWGf7AEA9cH4vvFiWaA
	9Z5GftcA2c9LXs0Pq95MQ8n4VbdJ6xJ3/9iY/HxIYv1U34bo5/XJXsGL4xEazvwWD/vBlvCVGutcb
	tRjOOu2BLjLU7LZyIvEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUEv6-0006Co-Fi; Thu, 30 Apr 2020 19:32:28 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUEut-0006BU-J9
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 19:32:17 +0000
Received: by mail-lf1-x142.google.com with SMTP id u10so2212682lfo.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 12:32:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=IEqqDal1b2CMBBj1J/IhZlw32+Sg+2HPFFmYoJNFiUw=;
 b=DOWHisTWeBeZBVUEitPME/auY93uAUAgxG6PVUvbHoOc73Sf/iGaOTv49ntHPEtDvD
 N6Cx3OojCejqvLe4o6E9hTqAlmIXN9IKjCBGwAojzTGoRTxhPlEeaxB8hX+NCRBsbnjR
 F+Cm7Ljm2cx7hQof0ILpa+VZV6AbpDx30VM1RD32IIjO2EyCvwZOTF2sLN0ftsLiqEeA
 t3MdhNA3Wamo7wuambjqq5Ow2XfHfE0nzQhnxpOmuckaMZTMpOjWij1o6Eyvaty9gYqP
 /vhzKP3kik+a1rjRP86OqQ6JSbtALthq0PHjWtic9Mz6H1I2kC/Hu6arE2bFmulALd+E
 Q3bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=IEqqDal1b2CMBBj1J/IhZlw32+Sg+2HPFFmYoJNFiUw=;
 b=iFb/jzuqwmz0qGAdIXwKm2yutOazFutR5NjoY0J9Y08zZs3FJZVxC1kdLM+OrMkWNe
 fproj/iK8MPo2l/yHaIM9Pa9x7zsAoyez1L8UeC1e8lY0weBfw/XfQdNpEaQFmI3eC3u
 QGocxTMYjRbEZwlaE0aQehdzHCmaJt/3hVdYWXNWENQga160mZ1ROXniKFAPC9mf8bGa
 1MuwNdPsez3X3KlmSuuXwLnuDgP+YfQV+JA20SDwmMNpapUytjYIgpew32oHkYno40XA
 bwi0YZxdmx1Ix52tQ65Ccxrg1T0rxiC1nfFqZL5+9lfWI6p62vzvTmNb2LUP9hdAH5zn
 mo4w==
X-Gm-Message-State: AGi0Puavpugkz+ykyth8CeoHMXxu41a9v8jGX0YQqvP/aE6LyponVg3O
 rouzvFg+OL8DRHi+Qr3dfz9WeqWFcpk=
X-Google-Smtp-Source: APiQypJNFgSpmaFuLg/GY6Gie6VDzGSq5Rv1WOKs4ZofBix+8BkRN2sAbFhFcYeWgtk6CQXKyG8dyw==
X-Received: by 2002:a19:d:: with SMTP id 13mr114417lfa.167.1588275132329;
 Thu, 30 Apr 2020 12:32:12 -0700 (PDT)
Received: from [192.168.0.74] ([178.233.178.9])
 by smtp.gmail.com with ESMTPSA id i124sm429538lji.95.2020.04.30.12.32.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Apr 2020 12:32:11 -0700 (PDT)
Subject: Re: [RFC PATCH v2 0/3] Prefer working VT console over SPCR and
 device-tree chosen stdout-path
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
References: <20200430161438.17640-1-alpernebiyasak@gmail.com>
 <20200430164413.GV185537@smile.fi.intel.com>
From: Alper Nebi Yasak <alpernebiyasak@gmail.com>
Message-ID: <f332a19b-e8d1-d2b0-37c8-08381563f41b@gmail.com>
Date: Thu, 30 Apr 2020 22:32:04 +0300
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200430164413.GV185537@smile.fi.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_123215_630687_F8298116 
X-CRM114-Status: GOOD (  22.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alpernebiyasak[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Petr Mladek <pmladek@suse.com>, Feng Tang <feng.tang@intel.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Eric Biggers <ebiggers@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nicolas Pitre <nico@fluxnic.net>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Arvind Sankar <nivedita@alum.mit.edu>, Grzegorz Halat <ghalat@redhat.com>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 Lukas Wunner <lukas@wunner.de>, Andrew Morton <akpm@linux-foundation.org>,
 Sam Ravnborg <sam@ravnborg.org>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/04/2020 19:44, Andy Shevchenko wrote:
> First of all I see only cover letter and one out of 3 patches.

Apologies, the tool I've used to send the patches (U-Boot's patman)
Cc-ed the scripts/get_maintainer.pl output per-patch, instead of
per-series as I had assumed it would. This was the first time I tried
it, I'll keep that in mind.

Here are links to all four emails:

https://lore.kernel.org/linux-serial/20200430161438.17640-1-alpernebiyasak@gmail.com/
https://lore.kernel.org/linux-serial/20200430161438.17640-2-alpernebiyasak@gmail.com/
https://lore.kernel.org/linux-serial/20200430161438.17640-3-alpernebiyasak@gmail.com/
https://lore.kernel.org/linux-serial/20200430161438.17640-4-alpernebiyasak@gmail.com/

Or I can resend the last two patches to you, or resend all the parts to
everyone again.

>> eventually figured out that the kernel preferred the serial port
>> (inaccessible to me) over the built-in working display/keyboard and was
>> probably asking there.
> 
> "probably". Please, confirm that first.
> Also, without command line it's hard to say what you have asked kernel to do.

I was trying to boot a Debian userspace with cryptsetup, with the kernel
command line:

	root=/dev/mapper/sda3_crypt quiet splash

The Debian initramfs handles most of the work (the password prompt,
device mounts, etc.).

When I used the same kernel/initramfs/rootfs on a QEMU aarch64 VM, it
only prompted on the serial console instead the framebuffer. I'm
assuming the same thing happens on my hardware as well.

I can also ask the Debian initramfs to launch a shell by adding "break"
to the command line, which won't be printed on my device's screen unless
I also add "console=tty0". That shell also only appears on the serial
console on the QEMU aarch64 VM, unless I again add "console=tty0".

This is my primary computer and I'd prefer not dismantling it, so my
findings above are the best I believe I can do to confirm it now. I'm 
hoping other people would be interested in this, and would test more 
than I can.

>> Running plymouth in the initramfs solves that specific problem, but
> 
> What is plymouth?

Plymouth is a userspace program that's famous for showing a splash
animation during boot, but in this context: it handles user-interaction
that might need to happen while the initramfs is running, by printing
messages and prompts and reading user input to/from all consoles.

>>    ------------------+-----------------------+-----------------------+
>>    Chromebook Plus   | tty0     -WU (EC p  ) | tty0     -WU (EC p  ) |
>>    (w/o either)      |                       |                       |
>>    ------------------+-----------------------+-----------------------+
> 
> either == SPCR or stdout-path?

As in "When the device has no SPCR _and_ no chosen stdout-path".

>> This patchset tries to ensure that VT is preferred in those conditions
>> even in the presence of firmware-mandated serial consoles.
> 
> This sounds completely wrong. serial should be preferred over vt due to very
> debugging on early stages and SPCR is exactly for that.

I'm saying that from a userspace perspective, and the patches explicitly
try to switch to the vt only after a real framebuffer is initialized. So
if I did it right, it would still use SPCR/stdout-path's console during
the early stages. (I admit I haven't adjusted to talking within a kernel 
context yet).

In all honesty, I'm not sure if this is even considered a kernel bug,
let alone my patches a correct solution; hence the RFC PATCH as an
attempt at demonstrating this can be "fixed" in kernel.

> Maybe you should figure out the real root cause?

Thanks for the reply. Any ideas on what else could be causing this 
behaviour?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
