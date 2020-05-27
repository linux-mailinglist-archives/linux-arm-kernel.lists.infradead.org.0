Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E4D1E4DCE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 21:02:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NSkbeY9TMHy0eOy9zcSJU7L9pUNMTL2HZgJdZ2ZPyU4=; b=JzzHFBREUs+bLK
	9wl0NMUGxauNdK02kQ9VBPGuH6kt8APvqUSjltpi3Z5PChnV4yCDwc2LM2o8ZMc9hmUSRUbRAMXre
	NCS3VcVUuG8wos4Wr2myxrMMwrS84mDXYlpy8qIxrJAmr2Na3ao+f1Wwp5nzu9+1kcP74jHMT8N+S
	tOTKq3oQsGQJrTLb3EEymrtp9DnpyUk3LSvJEe4sbdR6KYYqY0JFS+0f6Kp0SBnadc+3IxbkIbTqK
	wziq3fk8VbdETrMLITkqXVG7LMClofU3l12+RBRUKZWJTkKl8drPO6bZxECvSf1pqyFpEY4pUsJuh
	NYbgAjKrugzF3t8QkMFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je1Ji-0002rN-W6; Wed, 27 May 2020 19:02:18 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je1JX-0002qA-CH
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 19:02:09 +0000
Received: from mail-qk1-f175.google.com ([209.85.222.175]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MtwIW-1ijqr93L2K-00uKRl for <linux-arm-kernel@lists.infradead.org>; Wed,
 27 May 2020 21:02:03 +0200
Received: by mail-qk1-f175.google.com with SMTP id b27so626933qka.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 12:02:03 -0700 (PDT)
X-Gm-Message-State: AOAM532SjULkAfRC6JGS9Da144hefiK4gUMBVW8mUFF5BUy0xe0i193V
 reBfYxPeDpepxnwwYAJNimxzhA47oHYpoPPrX44=
X-Google-Smtp-Source: ABdhPJwq+qdSIbiijJoMpTV5KNo+HMxDbqV0keMpndldq1/phr5UvORkX0XTaSA40f5jDgNW7TVRTxEO5JZKmpceUbo=
X-Received: by 2002:a37:554:: with SMTP id 81mr1438379qkf.394.1590606122697;
 Wed, 27 May 2020 12:02:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200527134016.753354-1-arnd@arndb.de>
 <20200527152406.GD59947@C02TD0UTHF1T.local>
 <CAKwvOdn637hSboMnMV=S5f1wbiEnc6qtnrn=fpeCGtvr2W_Daw@mail.gmail.com>
 <CAK8P3a3-L-AQomvTcBv-KH1cVVu6uYNT_-2Ofir3UgwzGjcSug@mail.gmail.com>
 <20200527183517.uhph2pvnkyf6c5p7@google.com>
In-Reply-To: <20200527183517.uhph2pvnkyf6c5p7@google.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 27 May 2020 21:01:45 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1tSKYeDDmAK3o6thazjbua-KmxRNQPX9448qjgp8iV=g@mail.gmail.com>
Message-ID: <CAK8P3a1tSKYeDDmAK3o6thazjbua-KmxRNQPX9448qjgp8iV=g@mail.gmail.com>
Subject: Re: [PATCH] arm64: disable -fsanitize=shadow-call-stack for big-endian
To: Fangrui Song <maskray@google.com>
X-Provags-ID: V03:K1:aQpbwyBsSwL3M/4CF8uPxRAkUfYdDvChYAOK1ut+OHTv2lg2ZWX
 rO5x663WWvGNh9L1iZ2zSwn4LIFkERO7wzQn6WxNPsTxgWaPwGmekfsdTPbjBkB+U9wmCQn
 frSQE+8QaKS5+0ULWsmN3ODn13AggFKqcbnjMV/tBEJlW3Zyb9Jy4IPOkIZvKDjf0NVwgX9
 usWVYPZ5wC2a4oVDeUgKA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:xhegigG2ZJk=:p4gdB0yT2J/110QayeN+/8
 eaQ3fETFfQM4fY8DwVbrMTYBbQWjb6JvtBJUI/4NjNHJnib7tNc8zhKkDvWGMjLQ9GQqRFfnQ
 0Pg1WwgHtyycR2uFsmNkZg2Tq5zsx5kHl0XZT5nZoddvrUoea7o6Lkske6d6sMCtQ1EjEKgQe
 0FrnyxZeLiA25cmpD1v/SZxlwQCAD9jAHZnw1aKb3OSV4yncUsP2D9VlbPzHtmoTj1OC+FN08
 uBCugG73rXu2yyXrZObHm4iam7fAYREcduVA7+ZoEkNqX6BZmyWApxSwlDqxY9AvfBP1nv493
 V5leobs4a6d1Zz2lkpaELTuno4v7j0IIk5P9yNJ2FV0pMkuwzzPaji7pBvA2PfuhVheJsI7dT
 bo+ph6XyTh8U+Lr6+cts9NQ8zGqpo084LN4uod75uId6abiximB3fgyV6brfyd6bhAak5vakH
 BIV6actFrhvaTZ8Sa+xVM7gDb0ttuDqIxQ0SODCT/GtxZeq3j6mi81Ayb7owvKxt0xcXH1c7X
 4gsWnuKKw3Ygam9pk6Hzh2RHx+imDfmJ67T/uEg48iahJZiI2PHjyVrA6QTnlAaQSTWBE9N5O
 5b2w7IX477aLWfn5PeXX3vX636xrQINOwSjbGLUm96JlhNdicaj9zbHJB6E25u6lQN4l26JSi
 n+Ir+Knxfjd+qpWnJb/HHWGZ/lLUSV4NPVbQSfc9vgWBRAE7miNYDDOA+Zt3io+ZGmFME3t5i
 fq38a5EeRp/UKiIPkdicWv9p6+CD4HZnit5LzgvciOX+Y5PKQpwmCqtGWc//hz20xeu3vEcYw
 V+UeXmV2XPr9yTEiSl15h3bshuv/6js2986c5RkKYOo49ulwSQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_120207_704305_825BDAC6 
X-CRM114-Status: GOOD (  23.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Tom Stellard <tstellar@redhat.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 8:35 PM 'Fangrui Song' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
> On 2020-05-27, Arnd Bergmann wrote:
> >On Wed, May 27, 2020 at 7:28 PM 'Nick Desaulniers' via Clang Built
> >Linux <clang-built-linux@googlegroups.com> wrote:
> >>
> >> On Wed, May 27, 2020 at 8:24 AM Mark Rutland <mark.rutland@arm.com> wrote:
> >> >
> >> > On Wed, May 27, 2020 at 03:39:46PM +0200, Arnd Bergmann wrote:
> >> > > clang-11 and earlier do not support -fsanitize=shadow-call-stack
> >> > > in combination with -mbig-endian, but the Kconfig check does not
> >> > > pass the endianess flag, so building a big-endian kernel with
> >> > > this fails at build time:
> >> > >
> >> > > clang: error: unsupported option '-fsanitize=shadow-call-stack' for target 'aarch64_be-unknown-linux'
> >> > >
> >> > > Change the Kconfig check to let Kconfig figure this out earlier
> >> > > and prevent the broken configuration. I assume this is a bug
> >> > > in clang that needs to be fixed, but we also have to work
> >> > > around existing releases.
> >> > >
> >> > > Fixes: 5287569a790d ("arm64: Implement Shadow Call Stack")
> >> > > Link: https://bugs.llvm.org/show_bug.cgi?id=46076
> >> > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> >> >
> >> > I suspect this is similar to the patchable-function-entry issue, and
> >> > this is an oversight that we'd rather fix toolchain side.
> >> >
> >> > Nick, Fangrui, thoughts?
> >>
> >> Exactly, Fangrui already has a fix: https://reviews.llvm.org/D80647.
> >> Thanks Fangrui!
> >
> >Ok, great! I had opened the bug first so I could reference it in the
> >commit changelog, it seems the fix came fast than I managed to
> >send out the kernel workaround.
> >
> >Do we still want the kernel workaround anyway to make it work
> >with older clang versions, or do we expect to fall back to not
> >use the integrated assembler for the moment?
>
> We can condition it on `CLANG_VERSION >= 100001` (assuming Tom (CCed)
> is happy (and there is still time) cherrying pick the two commits https://bugs.llvm.org/show_bug.cgi?id=46076 to clang 10.0.1)

Good idea. I assume we will keep requiring fairly recent clang versions
for a while now, so chances are that 10.1 or 11.0 becomes the minimum
supported version not too far in the future and then the workaround can
be dropped again.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
