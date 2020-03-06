Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1034617C2F8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 17:30:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MrUEzKtU9WPhQr8V2JROGuGyDkgdUqIJFuvH1/JgbrQ=; b=WAeyeYbifYR8v1
	bA7z8LoNR5g6hCyodPMax8SFDCYadNXKh7kXnzj2xHcc/zXl4opU3Hw8abLGcb67N4+rLZCc1/g+r
	+MumK0eVLVjiLa5CGSGoGKUTUhbXhwAWzNIoGa+wsiXG6EEciEQ31J3A3kySZv2BFakN7UgVEBJQ5
	YnM5M2QviSMva9fhKd0O3+RPUrveYc7d/3ZFkwwIHtnYGDx5qhO/kde3KFbC5HIPaK0ibZ3ZoN/tn
	kUJMQqwa/m+eK8PzIOR/dAA0qu2+r2WF1yVWlDY8+QUkmeDeeJFySVk2cYeYWkrZbvkGJKCfjLIOV
	E8tfwsD9FBsBG+PJHRfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAFrJ-0004sn-R5; Fri, 06 Mar 2020 16:29:57 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAFr9-0004rx-QM
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 16:29:50 +0000
Received: from mail-qk1-f178.google.com ([209.85.222.178]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MkpKR-1jdmAp0UPf-00mNk1 for <linux-arm-kernel@lists.infradead.org>; Fri,
 06 Mar 2020 17:29:44 +0100
Received: by mail-qk1-f178.google.com with SMTP id 145so2862814qkl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 08:29:43 -0800 (PST)
X-Gm-Message-State: ANhLgQ3ZaXkae6pIkMZrFNRKPQZR1VKVvnisHtAs0orBnC/qibB0Qwje
 SxyIOKGczljWBWSo1LdSXdZ2cEdQmGmLs0mkaS0=
X-Google-Smtp-Source: ADFU+vvnPPzWc82fmv/qXihNwht3xjXJb3gM2lnV/Y1UhSl2Ac8ZqobyQCVDZURx7n5GqWu/8pYUNGkVExuBSGen+gQ=
X-Received: by 2002:a37:4f8d:: with SMTP id d135mr3716874qkb.394.1583512182964; 
 Fri, 06 Mar 2020 08:29:42 -0800 (PST)
MIME-Version: 1.0
References: <2e80d7bc-32a0-cc40-00a9-8a383a1966c2@huawei.com>
 <c1489f55-369d-2cff-ff36-b10fb5d3ee79@kernel.org>
 <8207cd51-5b94-2f15-de9f-d85c9c385bca@huawei.com>
 <6115fa56-a471-1e9f-edbb-e643fa4e7e11@kernel.org>
 <7c955142-1fcb-d99e-69e4-1e0d3d9eb8c3@huawei.com>
 <CAK8P3a0f9hnKGd6GJ8qFZSu+J-n4fY23TCGxQkmgJaxbpre50Q@mail.gmail.com>
 <90af535f-00ef-c1e3-ec20-aae2bd2a0d88@kernel.org>
 <CAK8P3a2Grd0JsBNsB19oAxrAFtOdpvjrpGcfeArKe7zD_jrUZw@mail.gmail.com>
 <ae0a1bf1-948f-7df0-9efb-cd1e94e27d2d@huawei.com>
 <CAK8P3a2wdCrBP=a8ZypWoC=HyCU3oYYNeCddWM7oT+xM9gTPhw@mail.gmail.com>
 <182a37c2-7437-b1bd-8b86-5c9ce2e29f00@huawei.com>
In-Reply-To: <182a37c2-7437-b1bd-8b86-5c9ce2e29f00@huawei.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 6 Mar 2020 17:29:26 +0100
X-Gmail-Original-Message-ID: <CAK8P3a22fEGdVKVVs_40Rc_vs9SQ2ikejwMtFpyR_o+74utWaA@mail.gmail.com>
Message-ID: <CAK8P3a22fEGdVKVVs_40Rc_vs9SQ2ikejwMtFpyR_o+74utWaA@mail.gmail.com>
Subject: Re: About commit "io: change inX() to have their own IO barrier
 overrides"
To: John Garry <john.garry@huawei.com>
X-Provags-ID: V03:K1:X06QoV3hQ0Ij3suDW2JhhVq2TbJ8vLt2FrIXrDmH3/M+V7IH4eu
 Nk+JcosQNaX9zxZ7vygyxkeTY9DzaU871N1dY3lcWbpq8mS4C7pxAXAxytXCYUkv6oiDpkU
 UqEzTdmdCm1XnIsvgUQmNEkAAcoAfS7M2J1qfGtvpl1Nx3P0JGdLbymLeS6Ydz22vSE/jcG
 jydaDCkaRqZoXfl4V6aXQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:WBpVNjh+dVw=:Cj/hkfuiJ5Qi3oVMOSvQgw
 VGAJdk8H4HuWdy+eaHcXHK22fvhDTdkDZ6WCzEWw71RiNK6Q0m8blV1uxBxi7NseMYh3InLrB
 AEj4fizRDX4dn8bNuGDO13UwHrTnm4TnWh8PSy9PzyPw9YQL8PEbGYJvYpq4c1sxmoGNXqUXN
 czScXkZYO23eCPhtKIrrfoKdChiHZ2HdKpkOz39M0Sq+N+lEObelDShJFbZNSy+b/0w8MIPtL
 mue7hXFB66PEYTmQTvl5PkPGSkTiSpdVFdgJ18YhQDFtumh63xyIzHip+YFFOLdWc50hz2DxT
 DGVnZnwZX+j3XUHLp5NDNsC03Eje+4c9epgPD9s9WNcUEUzqMv2VEGNqwnyqMHMtemvZ1HzCw
 uu2BwUEW750gBLqoDmx9DdDSV8kXs5trjMy1gPcr/6CEwKIMrZIIeN2wQljx+pI54xxf+VzJF
 ZqMXD4iX3qWSiF9jChSpPWdsLn9EE2OniajEMLvKQy0VUlfoIkztC0Ot9614/712ngDY8jNWz
 9zi8+Be15WBgpBvCL6Q/Cv4lgSptANJlqnPZGkYklRVaKJbDgLV3wMyScFkbqo6gfQ4pluxqn
 LFII5uWKmas5SQdJLVPHf9d3PcATpUbJy6erWQeN4a1pwvvKpCj8GHlY7UmPFlxl7e3gY9IxU
 x/Yeioc5+lb7jrXhss4LxcuBzJS15C07957W0tklXhQiZxlgx8Gl6lSGYgI7Er6rK3/NZ6zpx
 A/pRjgIdyhUJ7+qGG+XA2Ez2EpjjhTURMQ55ixh054qLq8pEOpPNdEdfLKiRhvaRo+UxZHVOT
 U6k+WqctrJ3yCvGM0oXo4ya6tWeJDf4OxGJ3uUD6iyzak++Kow=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_082948_922899_7F800004 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
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

On Fri, Mar 6, 2020 at 5:18 PM John Garry <john.garry@huawei.com> wrote:
> On 06/03/2020 15:16, Arnd Bergmann wrote:
> > On Fri, Mar 6, 2020 at 11:40 AM John Garry <john.garry@huawei.com> wrote:
> >> On 06/03/2020 07:54, Arnd Bergmann wrote:
> >>> On Fri, Mar 6, 2020 at 4:44 AM Sinan Kaya <okaya@kernel.org> wrote:
> >> -- a/lib/logic_pio.c
> >> +++ b/lib/logic_pio.c
> >> @@ -229,13 +229,21 @@ unsigned long
> >> logic_pio_trans_cpuaddr(resource_size_t addr)
> >>    }
> >>
> >>    #if defined(CONFIG_INDIRECT_PIO) && defined(PCI_IOBASE)
> >> +
> >> +#define logic_in_to_cpu_b(x) (x)
> >> +#define logic_in_to_cpu_w(x) __le16_to_cpu(x)
> >> +#define logic_in_to_cpu_l(x) __le32_to_cpu(x)
> >> +
> >>    #define BUILD_LOGIC_IO(bw, type)                                      \
>
> Note: The "bw" argument name could be improved to "bwl", since this
> macro is used for building inl() also.
>
> >>    type logic_in##bw(unsigned long addr)                                 \
> >>    {                                                                     \
> >>           type ret = (type)~0;                                           \
> >>                                                                          \
> >>           if (addr < MMIO_UPPER_LIMIT) {                                 \
> >> -               ret = read##bw(PCI_IOBASE + addr);                     \
> >> +               void __iomem *_addr = PCI_IOBASE + addr;               \
> >> +               __io_pbr();                                            \
> >> +               ret = logic_in_to_cpu_##bw(__raw_read##bw(_addr));     \
> >> +               __io_par(ret);                                         \
> >>           } else if (addr >= MMIO_UPPER_LIMIT && addr < IO_SPACE_LIMIT) {\
> >>                   struct logic_pio_hwaddr *entry = find_io_rang
> >>
> >> We could prob combine the le_to_cpu and __raw_read into a single macro.
> >
> > What is the purpose of splitting out the byteswap rather than leaving the
> > open-coded rather than __le16_to_cpu(__raw_readw(PCI_IOBASE + addr))?
>
> I'm just copying what is in asm-generic io.h, which uses the 16b and 32b
> byteswaps in the w and l variants, respectively.

Sure, but I don't think that needs another macro.

>
> The idea is good, but it would be nice if we just somehow use a common
> asm-generic io.h definition directly in logic_pio.c, like:
>
> asm-generic io.h:
>
> #ifndef __raw_inw // name?
> #define __raw_inw __raw_inw
> static inline u16 __raw_inw(unsigned long addr)
> {
>         u16 val;
>
>         __io_pbr();
>         val = __le16_to_cpu(__raw_readw(addr));
>         __io_par(val);
>         return val;
> }
> #endif
>
> #include <linux/logic_pio.h>
>
> #ifndef inw
> #define inw __raw_inw
> #endif

Yes, makes sense. Maybe __arch_inw() then? Not great either, but I think
that's better than __raw_inw() because __raw_* would sound like it
mirrors __raw_readl() that lacks the barriers and byteswaps.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
