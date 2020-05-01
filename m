Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 168B81C18F4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 17:07:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PByhVW1mD+OhHvGYem0a3409UK9WLnStvZx3CTAjWsc=; b=LMsRxX1sBmzj+o
	UWVJ0SCAdIBAV6R03pulsrlEcCyjfsmSLrGd6247YL7wYhSn+XHAHCL3uLqkGzzNosIPupNDzc4zi
	+B2phMe0WlQjTjQaOba7/3rYrxaA1D9n6tFo13hoXsIlSyiibAeIS5R7jje8WCCtJGvnNtSB1JcYd
	UbY5Irww9zUYiD1JJnKxCllGDR2BMTyrVR932AE984b51Ju8/pBCEP/ZlA4iBhizoJXCy0PgrkALT
	ZEIWixJwM0P6HaBZCnsyTfX2fWmVVQmLzKdtOn/zjn4COdowtnEzqPRvzyH4Y6hkGas7u4yfuKgOM
	ZqJkkoyq3TE53VpC8klQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUXGB-0006sO-QH; Fri, 01 May 2020 15:07:27 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUXG5-0006rR-Jf
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 15:07:22 +0000
Received: by mail-lj1-x243.google.com with SMTP id a21so2842418ljb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 08:07:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=upOUdSA1Qa3kRXGYSaZZPrHtnJP9z+HJ8x8GQ4kRPF8=;
 b=guUWyREbg1v99mp5JVpch/N8xFP0yadNEcjMtY4Pxt/EXZ0urMvwoGSVC9EvNyIyOW
 YYFdd+dKaAAjCGrr+awTct9/wUlUWLp+RkgMsok1KKhFb5jyFUXLfJj6AIXE1qorG7RE
 c+sdRcadiPRsq8NqlzxNMAec03sEEPXhYQHSe1ElCszSakwXTszYYsLTPpJLZ3Lh9wsz
 qGAwDDllm6eUquPi+JtmZZcrvXRQl1XwDC2kR2cusSIUolWZX2R+wNdMrYjRemti1Cx9
 iB7zuvjbkarND9uY35ZaNnnS/ETdSYb5aevq/TNwMwyKAOpzwCXHS+btJhjwtv4AaaWP
 QptQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=upOUdSA1Qa3kRXGYSaZZPrHtnJP9z+HJ8x8GQ4kRPF8=;
 b=BrqP7PO9MNktP7DeY5G3+hg7u/LbnwVwWx36fKESD3zV4dnkKQrQ2RZOiYNqM2NtYA
 rrIGa55qjRsMyFWKHXdPLLeB6i9P2co9fHkl4vvVmcrOvTnc6IvlC5BzNnNfbtdrSvbS
 neLgQbf84a8Vpf4T+ClrX43MCacjxrePT3jdUcRHORQ2ugkiZ0Apq/ka6umB7ByNfc9a
 cTYde1gyQePX76nnMYi23Ot5nbLgU1ESv6FqXBS3pOsdskwmliS8GbYwiRYkAilDWQUS
 Quad6lGP3eL1kH2Cjy+NDp5e3vWWmSfGAvETbKFNwcG0A94UuyMILB/3DtLPCJHXeU7q
 g6oA==
X-Gm-Message-State: AGi0PuY8x62lSx3FVH9VKkFkUWIWeqY116OiocSiQTaTUhO9/Wffq2nk
 jWwndGd1dTmtlArU0WRQONI=
X-Google-Smtp-Source: APiQypKlGD+iUIY9mDeLIe59axBBk5YzG667ZkaJqGWQfXMpFrhBLjtlipoZCkeeAPnYUSiTg5zyEA==
X-Received: by 2002:a2e:91d4:: with SMTP id u20mr2699038ljg.248.1588345640064; 
 Fri, 01 May 2020 08:07:20 -0700 (PDT)
Received: from [192.168.0.74] ([178.233.178.9])
 by smtp.gmail.com with ESMTPSA id o18sm2393090lfb.13.2020.05.01.08.07.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 01 May 2020 08:07:18 -0700 (PDT)
Subject: Re: [RFC PATCH v2 0/3] Prefer working VT console over SPCR and
 device-tree chosen stdout-path
To: Andy Shevchenko <andy.shevchenko@gmail.com>
References: <20200430161438.17640-1-alpernebiyasak@gmail.com>
 <20200501013044.GA288759@jagdpanzerIV.localdomain>
 <818ba356-ba35-68de-b7bf-f145a89280f1@gmail.com>
 <CAHp75VeZRwUp+CpOct4dCAQAfyJZBAY7=qSKwRQh935KEMWw+g@mail.gmail.com>
From: Alper Nebi Yasak <alpernebiyasak@gmail.com>
Message-ID: <3cd630dd-9bb9-e975-7466-c3125aa6afa3@gmail.com>
Date: Fri, 1 May 2020 18:07:10 +0300
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAHp75VeZRwUp+CpOct4dCAQAfyJZBAY7=qSKwRQh935KEMWw+g@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_080721_646627_D4EC5E02 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
 Nicolas Pitre <nico@fluxnic.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Arvind Sankar <nivedita@alum.mit.edu>, Grzegorz Halat <ghalat@redhat.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>, Lukas Wunner <lukas@wunner.de>,
 Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sam Ravnborg <sam@ravnborg.org>, "David S. Miller" <davem@davemloft.net>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 01/05/2020 16:16, Andy Shevchenko wrote:
> On Fri, May 1, 2020 at 2:11 PM Alper Nebi Yasak
> <alpernebiyasak@gmail.com> wrote:
>> I'm assuming "by default" here means "without console arguments"
>> regardless of firmware requests. This paragraph (with small changes) is
>> repeated on many other Kconfig descriptions (drivers/tty/serial/Kconfig,
>> drivers/tty/serial/8250/Kconfig, arch/sparc/Kconfig from grepping for
>> '/dev/tty0' on **/Kconfig).
>>
>>  From Documentation/admin-guide/serial-console.rst:
>>
>>> You can specify multiple console= options on the kernel command line.
>>> [...]
>>> Note that you can only define one console per device type (serial, video).
>>>
>>> If no console device is specified, the first device found capable of
>>> acting as a system console will be used. At this time, the system
>>> first looks for a VGA card and then for a serial port. So if you don't
>>> have a VGA card in your system the first serial port will automatically
>>> become the console.
>>
>> and later on:
>>
>>> Note that if you boot without a ``console=`` option (or with
>>> ``console=/dev/tty0``), ``/dev/console`` is the same as ``/dev/tty0``.
>>> In that case everything will still work.
> 
> I'm wondering if behaviour is changed if you put console=tty1 instead
> of console=tty0.

Just tested again with the QEMU aarch64 VM. Comparing console=tty1 and
console=tty0 cases: /proc/consoles has tty1 instead of tty0 (both also
has ttyAMA0), and `echo '/dev/console is here' >>/dev/console` goes to
vt1 instead of the currently visible vt. Same difference before and
after this patchset.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
