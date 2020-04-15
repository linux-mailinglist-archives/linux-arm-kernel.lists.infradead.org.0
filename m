Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F411AA223
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 14:58:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kLt6tohz4Xs+iUJ65LiV2RhwvPiQc4/bUngmV6tvvDg=; b=luSpFjyHLRDSEn
	Q+ynA9IqLVvkjo89OcxhlJ6JDDseJldhJzGuYjZsE2JK2fwGkHPx+lJ87xwFqgUcwjzKgMV7Zw8CQ
	reMKzWl7c29gtsKB/1U9m3QrI8jpy112pLApGYOvQAXbie+tGaDgoeLdzTfuI1ToYCiAZ3VAwR+vz
	frWFITOGsiUAc91dI5WN8Mx8VA/5CSkN1HQIsxyRdqSvEisE52oXAr6sHvWXA4lrW9I5yzkadI1X0
	F8GA8P3Ykw+pRM8LHUpzDpMIUYtNjVWbHuqVSk0S1MZa+4QiwqcmL9uxR4gX6XFmIfq2DHKUvTtbw
	6bebQ0GBbOMullUMMRjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhcn-0004Uf-9k; Wed, 15 Apr 2020 12:58:41 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhcY-0004TX-2u
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 12:58:27 +0000
Received: from mail-qt1-f176.google.com ([209.85.160.176]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MhlCa-1ilG8d1xi4-00dlM1 for <linux-arm-kernel@lists.infradead.org>; Wed,
 15 Apr 2020 14:58:23 +0200
Received: by mail-qt1-f176.google.com with SMTP id z90so13019506qtd.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 05:58:23 -0700 (PDT)
X-Gm-Message-State: AGi0PuYPsJ5c7R+ax78eAEIAl+yKjyVpP4e1DR67RoBjm1EqFcfi4fNw
 rH52zLFxw1Lmdz+rKW6l/RO0AGd6+/hwAwLK1XY=
X-Google-Smtp-Source: APiQypLmb1bYsqGBxxmmhAYIpYg+E9AqYkcfzIMIIhGI/UjPoCq3S810wOoySTAVykqPSkerK29SOUSk3ZdF6ygThUU=
X-Received: by 2002:ac8:6757:: with SMTP id n23mr8081126qtp.304.1586955502081; 
 Wed, 15 Apr 2020 05:58:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com>
 <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
 <CAMj1kXGXNxXGiC4dmNXHkZ6n=J0Fhim3oSwNx4Bz5m9fEphJvQ@mail.gmail.com>
 <20200410123301.GX25745@shell.armlinux.org.uk>
 <CAMj1kXFpknCfwb6JMdk_SHopnGqMswgSqaQUeAUEh5yaV10vJg@mail.gmail.com>
 <CAKwvOdk-xwuppJzxd1+5sfsC8jYiP3t8D=aTNaYxnFCRDiEUmQ@mail.gmail.com>
 <CAMj1kXFHb8th0rv1yjrsr=c1o-g9_ERPUy4itnrVN13fcQcXag@mail.gmail.com>
 <CAKwvOdm5aawsa2-=atB8z6W8zo8YVgdDEVbU3i4evDcpo1_AxQ@mail.gmail.com>
 <202004141258.6D9CB92507@keescook>
 <CAMj1kXG6_CO6pzeJCSeWiCDyLfWw+ZMuvkv_DLxe-si00fLd1Q@mail.gmail.com>
In-Reply-To: <CAMj1kXG6_CO6pzeJCSeWiCDyLfWw+ZMuvkv_DLxe-si00fLd1Q@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 15 Apr 2020 14:58:05 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3Ko0XTLUGwBxVM=nNebGr6ww66+cCKbYBrd9A4ME0__w@mail.gmail.com>
Message-ID: <CAK8P3a3Ko0XTLUGwBxVM=nNebGr6ww66+cCKbYBrd9A4ME0__w@mail.gmail.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
To: Ard Biesheuvel <ardb@kernel.org>
X-Provags-ID: V03:K1:W3oN9q2KWD6fFyBUP3XCC+OZDNQTsmFU1I0hk+HuKfynGsaib3M
 J20tyBFJuKRB3V7bVUxoAZV6n7czkSwx97XIAONgcsaOocPIj/AJKj97lvYfojfE+D16Zm3
 xPipuz2sbj/0MjTn8Ensy0KZU0Ilp+8rfNfGpi2xbLrZnQOMtpZ0G9FKO41QtfmKRbJe8CV
 VZyNSxJC1GuFtEjO1c7Ig==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zha+RO2cHIk=:yPB/FQn87Bnq4a50kQufo9
 slBZPK8+TX+pAyC9EkAclXqMqJETNddlbq+skEJYx+fGsB+THGG3m0s6nVTS6/fwPE6YaXwwB
 pDuoyWsr6hZG7kEcvO5YLuKULQhfQLxpSHWtpjb/UFvA0Rmlk3hDN88do7muD7UBePsP5Dttm
 OQRA9fe7IIsUunuHfsVWpf9+OZdgTL0GT+NgkH1ZHVY/doWC4tJocKeDoLhq4LzzfUIh1tj6H
 7x7d1aGXwNfLnPDPhY+9AJxGKX4HyQDYjGQd5WJ344o6it9W2GU76OCE0vWk/ycjG52fm0QEZ
 PHykYNUjymAEYuNgYCilSabP01rfd1hlDEumE3P7Qp67H1ZdV6N1zVjL7w8tPYv2itWOpO/n4
 Tt2sE+rsdqpjovN4B7puZmh3+FzkuEYG9RSDiWmlg8g/fqk+M6QUw9bpmYCSXV9TUiz1Hf/Mv
 z2AP10l1QkiUbry7ilKh74j8V0RwI2nyT/RLvf7BNXVnALz2SdO0xqFEuVpBO/l8LZYwEkpcZ
 OXFzMXXj+dLxG9vUyY+wM4vw2YPA8KDLfshSBF+Qk8MuYrPNrE+whoSUr5wiYBHaK8/rg1jyp
 0lXhkDJ6R140bqbZgJACGUHcgCiPLLukA5WHpjxK02pOBmCKfe9h+M+fx8IbXAdXu5furyrFk
 3TPI8wMkvirI5tzbnFYiWV4YEJsCE7hb2mSYnn8yBqzY8+Y5ExxEqIvqq7viQ1enKGCOJrxiQ
 +W3gSy4l+K8C5fhHUjAbDhVGWpYomRSt+apY+ayBKKoWOYwkEtMLxdH7EPNLLt1lQavsDm/cv
 p+A92rr9bOikIu59p+/K7uxSHK2r2CYpvGIJVhLlD+YHHzM9tU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_055826_413274_A0CB13FF 
X-CRM114-Status: GOOD (  24.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Peter Smith <Peter.Smith@arm.com>,
 Stefan Agner <stefan@agner.ch>, David Howells <dhowells@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Manoj Gupta <manojgupta@google.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 Kristof Beyls <Kristof.Beyls@arm.com>, Jian Cai <caij2003@gmail.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Ilie Halip <ilie.halip@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>, Luis Lozano <llozano@google.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Kees Cook <keescook@chromium.org>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>,
 Jian Cai <jiancai@google.com>, Stephen Hines <srhines@google.com>,
 Doug Anderson <armlinux@m.disordat.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Patrick Bellasi <patrick.bellasi@arm.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, Tejun Heo <tj@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 12:32 PM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Tue, 14 Apr 2020 at 22:53, Kees Cook <keescook@chromium.org> wrote:
> >
> > I don't know if this will help, but I feel like folks might be talking
> > past each other a little here. I see two primary issues that are
> > colliding, and I just want to call them out specifically...
>
> To reiterate my point: I strongly prefer minor asm surgery over
> elaborate Kconfig plumbing if it means we can retain the functionality
> even when using LLVM tools. In particular, the use of macros to
> implement missing ISA support should be considered before any other
> solution, as these are already being used widely across architectures
> to fill in such gaps.

+1

> > What's a good middle ground here? For VLAs, I ended up getting akpm's
> > help by having him add -Wvla to his local builds and send nag emails
> > to people when they added VLAs. That's not really a thing here, but it
> > seems like there should be a way to avoid losing ground (in this case,
> > it's the erosion of attention: repeated known-issue warnings means the
> > CI gets ignored for the warnings on newly added issues). It does seem
> > to me like adding the negative depends is a reasonable first step: it
> > marks what hard things need fixing later without losing coverage for
> > things that can be more easily fixed now with available resources.
> >
> > For the specific iwmmxt.S case, perhaps the solution is the suggested
> > changes? I imagine it should be possible to do a binary diff to see zero
> > changes before/after.
>
> This code has been around since 2004. It has never been possible to
> assemble it with Clang's assembler. So the only thing this patch gives
> you is the ability to switch from a .config where IWMMXT was disabled
> by hand to one where it gets disabled automatically by Kconfig.
>
> So what hard-won ground are we losing here? Did IWMMXT recently get
> enabled in a defconfig that you care about?

I mainly care about the build testing aspect here, it seems we are getting
close to having the clang integrated assembler working with all .S files
in the kernel (it used to work for none), and I'd like to do randconfig and
allmodconfig tests that include these as well. Disabling the option works
for me, but your suggestion with the added macros is clearly better.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
