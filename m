Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F8E63FCB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 06:03:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iuz4n/lgXajj4dSrDCt5zV7RPK/rLia5xTd0JPrmbbY=; b=FT4ohDc6NcIq+8
	3E3WibxULZFTSmG4ONJjOKXhTjKfqZpF0msx12JaBojwDDIae0Myk4CQr+3yikAJ19UV7id5TkZDh
	Zo8HqmzwINNTevSkSeKO5zxftjz6odmUeNQ+QxBglbzm7eZ2JUcE5SOQHdOCkDMMb+Gdugj87RS9/
	VEPs3i1Z8697xZpXujbY9Jhy/SR6JIwpuu7/aY3toO8qvZRFudUPQrYhvAyKa2ts99XNv88M0gVW5
	ZDLPU0MH2urdYFrhQ376T5UNS7KcWtuoZ0g4M3ZrNi6eW2OQj96VMcFZBBRoK3OuCCA8fddJnKbF1
	B0t3izNYIdwZhMIrl/7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl3p9-0005BA-FD; Wed, 10 Jul 2019 04:03:19 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl3p0-0005Ag-Gf
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 04:03:11 +0000
Received: by mail-wr1-x443.google.com with SMTP id p17so907966wrf.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 21:03:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=E/+8WA5YVt9o68tf7IxaP2AKZIs3izvlH0APT6Mt07Q=;
 b=K1qh7HcwzDZLVDAhRFo1UMOBKQLz3oQjDqRwz2jFT38WMwz/Hl+vBRVpz6PZ8eyy3Y
 dTAmu29NVGAwAZMWL0pe9v9Be598VLNvCEXNI4Hmi9hk8iVCmDpiCn3DzAX+ya48+l5E
 agWdvXAgbkGVdffOYWAEPWEA5Tt1dpEYgqARMkGUm9CBA9Z7CDJCzkt8K2r4smVHL7vu
 IxMt0gyE+LkrWBBgHX7+Dm2eM7WrA3nvP7LdaYR5P8bZpqvhbzthPdfj/epTNYwzA56p
 AOfetMta9CkyUC4Q9MJQDe4yMoicmVktguXRf/xx872evRk4ahBKSIB/SR+PNbG029Rw
 4ZUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E/+8WA5YVt9o68tf7IxaP2AKZIs3izvlH0APT6Mt07Q=;
 b=SOaV9JeAxSgK2B41WggoYqb9t+wO4iaMRyaE26fPakuHHkfVYCILbB4magXxum9BQ+
 P+QLc6s1xpy6FNO5qKz1olY7oSEZ+0DXTXEIBiitTDImMTrN2FRH/8O07IIpOAwlnkhR
 Dp9J7QAqvzmLnLTNvPFkIqAmu/Yf2Ei3b5qL+xzu24B+BMSIGzzYbe71tAykzjsa/gGr
 EZGymSkw0N9Cv/a+HkuCxQSWE72BrHUUhZ1gDd9qlt0VSr9mfuS/ID31QdzrAmn7WQnQ
 GUuE+uPOtJRE7YCyaWEBywKeZhWvSWmr9VSmqfTtuIPyeYGyMrPetQ2dF/kEfQ7JHYKK
 1qUg==
X-Gm-Message-State: APjAAAWzBW9iiqMs/2+/CztP5Y1cU0X+f4YlkSvc4kNuoNRddGHOFO66
 m86H34QFktnLj6LcA6AzhI13Tcs/cqi64q6dk1CExw==
X-Google-Smtp-Source: APXvYqzPOdmo7LUjjtBVy+Eam/jLKZXcN/T+ttk0oWQFmX0MgxeRc22swD1KsBEGZUN6nDxG/pwDPT36kLteJxt49zQ=
X-Received: by 2002:a05:6000:145:: with SMTP id
 r5mr9063316wrx.208.1562731387533; 
 Tue, 09 Jul 2019 21:03:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
 <20190621095252.32307-11-vincenzo.frascino@arm.com>
In-Reply-To: <20190621095252.32307-11-vincenzo.frascino@arm.com>
From: John Stultz <john.stultz@linaro.org>
Date: Tue, 9 Jul 2019 21:02:54 -0700
Message-ID: <CALAqxLXxE5B+vVLj7NcW8S05nhDQ+XSKVn=_MNDci667JDFEhA@mail.gmail.com>
Subject: Re: [PATCH v7 10/25] arm64: compat: Add vDSO
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_210310_587272_2F7FB6AE 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: linux-arch@vger.kernel.org, Shijith Thotton <sthotton@marvell.com>,
 Peter Collingbourne <pcc@google.com>, Arnd Bergmann <arnd@arndb.de>,
 Huw Davies <huw@codeweavers.com>, Andre Przywara <andre.przywara@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 lkml <linux-kernel@vger.kernel.org>, Ralf Baechle <ralf@linux-mips.org>,
 linux-mips@vger.kernel.org, Paul Burton <paul.burton@mips.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kselftest@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Mark Salyzyn <salyzyn@android.com>, Shuah Khan <shuah@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 3:18 AM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:
>
> Provide the arm64 compat (AArch32) vDSO in kernel/vdso32 in a similar
> way to what happens in kernel/vdso.
>
> The compat vDSO leverages on an adaptation of the arm architecture code
> with few changes:
>  - Use of lib/vdso for gettimeofday
>  - Implementation of syscall based fallback
>  - Introduction of clock_getres for the compat library
>  - Implementation of trampolines
>  - Implementation of elf note
>
> To build the compat vDSO a 32 bit compiler is required and needs to be
> specified via CONFIG_CROSS_COMPILE_COMPAT_VDSO.
>

Hey Vincenzo!
  Congrats on getting this work merged, I know its been a long effort
over a number of years!

Though unfortunately, it seems the arm64 vdso code that just landed is
breaking AOSP for me.

I see a lot of the following errors:
01-01 01:22:14.097   755   755 F libc    : Fatal signal 11 (SIGSEGV),
code 1 (SEGV_MAPERR), fault addr 0x3cf2c96c in tid 755 (cameraserver),
pid 755 (cameraserver)
01-01 01:22:14.112   759   759 F libc    : Fatal signal 11 (SIGSEGV),
code 1 (SEGV_MAPERR), fault addr 0x3cf2c96c in tid 759
(android.hardwar), pid 759 (android.hardwar)
01-01 01:22:14.120   756   756 F libc    : Fatal signal 11 (SIGSEGV),
code 1 (SEGV_MAPERR), fault addr 0x3cf2c96c in tid 756 (drmserver),
pid 756 (drmserver)

Which go away if I revert the vdso merge that went in via tip/timers.

I tried to bisect things down a bit, but as some later fixes are
required (at one point, date was returning the start epoch and never
increasing), this hasn't worked too well. But I'm guessing since I
see: "CROSS_COMPILE_COMPAT not defined or empty, the compat vDSO will
not be built", and the system is half working, I'm guessing this is an
issue with just the 32bit code failing.  While I can try to sort out
the proper CROSS_COMPILE_COMPAT in my build environment, I assume
userland shouldn't be crashing if that value isn't set.

Any chance this issue has already been raised?

thanks
-john

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
