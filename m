Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F101F76B4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 12:25:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tUVGruN7u/SZJuNxPB8BZ8xkHcyRnCpeIUD9oG+Uk5M=; b=bLqqpeQw3luC9m
	lkZ/jBoGiU+cg2xal0RgQx3EP3Os7wUk72uE/s+JpC7BmAtTGfn5ZzkHl5RCOhEHRq/4g3csHdvn9
	8jwj6a58MjaCt8j8bcOQxESiQH9PSuF7LSaDvXt3uLer8tSiTNCZhTv7JzMLCyKTgPlOitt32DpVj
	IDVlDvjqYI/ngxqupzzeL7pT3vqQeDjRSCB/w+XuxptMsB1CNvGf8Y5An4Szh5HsvwZHpoZD7BLoA
	az6OTTI6rZ3e5UhDWJTcC/fo0g5dR02ezXgeb9RXqk780Yb5hbkQXaOXarwd/BzNn7ik14wHplvS3
	a/9F/8WG6z37rCvQ54bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjgsL-00005B-Hh; Fri, 12 Jun 2020 10:25:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjgsE-0008WL-Mi
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 10:25:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B9A5531B;
 Fri, 12 Jun 2020 03:25:19 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E2EC03F73C;
 Fri, 12 Jun 2020 03:25:18 -0700 (PDT)
Date: Fri, 12 Jun 2020 11:25:16 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v2 4/6] ARM: mm: Aligned pte allocation to one page
Message-ID: <20200612102516.GB4180@gaia>
References: <20200611134914.765827-1-gregory.clement@bootlin.com>
 <20200611134914.765827-5-gregory.clement@bootlin.com>
 <CAK8P3a2-g9ZmFiWJ_i4-0C6=WwzC1UjHGzY07w4y=0O1pHSX5Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2-g9ZmFiWJ_i4-0C6=WwzC1UjHGzY07w4y=0O1pHSX5Q@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_032522_782674_EAC570AC 
X-CRM114-Status: GOOD (  16.56  )
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
 Russell King <linux@armlinux.org.uk>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 12, 2020 at 10:37:15AM +0200, Arnd Bergmann wrote:
> On Thu, Jun 11, 2020 at 3:49 PM Gregory CLEMENT
> <gregory.clement@bootlin.com> wrote:
> > In pte_offset_kernel() the pte_index macro is used. This macro makes
> > the assumption that the address is aligned to a page size.
> >
> > In arm_pte_allocation, the size allocated is the size needed for 512
> > entries. Actually this size was calculated to fit in a 4K page. When
> > using larger page, the size of the table allocated is no more
> > aligned which end to give a wrong physical address.
> >
> > The solution is to round up the allocation to a page size instead of
> > the exact size of the tables (which is 4KB). It allows to comply with
> > the assumption of pte_index() but the drawback is a waste of memory
> > for the early allocation if page size is bigger than 4KB.
> 
> Have you considered increasing PTRS_PER_PTE instead to fill up
> a logical page instead? If that doesn't work, can you explain here
> why not?

From what I remember, increasing the PTRS_PER_PTE also requires changing
the pgd_t array to cover them. As a side-effect, {PMD,PGDIR}_SHIFT would
need to increase. cpu_v7_set_pte_ext() also needs to take care of the
software pte offset (hard-coded at 2048 now).

Many years ago I had some patches to get rid of the software pte offset
but it wasn't really worth the maintenance hassle (only possible for
ARMv6/7). I'm not even sure it's feasible now if we gained more L_PTE_*
bits in the meantime.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
