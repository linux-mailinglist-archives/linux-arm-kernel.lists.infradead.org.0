Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 701971F84C9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 20:55:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5K6oB13y5tzINRKe8M77ehXzkT49q7J0TgOnFc4dP2o=; b=fanXOBQ0UFSBMZ
	VG8N9yvN+R8uOg5ebVP1IPtjrIFQmmDwxlRnhACtJDhwMelaa97odCAmamPl794/YAFWjhlGNeS/h
	WCjdEBjeIM3/Pqw1mxZ/WlsIJ3FSCvzhaIqgBi9vjaBxdS5//+NlO1DLKQXuxEE9sdOskhjqRe7pz
	XuPWoQdfY/vJvXcYgOCREEgEpZORiPOkqr7vL0DqtWMXm4zwN4XoZs9MivDeBNji+3vwixCnCKEhU
	7AG9fYWi+ddqfwFQcKVWpxWzQ0o5IOzHlowPK3zo1HkdiqvG86H8ucbf1eoPnaDJ24juzAtp6cZXr
	+23dTZGNr3Eu7Y//0fOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkBJa-0004Ko-SJ; Sat, 13 Jun 2020 18:55:38 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkBJT-0004KN-9g
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 18:55:33 +0000
Received: from mail-qt1-f170.google.com ([209.85.160.170]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MCbZL-1jbcju41oZ-009iaK for <linux-arm-kernel@lists.infradead.org>; Sat,
 13 Jun 2020 20:55:26 +0200
Received: by mail-qt1-f170.google.com with SMTP id z1so9695335qtn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 11:55:25 -0700 (PDT)
X-Gm-Message-State: AOAM533sBGjfTb7NokAr0eSYyng+GfFSFYjN8xhVJJKTFA4avcyFFQSo
 XU9OlBajOMXWmtWE/AHE5PWG1YLCJ4GclqqXAKg=
X-Google-Smtp-Source: ABdhPJyuxw4tUYCzfqYU9Qk2nyGDIv212AgyB/v6klMsDa80OnzI1YzehoJDFzRkxl5xXtHUS44S4533nKMvd4MIeK8=
X-Received: by 2002:ac8:4742:: with SMTP id k2mr8988128qtp.304.1592074524733; 
 Sat, 13 Jun 2020 11:55:24 -0700 (PDT)
MIME-Version: 1.0
References: <9e1de19f35e2d5e1d115c9ec3b7c3284b4a4e077.1591885760.git.afzal.mohd.ma@gmail.com>
 <CAK8P3a1XUJHC0kG_Qwh4D4AoxTgCL5ggHd=45yNSmzaYWLUWXw@mail.gmail.com>
 <20200612135538.GA13399@afzalpc>
 <CAK8P3a25ffh_2Y1xKDbkL2xU9nLpGbEq7j6xHdODEwUtavgdwA@mail.gmail.com>
 <20200613120432.GA5319@afzalpc> <20200613125126.GE23230@ZenIV.linux.org.uk>
 <20200613125615.GF23230@ZenIV.linux.org.uk> <20200613134236.GA4086@afzalpc>
 <20200613153102.GG23230@ZenIV.linux.org.uk>
 <20200613154118.GH23230@ZenIV.linux.org.uk>
 <20200613160040.GI23230@ZenIV.linux.org.uk>
In-Reply-To: <20200613160040.GI23230@ZenIV.linux.org.uk>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sat, 13 Jun 2020 20:55:08 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3MEu=00h1HKzpPw5d5Owu7NiYjoDWDUM5DdgLaCtaR8w@mail.gmail.com>
Message-ID: <CAK8P3a3MEu=00h1HKzpPw5d5Owu7NiYjoDWDUM5DdgLaCtaR8w@mail.gmail.com>
Subject: Re: [RFC 1/3] lib: copy_{from,to}_user using gup & kmap_atomic()
To: Al Viro <viro@zeniv.linux.org.uk>
X-Provags-ID: V03:K1:/7y6lG+e0HlpNv/AzA15aCHVtykAG1o2Tj8DM8b+ydtmykjgY6p
 ysfNq3sThYJ++qt/ljHyDK8eqQ/eKNcVgRIWxWRyjVapgtw6J18Zjp8Pf8an/kBQl6vu18z
 Lr9cQ/bqXJ5Uc7/prpVjfiT48uD9+y1vWiEeXrHZVZ11tdl5WaO14Ux3ubYfCYj6+Ugd1nO
 PhM9yiYcWPAXxsgzs9/MA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:eK1TUTRixQ8=:9loAlfoQ67s8kG+eZ6tO+/
 PDDG+ZKoLuWo9HxL4FQqdiPkZ1N1QmUdJhlzVXRJXYxGyyBnyjMeTt8vPbM3DO/WcUJm3j13L
 16Gx45qzkMvaUoK4G2FJLxud/RIlUQ8MLcwZCifs0I0U4reZVZcqZMvg6FWRSoyxg1mVVY36T
 w5ucK6FKGDqk+RdF0JbuwMyCCCQL/1MeNkNnQzG8oe9Z/HFYN+LzFnMakNQp7VVD6bkqYw090
 /sBiAq6a1y4VNFpzTatqHNkUj4m33CIgo5Zo5QLdhH5Si0SBxiuS+Ino0mNciHQYjfRUq5aNs
 /BOFMxufZdVfUDCj2+dSxI741mx11UtR0NTjYmwJfTyUgTS9JcfTeraufa5ohvK8qV01eSdhG
 YE/I8qe0IPvt4DfWZnstvrwT1lfoYqFL8kAd1MqMrXKwg2MftO4j3OVvtcHv6elF9xiJTwvCh
 +dI8FQZetcWSqripUM5qN9Wv9vMYR4expmKAx5+MYPxY77QocKd+8vK41WVI+Cy/E8jfqHXH+
 XwgAlF53ObDk3WXQPHO3SmvLUKuqU9iCAfh7/nG/Q72FVzfgaBF133aHTDSLoWF36Q8KGemVh
 cDylPzSOsmJMqs8cm9z+T2yde2/xa+BtwfR/ILn3SFntG1uA+CAD22A7HDBm4WdQx/mHwutcM
 6GbPq0x6bFAWXIXGAfTBJ6wGzpebPbLZJG2dm7srZiK+1Yva9L9hDOBGbqPu/eWfVowDLVP2Z
 krMw/gkDZtFTugfOKUmr287vqULxiEHaqPU8NTHmJ3AVjk5/BLx9CwpF6qZb/Dne+lV3emH7d
 HhwSY19GSTZul9a4h3Wjicfdap1anhM+6r0t+aBTmYNDSZ6U0o=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_115531_630093_B7413AC7 
X-CRM114-Status: GOOD (  22.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
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
Cc: "Paul E. McKenney" <paulmck@kernel.org>, Will Deacon <will@kernel.org>,
 Nicolas Pitre <nico@fluxnic.net>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, afzal mohammed <afzal.mohd.ma@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 13, 2020 at 6:00 PM Al Viro <viro@zeniv.linux.org.uk> wrote:
> On Sat, Jun 13, 2020 at 04:41:18PM +0100, Al Viro wrote:
> > On Sat, Jun 13, 2020 at 04:31:02PM +0100, Al Viro wrote:
> > > On Sat, Jun 13, 2020 at 07:12:36PM +0530, afzal mohammed wrote:
> > > > Hi,
> > > >
> > > > On Sat, Jun 13, 2020 at 01:56:15PM +0100, Al Viro wrote:
> > > >
> > > > > Incidentally, what about get_user()/put_user()?  _That_ is where it's
> > > > > going to really hurt...
> > > >
> > > > All other uaccess routines are also planned to be added, posting only
> > > > copy_{from,to}_user() was to get early feedback (mentioned in the
> > > > cover letter)
> > >
> > > Sure, but what I mean is that I'd expect the performance loss to be
> > > dominated by that, not by copy_from_user/copy_to_user on large amounts
> > > of data.  Especially on the loads like kernel builds - a lot of stat()
> > > and getdents() calls there.
> >
> > To clarify: stat() means small copy_to_user(), getdents() - a mix of
> > put_user() and small copy_to_user().  I would be very surprised if it
> > does not hurt a lot.
>
> PS: there's another fun issue here:
>
> fill a file with zeroes
> mmap that file in two areas, MAP_SHARED
> thread 1:
> munmap() the first area
> fill the second one with 'X'
> thread 2:
> write() from the first area into pipe
>
> One could expect that nothing by zeroes gets written into
> pipe - it might be a short write() (or -EFAULT), but finding
> any 'X' there would be a bug.
>
> Your patches allow for a possibility of write() doing
> get_user_pages_fast(), getting the first page just as
> munmap() is about to remove it from page tables and bugger
> off.  Then thread 1 proceeds with the store (via the
> second area).  And then thread 2 does memcpy() from that
> thing via a kmap_atomic()-created alias, observing the
> effect of the store.
>
> That might or might not be a POSIX violation, but it does
> look like a QoI issue...

I assume this problem exists in arch/um/kernel/skas/uaccess.c
and in Ingo's old x86 VMSPLIT_4G_4G patch as well, right?

I guess holding mmap_read_lock() would prevent it but make
it even more expensive.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
