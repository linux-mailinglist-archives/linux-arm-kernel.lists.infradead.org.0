Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 283D78743C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 10:34:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZNNdyhycOwFprANA3M9YFprU+BYqvQSbs1ScAUbBwYE=; b=nzH2WOmnV1CY3e
	5RCYrRqtzcmUKfS7Z68xIxARLSWEV1/AGjjLzcFHuH9IWAgfudxemYyT6aCsOXEILlDXmojN/8o24
	wGn9h0mtCO6WVt98K6qaSmGziUtl6XoiWnBrGVNnQNy6aTqzBgV/tTTxoVjC5q8/7Ayog9hFLfgvE
	jl0qoydPxqVxw/TzN51cPVYI7sTG6o39gUuYysJ8Q53qnVfnu31z3TTxoku+lM98j+u/VZihjEwHz
	shlDCL5ykuwo1YduFRm9WBIKA8QFf2vAlBmd/M7YM6kcFwRfXcUfe+cRFr1uwLw/vJQssRzOTDKiC
	Z4mJkUMv4zR26Jbg4nwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw0MP-0006y6-9w; Fri, 09 Aug 2019 08:34:53 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw0MC-0006xL-MT; Fri, 09 Aug 2019 08:34:42 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id DD89FAE49;
 Fri,  9 Aug 2019 08:34:36 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
 id DC04B1E437E; Fri,  9 Aug 2019 10:34:35 +0200 (CEST)
Date: Fri, 9 Aug 2019 10:34:35 +0200
From: Jan Kara <jack@suse.cz>
To: Ira Weiny <ira.weiny@intel.com>
Subject: Re: [PATCH 00/34] put_user_pages(): miscellaneous call sites
Message-ID: <20190809083435.GA17568@quack2.suse.cz>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
 <20190802091244.GD6461@dhcp22.suse.cz>
 <20190802124146.GL25064@quack2.suse.cz>
 <20190802142443.GB5597@bombadil.infradead.org>
 <20190802145227.GQ25064@quack2.suse.cz>
 <076e7826-67a5-4829-aae2-2b90f302cebd@nvidia.com>
 <20190807083726.GA14658@quack2.suse.cz>
 <20190807084649.GQ11812@dhcp22.suse.cz>
 <20190808023637.GA1508@iweiny-DESK2.sc.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808023637.GA1508@iweiny-DESK2.sc.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_013441_021064_21798A8E 
X-CRM114-Status: GOOD (  26.71  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-fbdev@vger.kernel.org, Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, amd-gfx@lists.freedesktop.org, sparclinux@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, devel@driverdev.osuosl.org,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org, x86@kernel.org,
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

On Wed 07-08-19 19:36:37, Ira Weiny wrote:
> On Wed, Aug 07, 2019 at 10:46:49AM +0200, Michal Hocko wrote:
> > > So I think your debug option and my suggested renaming serve a bit
> > > different purposes (and thus both make sense). If you do the renaming, you
> > > can just grep to see unconverted sites. Also when someone merges new GUP
> > > user (unaware of the new rules) while you switch GUP to use pins instead of
> > > ordinary references, you'll get compilation error in case of renaming
> > > instead of hard to debug refcount leak without the renaming. And such
> > > conflict is almost bound to happen given the size of GUP patch set... Also
> > > the renaming serves against the "coding inertia" - i.e., GUP is around for
> > > ages so people just use it without checking any documentation or comments.
> > > After switching how GUP works, what used to be correct isn't anymore so
> > > renaming the function serves as a warning that something has really
> > > changed.
> > 
> > Fully agreed!
> 
> Ok Prior to this I've been basing all my work for the RDMA/FS DAX stuff in
> Johns put_user_pages()...  (Including when I proposed failing truncate with a
> lease in June [1])
> 
> However, based on the suggestions in that thread it became clear that a new
> interface was going to need to be added to pass in the "RDMA file" information
> to GUP to associate file pins with the correct processes...
> 
> I have many drawings on my white board with "a whole lot of lines" on them to
> make sure that if a process opens a file, mmaps it, pins it with RDMA, _closes_
> it, and ummaps it; that the resulting file pin can still be traced back to the
> RDMA context and all the processes which may have access to it....  No matter
> where the original context may have come from.  I believe I have accomplished
> that.
> 
> Before I go on, I would like to say that the "imbalance" of get_user_pages()
> and put_page() bothers me from a purist standpoint...  However, since this
> discussion cropped up I went ahead and ported my work to Linus' current master
> (5.3-rc3+) and in doing so I only had to steal a bit of Johns code...  Sorry
> John...  :-(
> 
> I don't have the commit messages all cleaned up and I know there may be some
> discussion on these new interfaces but I wanted to throw this series out there
> because I think it may be what Jan and Michal are driving at (or at least in
> that direction.
> 
> Right now only RDMA and DAX FS's are supported.  Other users of GUP will still
> fail on a DAX file and regular files will still be at risk.[2]
> 
> I've pushed this work (based 5.3-rc3+ (33920f1ec5bf)) here[3]:
> 
> https://github.com/weiny2/linux-kernel/tree/linus-rdmafsdax-b0-v3
> 
> I think the most relevant patch to this conversation is:
> 
> https://github.com/weiny2/linux-kernel/commit/5d377653ba5cf11c3b716f904b057bee6641aaf6
> 
> I stole Jans suggestion for a name as the name I used while prototyping was
> pretty bad...  So Thanks Jan...  ;-)

For your function, I'd choose a name like vaddr_pin_leased_pages() so that
association with a lease is clear from the name :) Also I'd choose the
counterpart to be vaddr_unpin_leased_page[s](). Especially having put_page in
the name looks confusing to me...

								Honza

-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
