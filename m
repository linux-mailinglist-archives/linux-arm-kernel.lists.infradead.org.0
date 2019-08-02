Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 230EF7FCCF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 16:52:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LRpxWpS/n3xwf+vAKOphaqjE3/dM2QU8paeI7cNV2ow=; b=ZAWgQEIDsi3jKl
	9dEdRuAapLANXbLZBQqtENULDvKj95pNJctS3BSew2PAJumyEUD3LzO1d3qdw2TvfG51VmaalNFxt
	ZKFGrCPFJhXv3Z27lyPZyuMCDmrruJRNiwhLG3kpedD7DblIVNm5iDOnTaiYHE91Mg0nYqZjfIobx
	vDqFcVP0kq4Mewn9O2/JqpDNz9cNaCdpE0FOuMEbNqTAtSEaJOEfQrHoU9qfdArvDM9IPGSut1I0j
	C0ANikM/uDIBpfuXh1dESX9rwBSexxiew3X2W0qz0UZk6+TImn+0miQY861SnI3SMXI6w50EEuwTV
	l5qV1A9B5rYEpARYfyQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htYvI-0005lo-Qf; Fri, 02 Aug 2019 14:52:48 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htYvA-0005kO-Jo; Fri, 02 Aug 2019 14:52:42 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 80E69AF3F;
 Fri,  2 Aug 2019 14:52:38 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
 id 09FD71E433B; Fri,  2 Aug 2019 16:52:27 +0200 (CEST)
Date: Fri, 2 Aug 2019 16:52:27 +0200
From: Jan Kara <jack@suse.cz>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH 00/34] put_user_pages(): miscellaneous call sites
Message-ID: <20190802145227.GQ25064@quack2.suse.cz>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
 <20190802091244.GD6461@dhcp22.suse.cz>
 <20190802124146.GL25064@quack2.suse.cz>
 <20190802142443.GB5597@bombadil.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802142443.GB5597@bombadil.infradead.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_075240_937915_E84C656C 
X-CRM114-Status: GOOD (  20.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: linux-fbdev@vger.kernel.org, Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, sparclinux@vger.kernel.org,
 Ira Weiny <ira.weiny@intel.com>, Dan Williams <dan.j.williams@intel.com>,
 devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, John Hubbard <jhubbard@nvidia.com>,
 intel-gfx@lists.freedesktop.org, john.hubbard@gmail.com,
 linux-block@vger.kernel.org,
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

On Fri 02-08-19 07:24:43, Matthew Wilcox wrote:
> On Fri, Aug 02, 2019 at 02:41:46PM +0200, Jan Kara wrote:
> > On Fri 02-08-19 11:12:44, Michal Hocko wrote:
> > > On Thu 01-08-19 19:19:31, john.hubbard@gmail.com wrote:
> > > [...]
> > > > 2) Convert all of the call sites for get_user_pages*(), to
> > > > invoke put_user_page*(), instead of put_page(). This involves dozens of
> > > > call sites, and will take some time.
> > > 
> > > How do we make sure this is the case and it will remain the case in the
> > > future? There must be some automagic to enforce/check that. It is simply
> > > not manageable to do it every now and then because then 3) will simply
> > > be never safe.
> > > 
> > > Have you considered coccinele or some other scripted way to do the
> > > transition? I have no idea how to deal with future changes that would
> > > break the balance though.
> > 
> > Yeah, that's why I've been suggesting at LSF/MM that we may need to create
> > a gup wrapper - say vaddr_pin_pages() - and track which sites dropping
> > references got converted by using this wrapper instead of gup. The
> > counterpart would then be more logically named as unpin_page() or whatever
> > instead of put_user_page().  Sure this is not completely foolproof (you can
> > create new callsite using vaddr_pin_pages() and then just drop refs using
> > put_page()) but I suppose it would be a high enough barrier for missed
> > conversions... Thoughts?
> 
> I think the API we really need is get_user_bvec() / put_user_bvec(),
> and I know Christoph has been putting some work into that.  That avoids
> doing refcount operations on hundreds of pages if the page in question is
> a huge page.  Once people are switched over to that, they won't be tempted
> to manually call put_page() on the individual constituent pages of a bvec.

Well, get_user_bvec() is certainly a good API for one class of users but
just looking at the above series, you'll see there are *many* places that
just don't work with bvecs at all and you need something for those.

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
