Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E95E4272BA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 01:10:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vo4kP/trUn/BraqpvOVR+QGJ6thLDFcrhboHU9AUHeM=; b=SYw24KXc8zAfZD
	gDTcLOtdlL3yNJI/QiGEVHk2Bu3Yv+JCQzxRbG7CT8RNUXNjkFkwolM5WKJmMsg+sPoE2tpuYinmk
	z1dnCdz7SRCgwJn9M7NLHQujmzrGWLtb78zZkP110Zgu8bMlcZBaWCnTxnrH6YVlnkeLFxyzF6vwk
	WMBWCOTuS9XMMMZfvtJxxQ8VkgL98Fwh5vEJbBMl7IDtwly6aDRZcupKZazMi+HVy+QPkxVu8+Kpl
	PWT4Tg/TPSQUiUR1OY9N3sLSbWGtaBx567IvQb2jf4vqiWuEHeWWAfd6sOSTMne8JVYf6TmgmQbxk
	aaoPIloq9vNum2CJQoCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTaMw-0000La-3K; Wed, 22 May 2019 23:09:58 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTaMn-0000KI-Jr
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 23:09:51 +0000
Received: by mail-lj1-x243.google.com with SMTP id e13so3620969ljl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 16:09:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Zo0ta7cFHgMRhNj415CGcWxBRhsPIdMQaFfQkNGZDyg=;
 b=igi2ZowCRR3eZ9/0nTV8cXZJb9K3GEJ6nM7xrdpCgyuIedU5DlpD8BYtYq2g7fhIK6
 FMPk+pIR3l66HCoBcqnR8RLDUlNVKBoDdSOOKbybJMa8cIyuAzuBD0XVwoayLR91TP1S
 Or9Vm+AM1MqvKUg9+c3gOd7GP47AnzQE07FfPqL0gIQFQsaz6/Wtl6TltaTcvzbkWmzx
 nUHyczH55lHnf4QLfD7YMKsWm2P4/KbXTCsRnYy/LgXeL0UQ2MOisKGH9I79sJSp7fTc
 mCIju+QQoBZwdM0ZHmLkXpay4k0e/6JiSlhqZI0PrF8znz18Mpt9AP9bfE2L3yEv2l8R
 69MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Zo0ta7cFHgMRhNj415CGcWxBRhsPIdMQaFfQkNGZDyg=;
 b=UoFElRxp1A2qkVsbnd7G9SJ9+D7g2S2/OgPcpEKH4lfXM+qRjd9pkW1bGjgl6Lr79K
 KNtSEBqQFttlVisaNrvF9+jq+se56N3y5GZ7KTI6lrh0EVxGRc3MXeyUYLmdeSKTdeIV
 GY1eZ/Q/pUGh/o9MXrqVhK+z2v7fB3SXJ6jC4MCD0Lfr302+YGMixM9d3J5gsVds6gcd
 XUiCQypdV9V+HgTedaswDxg6woJCCK+QUXH6jXyt3irN0fbmKf8k5R59oOyh0dxjU55i
 5RcD+/xzrHIp3mZ4RDiv+BoZr6UH3ZiHT6KXP6D8jhb8ZTfwd99zCErqyuB/EsYoBy4Y
 Mtpw==
X-Gm-Message-State: APjAAAWW7b9tPS4A9CU1/31nZs4Sj+Iy60HPtpUdDQB0jomLQiYqoxQU
 YhXcH0uA69o5v6aSgUzAma0OmnUjHvinVTZj1nkDew==
X-Google-Smtp-Source: APXvYqyzdpKdhtViUHlA5ZulCPuE1mR7dT316mPXUNWFyB1kZFy9VtMEAzPhqeN7WBqyKU4f463JOkqzDuNZUlPEoK8=
X-Received: by 2002:a2e:885a:: with SMTP id z26mr2119940ljj.35.1558566583161; 
 Wed, 22 May 2019 16:09:43 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1557160186.git.andreyknvl@google.com>
 <20190517144931.GA56186@arrakis.emea.arm.com>
 <CAFKCwrj6JEtp4BzhqO178LFJepmepoMx=G+YdC8sqZ3bcBp3EQ@mail.gmail.com>
 <20190521182932.sm4vxweuwo5ermyd@mbp> <201905211633.6C0BF0C2@keescook>
 <20190522101110.m2stmpaj7seezveq@mbp>
 <CAJgzZoosKBwqXRyA6fb8QQSZXFqfHqe9qO9je5TogHhzuoGXJQ@mail.gmail.com>
 <20190522163527.rnnc6t4tll7tk5zw@mbp> <201905221316.865581CF@keescook>
 <CAFKCwrjOjdJAbcABp3qxwyYy+hgfyQirvmqGkDSJVJe5pSz0Uw@mail.gmail.com>
In-Reply-To: <CAFKCwrjOjdJAbcABp3qxwyYy+hgfyQirvmqGkDSJVJe5pSz0Uw@mail.gmail.com>
From: enh <enh@google.com>
Date: Wed, 22 May 2019 16:09:31 -0700
Message-ID: <CAJgzZorUPzrXu0ysDdKwnqdvgWZJ9tqRjF-9_5CU_UV+c0bRCA@mail.gmail.com>
Subject: Re: [PATCH v15 00/17] arm64: untag user pointers passed to the kernel
To: Evgenii Stepanov <eugenis@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_160949_657763_C0B85866 
X-CRM114-Status: GOOD (  32.63  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 Khalid Aziz <khalid.aziz@oracle.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-media@vger.kernel.org, Kevin Brodsky <kevin.brodsky@arm.com>,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, LKML <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 4:03 PM Evgenii Stepanov <eugenis@google.com> wrote:
>
> On Wed, May 22, 2019 at 1:47 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Wed, May 22, 2019 at 05:35:27PM +0100, Catalin Marinas wrote:
> > > The two hard requirements I have for supporting any new hardware feature
> > > in Linux are (1) a single kernel image binary continues to run on old
> > > hardware while making use of the new feature if available and (2) old
> > > user space continues to run on new hardware while new user space can
> > > take advantage of the new feature.
> >
> > Agreed! And I think the series meets these requirements, yes?
> >
> > > For MTE, we just can't enable it by default since there are applications
> > > who use the top byte of a pointer and expect it to be ignored rather
> > > than failing with a mismatched tag. Just think of a hwasan compiled
> > > binary where TBI is expected to work and you try to run it with MTE
> > > turned on.
> >
> > Ah! Okay, here's the use-case I wasn't thinking of: the concern is TBI
> > conflicting with MTE. And anything that starts using TBI suddenly can't
> > run in the future because it's being interpreted as MTE bits? (Is that
> > the ABI concern? I feel like we got into the weeds about ioctl()s and
> > one-off bugs...)
> >
> > So there needs to be some way to let the kernel know which of three
> > things it should be doing:
> > 1- leaving userspace addresses as-is (present)
> > 2- wiping the top bits before using (this series)
> > 3- wiping the top bits for most things, but retaining them for MTE as
> >    needed (the future)
> >
> > I expect MTE to be the "default" in the future. Once a system's libc has
> > grown support for it, everything will be trying to use MTE. TBI will be
> > the special case (but TBI is effectively a prerequisite).
> >
> > AFAICT, the only difference I see between 2 and 3 will be the tag handling
> > in usercopy (all other places will continue to ignore the top bits). Is
> > that accurate?
> >
> > Is "1" a per-process state we want to keep? (I assume not, but rather it
> > is available via no TBI/MTE CONFIG or a boot-time option, if at all?)
> >
> > To choose between "2" and "3", it seems we need a per-process flag to
> > opt into TBI (and out of MTE). For userspace, how would a future binary
> > choose TBI over MTE? If it's a library issue, we can't use an ELF bit,
> > since the choice may be "late" after ELF load (this implies the need
> > for a prctl().) If it's binary-only ("built with HWKASan") then an ELF
> > bit seems sufficient. And without the marking, I'd expect the kernel to
> > enforce MTE when there are high bits.
> >
> > > I would also expect the C library or dynamic loader to check for the
> > > presence of a HWCAP_MTE bit before starting to tag memory allocations,
> > > otherwise it would get SIGILL on the first MTE instruction it tries to
> > > execute.
> >
> > I've got the same question as Elliot: aren't MTE instructions just NOP
> > to older CPUs? I.e. if the CPU (or kernel) don't support it, it just
> > gets entirely ignored: checking is only needed to satisfy curiosity
> > or behavioral expectations.
>
> MTE instructions are not NOP. Most of them have side effects (changing
> register values, zeroing memory).

no, i meant "they're encoded in a space that was previously no-ops, so
running on MTE code on old hardware doesn't cause SIGILL".

> This only matters for stack tagging, though. Heap tagging is a runtime
> decision in the allocator.
>
> If an image needs to run on old hardware, it will have to do heap tagging only.
>
> > To me, the conflict seems to be using TBI in the face of expecting MTE to
> > be the default state of the future. (But the internal changes needed
> > for TBI -- this series -- is a prereq for MTE.)
> >
> > --
> > Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
