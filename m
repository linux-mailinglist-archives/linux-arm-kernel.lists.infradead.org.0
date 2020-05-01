Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85AA81C1159
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 13:09:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y3t/NH6R9O3RSlQsbDqE+KETa5jMvgvst55zfHMf/dQ=; b=ktZmr31Byb4+nM
	Yn6mnf3z5Mrt7t+fR3dblbne7sxVdgizcrCanl3yTQUjX7W+a/eGZRx7iVKwSUYhWVd+LwA0ocSj1
	gQYDZMQ9n0X3LnHBi/I0ztaOQDLvEy14HIW8i2ENRflBPhB/ASZ2ZLhTzs/2ZptN1QrkLUz5rXwwC
	Vmw0SOb+VMnUlsatbxa724pKGVGYHosdDnZZ5Vr4SSfvoMVPG5hn4WwWJ7bViw2blNnkREbouVmj8
	JXpODcISzKNngWzzvSzTApHKOko1ZYlPuUgVIV2iLLQpEETSEee0RaRsb4Jq+7XA1fQZIEcPiBWwF
	f/4B4F5avJ/GOt2PVYLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUTXd-0001zP-Tv; Fri, 01 May 2020 11:09:13 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUTXY-0001yg-4Y
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 11:09:09 +0000
Received: by mail-lf1-x142.google.com with SMTP id u10so3614334lfo.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 04:09:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=JbMZH52YEWSxdCQl8+jIQlPQEAuYbjyzNeqiNbuukKE=;
 b=U+7irlew5ltgB9neJ2IUW9PFrMwsCCgcyWeEJKaaQtm1AN/QWS8zwTw5fMSCNsLDag
 A4bQA4vEuetXw/3nPDcycMnRS0CZdgF10nDi8vKpNePilWT0vFCalcmGy6eyQSrpiCn9
 GAdlJhJhJsJD7/sRBPHjcKe4F6G5b6I0SrFci4/YYke7JHMBqNuXaQVxZiv4C4OEY8ND
 i1+mNIM2n+t7osIVAz+hwD3HG4cDIbDbec9CYYoO6OF5RjjFx2WNN3yghLU5XlLjOKWL
 z71GvyadUkZIo/D5hP7/rpXHuTXrrOh0msvzT1rJCtDXKkgKFheJi4IDnmoBHlhI74DT
 IKNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JbMZH52YEWSxdCQl8+jIQlPQEAuYbjyzNeqiNbuukKE=;
 b=jybMzarMYaP1PUC8ceRtP8HJHx9gVOcqXaol4c3YaFwxFvBNyYXAm2t+QkWsyTtZNm
 uh5Nn+Av9wClvMWfw0E3pSeHbz78BzfPDo4SCWG16d1+INOezrRnrYxV78iluEQmkpKK
 WYA4NE50ZrgP0x4gXsyF/BDTc+VdIPJYkput2cJ8JcxjjFBFlerHca68cxlxs6p69nAh
 kvk6na4bkiFbND9DvLDQN4oIQmPcdJWvs2sp+fKWdEeKnZFJovv3nzMgq/lbNHSeucxU
 vYLKMTfNzwRGEmrqCDmk8mBjAlLOnG9QYZXz2RizSB0xHmhZ/dy0yGK5QaDMDzw+hTWj
 qUJQ==
X-Gm-Message-State: AGi0PuadoMunvWGThVOAnXsmnu1ARvsMTx3u1HYswh9R4G8YKw1L4HBS
 MsYmjzz2erZ3KHRDYwTK8Ds=
X-Google-Smtp-Source: APiQypIsazxBBI9m765GGp7qZdwhkRJkVk9sBcmxyN15Eo1/skHafCF+d9fBKRIPWxxi6ZBDSafi7Q==
X-Received: by 2002:a05:6512:44d:: with SMTP id
 y13mr1940676lfk.118.1588331345952; 
 Fri, 01 May 2020 04:09:05 -0700 (PDT)
Received: from [192.168.0.74] ([178.233.178.9])
 by smtp.gmail.com with ESMTPSA id t16sm1755806ljg.41.2020.05.01.04.09.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 01 May 2020 04:09:05 -0700 (PDT)
Subject: Re: [RFC PATCH v2 0/3] Prefer working VT console over SPCR and
 device-tree chosen stdout-path
To: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
References: <20200430161438.17640-1-alpernebiyasak@gmail.com>
 <20200501013044.GA288759@jagdpanzerIV.localdomain>
From: Alper Nebi Yasak <alpernebiyasak@gmail.com>
Message-ID: <818ba356-ba35-68de-b7bf-f145a89280f1@gmail.com>
Date: Fri, 1 May 2020 14:08:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200501013044.GA288759@jagdpanzerIV.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_040908_207860_33952BB3 
X-CRM114-Status: GOOD (  25.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alpernebiyasak[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On 01/05/2020 04:30, Sergey Senozhatsky wrote:> Well, if there is a "mandated console", then why would we prefer
> any other console?

From what I understand, the firmware provides serial console settings to
be used as the preferred _serial_ console (where it would be OK to
switch to graphical consoles later on) and the kernel currently
understands that such a console should be the preferred _system_ console
(always preferred over even graphical ones). By "mandated" I'm referring
to the kernel's current behavior, not to (in my understanding) the
firmware's intentions.

Even if the firmware/specifications is really asking the kernel to (tell
userspace programs to) always use the serial console instead of the
framebuffer console, while on e.g. a laptop-like device intended to be
used with a keyboard and display -- is that the correct thing to do?

From the userspace, under the conditions:

- CONFIG_VT_CONSOLE is enabled
- There is a working graphics adapter and a display
- There is no console argument given in the kernel command line

I expect that:

- tty0 is included in the /proc/consoles list [1]
- tty0 is the preferred console and /dev/console refers to it [2]

With SPCR both are false, and with stdout-path only the second is false.
Again, I'm OK with these being false during earlier stages until
graphics start working, but I'm arguing they should be true after then.

In the patches I tried to keep these serial consoles still enabled and
preferred during early stages of boot, by trying to switch to vt only
after a real working graphical backend for it is initialized.

I mean, if my expectations are unreasonable and the current kernel
behaviour is considered correct, these patches would be conceptually
wrong; so please tell me if I got anything right/wrong in all this.


[1] From the descripion of CONFIG_VT_CONSOLE:

> [...] If you answer Y here, a virtual terminal (the device used to
> interact with a physical terminal) can be used as system console.
> [...] you should say Y here unless you want the kernel messages be
> output only to a serial port [...]

and by "as a prerequisite of [2]"


[2] From the descripion of CONFIG_VT_CONSOLE:

> If you do say Y here, by default the currently visible virtual
> terminal (/dev/tty0) will be used as system console. You can change
> that with a kernel command line option such as "console=tty3" which
> would use the third virtual terminal as system console. [...]

I'm assuming "by default" here means "without console arguments"
regardless of firmware requests. This paragraph (with small changes) is
repeated on many other Kconfig descriptions (drivers/tty/serial/Kconfig,
drivers/tty/serial/8250/Kconfig, arch/sparc/Kconfig from grepping for
'/dev/tty0' on **/Kconfig).

From Documentation/admin-guide/serial-console.rst:

> You can specify multiple console= options on the kernel command line.
> [...]
> Note that you can only define one console per device type (serial, video).
>
> If no console device is specified, the first device found capable of
> acting as a system console will be used. At this time, the system
> first looks for a VGA card and then for a serial port. So if you don't
> have a VGA card in your system the first serial port will automatically
> become the console.

and later on:

> Note that if you boot without a ``console=`` option (or with
> ``console=/dev/tty0``), ``/dev/console`` is the same as ``/dev/tty0``.
> In that case everything will still work.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
