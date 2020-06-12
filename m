Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9581F7818
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 14:49:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sz6WC4cB07AKUns1IrExrkoYlNK4+BSrP/Gz6jlzCr0=; b=Z/1g0lNQxlf+HW
	aelU3h65FgC22AhsyUmhpyT+uLKZ0mSGkhalU3YFWeaE4uGYeVfFTY3eqM4awBJaORTO3NdP/Ji5N
	1ey2xzNwNzs0lKXwII4yceNRc34/jERpCNc5LYcJ1xgJrewAfnfQmQ2iWK9TkBqVpuMzq5Yp5diE3
	1RGxHrumx5S69ceuApYy+RJIW0vm/M2NIjrEu6k46eGUAY9wnir69W4T7neuMm6h/5tjgcxQIQc8m
	VXxDb/kXC4iKE9vObKGYpSKbhI5maSRf8zeRZSl7NPeCmpRApJWh03JPa2ousrX11EbHIR1/cMrw3
	ev5MI+V3eTqIibytP8ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjj7n-00040N-PM; Fri, 12 Jun 2020 12:49:35 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjj7e-0003zx-Il
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 12:49:28 +0000
Received: from mail-qk1-f179.google.com ([209.85.222.179]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1Mo7Bb-1j7a9o3xvP-00pdKI for <linux-arm-kernel@lists.infradead.org>; Fri,
 12 Jun 2020 14:49:24 +0200
Received: by mail-qk1-f179.google.com with SMTP id w1so8794186qkw.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 05:49:23 -0700 (PDT)
X-Gm-Message-State: AOAM5325F0aFIj/Xy8/ESZJtTRK3/lhozzlnyrZiWqq18McgCAMacN9t
 IvU8bDkxXDu0R/yu8/E17d+To9NtfMnV66pBmJo=
X-Google-Smtp-Source: ABdhPJxGSw09WeUlN4lVr4TTqEE+qmhjgy+aHokgcosRF28t2aehCaaiXhkwTMx91jXYjP7FDDIVAU0eomRHTKIsqfg=
X-Received: by 2002:a37:6188:: with SMTP id v130mr2841526qkb.138.1591966162855; 
 Fri, 12 Jun 2020 05:49:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200611134914.765827-1-gregory.clement@bootlin.com>
 <20200611162117.GY1551@shell.armlinux.org.uk>
 <CAK8P3a0KZzR0_8HWXYZRgq8Cg83M0s9GZa5wV+yz9KhvaSWEDw@mail.gmail.com>
 <20200612122126.GC19739@gaia>
In-Reply-To: <20200612122126.GC19739@gaia>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 12 Jun 2020 14:49:06 +0200
X-Gmail-Original-Message-ID: <CAK8P3a19pyVBwXS8pMgY3L29WyzhB8WmAJqXj5zyRh1aD8atMQ@mail.gmail.com>
Message-ID: <CAK8P3a19pyVBwXS8pMgY3L29WyzhB8WmAJqXj5zyRh1aD8atMQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/6] ARM: Add support for large kernel page (from 8K to
 64K)
To: Catalin Marinas <catalin.marinas@arm.com>
X-Provags-ID: V03:K1:PQfvGkrsiXe3/5blUQZNcUEP4clygaWfqxMRQBmzYj/CKXKCdyS
 AlznQg5Mq3Ktv9/1bgoWqc6yeizef4jW7Pkuj8HWo2f6b8Gj58kkLlcwA320v/dljmBVZP7
 f/DLiXIHlpA4XHE5LXqsGJiGbPxCm45PsY0LjTPv5Nc/cmobV9A66NlEibW6QbmJtyoEgsr
 VwDQOITzdnMSb/q56I7rw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:H4t4787k0ks=:Q07Q7fHvia4DCf3l915SU4
 ea0LJX5NtYnVYYRIlABKav8d70j/wz3+AUoI791eZBdZihFSBE/FW6fEAFbVj4TTyQYyTs1he
 XGyxI7n++pt7jXjPMnYoyzBQubTULCDVrbDiKLdFXzl83Smexm+6KYYH8/p4siOS+buIqrNKY
 MXml0g8PDq4DT22tumXuPEAZK7cqLiaxSX2AdeaZ2xzVC7HwCWwYvxwpXPxC+VoI6ZQIO3K5C
 iAsUAmAOJLNK6jZ8TVQ8uADN+cmK86+NsFb37rGMgtWYZA1oSjO6TlIRx73qqnByVbXhcB5ix
 bO4cDHaj4pmJHee9DTQN750FIC0sdXb663EtOjuy7nxCOmMfarfprb7ugzNWT3pr5LEkb1FIj
 6wPksYQOV6w7TCWpbWuRAMwsOlrxxNi3fFTG1SNXtB/YdVMfzogWJLx10Ck6ere+MkvemW/N6
 2X7lw1iWmHSIUNzl6YDOHlHuB8j0myOZIB2oLm/W6VysOYS1m36ka+En/OzUCKKmHXmVT1E4S
 HzXCKjKUfqcFXBBP1CXs8lN8JTASRFR26OLxwLdgd3SMWNkkfIc/g3adCkCF2i5KWO2G3uFzb
 b053onGMo7k2uPp7WFYN12tTJEeq81rRmSR3ru3e5T5U0APt6fx+wkXUOtzS9AwKDxlvAhxE4
 By3Jpm7D1Qjflgd7fovC8Vkc6jFL7BKm2zgJnrLQ1gX05FvqKwSjSRXLkzA9KiXJgELMlgwf6
 X4qKBMAQ5w4HqxCpg4trgWsRvZEOp4etFCKby8eMH/C3c2yB5HKC5wku460J3TqgD29vWZDVG
 BOpNu9cTO7Zq4j6ub5iZhvlADGGtFyQgU3A3p+0WYY8LmnJMt8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_054926_910126_DA82CC78 
X-CRM114-Status: GOOD (  22.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.134 listed in wl.mailspike.net]
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 12, 2020 at 2:21 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
> On Fri, Jun 12, 2020 at 11:23:11AM +0200, Arnd Bergmann wrote:
> > On Thu, Jun 11, 2020 at 6:21 PM Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
> >
> > > If you increase the page size, then you need to increase the number
> > > of tables in a page, or suffer a huge amount of wasted memory taken
> > > for the page tables - going to an 8k page size means that the upper
> > > 4k of each page will not be used.  Going to 16k means the upper 12k
> > > won't be used.  And so on - as your software page size increases,
> > > the amount of memory wasted for each PTE table will increase
> > > unless you also increase the number of hardware 1st level entries
> > > pointing to each PTE page.  With 64k pages, 60k of each PTE page
> > > will remain unused.
> > >
> > > That isn't very efficient use of memory.
> >
> > I think this could be addressed by using the full page to contain
> > PTEs by making PTRS_PER_PTE larger and PTRS_PER_PGD
> > smaller, but there is an even bigger problem in the added memory
> > usage and I/O overhead for basically everything else: in any
> > sparsely populated memory mapped file or anonymous mapping,
> > the memory usage grows with the page size as well.
> >
> > I think Synology's vendor kernels for their NAS boxes have a
> > different hack to make large file systems work, by extending
> > the internal data types (I forgot which ones) to 64 bit. That is
> > probably more invasive to the generic kernel code, but should
> > be much more efficient and less invasive to ARM architecture
> > specific code.
>
> IIUC from Gregory's cover letter, the problem is page->index which is a
> pgoff_t, unsigned long. This limits us to a 32-bit page offsets, so a
> 44-bit actual file offset (16TB). It may be worth exploring this than
> hacking the page tables to pretend we have bigger page sizes.

Right, that's at least one type that needs to be changed, there
may be additional ones besides it. In Synology's patch, is also
a new rdx_t type that is defined the same way and used elsewhere,
at least for some SoCs (they use a maze of #ifdefs to merge
all the vendor kernels, and they also strip all code comments
and git history from the tarballs).

https://pastebin.com/e8C1zhzG has an attempt to split out
the relevant changes from the linux-3.10.105 tarball that they
use on Armada 385, see
https://sourceforge.net/projects/dsgpl/files/Synology%20NAS%20GPL%20Source/24922branch/armada38x-source/linux-3.10.x-bsp.txz/download
for the full kernel sources.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
