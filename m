Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A57B13230
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 18:29:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fo/oCg3PN7Wj4FBickN0jPN40pA9s9S5/kqZ3edfisk=; b=nR7F7fzXMDvMG+
	QvTUoR9P63OeidBXznsTUAY/EdI4C68ErIvvvZQHRuNUwSMg7Z63d6zf4SjNh2Rj63BZdgrky+ODj
	bvhEhRzNHq9hlP11K52G+tJ0p2WCh9qfcmRCJtIgYJefOQF5Nt63gtaIEZ1tPWmaTTy03c7AvNHK+
	mVwy11d2OIBN9tw+1TYdeJawcOZAyhQrOt/jT6QHTwiiG1S5uaUtkxXqKKuMFLEZ89JAf6/Oreoe8
	oX/FASmFpcCmHIrmm3kkKcrA6sVtrTgH7KFwZLkHC2kCfXHlteewcGwvq/N8aUip5YHVDD5hkyqLz
	pxKe006NyqBHAVAyAJhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMb3Y-0003AL-52; Fri, 03 May 2019 16:29:04 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMb3R-00039H-9x
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 16:28:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 17C7FA78;
 Fri,  3 May 2019 09:28:54 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 9E4AE3F557; Fri,  3 May 2019 09:28:49 -0700 (PDT)
Date: Fri, 3 May 2019 17:28:46 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
Subject: Re: [PATCH v13 16/20] IB/mlx4, arm64: untag user pointers in
 mlx4_get_umem_mr
Message-ID: <20190503162846.GI55449@arrakis.emea.arm.com>
References: <cover.1553093420.git.andreyknvl@google.com>
 <1e2824fd77e8eeb351c6c6246f384d0d89fd2d58.1553093421.git.andreyknvl@google.com>
 <20190429180915.GZ6705@mtr-leonro.mtl.com>
 <20190430111625.GD29799@arrakis.emea.arm.com>
 <20190502184442.GA31165@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502184442.GA31165@ziepe.ca>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_092857_359475_DD0DFC46 
X-CRM114-Status: GOOD (  20.96  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kostya Serebryany <kcc@google.com>, Eric Dumazet <edumazet@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Dmitry Vyukov <dvyukov@google.com>,
 linux-mm@kvack.org, netdev@vger.kernel.org,
 Yishai Hadas <yishaih@mellanox.com>, linux-kernel@vger.kernel.org,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 "David S. Miller" <davem@davemloft.net>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks Jason and Leon for the information.

On Thu, May 02, 2019 at 03:44:42PM -0300, Jason Gunthorpe wrote:
> On Tue, Apr 30, 2019 at 12:16:25PM +0100, Catalin Marinas wrote:
> > > Interesting, the followup question is why mlx4 is only one driver in IB which
> > > needs such code in umem_mr. I'll take a look on it.
> > 
> > I don't know. Just using the light heuristics of find_vma() shows some
> > other places. For example, ib_umem_odp_get() gets the umem->address via
> > ib_umem_start(). This was previously set in ib_umem_get() as called from
> > mlx4_get_umem_mr(). Should the above patch have just untagged "start" on
> > entry?
> 
> I have a feeling that there needs to be something for this in the odp
> code..
> 
> Presumably mmu notifiers and what not also use untagged pointers? Most
> likely then the umem should also be storing untagged pointers.

Yes.

> This probably becomes problematic because we do want the tag in cases
> talking about the base VA of the MR..

It depends on whether the tag is relevant to the kernel or not. The only
useful case so far is for the kernel performing copy_form_user() etc.
accesses so they'd get checked in the presence of hardware memory
tagging (MTE; but it's not mandatory, a 0 tag would do as well).

If we talk about a memory range where the content is relatively opaque
(or irrelevant) to the kernel code, we don't really need the tag. I'm
not familiar to RDMA but I presume it would be a device accessing such
MR but not through the user VA directly. The tag is a property of the
buffer address/pointer when accessed by the CPU at that specific address
range. Any DMA or even kernel accessing it through the linear mapping
(get_user_pages()) would drop such tag.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
