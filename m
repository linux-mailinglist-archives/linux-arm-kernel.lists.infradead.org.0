Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3681BD76E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 10:40:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MbOKQZgoGKLOWXJMnPw3JYWqhYw4sh6XoGtcV7SaM34=; b=ZBrSYou7jyY14s
	yG87kOMIwGU/nrCjHh0J+ctuRFuLR89YXiUvRnhx8SVMghGvPTQrMi+UDXuBDVFp3rVD31lm/4IK8
	goRYA3SaMIOP+AfLkSzB05ld9NqDcmz990xpafhPR6T4ypUS6Q7ApGCT1Rt1pAERcaJ8yji/ufdTS
	YwxFMDyTQQUpeehvrAZc9wFpNCU4BdWEH9C3xTUAbP7vqSaLyReCuylgSW5tDXP46QTYq5D0iq4YK
	z9CXThuw4DgT580lCX/tA6o8ai3RDVhiIAr+yqXdz7QOU4GIYm9R4pfr05EgKtNkvCIMVDybTbFEO
	x0vQKDYfZebD7Nc3yTGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTiGZ-0007f5-RV; Wed, 29 Apr 2020 08:40:27 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTiGP-0007eP-MN
 for linux-arm-kernel@bombadil.infradead.org; Wed, 29 Apr 2020 08:40:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=rh3Usnw8bOex69mvNB+d0nBhcgpfGnAT8Fk1eVONbL0=; b=GfsCilVzpkal4McJZJ4xKqL6vs
 T+lsi1JeCr5Xk2zTCG7hXhnkpihmmM1it+14dFSHBYg54x22BNgDk9BXN5WKV4NegMtWOyPmO3UdL
 KvL4p7P0x1qQ6v2lLu3lDM8pkNgj1O4Ijnzr+ImAD12kS5dxuDak1StAitctWLFAIR7VLgYR4eWXZ
 op4e4+9zp7WrNkv7rg7Hins6X0FlZ4915b0ERXQlxF5tTY5DBBl0bjEjRZCMtABQUWurJ+ZeZrUvC
 0OmwfJMpc+9TL/wkUGd50cOMB48ivlUmutWySoj6vmxAWcvmxz9XnGBeVe/XVwSb/wCZlmLKSFBHv
 MYOUQkpA==;
Received: from eu-smtp-delivery-151.mimecast.com ([146.101.78.151])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTiGN-0007B9-4a
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 08:40:16 +0000
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-153-r75nPERROFeEoEJIwkJHxw-1; Wed, 29 Apr 2020 09:39:34 +0100
X-MC-Unique: r75nPERROFeEoEJIwkJHxw-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Wed, 29 Apr 2020 09:39:33 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Wed, 29 Apr 2020 09:39:33 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Sami Tolvanen' <samitolvanen@google.com>, Ard Biesheuvel <ardb@kernel.org>
Subject: RE: [PATCH v13 00/12] add support for Clang's Shadow Call Stack
Thread-Topic: [PATCH v13 00/12] add support for Clang's Shadow Call Stack
Thread-Index: AQHWHOCVWHSK1xvpOUef91FgkS/f7KiPxyTg
Date: Wed, 29 Apr 2020 08:39:33 +0000
Message-ID: <6762b8d0974d49de80c3b398d714b3fb@AcuMS.aculab.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200427160018.243569-1-samitolvanen@google.com>
 <CAMj1kXGASSCjTjvXJh=_iPwEPG50_pVRe2QO1hoRW+KHtugFVQ@mail.gmail.com>
 <CAMj1kXFYv6YQJ0KGnFh=d6_K-39PYW+2bUj9TDnutA04czhOjQ@mail.gmail.com>
 <20200427220942.GB80713@google.com>
In-Reply-To: <20200427220942.GB80713@google.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [146.101.78.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Juri Lelli <juri.lelli@redhat.com>,
 "kernel-hardening@lists.openwall.com"
 <kernel-hardening@lists.openwall.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Ingo Molnar <mingo@redhat.com>, Laura Abbott <labbott@redhat.com>,
 Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Steven Rostedt <rostedt@goodmis.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michal Marek <michal.lkml@markovi.net>, Ard
 Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sami Tolvanen
> Sent: 27 April 2020 23:10
...
> > > Alternatively, I wonder if there is a way we could let the SCS and
> > > ordinary stack share the [bottom of] the vmap'ed region. That would
> > > give rather nasty results if the ordinary stack overflows into the
> > > SCS, but for cases where we really recurse out of control, we could
> > > catch this occurrence on either stack, whichever one occurs first. And
> > > the nastiness -when it does occur- will not corrupt any state beyond
> > > the stack of the current task.
> >
> > Hmm, I guess that would make it quite hard to keep the SCS address
> > secret though :-(
> 
> Yes, and the stack potentially overflowing into the SCS sort of defeats
> the purpose. I'm fine with increasing the SCS size to something safer,
> but using a vmapped shadow stack seems like the correct solution to this
> problem, at least on devices where allocating a full page isn't an issue.

Wouldn't you do it the other way around - so shadow stack overflow
corrupts the bottom of the normal stack?
That can be detected 'after the fact' in a few places (eg process
switch and return to user)

Actually you might want to do syscall entry at the base of stack area,
then (effectively) allocate an on-stack buffer for the shadow stack.

I'd have though that kernel code could be the shadow stack address
by just reading r18?
Userspace isn't supposed to be able to get the main kernel stack
address either.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
