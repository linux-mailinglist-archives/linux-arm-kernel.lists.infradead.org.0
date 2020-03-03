Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F68F177C18
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 17:40:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=obN6i6a3+eeSQisiOyn5dnBy4SHiq6Db3SoK5VRQ50Y=; b=LmeYa3RuW7yzC7
	9lmFYOEejrC/XxhxgWuhFOUV6IDxQ+p+bxQi9Qa7fNAQFpx4CX+AkDIuEj9ft+9NFdmi6do3Q3JEH
	nrRiexsg5BO7GF8n7t5KbYDGxvn7Xh8iqqIoCRPcxFWhgQ7q5xAWIAhTYA+wylhPmYwV53Ay/EwPk
	yRqK3eJO3tk1EYod+s2akL7a9Q/otMFL1aXrSa7U39SxfXiiKZKwk/7aFeDZJG8J9Qwp10M8QTs/7
	l7YqbUb4bEyjdqvqBr5mDyAscMr7DwHnD0dkCS8Bg6fWOs1GKIgLWzbZN431PRAyEpqPunEbHWG3s
	9aQ6/4jlqLXI9S0FvhcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Aaz-0000b2-1j; Tue, 03 Mar 2020 16:40:37 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Aar-0000Zc-Gb
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 16:40:31 +0000
Received: from mail-qv1-f43.google.com ([209.85.219.43]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MS1G7-1ixzcZ1hut-00TUpH for <linux-arm-kernel@lists.infradead.org>; Tue,
 03 Mar 2020 17:40:24 +0100
Received: by mail-qv1-f43.google.com with SMTP id u10so1975244qvi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 08:40:24 -0800 (PST)
X-Gm-Message-State: ANhLgQ1SIYNmYpHAVKUXO7IiU0C1D3RZlUhTle1r2j3QN28wry2h9PdP
 5tsz/NXYyK5YZU+31RjhQqjjS/4V8V+k0lZsJuI=
X-Google-Smtp-Source: ADFU+vvYQ6QVCbbYeP2nxaqh43OevpTsL0y0S8ngiP8jykUds6UhfBGQ9l/IAMS619c4WMkVGB7+nyot4prtq/wbHaI=
X-Received: by 2002:ad4:52eb:: with SMTP id p11mr4409475qvu.211.1583253623303; 
 Tue, 03 Mar 2020 08:40:23 -0800 (PST)
MIME-Version: 1.0
References: <2e80d7bc-32a0-cc40-00a9-8a383a1966c2@huawei.com>
 <c1489f55-369d-2cff-ff36-b10fb5d3ee79@kernel.org>
 <8207cd51-5b94-2f15-de9f-d85c9c385bca@huawei.com>
 <6115fa56-a471-1e9f-edbb-e643fa4e7e11@kernel.org>
 <7c955142-1fcb-d99e-69e4-1e0d3d9eb8c3@huawei.com>
In-Reply-To: <7c955142-1fcb-d99e-69e4-1e0d3d9eb8c3@huawei.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Mar 2020 17:40:07 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0f9hnKGd6GJ8qFZSu+J-n4fY23TCGxQkmgJaxbpre50Q@mail.gmail.com>
Message-ID: <CAK8P3a0f9hnKGd6GJ8qFZSu+J-n4fY23TCGxQkmgJaxbpre50Q@mail.gmail.com>
Subject: Re: About commit "io: change inX() to have their own IO barrier
 overrides"
To: John Garry <john.garry@huawei.com>
X-Provags-ID: V03:K1:IKpZTjw3oApKR6s4104SJJV4ohSoCWBSycQ3pQ2Pja4OVyTQ2R6
 PQt/4sZSbQRfRZEwTth5mp3q9RAi8M5cfqfqb/J7mZu4tBDQovjRRDi6zvoTSfnXoBI3V0/
 /X+kfaX+Cp3PrQWUG+1BElN5hLMKgMrZrBd76KVV8CmqDtHfjm61TYCsojJYap6HJFqaVfA
 wMyK00hEiILTYWl1vhsfA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:scq7n7j3ikA=:wjORVE39cnBpJHGcqnwKGs
 qGjXZKCm/l2Th3QcIeeWAnycA269CCBj+FdALb57resxHegUFn3/bcQ7Z7GcjrU7jWK3r5JyF
 UL+WRkfEKNfc1oI8iSIpEa9YTotu87dt4LMVOvfuKZnjJi6MtxhdSOz/AAEgrynmmuQHCKvDq
 I78yREnCT5WV8crVk6aymBtPTlgsuSNguZDc0+f6hcWKToJ9JfV90Nj/ZiRvI7A8TSszyoiZ3
 Pq85owcWekxhl6BWd41g8ytNpkpUpWtvkrhlGhcc9B/x0Gy21Re1H/9l4RxKUfxinm6xSvxeQ
 1T8GmLUagNX8p14GEZHhYomY8kX/T8DIikh37s8GqcNHV9RvA+tQr+lZWZbO0VWniFE4diDRM
 S2BKYLN+uF6NzdI8tKIRfYpVywOXwZ1FM9MtVzuI6yjCni0y7XpDejqHaDKJmBmKVNqtdtApp
 uM21zS5oE49NbUOnM+mzBM+wtbEtk8W3UB49zJI85cRgyN9iX8RjJMc3D5JvA+DOGn60VWsTa
 CGEjg2Ml4h2cUp0ucELvcJROTH0Bc1U+hABBajdAwsHRdMwW1qhCknodsIzM6gUQ1TGKGAVa8
 lSEoCSadFuQP9sNF3UU58echx6wMOpLWa1ZrJ54u/TwJ80j9NzqBcCP1dSINecTXI7r7QugiP
 JWt/mJqrNtPP1XM0ma0z4LpcWRjWVaqBfDGoUApQOJ0xRpM/c3zGIhPGNGYOs8pOR1+Tz3IOz
 jwd2R8Bj5jSiIjZDPPIzFXQ7pf7qc+lKUohZRfDFBS1H7TGgFpZLIyzA5/n2bFU3OhxXdis0S
 tJK7FuD+PSuktmJObrHPYoPVfbg4STRQhTW1modII493GHqAm0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_084029_840922_7849504C 
X-CRM114-Status: GOOD (  16.30  )
X-Spam-Score: -1.5 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
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
 Catalin Marinas <catalin.marinas@arm.com>, Sinan Kaya <okaya@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jiaxun Yang <jiaxun.yang@flygoat.com>, "xuwei \(O\)" <xuwei5@hisilicon.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 3, 2020 at 2:18 PM John Garry <john.garry@huawei.com> wrote:
>
> + linux-arch
>
> For background, see
> https://lore.kernel.org/lkml/2e80d7bc-32a0-cc40-00a9-8a383a1966c2@huawei.com/
>
> >>
> >> So today only ARM64 uses it for this relevant code, above. But maybe
> >> others in future will want to use it - any arch without native IO port
> >> access is a candidate.
> >
> > I'm looking at Arnd here for help.
> >
> >>
> >>>
> >>> As long as the expectations are set, I see no reason why it shouldn't
> >>> but, I'll let Arnd comment on it too.
> >>
> >> ok, so it looks reasonable consider replicating your change for ***, above.
>
> To be clear, I would make this change in lib/logic_pio.c since
> __io_pbr() can be overridden per-arch:
>
>   #define BUILD_LOGIC_IO(bw, type)
>   type logic_in##bw(unsigned long addr)
>   {
>        type ret = (type)~0;
>        if (addr < MMIO_UPPER_LIMIT) {
> -          ret = read##bw(PCI_IOBASE + addr);
> +          __io_pbr();
> +          ret = __raw_read##bw(PCI_IOBASE + addr);
> +          __io_pbr();

__io_par();

>        } else if (addr >= MMIO_UPPER_LIMIT && addr < IO_SPACE_LIMIT) {
>            struct logic_pio_hwaddr *entry = find_io_range(addr);
>
> ...
>
> (forgetting leX_to_cpu for the moment)

Yes, I suppose this is required to get consistent behavior on arm64,
which overrides __io_par() but not __io_ar(), with the current code
the barrier after read is weaker when LOGIC_PIO is enabled than it
is otherwise.

For other architectures, I suppose we would need another indirection
level, as those can also override the default inb() itself to do something
other than readb(PCI_IOBASE + addr), and that is not handled
here either. We can do that if we need LOGIC_PIO on a second
architecture.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
