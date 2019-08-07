Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF439847EE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 10:47:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0owGewToRaUsrJa+hXkXk97vMPWc6LyGru1OiPA1cN8=; b=quUXZZ4MSpul0c
	GYYlcRo03grOy2/EQsWyitWBkkWjtvQBtPcV1wYRxwtXfZoMNNBvz6RKlQxxofOZ0K/y1Y2Lg7fVM
	Ag0i0K+BjBKIpZSM1WU6Bj2kMSjG0AzFHLvCHc3bIp2mfge9HH3q3ZrOIsIg1VI67a94nG8Oc8sZV
	9upScb0RoiYDcXx9LBe6eWD7MsybW61obF5mOHX0bEwiPoRUPC14KTGXDyfTSs3v6dokQjdmaSF/2
	35RpvF+YnpGjpB5bAwXGg0bxJgizq6WDYhndINMDW7/fxSUF37ZIOy74Yaagu/tSH5WZNHVle3m2K
	5Hj8B8bIwIt0DYoT8QGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvHbA-0006bO-Cj; Wed, 07 Aug 2019 08:47:08 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvHau-0006af-IV; Wed, 07 Aug 2019 08:46:54 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 8E81EAD29;
 Wed,  7 Aug 2019 08:46:50 +0000 (UTC)
Date: Wed, 7 Aug 2019 10:46:49 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Jan Kara <jack@suse.cz>
Subject: Re: [PATCH 00/34] put_user_pages(): miscellaneous call sites
Message-ID: <20190807084649.GQ11812@dhcp22.suse.cz>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
 <20190802091244.GD6461@dhcp22.suse.cz>
 <20190802124146.GL25064@quack2.suse.cz>
 <20190802142443.GB5597@bombadil.infradead.org>
 <20190802145227.GQ25064@quack2.suse.cz>
 <076e7826-67a5-4829-aae2-2b90f302cebd@nvidia.com>
 <20190807083726.GA14658@quack2.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807083726.GA14658@quack2.suse.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_014652_905306_3942C7D8 
X-CRM114-Status: GOOD (  29.01  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: linux-fbdev@vger.kernel.org, kvm@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 amd-gfx@lists.freedesktop.org, sparclinux@vger.kernel.org,
 Ira Weiny <ira.weiny@intel.com>, Dan Williams <dan.j.williams@intel.com>,
 devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, x86@kernel.org,
 Matthew Wilcox <willy@infradead.org>, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, xen-devel@lists.xenproject.org,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 john.hubbard@gmail.com, linux-block@vger.kernel.org,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, ceph-devel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 07-08-19 10:37:26, Jan Kara wrote:
> On Fri 02-08-19 12:14:09, John Hubbard wrote:
> > On 8/2/19 7:52 AM, Jan Kara wrote:
> > > On Fri 02-08-19 07:24:43, Matthew Wilcox wrote:
> > > > On Fri, Aug 02, 2019 at 02:41:46PM +0200, Jan Kara wrote:
> > > > > On Fri 02-08-19 11:12:44, Michal Hocko wrote:
> > > > > > On Thu 01-08-19 19:19:31, john.hubbard@gmail.com wrote:
> > > > > > [...]
> > > > > > > 2) Convert all of the call sites for get_user_pages*(), to
> > > > > > > invoke put_user_page*(), instead of put_page(). This involves dozens of
> > > > > > > call sites, and will take some time.
> > > > > > 
> > > > > > How do we make sure this is the case and it will remain the case in the
> > > > > > future? There must be some automagic to enforce/check that. It is simply
> > > > > > not manageable to do it every now and then because then 3) will simply
> > > > > > be never safe.
> > > > > > 
> > > > > > Have you considered coccinele or some other scripted way to do the
> > > > > > transition? I have no idea how to deal with future changes that would
> > > > > > break the balance though.
> > 
> > Hi Michal,
> > 
> > Yes, I've thought about it, and coccinelle falls a bit short (it's not smart
> > enough to know which put_page()'s to convert). However, there is a debug
> > option planned: a yet-to-be-posted commit [1] uses struct page extensions
> > (obviously protected by CONFIG_DEBUG_GET_USER_PAGES_REFERENCES) to add
> > a redundant counter. That allows:
> > 
> > void __put_page(struct page *page)
> > {
> > 	...
> > 	/* Someone called put_page() instead of put_user_page() */
> > 	WARN_ON_ONCE(atomic_read(&page_ext->pin_count) > 0);
> > 
> > > > > 
> > > > > Yeah, that's why I've been suggesting at LSF/MM that we may need to create
> > > > > a gup wrapper - say vaddr_pin_pages() - and track which sites dropping
> > > > > references got converted by using this wrapper instead of gup. The
> > > > > counterpart would then be more logically named as unpin_page() or whatever
> > > > > instead of put_user_page().  Sure this is not completely foolproof (you can
> > > > > create new callsite using vaddr_pin_pages() and then just drop refs using
> > > > > put_page()) but I suppose it would be a high enough barrier for missed
> > > > > conversions... Thoughts?
> > 
> > The debug option above is still a bit simplistic in its implementation
> > (and maybe not taking full advantage of the data it has), but I think
> > it's preferable, because it monitors the "core" and WARNs.
> > 
> > Instead of the wrapper, I'm thinking: documentation and the passage of
> > time, plus the debug option (perhaps enhanced--probably once I post it
> > someone will notice opportunities), yes?
> 
> So I think your debug option and my suggested renaming serve a bit
> different purposes (and thus both make sense). If you do the renaming, you
> can just grep to see unconverted sites. Also when someone merges new GUP
> user (unaware of the new rules) while you switch GUP to use pins instead of
> ordinary references, you'll get compilation error in case of renaming
> instead of hard to debug refcount leak without the renaming. And such
> conflict is almost bound to happen given the size of GUP patch set... Also
> the renaming serves against the "coding inertia" - i.e., GUP is around for
> ages so people just use it without checking any documentation or comments.
> After switching how GUP works, what used to be correct isn't anymore so
> renaming the function serves as a warning that something has really
> changed.

Fully agreed!

> Your refcount debug patches are good to catch bugs in the conversions done
> but that requires you to be able to excercise the code path in the first
> place which may require particular HW or so, and you also have to enable
> the debug option which means you already aim at verifying the GUP
> references are treated properly.
> 
> 								Honza
> 
> -- 
> Jan Kara <jack@suse.com>
> SUSE Labs, CR

-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
