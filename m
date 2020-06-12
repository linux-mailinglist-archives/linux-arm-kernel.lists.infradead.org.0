Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2911F75C9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 11:15:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cDLb7VRPBeQkjJ9nE8gr2y43mowrdz67XfV2xOT2DkE=; b=CCJT3x+s5qWvo0
	i/eJ+ndhBJgoA+eaySalWEJ1SriNFS98AHjLB5OBHEZuDWWNJQwbx72rqPjZdHHHGdAPPHKd/tN59
	P7bxGKBs98GBKXCkOfqaTUQwbjUNsQsBH87MdhudbNuF9nsyr6CWEScxc+ORya3s82tqjtPziVy08
	7bbou0AN2bIjsMbVrQQy/uQJQT3uwhTI72O1JtfcFpKEa9GU8xOAeFOW8gJqwtIjVBDqcNXhhzNnO
	yW3vwecoIzsqgPyzkAOLlm9L8Sdz3dYft77BIK1FOGlSyqB9CNoRfNz53fgc9RaXzXGpN6ETHLRGE
	VSXbRW2nHy07lTf0LvPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjfmV-0000HR-1h; Fri, 12 Jun 2020 09:15:23 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjfmN-0000Gl-CC
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 09:15:17 +0000
X-Originating-IP: 91.175.115.186
Received: from localhost (91-175-115-186.subs.proxad.net [91.175.115.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 9DC9D1BF208;
 Fri, 12 Jun 2020 09:15:09 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH v2 0/6] ARM: Add support for large kernel page (from 8K to
 64K)
In-Reply-To: <20200611162117.GY1551@shell.armlinux.org.uk>
References: <20200611134914.765827-1-gregory.clement@bootlin.com>
 <20200611162117.GY1551@shell.armlinux.org.uk>
Date: Fri, 12 Jun 2020 11:15:09 +0200
Message-ID: <87bllo8x2a.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_021515_686747_5A278933 
X-CRM114-Status: GOOD (  24.95  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.201 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Russell,

> Hi Gregory,
>
> You're on your own with this one; I've no motivation to re-understand
> the ARM page table code now that 32-bit ARM is basically unsupported
> now.

Understood.

>
> I'll point out some of the things you got wrong below though.

However thanks for your pointer.

>
> On Thu, Jun 11, 2020 at 03:49:08PM +0200, Gregory CLEMENT wrote:
>> Hello,
>> 
>> On ARM based NAS it is possible to have storage volume larger than
>> 16TB, especially with the use of LVM. However, on 32-bit architectures,
>> the page cache index is stored on 32 bits, which means that given a
>> page size of 4 KB, we can only address volumes of up to 16 TB.
>> 
>> Therefore, one option to use such large volumes and filesystems on 32
>> bits architecture is to increase the page size.
>> 
>> This series allows to support 8K, 16K, 32K and 64K kernel pages. On
>> ARM the size of the page can be either 4K or 64K, so for the other
>> size a "software emulation" is used, here Linux thinks it is using
>> pages of 8 KB, 16 KB or 32 KB, while underneath the MMU still uses 4
>> KB pages.
>> 
>> For ARM there is already a difference between the kernel page and the
>> hardware page in the way they are managed. In the same 4K space the
>> Linux kernel deals with 2 PTE tables at the beginning, while the
>> hardware deals with 2 other hardware PTE tables.
>
> This is incorrect.  The kernel page size and the hardware page size
> match today - both are 4k.  What your'e talking about here is the
> PTE table size.
>
> The kernel requires that each PTE table is contained within one
> struct page.  Since one hardware PTE table is 256 entries, it
> occupies 1024 bytes, so a quarter of a page.  So, to have a single
> 4k page per PTE table would waste quite a bit of space.
>
> Now, the hardware PTE tables do not lend themselves to the kernel's
> usage: the kernel wants additional bits to track the state of each
> page in the page tables.  Hence, we need to shadow every PTE entry.
> This also provides us independence of the underlying hardware PTE
> entry format, which varies between ARM architecture versions.
>
> So, we end up with a single 4k page containing two consecutive
> hardware PTE tables, followed by two Linux PTE tables for the kernels
> benefit.
>

It was what I understood, but I seemed I didn't formulate it accurately.

> If you increase the page size, then you need to increase the number
> of tables in a page, or suffer a huge amount of wasted memory taken
> for the page tables - going to an 8k page size means that the upper
> 4k of each page will not be used.  Going to 16k means the upper 12k
> won't be used.  And so on - as your software page size increases,
> the amount of memory wasted for each PTE table will increase
> unless you also increase the number of hardware 1st level entries
> pointing to each PTE page.  With 64k pages, 60k of each PTE page
> will remain unused.

Unfortunately I was aware of it. But I thought that it was an acceptable
drawback to be able to address large volume on a 32 bits ARM
system. Actually it is already the case on some product.

> That isn't very efficient use of memory.

Indeed however on a 3GB system, in the worst case we need 786432 pages
of 4K to map the memory. These pages can be mapped by 1536 block of 512
entries. So when the 64K pages are emulated we loose 92MB (around 3% of
the memory). So it is not negligible but given the use case I seems
acceptable.

Of course, it didn't prevent to try to do better.

Gregory
>
> -- 
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 503kbps up

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
