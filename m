Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E3D28C5B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 23:31:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZPuIc+FAhcFEQ3qzzEhfcrA53IXP7qfARCi7Xrf15V8=; b=OLruXy9u3sNni/
	gAHJJRY9aHjkpG3gvHKX8ECHooEsT14YAAzM14YT7OozhPdPrcLjMINkMvu09vEP/chpoeDR2jSRd
	tQttrgxNyzfjs5eE8d48h211DajtUgYIKwJVK8L5ESgqO4RR6Up+rK+qOIWELNtGVD5Q7ZT1gIolC
	0A/clLMgaQqgvBA0W1B9MCbZ0dBoWMQPVxymuPvByr26X4sEVP/8jSYxcwn+n/C6FPOc7bfgql/Sa
	efvVeRuwGf+/n9xQ+RGAPdMXz4kdlkKEe2ejwnDzu793ja3+sfWevRKg23+tzyFopAMAX9t59uWhG
	XkhR0xVrUbzY27SYX8jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTvJB-0007Eo-Ae; Thu, 23 May 2019 21:31:29 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTvJ2-0007Dp-9K
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 21:31:22 +0000
Received: by mail-pg1-x542.google.com with SMTP id w22so3787077pgi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 14:31:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=RooTx4nZ0Zm8m1fxzq6UPxwDmwN2R9frxfJHiTxcRUE=;
 b=SXshT/JWt4/VxFaxzUCPBis/uU7CKJhnvqILKuBvKuHgZM/0X3lQPlS9BrcA9GPwgN
 mNP52DBHjW70HoXLGw3kCTAML6GHF8r2zv6T7pohAbgiWS2GBzlP+CcIwmEuaO+qZxq4
 C2Jko0HEb2Ra0I9vlZLyIy+YOud56hz3nr/kE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=RooTx4nZ0Zm8m1fxzq6UPxwDmwN2R9frxfJHiTxcRUE=;
 b=apb5PjIR3b1X5l0pUhWIkBHdn5Jg33GN0hA7Q9Xul1+OLu9e8pI8bhUxoqM0MhIQeY
 WWQGYNVdg/CHFDN5AYlCXZfz3NQPRVzJvgV9u4PpaZJ6iZBoK6wWfGTSGNQdIUDhyIVl
 naPMkY6zFarcRMQJFA5A/uZynjM5WrVSo20d8TzIF8cY3WAPGouYehOeIuB8eYzY+e4P
 Kctu1VQc+BMm3Yc8+GlgwiwWUXttxOO7tT8On+jZ9vqYGI7orkfp3eorLyBhNsg9gC1b
 98lEdKdgn3az4NlFj9qRuB3kmU55UIDxL2jXG7ZdACJWj8v/+ibfXmuY9Ieu2NCuT4kU
 AYqw==
X-Gm-Message-State: APjAAAXf6PB4ke9xWgQGEXyDbdku0hnUsC62G1nvQT9RAswBeDFkV4J2
 I/VTYK50yK7ITe90vHDz6vMIgA==
X-Google-Smtp-Source: APXvYqw6NOt/dAzFGypTG6hDOH9RhK81m8D3qkjrLvBMN1nJLO77YhSc++d1DOA7/Z/CI2DiFH6JYA==
X-Received: by 2002:a63:2226:: with SMTP id i38mr5980879pgi.403.1558647079048; 
 Thu, 23 May 2019 14:31:19 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id f186sm406654pfb.5.2019.05.23.14.31.17
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 23 May 2019 14:31:17 -0700 (PDT)
Date: Thu, 23 May 2019 14:31:16 -0700
From: Kees Cook <keescook@chromium.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v15 00/17] arm64: untag user pointers passed to the kernel
Message-ID: <201905231327.77CA8D0A36@keescook>
References: <CAFKCwrj6JEtp4BzhqO178LFJepmepoMx=G+YdC8sqZ3bcBp3EQ@mail.gmail.com>
 <20190521182932.sm4vxweuwo5ermyd@mbp>
 <201905211633.6C0BF0C2@keescook>
 <20190522101110.m2stmpaj7seezveq@mbp>
 <CAJgzZoosKBwqXRyA6fb8QQSZXFqfHqe9qO9je5TogHhzuoGXJQ@mail.gmail.com>
 <20190522163527.rnnc6t4tll7tk5zw@mbp>
 <201905221316.865581CF@keescook>
 <20190523144449.waam2mkyzhjpqpur@mbp>
 <201905230917.DEE7A75EF0@keescook>
 <20190523174345.6sv3kcipkvlwfmox@mbp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523174345.6sv3kcipkvlwfmox@mbp>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_143120_395974_A961A436 
X-CRM114-Status: GOOD (  27.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 Khalid Aziz <khalid.aziz@oracle.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgenii Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Yishai Hadas <yishaih@mellanox.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>, LKML <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 06:43:46PM +0100, Catalin Marinas wrote:
> On Thu, May 23, 2019 at 09:38:19AM -0700, Kees Cook wrote:
> > What on this front would you be comfortable with? Given it's a new
> > feature isn't it sufficient to have a CONFIG (and/or boot option)?
> 
> I'd rather avoid re-building kernels. A boot option would do, unless we
> see value in a per-process (inherited) personality or prctl. The

I think I've convinced myself that the normal<->TBI ABI control should
be a boot parameter. More below...

> > What about testing tools that intentionally insert high bits for syscalls
> > and are _expecting_ them to fail? It seems the TBI series will break them?
> > In that case, do we need to opt into TBI as well?
> 
> If there are such tools, then we may need a per-process control. It's
> basically an ABI change.

syzkaller already attempts to randomly inject non-canonical and
0xFFFF....FFFF addresses for user pointers in syscalls in an effort to
find bugs like CVE-2017-5123 where waitid() via unchecked put_user() was
able to write directly to kernel memory[1].

It seems that using TBI by default and not allowing a switch back to
"normal" ABI without a reboot actually means that userspace cannot inject
kernel pointers into syscalls any more, since they'll get universally
stripped now. Is my understanding correct, here? i.e. exploiting
CVE-2017-5123 would be impossible under TBI?

If so, then I think we should commit to the TBI ABI and have a boot
flag to disable it, but NOT have a process flag, as that would allow
attackers to bypass the masking. The only flag should be "TBI or MTE".

If so, can I get top byte masking for other architectures too? Like,
just to strip high bits off userspace addresses? ;)

(Oh, in looking I see this is implemented with sign-extension... why
not just a mask? So it'll either be valid userspace address or forced
into the non-canonical range?)

[1] https://salls.github.io/Linux-Kernel-CVE-2017-5123/

> > Alright, the tl;dr appears to be:
> > - you want more assurances that we can find __user stripping in the
> >   kernel more easily. (But this seems like a parallel problem.)
> 
> Yes, and that we found all (most) cases now. The reason I don't see it
> as a parallel problem is that, as maintainer, I promise an ABI to user
> and I'd rather stick to it. I don't want, for example, ncurses to stop
> working because of some ioctl() rejecting tagged pointers.

But this is what I don't understand: it would need to be ncurses _using
TBI_, that would stop working (having started to work before, but then
regress due to a newly added one-off bug). Regular ncurses will be fine
because it's not using TBI. So The Golden Rule isn't violated, and by
definition, it's a specific regression caused by some bug (since TBI
would have had to have worked _before_ in the situation to be considered
a regression now). Which describes the normal path for kernel
development... add feature, find corner cases where it doesn't work,
fix them, encounter new regressions, fix those, repeat forever.

> If it's just the occasional one-off bug I'm fine to deal with it. But
> no-one convinced me yet that this is the case.

You believe there still to be some systemic cases that haven't been
found yet? And even if so -- isn't it better to work on that
incrementally?

> As for the generic driver code (filesystems or other subsystems),
> without some clear direction for developers, together with static
> checking/sparse, on how user pointers are cast to longs (one example),
> it would become my responsibility to identify and fix them up with any
> kernel release. This series is not providing such guidance, just adding
> untagged_addr() in some places that we think matter.

What about adding a nice bit of .rst documentation that describes the
situation and shows how to use untagged_addr(). This is the kind of
kernel-wide change that "everyone" needs to know about, and shouldn't
be the arch maintainer's sole responsibility to fix.

> > - we might need to opt in to TBI with a prctl()
> 
> Yes, although still up for discussion.

I think I've talked myself out of it. I say boot param only! :)


So what do you say to these next steps:

- change untagged_addr() to use a static branch that is controlled with
  a boot parameter.
- add, say, Documentation/core-api/user-addresses.rst to describe
  proper care and handling of user space pointers with untagged_addr(),
  with examples based on all the cases seen so far in this series.
- continue work to improve static analysis.

Thanks for wading through this with me! :)

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
