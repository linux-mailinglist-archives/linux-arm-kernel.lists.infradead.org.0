Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBEB1D2088
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 07:49:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ktq34rRsSlCW/viv14yJMaybLBLARqDwX27pnfEho7g=; b=npag0N6S0xsDuN
	jrbidFxG6a15Scwv2c8CARbMkfNEUfM0j7X+gjyYos4We8lUrh3fjGimXu5xGxQCHCgN4XzXJLSdb
	i+35tD/o8ma74W7XL/ovhMC2uiIYsBc03i1o6yWkEdAYgDcL32r2jQiJw4TvOS4/Y7Xl3luOTPlSc
	E7Mo2tVmQCe2Syz462lXRDsDOg4P0L/2C4Bjc+x+PA5JN1DIWZ5Mo7qPRM0uQ5tO6jAImycgCzVDG
	a4jxhZVp84281+T/lN3DqWerpbX1SfUxSA/lVDPdYpRhRGRf59VFC+nRfMa8GIWy3JU2if6zT6V0A
	RBE0eSYnyfvUMGwgr3yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIRKQ-0004XO-29; Thu, 10 Oct 2019 05:49:34 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIRKF-0004Wn-AV
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 05:49:24 +0000
Received: by mail-pf1-x443.google.com with SMTP id q10so3177660pfl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 22:49:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RhxY1MPKMW6WR/zUFAC74xJM92OHmjB+kj8GPP9wIlw=;
 b=rN9RRE7cIrRHiqRZYHnHSbHLkLn8sEliKdKOykE1BAiQd6iUPmf/oYzt2zGUIJLtc1
 J/Hv96bumBiGBFwkKfJnzTskhdi2HR4zk98z5zCQoBtcrgdsvi4YEfsu8ALTj07La0Z2
 y5DSQdzRYQybpa8QuuYByRSJxvy99ZC+pOqw1RuDAryOAY9qmzzrEwX1sEvhtMP8mKu9
 Wn0659AVEQs+A8IfAtiI13X+kXbgHTJuPiITwSKFjVxmcEh8gBVFsbX9Dn7NegnpBsx5
 cBDj4qkHToVxQk92I5PH9cOFLPLVKWoqKmLZHyR3XAXJDbJ7Fw31c/i5VvJ2MaY8KCxQ
 A9Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RhxY1MPKMW6WR/zUFAC74xJM92OHmjB+kj8GPP9wIlw=;
 b=a3RJ2CDnheSc3dNF4GbzKw1I9nHr6w7H2ka+K/c7GNBVMPqhSOOg7i/kTkN5jnvSXF
 E3PXnFaUCpdfal5Nd2HhqbXT/FLm2iswlYetg1W3syOUSHaMN+xgF9HjOrqcp92IfUk4
 sV1yUJctvVVKDPh6R9dNEwk+8Owpao48m8ix8FHAYq7x4WkbRB77A4fiIfQZLImrOzDO
 JfauIuQZ7RIs1nIV3JTv86TrK61sMMEmLkrzqKrO320KHZGrCLKxEJHF72NZxxCB0DTr
 FVHuTCa2AAeugVPpCjMeg7MOLtdRKmvH1kHKW3TKCE7U/ioYNydAqybwP+HGZfEaO9fH
 h1Pw==
X-Gm-Message-State: APjAAAVXLx9pCnF6GMb9z+jNvzezpf3zMaNkl686CI7bA7AgwA9DjWUM
 2NR7BSgn5u6SU1pC5MZwQm4q+HzVMOengQRmDug=
X-Google-Smtp-Source: APXvYqxTWGaHrxna/RW71KUqM4PD44f4t6P+cJUv3cQo53Tkjbf14ZESvxDMrwfIJKmfQGqBt7rE4hOcImn0K/p+Em0=
X-Received: by 2002:a17:90a:db4a:: with SMTP id
 u10mr9179621pjx.30.1570686562156; 
 Wed, 09 Oct 2019 22:49:22 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1570633189.git.vilhelm.gray@gmail.com>
 <893c3b4f03266c9496137cc98ac2b1bd27f92c73.1570633189.git.vilhelm.gray@gmail.com>
 <CAK7LNATgW7bXUmqV=3QAaJ0Qu73Kox-TgDCQJb=s0=mwewSCUg@mail.gmail.com>
 <20191009170917.GG32742@smile.fi.intel.com>
 <CAMuHMdXyyrL4ibKvjMV6r8TuxpmK73=JxsWNEfcRk1NjwsnOjA@mail.gmail.com>
 <CAK7LNASVdqU_6+_iinWStb9ALqLw494pnZKr46fLW+WJ9nUo6A@mail.gmail.com>
In-Reply-To: <CAK7LNASVdqU_6+_iinWStb9ALqLw494pnZKr46fLW+WJ9nUo6A@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 10 Oct 2019 08:49:10 +0300
Message-ID: <CAHp75VeLkfNZkqhD8tedJdav81L+VA3Z50Kwcd9h4R7zMwjtvA@mail.gmail.com>
Subject: Re: [PATCH v17 01/14] bitops: Introduce the for_each_set_clump8 macro
To: Masahiro Yamada <yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_224923_364452_E99EEC7B 
X-CRM114-Status: GOOD (  18.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andy.shevchenko[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 Phil Reid <preid@electromag.com.au>, Arnd Bergmann <arnd@arndb.de>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux PM mailing list <linux-pm@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 William Breathitt Gray <vilhelm.gray@gmail.com>, morten.tiljeset@prevas.dk,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Lukas Wunner <lukas@wunner.de>, Geert Uytterhoeven <geert@linux-m68k.org>,
 sean.nyekjaer@prevas.dk, Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 5:31 AM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
> On Thu, Oct 10, 2019 at 3:54 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > On Wed, Oct 9, 2019 at 7:09 PM Andy Shevchenko
> > <andriy.shevchenko@linux.intel.com> wrote:
> > > On Thu, Oct 10, 2019 at 01:28:08AM +0900, Masahiro Yamada wrote:
> > > > On Thu, Oct 10, 2019 at 12:27 AM William Breathitt Gray
> > > > <vilhelm.gray@gmail.com> wrote:
> > > > >
> > > > > This macro iterates for each 8-bit group of bits (clump) with set bits,
> > > > > within a bitmap memory region. For each iteration, "start" is set to the
> > > > > bit offset of the found clump, while the respective clump value is
> > > > > stored to the location pointed by "clump". Additionally, the
> > > > > bitmap_get_value8 and bitmap_set_value8 functions are introduced to
> > > > > respectively get and set an 8-bit value in a bitmap memory region.
> > >
> > > > Why is the return type "unsigned long" where you know
> > > > it return the 8-bit value ?
> > >
> > > Because bitmap API operates on unsigned long type. This is not only
> > > consistency, but for sake of flexibility in case we would like to introduce
> > > more calls like clump16 or so.
> >
> > TBH, that doesn't convince me: those functions explicitly take/return an
> > 8-bit value, and have "8" in their name.  The 8-bit value is never
> > really related to, retrieved from, or stored in a full "unsigned long"
> > element of a bitmap, only to/from/in a part (byte) of it.
> >
> > Following your rationale, all of iowrite{8,16,32,64}*() should take an
> > "unsigned long" value, too.
> >
>
> +1
>
> Using u8/u16/u32/u64 looks more consistent with other bitmap helpers.
>
> void bitmap_from_arr32(unsigned long *bitmap, const u32 *buf, unsigned
> int nbits);
> void bitmap_to_arr32(u32 *buf, const unsigned long *bitmap, unsigned int nbits);
> static inline void bitmap_from_u64(unsigned long *dst, u64 mask);
>
>
>
> If you want to see more examples from other parts,

Geert's and yours examples both are not related. They are about
fixed-width properies when we know that is the part of protocol.
Here we have no protocol which stricts us to the mentioned fixed-width types.

So, I can tell an opposite, your arguments didn't convince me.

Imagine the function which does an or / and / xor operation on bitmap.
Now, when I supply unsigned long, I will see
operations on one type in _one_ function independently of the size.
Your proposal will make an unneded churn.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
