Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2159D12E5AC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 12:29:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fo91nKt+HxPvvq3kE6pVrl1cPCGrAZd3asT6p/VWRY4=; b=MVoEQxRKE+h0LB
	ydkMIKqxc2edLLFsz2XZmrsNwaDntz0qeQ5oGSEGa0oXT8PpDV46IlhbmFhhdKU5PAGeKOG5FHkm2
	+qtzRaJnKEeQ7BLRLRGS1I4hOG+Xpq97uB1oPWGvde2HnAMn1pWtPIzIASvSOzOewg9Aoy8fYdiLp
	DItZVxOaAeKxUkUtdZrujQ2dOJCWcZK08z2q0WVTScfbg+cr3l6OjWcmk4hCsvT3DnPGCnyjOl85C
	QisEC26/Fh1uER0XLab9Aqg09utTWfneDsmkmDTlDI9RDop8Ip8J8EowDrhn6Le3tWgKlQWkKzXB+
	4aS8pUNorm4TGuaIMJbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imyfg-0005vc-9T; Thu, 02 Jan 2020 11:29:44 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imyfY-0005uq-IV
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 11:29:38 +0000
Received: from mail-qv1-f42.google.com ([209.85.219.42]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MOQu6-1j69At3Rni-00Prla for <linux-arm-kernel@lists.infradead.org>; Thu,
 02 Jan 2020 12:29:30 +0100
Received: by mail-qv1-f42.google.com with SMTP id u10so14819545qvi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 03:29:29 -0800 (PST)
X-Gm-Message-State: APjAAAUjerySzAUtfQKjZNKojF0qWEHm2Jl87uNEDDy/9ZbgEdIQNr2Z
 mm2SnoszN/D05qFK51XkE+tHIIs3/kouUnsd8XY=
X-Google-Smtp-Source: APXvYqzptO5odenMl+S0N7s3GQhlwCDgPJBBw4XLujkDNgUOvvmeI6k+bBQkXgHWdkBmH6M+qYLFWJ1uMC5oWigZUtc=
X-Received: by 2002:a0c:bd20:: with SMTP id m32mr63056221qvg.197.1577964568705; 
 Thu, 02 Jan 2020 03:29:28 -0800 (PST)
MIME-Version: 1.0
References: <cover.1577111363.git.christophe.leroy@c-s.fr>
 <47701b5fb73cf536db074031db8e6e3fa3695168.1577111365.git.christophe.leroy@c-s.fr>
 <CAK8P3a0QGtjygLJUWX_1-s1vfCzE6UoOzrb+OZWwjaBdh=RpVQ@mail.gmail.com>
In-Reply-To: <CAK8P3a0QGtjygLJUWX_1-s1vfCzE6UoOzrb+OZWwjaBdh=RpVQ@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 2 Jan 2020 12:29:12 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1gHvW2XEMDSHCcdOQ8NSs3iHk9GpujwkWZnnZ0dnw96w@mail.gmail.com>
Message-ID: <CAK8P3a1gHvW2XEMDSHCcdOQ8NSs3iHk9GpujwkWZnnZ0dnw96w@mail.gmail.com>
Subject: Re: [RFC PATCH v2 01/10] lib: vdso: ensure all arches have 32bit
 fallback
To: Christophe Leroy <christophe.leroy@c-s.fr>
X-Provags-ID: V03:K1:OeaVzXnj9I+HniTCafYWiZjiYNofva7iSwltwn0d9pMN7R7Pz5y
 Pqa/XJAYsvRHoaB0H6m/X6ZbEiXPTBCJJ0dgfShGyUOhzEgV85aDJhHbhJYCweNHztd0RVK
 BhcHQI6Mi8LR3Q8tsfy21+wdxdiqOZ/GyvsdFFZPBIKgnmjjPNigagybudwCFkr9vQxQKAs
 dIMhbi9EbFVcf32O4Kuow==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:wadi0JQu4AM=:3p3a0H+XwK8PFwIMesztXy
 +MCGAEvZ+1UuRWSTMLb5b3qGStMJoFL+r/jB5lhXbfs8F+jFnf63LIh682PUkNaZd2Ik3ZYaJ
 +RatiGYs6tEKK2zSoB1zWNg8m664MCoyYRgAbR8n6OsJM/9OjhJ1uhgyLwUwWePlocdZBML9X
 814iyxny4L6VTQb3gqkWd2Iji/B7cCaPnkxfxPhjFJxTWu6b0x1pO72n2MBqWctTiMEWlYg8I
 CIn2BmWuLJ++jAdU2lvZbVmUoGcsPDh6wlxB1MeeXXL7n1pD6js3BZOx35bm7fjO1lHmZ6cF/
 l6vgXcvPNS4jA9EwPIU1OTpmakOLv2HyM81gSKH/Pmrd3ytUI/Ca780dT9TBNaPQrOLf8mIZb
 a5u1SGv6jv0GAwCeY6+IfzpMvRVF3X8n+SWjChYKx9M1HUpYo0/MSK//7yhrH7wppEdb7w5u2
 GqR2PLqUpxkusbuk6NhidJw8KSh2ynfa4ycez8LsS6lolKDf6esUrbRIv5d3ichf8NIyX4EWI
 Trai2oN4GRXwwKx68giajC4VQ9Owgg2BKezJyzlcciUJa8sV6X2La/UN626v4EUgbLSLb0yaS
 wYmzZR2WUaIAKk7IowueGyIfo6yfB/IslIK/bME6NcbjA2d3fEAzGQnMC/i1qUAsjGURhjCLJ
 dTvwQqW4DkeAPKaKJO5CqGjswW81RlZEc3ipONmwXLK0ekiMFG0P+QN9kWY5K5zB8l0uxivT/
 JIYq20zeBe5ngYBvbTS2hfx3vYF4pnBlf5p4oA1i7xw0GD7gIHLE7rqg2ZZzVEndFPC5V2LSP
 rhPQaB11musmxGWRA6INwtiLaN9lfbmH08P/LSIinOB+qv6aFJrgFdDgVyPAw3o8lhmvO5+01
 n4QQ9qHE4QN9lzGc/Aeg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_032936_908021_E5D791BA 
X-CRM114-Status: GOOD (  18.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>, Andy Lutomirski <luto@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 30, 2019 at 1:27 PM Arnd Bergmann <arnd@arndb.de> wrote:
> On Mon, Dec 23, 2019 at 3:31 PM Christophe Leroy <christophe.leroy@c-s.fr> wrote:
> > +static __always_inline
> > +long clock_getres32_fallback(clockid_t _clkid, struct old_timespec32 *_ts)
> > +{
> > +       struct __kernel_timespec ts;
> > +       int ret = clock_getres_fallback(clock, &ts);
> > +
> > +       if (likely(!ret && _ts)) {
> > +               _ts->tv_sec = ts.tv_sec;
> > +               _ts->tv_nsec = ts.tv_nsec;
> > +       }
> > +       return ret;
> > +}
>
> Please change these to call __NR_clock_gettime and __NR_clock_getres_time
> instead of __NR_clock_gettime64/__NR_clock_getres_time64 for multiple reasons.
>
> - When doing migration between containers, the vdso may get copied into
>   an application running on a kernel that does not support the time64
>   variants, and then the fallback fails.
>
> - When CONFIG_COMPAT_32BIT_TIME is disabled, the time32 syscalls
>   return -ENOSYS, and the vdso version should have the exact same behavior
>   to avoid surprises. In particular an application that checks clock_gettime()
>   to see if the time32 are in part of the kernel would get an incorrect result
>   here.
>
> arch/arm64/include/asm/vdso/compat_gettimeofday.h already does this,
> I think you can just copy the implementation or find a way to share it.

There was a related discussion on this after a vdso regression on mips,
and I suggested to drop the time32 functions completely from the
vdso when CONFIG_COMPAT_32BIT_TIME is disabled, such as

diff --git a/arch/powerpc/kernel/vdso32/vdso32.lds.S
b/arch/powerpc/kernel/vdso32/vdso32.lds.S
index 00c025ba4a92..605f259fa24c 100644
--- a/arch/powerpc/kernel/vdso32/vdso32.lds.S
+++ b/arch/powerpc/kernel/vdso32/vdso32.lds.S
@@ -145,10 +145,12 @@ VERSION

                __kernel_get_syscall_map;
 #ifndef CONFIG_PPC_BOOK3S_601
+#ifdef CONFIG_COMPAT_32BIT_TIME
                __kernel_gettimeofday;
                __kernel_clock_gettime;
                __kernel_clock_getres;
                __kernel_time;
+#endif
                __kernel_get_tbfreq;
 #endif
                __kernel_sync_dicache;

Any opinions on this? If everyone agrees with that approach, I can
send a cross-architecture patch to do this everywhere. It's probably
best though if Christophe adds that to his series as it touches a lot
of the same files and I would prefer to avoid conflicting changes.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
