Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD92D1E76
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 04:30:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ocIT2bHhUbbKK86kQ/BUdxpdo4gUjbzC5YeT2d4dpyk=; b=aR1aXTojx0JRRK
	I87tG6MBQy9f8r9dRBoqL7SFH3YcoZFvw1uff4k+sZjzg3MVgGbkMOZzDFSy3VtCfGVYktO6I5sdo
	b6vr9aCMJ8jqivgWDoPqYlETWiemF4ZBo9ggrI4acXBWr8v7PCRY7e9H7bBfWrFXhLyEA+pU+70Nk
	E4LLc+FiPfoBV/fNQZAS/pUsiWiBZQM10QjvtVRnhiRyFK63Ac+hdrfugxucd/C7E4gjfbfMrYGq2
	BoobKttz7um4qpGGErOyr7WNdazSdNeBXI+UpEDn87KsUmZ35FSb1q8csijWCMGw1knh4u67Z7//k
	Q9Da5RtzAORVqiHonzlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIODZ-0006IE-EI; Thu, 10 Oct 2019 02:30:17 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIODI-0006Gr-QA
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 02:30:02 +0000
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com
 [209.85.222.49]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id x9A2TQQH000485
 for <linux-arm-kernel@lists.infradead.org>; Thu, 10 Oct 2019 11:29:27 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com x9A2TQQH000485
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1570674567;
 bh=Q7utFN6RzuE8eM4XqhBr6De112exitRV2SZcLvRw+/Y=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=lfR7F1noQwk6SX0ADbu5hKqkv67oZZhkBR8M6ERsWbkWf/LBefvJB7MvjzmMX3W0Q
 7L83VrJkxM1N+VrTTE4fgeC7YZcwg+yEC6YHciTFMF7TegJxQpPGoMoz8PmTaVxIyr
 +M8Zy5Fu94jMJYGO9Xv//G91R47IMsjmMAXaGmxZnLQq64JxF9yZfADZo5HMTn1OJp
 7V5g5Gy99M56A5Z0VFjxSkNCpDWYaB86VII91VcMNjRcvyhn9NikZboIxHeEYyL/q1
 XSK4qnIPuNqb61MSha+vSHUboZB28OxPNNruQmr1ebGCD2Zat3JKE5DWtAFja4OVoa
 WHnGEk3JR445Q==
X-Nifty-SrcIP: [209.85.222.49]
Received: by mail-ua1-f49.google.com with SMTP id l13so1442654uap.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 19:29:27 -0700 (PDT)
X-Gm-Message-State: APjAAAWsry7+C2aGljchYirIrk4z+8+2v7r8B6ufiPFXDVIYtSiIlCFq
 tQPBJ36crVDisjUWSMubN+PxeO4sSGG1o9gAY48=
X-Google-Smtp-Source: APXvYqxJHdHRSk8iJK5J8OgjOjbFblWwYJs3YgddSOljJ0wgWwB7NP2b6e2SsoVqJmZZ8fJTYDM1o8iI6Lmnx9UQtLs=
X-Received: by 2002:a9f:31c5:: with SMTP id w5mr3361388uad.40.1570674566294;
 Wed, 09 Oct 2019 19:29:26 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1570633189.git.vilhelm.gray@gmail.com>
 <893c3b4f03266c9496137cc98ac2b1bd27f92c73.1570633189.git.vilhelm.gray@gmail.com>
 <CAK7LNATgW7bXUmqV=3QAaJ0Qu73Kox-TgDCQJb=s0=mwewSCUg@mail.gmail.com>
 <20191009170917.GG32742@smile.fi.intel.com>
 <CAMuHMdXyyrL4ibKvjMV6r8TuxpmK73=JxsWNEfcRk1NjwsnOjA@mail.gmail.com>
In-Reply-To: <CAMuHMdXyyrL4ibKvjMV6r8TuxpmK73=JxsWNEfcRk1NjwsnOjA@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Thu, 10 Oct 2019 11:28:50 +0900
X-Gmail-Original-Message-ID: <CAK7LNASVdqU_6+_iinWStb9ALqLw494pnZKr46fLW+WJ9nUo6A@mail.gmail.com>
Message-ID: <CAK7LNASVdqU_6+_iinWStb9ALqLw494pnZKr46fLW+WJ9nUo6A@mail.gmail.com>
Subject: Re: [PATCH v17 01/14] bitops: Introduce the for_each_set_clump8 macro
To: Geert Uytterhoeven <geert@linux-m68k.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_193001_061904_35B81AB3 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux PM mailing list <linux-pm@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 morten.tiljeset@prevas.dk, sean.nyekjaer@prevas.dk,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Lukas Wunner <lukas@wunner.de>, Andrew Morton <akpm@linux-foundation.org>,
 Phil Reid <preid@electromag.com.au>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 3:54 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Andy,
>
> On Wed, Oct 9, 2019 at 7:09 PM Andy Shevchenko
> <andriy.shevchenko@linux.intel.com> wrote:
> > On Thu, Oct 10, 2019 at 01:28:08AM +0900, Masahiro Yamada wrote:
> > > On Thu, Oct 10, 2019 at 12:27 AM William Breathitt Gray
> > > <vilhelm.gray@gmail.com> wrote:
> > > >
> > > > This macro iterates for each 8-bit group of bits (clump) with set bits,
> > > > within a bitmap memory region. For each iteration, "start" is set to the
> > > > bit offset of the found clump, while the respective clump value is
> > > > stored to the location pointed by "clump". Additionally, the
> > > > bitmap_get_value8 and bitmap_set_value8 functions are introduced to
> > > > respectively get and set an 8-bit value in a bitmap memory region.
> >
> > > Why is the return type "unsigned long" where you know
> > > it return the 8-bit value ?
> >
> > Because bitmap API operates on unsigned long type. This is not only
> > consistency, but for sake of flexibility in case we would like to introduce
> > more calls like clump16 or so.
>
> TBH, that doesn't convince me: those functions explicitly take/return an
> 8-bit value, and have "8" in their name.  The 8-bit value is never
> really related to, retrieved from, or stored in a full "unsigned long"
> element of a bitmap, only to/from/in a part (byte) of it.
>
> Following your rationale, all of iowrite{8,16,32,64}*() should take an
> "unsigned long" value, too.
>

+1

Using u8/u16/u32/u64 looks more consistent with other bitmap helpers.

void bitmap_from_arr32(unsigned long *bitmap, const u32 *buf, unsigned
int nbits);
void bitmap_to_arr32(u32 *buf, const unsigned long *bitmap, unsigned int nbits);
static inline void bitmap_from_u64(unsigned long *dst, u64 mask);



If you want to see more examples from other parts,


int of_property_read_u8(const struct device_node *np,
                        const char *propname,
                        u8 *out_value)


int of_property_read_u16(const struct device_node *np,
                         const char *propname,
                         u16 *out_value)


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
