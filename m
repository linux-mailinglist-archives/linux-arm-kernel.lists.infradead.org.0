Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 578141E4D2C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 20:36:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sS6GR/jil3+htjC3bNrkzKzwAmqMn86k1KgT/YH+BEM=; b=IhTM8gNsh7t3OG
	nvMUpAyyLhN1zek1lNeQe97cXxiSAGZS0H3YFfIh5784rVUaqdsb+UTgMkivTp+J+j9UV9ETA3nb9
	ddPGYvp+yJb/x3wP2ugWvLzkk8icjYp1lQeXISocBgHsVdcdK5AP2aUsyndMNKZS1hFnRwG9mHn8o
	HKRlmrypZGYi9N7GKZunrYEWMxC5c0PvTwKiYzv85E14gGe2DG/Ap2rN/fuYaba2+IHXEy+/ECerB
	nIwbWSzsP/GwdX7Z4Dqgjr+/NNhfg8xh9HKa4foaKNT9TcXGepo28motLAA+PUIjLkv/aDNsQR6TD
	QKKHyEWb+FxiSVbDT/sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je0ur-0001lI-5Y; Wed, 27 May 2020 18:36:37 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je0ue-0001kf-S3
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 18:36:26 +0000
Received: from mail-qt1-f170.google.com ([209.85.160.170]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MJVY8-1jKICi3ppw-00Jtq4 for <linux-arm-kernel@lists.infradead.org>; Wed,
 27 May 2020 20:36:21 +0200
Received: by mail-qt1-f170.google.com with SMTP id e16so14173689qtg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 11:36:20 -0700 (PDT)
X-Gm-Message-State: AOAM533bcGhFlX2xRXfcDzdg9jEZN/gie3w8oIzjSUPeX+qctVRwZJwB
 Wxg809Uu0IFFsKU5RH2yXi03Ic+ooRYls9mGcsE=
X-Google-Smtp-Source: ABdhPJzQFIUHW/JF3c0VCZnhiM4CA4LQ8k4vA7NOeogILSh6rHeZtA5TuSpUsKWWob7tJdlDv6coQztfVWvYPA3oB/s=
X-Received: by 2002:ac8:1844:: with SMTP id n4mr5557996qtk.142.1590604103622; 
 Wed, 27 May 2020 11:28:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200527134016.753354-1-arnd@arndb.de>
 <20200527152406.GD59947@C02TD0UTHF1T.local>
 <CAKwvOdn637hSboMnMV=S5f1wbiEnc6qtnrn=fpeCGtvr2W_Daw@mail.gmail.com>
In-Reply-To: <CAKwvOdn637hSboMnMV=S5f1wbiEnc6qtnrn=fpeCGtvr2W_Daw@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 27 May 2020 20:28:07 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3-L-AQomvTcBv-KH1cVVu6uYNT_-2Ofir3UgwzGjcSug@mail.gmail.com>
Message-ID: <CAK8P3a3-L-AQomvTcBv-KH1cVVu6uYNT_-2Ofir3UgwzGjcSug@mail.gmail.com>
Subject: Re: [PATCH] arm64: disable -fsanitize=shadow-call-stack for big-endian
To: Nick Desaulniers <ndesaulniers@google.com>
X-Provags-ID: V03:K1:E0FpMC4VW9XneYYzQQReh9kiMFVswFgRTzrPVZZlQLp0j9Xka7a
 Dm7p/X9+Wq4+bFZASaaGHdVIRixCRIEUQsmMCgu149Yu0LjgpKRlcr1QBZDZXDO2xn+sUtQ
 Dcr7J5MttRVkE82PfCw4+13fCA7178NDWnHrvvxxny8euzoWGDD6F76BkSM55BfWqt25M+m
 xy7zuMtm2yEa9TzxuHU1g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:SRV9Aj4GGU0=:RSyEPJj8kNOW9rZ6Ax9b/2
 ase2cMsGn9wIfV1+jOTvju5JJCuCjA5WOB8pPA003QzSP/ivkyB+FsuWGTCa8A4tPrJLS8VF1
 Hn0DjBuseGLqwmitAmlX9hsbma6IcL8Klr93LX/ceqn7Am8fhRIZniWhM4zGhLugtL7+f4jjb
 6b0j/P9CONiqG+PopvhmShRQPaTJUuf1/6mBT4GtbBjy+Pmm5zGUF9PQKd++FilQVYM+sN1+l
 /fIGt78qZTTzzURK7zUp8Qnfl425DJB3jr9Hp8NDpxOvIRVBSdM+nWK/cfcDwpqE3Pww1Wd/r
 QPJ6Go2FgfS+nILlttFPsYfNoR8HGWaiITQxFacyP/3NN640iHAUAJhsyzsD2STFX5E1liff3
 8nn5fzcalY4oTud4NAdPigbaMJ7IehO8BqD39ZsP8cYUtV6EZ+V0rYB6DLY9iWzqrjCVOEKd9
 PF7d0F8zpo1OloxT+GKaOgfxng7KPOyATz4Ngzy9SEe50DjW9zWCChNExjqpekzC4cKpAwPcp
 SvpMTBXxBjLI+KIpbvWyb3hS2r1aFzc7oTgroqwpkH4Gl3YDJ4KOe/7QuOapTIcJ+sAiqaMNO
 Wix139qQSLyThUZycB8IYSFzbctQAgbXYSuezQfB5JMS0+CK/1lYTAr9+FEtpexCb5IBNUvnS
 SnVBThhb2e15stHHApMCPDFQv6nwaR6CSOJ3/xN0vF0eCbkWgTlVDE7vAj7lV7EAEMTNheNag
 LznpwFbjhNNVVp6WaIi9MsDYCj6fT6maPrWYKWbnRqIyYBvJrjwQduG32+7XyWbujll0VBJRg
 BwdrvHRsrwP2/PvrAL/3j+BuJp0/yRx93HTnkKi4TyL+dptlR0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_113625_205896_ED2BEE6A 
X-CRM114-Status: GOOD (  20.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.131 listed in wl.mailspike.net]
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
 Fangrui Song <maskray@google.com>, Catalin Marinas <catalin.marinas@arm.com>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 7:28 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Wed, May 27, 2020 at 8:24 AM Mark Rutland <mark.rutland@arm.com> wrote:
> >
> > On Wed, May 27, 2020 at 03:39:46PM +0200, Arnd Bergmann wrote:
> > > clang-11 and earlier do not support -fsanitize=shadow-call-stack
> > > in combination with -mbig-endian, but the Kconfig check does not
> > > pass the endianess flag, so building a big-endian kernel with
> > > this fails at build time:
> > >
> > > clang: error: unsupported option '-fsanitize=shadow-call-stack' for target 'aarch64_be-unknown-linux'
> > >
> > > Change the Kconfig check to let Kconfig figure this out earlier
> > > and prevent the broken configuration. I assume this is a bug
> > > in clang that needs to be fixed, but we also have to work
> > > around existing releases.
> > >
> > > Fixes: 5287569a790d ("arm64: Implement Shadow Call Stack")
> > > Link: https://bugs.llvm.org/show_bug.cgi?id=46076
> > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> >
> > I suspect this is similar to the patchable-function-entry issue, and
> > this is an oversight that we'd rather fix toolchain side.
> >
> > Nick, Fangrui, thoughts?
>
> Exactly, Fangrui already has a fix: https://reviews.llvm.org/D80647.
> Thanks Fangrui!

Ok, great! I had opened the bug first so I could reference it in the
commit changelog, it seems the fix came fast than I managed to
send out the kernel workaround.

Do we still want the kernel workaround anyway to make it work
with older clang versions, or do we expect to fall back to not
use the integrated assembler for the moment?

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
