Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39CC432238
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Jun 2019 07:06:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LdA8vB0gDfErHEmiXRPXj4qKqv6lYrZAeLu38xOxHqA=; b=Bc06AKEbL7rX2y
	jkdoTZ/jpmssvYs15s3HEyWS6yvyylDJT/VfUhbMcQ2EZ48gpw1RsUP5ffuWhTWIzrjF9lWRvFM0F
	LdMiNT6nQmKXLuL4LTYwAWXUu7nC8W06UuH6GSq4hso5hnmBSYOY04FNUQNshSpoG2BBjFdDCwkjB
	ZC/S03PLwdiUauaAVo7ng4s4VVx/xSUqx/Vq8o9wFwybkpAgfGKbVpK/3F1pNBgohJr2tuxCEWZ6O
	fJMfmaEgWZxeuky41YbMOmYzoGKa8sFsMzKeByNMEqYB0vXlz/viuleHXSv/kuWmQf7F+AdnCh869
	Ix5UngJ+azTZHrl5vQpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXIhJ-0003W4-1e; Sun, 02 Jun 2019 05:06:21 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXIhC-0003Vj-Qg
 for linux-arm-kernel@lists.infradead.org; Sun, 02 Jun 2019 05:06:16 +0000
Received: by mail-pg1-x541.google.com with SMTP id 20so6338890pgr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 01 Jun 2019 22:06:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=8FrEn8Oc47oyqvsIyUn+ei84DckXK5ddHX1nKUOQVF0=;
 b=I+l433GU6rh5Vh+cXRg2sWftONjf5E0xtYRJR0maMC3On194A0XuFQ8es0fmdrLaO4
 QMulbFvcAdi+pOn8HpskX0ufgW7qoStMxwwMGtpoIzBLU8ImYfubQhLJZlu5J4RYe6TO
 Yim8ter4osHiihcYza518LDlKNV+048cHSWMc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=8FrEn8Oc47oyqvsIyUn+ei84DckXK5ddHX1nKUOQVF0=;
 b=EPseeRTJnSJ7qkRPwVvpkcS2y/OU4APWe5/KOH0uznFBA7vQYxK9phgYnokaTBgfgC
 fwtXYNhBXuWbCB9ypqfa+OK7DVpjzVJCgu0PqsPplIVY0sPNTtMCNyEGCTB/pbssyVR1
 +gI2Adowb8z5/pihf2tueKfYavrdalNJMWuXip+a68pwYAnXP/2VLMXDX8G7et2vIBkl
 iZeFG26toO9X6EV/H3DMirMCtl4ywFyy8vq+ntwBxensYiXKx6gVIOh2CtxjOcqDs83r
 BRUyhfMvdEml6c9PZH3rrlFPHJswEd4xDGv3xOvc8FijNvyfPpq8q3BfPqvqfRb9O0xh
 DE2Q==
X-Gm-Message-State: APjAAAWyaJ6ZK5Ko39UlMNT/q4ncemNqcLmLREj+Vv+PkKVFXyrKo+vo
 O85LR4bmr8gVU1V4OGJE1VcHXg==
X-Google-Smtp-Source: APXvYqww51z53Fj+SFur89FkVZvsAjQrEhIV13t8870aGnrYJ2f32X4e6lxRmTKOa2Pc17jm0i7ppA==
X-Received: by 2002:a65:520b:: with SMTP id o11mr20347226pgp.184.1559451973138; 
 Sat, 01 Jun 2019 22:06:13 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id x28sm12472404pfo.78.2019.06.01.22.06.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 01 Jun 2019 22:06:12 -0700 (PDT)
Date: Sat, 1 Jun 2019 22:06:10 -0700
From: Kees Cook <keescook@chromium.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v15 00/17] arm64: untag user pointers passed to the kernel
Message-ID: <201906012156.55E2C45@keescook>
References: <201905211633.6C0BF0C2@keescook>
 <20190522101110.m2stmpaj7seezveq@mbp>
 <CAJgzZoosKBwqXRyA6fb8QQSZXFqfHqe9qO9je5TogHhzuoGXJQ@mail.gmail.com>
 <20190522163527.rnnc6t4tll7tk5zw@mbp>
 <201905221316.865581CF@keescook>
 <20190523144449.waam2mkyzhjpqpur@mbp>
 <201905230917.DEE7A75EF0@keescook>
 <20190523174345.6sv3kcipkvlwfmox@mbp>
 <201905231327.77CA8D0A36@keescook>
 <20190528170244.GF32006@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190528170244.GF32006@arrakis.emea.arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_220614_919150_F433FB83 
X-CRM114-Status: GOOD (  23.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Tue, May 28, 2019 at 06:02:45PM +0100, Catalin Marinas wrote:
> On Thu, May 23, 2019 at 02:31:16PM -0700, Kees Cook wrote:
> > syzkaller already attempts to randomly inject non-canonical and
> > 0xFFFF....FFFF addresses for user pointers in syscalls in an effort to
> > find bugs like CVE-2017-5123 where waitid() via unchecked put_user() was
> > able to write directly to kernel memory[1].
> > 
> > It seems that using TBI by default and not allowing a switch back to
> > "normal" ABI without a reboot actually means that userspace cannot inject
> > kernel pointers into syscalls any more, since they'll get universally
> > stripped now. Is my understanding correct, here? i.e. exploiting
> > CVE-2017-5123 would be impossible under TBI?
> > 
> > If so, then I think we should commit to the TBI ABI and have a boot
> > flag to disable it, but NOT have a process flag, as that would allow
> > attackers to bypass the masking. The only flag should be "TBI or MTE".
> > 
> > If so, can I get top byte masking for other architectures too? Like,
> > just to strip high bits off userspace addresses? ;)
> 
> Just for fun, hack/attempt at your idea which should not interfere with
> TBI. Only briefly tested on arm64 (and the s390 __TYPE_IS_PTR macro is
> pretty weird ;)):

OMG, this is amazing and bonkers. I love it.

> --------------------------8<---------------------------------
> diff --git a/arch/s390/include/asm/compat.h b/arch/s390/include/asm/compat.h
> index 63b46e30b2c3..338455a74eff 100644
> --- a/arch/s390/include/asm/compat.h
> +++ b/arch/s390/include/asm/compat.h
> @@ -11,9 +11,6 @@
>  
>  #include <asm-generic/compat.h>
>  
> -#define __TYPE_IS_PTR(t) (!__builtin_types_compatible_p( \
> -				typeof(0?(__force t)0:0ULL), u64))
> -
>  #define __SC_DELOUSE(t,v) ({ \
>  	BUILD_BUG_ON(sizeof(t) > 4 && !__TYPE_IS_PTR(t)); \
>  	(__force t)(__TYPE_IS_PTR(t) ? ((v) & 0x7fffffff) : (v)); \
> diff --git a/include/linux/syscalls.h b/include/linux/syscalls.h
> index e2870fe1be5b..b1b9fe8502da 100644
> --- a/include/linux/syscalls.h
> +++ b/include/linux/syscalls.h
> @@ -119,8 +119,15 @@ struct io_uring_params;
>  #define __TYPE_IS_L(t)	(__TYPE_AS(t, 0L))
>  #define __TYPE_IS_UL(t)	(__TYPE_AS(t, 0UL))
>  #define __TYPE_IS_LL(t) (__TYPE_AS(t, 0LL) || __TYPE_AS(t, 0ULL))
> +#define __TYPE_IS_PTR(t) (!__builtin_types_compatible_p(typeof(0 ? (__force t)0 : 0ULL), u64))
>  #define __SC_LONG(t, a) __typeof(__builtin_choose_expr(__TYPE_IS_LL(t), 0LL, 0L)) a
> +#ifdef CONFIG_64BIT
> +#define __SC_CAST(t, a)	(__TYPE_IS_PTR(t) \
> +				? (__force t) ((__u64)a & ~(1UL << 55)) \
> +				: (__force t) a)
> +#else
>  #define __SC_CAST(t, a)	(__force t) a
> +#endif
>  #define __SC_ARGS(t, a)	a
>  #define __SC_TEST(t, a) (void)BUILD_BUG_ON_ZERO(!__TYPE_IS_LL(t) && sizeof(t) > sizeof(long))

I'm laughing, I'm crying. Now I have to go look at the disassembly to
see how this actually looks. (I mean, it _does_ solve my specific case
of the waitid() flaw, but wouldn't help with pointers deeper in structs,
etc, though TBI does, I think still help with that. I have to catch back
up on the thread...) Anyway, if it's not too expensive it'd block
reachability for those kinds of flaws.

I wonder what my chances are of actually getting this landed? :)
(Though, I guess I need to find a "VA width" macro instead of a raw 55.)

Thanks for thinking of __SC_CAST() and __TYPE_IS_PTR() together. Really
made my day. :)

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
