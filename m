Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 355CC1F77DB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 14:21:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3xV/OHANjketFa1KqrC35e6pKMrAhyguYR9Sk4ek0p4=; b=IGJ7CfwM4XfbUR
	Wgjd0r5MZ1wbdUx1dGXvYquWdvn+apuN2eoenP3Wfvzb5C0xiPolrlJ9cu9F1wu1uE+MFlA2UWj6d
	5nZ6nmjlLo4nnkroZXsLWUVQQIuC/dtC84YtmRujxNlqDQRJZ6wnoJMgHqQN2b34wDY/5n5QLtOIb
	YZlyp6uCbetOtjDtvr8+xH5Z+y+owaZsmf+z4Xk//yJwY2Hrcl/TYPEVkVqMyiBgQx95pT3a+ZVyh
	pgK6G2YmM9GfPVM+G8TPyzZMO9jR3xoE71pOMNaGJBUPIz/7PGf75KdnlzB3SrC7WqGjP1rk8sxuZ
	BcQXNWHOv3nF9RYe3BVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjigl-0005KE-Hh; Fri, 12 Jun 2020 12:21:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjigd-0005JX-SA
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 12:21:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 283F91F1;
 Fri, 12 Jun 2020 05:21:30 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 50C153F6CF;
 Fri, 12 Jun 2020 05:21:29 -0700 (PDT)
Date: Fri, 12 Jun 2020 13:21:27 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v2 0/6] ARM: Add support for large kernel page (from 8K
 to 64K)
Message-ID: <20200612122126.GC19739@gaia>
References: <20200611134914.765827-1-gregory.clement@bootlin.com>
 <20200611162117.GY1551@shell.armlinux.org.uk>
 <CAK8P3a0KZzR0_8HWXYZRgq8Cg83M0s9GZa5wV+yz9KhvaSWEDw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a0KZzR0_8HWXYZRgq8Cg83M0s9GZa5wV+yz9KhvaSWEDw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_052131_951246_C6B63423 
X-CRM114-Status: GOOD (  19.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 12, 2020 at 11:23:11AM +0200, Arnd Bergmann wrote:
> On Thu, Jun 11, 2020 at 6:21 PM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> 
> > If you increase the page size, then you need to increase the number
> > of tables in a page, or suffer a huge amount of wasted memory taken
> > for the page tables - going to an 8k page size means that the upper
> > 4k of each page will not be used.  Going to 16k means the upper 12k
> > won't be used.  And so on - as your software page size increases,
> > the amount of memory wasted for each PTE table will increase
> > unless you also increase the number of hardware 1st level entries
> > pointing to each PTE page.  With 64k pages, 60k of each PTE page
> > will remain unused.
> >
> > That isn't very efficient use of memory.
> 
> I think this could be addressed by using the full page to contain
> PTEs by making PTRS_PER_PTE larger and PTRS_PER_PGD
> smaller, but there is an even bigger problem in the added memory
> usage and I/O overhead for basically everything else: in any
> sparsely populated memory mapped file or anonymous mapping,
> the memory usage grows with the page size as well.
> 
> I think Synology's vendor kernels for their NAS boxes have a
> different hack to make large file systems work, by extending
> the internal data types (I forgot which ones) to 64 bit. That is
> probably more invasive to the generic kernel code, but should
> be much more efficient and less invasive to ARM architecture
> specific code.

IIUC from Gregory's cover letter, the problem is page->index which is a
pgoff_t, unsigned long. This limits us to a 32-bit page offsets, so a
44-bit actual file offset (16TB). It may be worth exploring this than
hacking the page tables to pretend we have bigger page sizes.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
