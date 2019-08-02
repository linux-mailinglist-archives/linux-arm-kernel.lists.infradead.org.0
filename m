Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 664DA802CB
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 00:32:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=snLUn0FkcSONUJU4BBcjzQU2pyPfQsgoishdNW2L7nQ=; b=Ezpv6+nFR1dnxF
	1gGiMb5PfrFgB5Xv2WL0FZmOxyfTAJl/YfwiqHfZkuB0+oF62mCQMMbs1IZCo4o1lea4A/ElK5NvC
	haOtKrE9lVFAsfVqo3WJtPrkUQnCJzibXNdQah2vjbkDMxUhXKiJHx/PHVeG4oRNzC/UyFqVU5o+d
	iGujpoOEApMIYVzt7QuKxHisa/K2tQJvb5emQ5S890zJHhP0yU7HCPkOsH2eIHlwjTWY875nMAkgC
	/Pau7JKLv5GlvPCqoT4rGV9/DIilbb9h3Q/UXmdTrE3ibeKskypmSEx62qUNEQYaZFFc5if7kyi5+
	Lx+uvJV2vZ2z9MfMZBXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htg6T-0004mb-PC; Fri, 02 Aug 2019 22:32:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htg6I-0004mA-UP; Fri, 02 Aug 2019 22:32:40 +0000
Received: from tleilax.poochiereds.net (cpe-71-70-156-158.nc.res.rr.com
 [71.70.156.158])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 58F57206A3;
 Fri,  2 Aug 2019 22:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564785158;
 bh=z6ytUlp+CIECyVYgzsmKAgNAlD3y+8CHq71PuCQ0D+c=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=cpjIBy8JqGDmfo2YvJ1zHX2H3F5SzV7XyBEUvKOoDGfZiHGtVeJHlsiNF8f/o/lw/
 1IriX/50tm1jxxFU6BHxnU7AmYr31cK1qfEIW7FiUI67JvLd42gEz50jymZEZTSESa
 2e28o/zwwAXm5Iq/SkAmipJbFc8z+f7/iU9PnXtA=
Message-ID: <2f0d5993e9731808b73b0018f5fc4b3335fc6373.camel@kernel.org>
Subject: Re: [PATCH 03/34] net/ceph: convert put_page() to put_user_page*()
From: Jeff Layton <jlayton@kernel.org>
To: john.hubbard@gmail.com, Andrew Morton <akpm@linux-foundation.org>
Date: Fri, 02 Aug 2019 18:32:33 -0400
In-Reply-To: <20190802022005.5117-4-jhubbard@nvidia.com>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
 <20190802022005.5117-4-jhubbard@nvidia.com>
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_153239_002260_69B93B95 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, Ira Weiny <ira.weiny@intel.com>,
 ceph-devel@vger.kernel.org, devel@driverdev.osuosl.org,
 rds-devel@oss.oracle.com, Sage Weil <sage@redhat.com>,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 xen-devel@lists.xenproject.org, Ilya Dryomov <idryomov@gmail.com>,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?ISO-8859-1?Q?J=E9r=F4me?= Glisse <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-08-01 at 19:19 -0700, john.hubbard@gmail.com wrote:
> From: John Hubbard <jhubbard@nvidia.com>
> 
> For pages that were retained via get_user_pages*(), release those pages
> via the new put_user_page*() routines, instead of via put_page() or
> release_pages().
> 
> This is part a tree-wide conversion, as described in commit fc1d8e7cca2d
> ("mm: introduce put_user_page*(), placeholder versions").
> 
> Cc: Ilya Dryomov <idryomov@gmail.com>
> Cc: Sage Weil <sage@redhat.com>
> Cc: David S. Miller <davem@davemloft.net>
> Cc: ceph-devel@vger.kernel.org
> Cc: netdev@vger.kernel.org
> Signed-off-by: John Hubbard <jhubbard@nvidia.com>
> ---
>  net/ceph/pagevec.c | 8 +-------
>  1 file changed, 1 insertion(+), 7 deletions(-)
> 
> diff --git a/net/ceph/pagevec.c b/net/ceph/pagevec.c
> index 64305e7056a1..c88fff2ab9bd 100644
> --- a/net/ceph/pagevec.c
> +++ b/net/ceph/pagevec.c
> @@ -12,13 +12,7 @@
>  
>  void ceph_put_page_vector(struct page **pages, int num_pages, bool dirty)
>  {
> -	int i;
> -
> -	for (i = 0; i < num_pages; i++) {
> -		if (dirty)
> -			set_page_dirty_lock(pages[i]);
> -		put_page(pages[i]);
> -	}
> +	put_user_pages_dirty_lock(pages, num_pages, dirty);
>  	kvfree(pages);
>  }
>  EXPORT_SYMBOL(ceph_put_page_vector);

This patch looks sane enough. Assuming that the earlier patches are OK:

Acked-by: Jeff Layton <jlayton@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
