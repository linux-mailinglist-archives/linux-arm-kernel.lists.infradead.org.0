Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D418800C8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 21:16:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4eHOy68TDqVameAkdJph8J8Oq6HnE2MV29kaI2jdfTI=; b=Kgn9IYAq3iltwCQGjFwLoNwl5
	kRF8DoIxEtz0NxOfXDZeUfQiCl+AX/m81EHdISSS3hYSwfqujOsvTr2BHbjQxe0s2kGxiF0NygCpV
	0NMFm94NcKgpRnG+jrrDAjoTBJRxFaCX3Qy/OcriiCb1ZdHr4VRFYzeFdP0W5rwTTwijIWv8eTdUR
	dr8Uaaq9cnl6YR0L7YTSA3pT3hf9510SPI4XaR9BpWIn5/xYVfnSaL/vo/nCZGKYJrpRiFs9gwKJN
	243JMKc3glvbXEqLNi8oWy9AhTz9e1QF/V40JMMzQaKD5jhFzf5E+/3smBtm0FonNFHodpVagIbot
	kaCO7kicg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htd20-00049V-2A; Fri, 02 Aug 2019 19:16:00 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htd1o-00048e-0z; Fri, 02 Aug 2019 19:15:49 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d448be40000>; Fri, 02 Aug 2019 12:15:49 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Fri, 02 Aug 2019 12:15:47 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Fri, 02 Aug 2019 12:15:47 -0700
Received: from [10.2.171.217] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 2 Aug
 2019 19:15:46 +0000
Subject: Re: [PATCH 00/34] put_user_pages(): miscellaneous call sites
To: Jan Kara <jack@suse.cz>, Matthew Wilcox <willy@infradead.org>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
 <20190802091244.GD6461@dhcp22.suse.cz>
 <20190802124146.GL25064@quack2.suse.cz>
 <20190802142443.GB5597@bombadil.infradead.org>
 <20190802145227.GQ25064@quack2.suse.cz>
X-Nvconfidentiality: public
From: John Hubbard <jhubbard@nvidia.com>
Message-ID: <076e7826-67a5-4829-aae2-2b90f302cebd@nvidia.com>
Date: Fri, 2 Aug 2019 12:14:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190802145227.GQ25064@quack2.suse.cz>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1564773349; bh=Ykr8zuBl8qD6qRk+6CuJmCvWs6y/6SnwmHdkeYBJDDI=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=dIZIhWEtL/6DtZGzemgJsDJsVLyADAMaN//lJ1grJLFkCmFOkzTj/rs0FvLfEl2Hi
 oGzaotnI6n/OU/9zhZLMfdrrUHRJGxX7AYLyG2WZvgX4Lg54c2pU4PjbkWrNUgOXfI
 uv8TTyv/DF3hYu24iq7PnVxsiQftZ7SHYqoH7NBkU536G72MURkyt2TZuU0HsMwqx1
 3Glf+aCLRqZtZbMei0ZGioStTFz2Vyclh08xm02uGWhgBmLM1you/SeWFTun4O+4QV
 968ZBWSTwuYIseJKnsPYve06ID75kz8N2rJE61L933vzLxD+Ru7sU6sLx/7LpcpGPg
 O3OFkZJZEBCjA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_121548_083038_78A41645 
X-CRM114-Status: GOOD (  17.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-fbdev@vger.kernel.org, kvm@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, sparclinux@vger.kernel.org,
 Ira Weiny <ira.weiny@intel.com>, Dan Williams <dan.j.williams@intel.com>,
 devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 john.hubbard@gmail.com, linux-block@vger.kernel.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, ceph-devel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/2/19 7:52 AM, Jan Kara wrote:
> On Fri 02-08-19 07:24:43, Matthew Wilcox wrote:
>> On Fri, Aug 02, 2019 at 02:41:46PM +0200, Jan Kara wrote:
>>> On Fri 02-08-19 11:12:44, Michal Hocko wrote:
>>>> On Thu 01-08-19 19:19:31, john.hubbard@gmail.com wrote:
>>>> [...]
>>>>> 2) Convert all of the call sites for get_user_pages*(), to
>>>>> invoke put_user_page*(), instead of put_page(). This involves dozens of
>>>>> call sites, and will take some time.
>>>>
>>>> How do we make sure this is the case and it will remain the case in the
>>>> future? There must be some automagic to enforce/check that. It is simply
>>>> not manageable to do it every now and then because then 3) will simply
>>>> be never safe.
>>>>
>>>> Have you considered coccinele or some other scripted way to do the
>>>> transition? I have no idea how to deal with future changes that would
>>>> break the balance though.

Hi Michal,

Yes, I've thought about it, and coccinelle falls a bit short (it's not smart
enough to know which put_page()'s to convert). However, there is a debug
option planned: a yet-to-be-posted commit [1] uses struct page extensions
(obviously protected by CONFIG_DEBUG_GET_USER_PAGES_REFERENCES) to add
a redundant counter. That allows:

void __put_page(struct page *page)
{
	...
	/* Someone called put_page() instead of put_user_page() */
	WARN_ON_ONCE(atomic_read(&page_ext->pin_count) > 0);

>>>
>>> Yeah, that's why I've been suggesting at LSF/MM that we may need to create
>>> a gup wrapper - say vaddr_pin_pages() - and track which sites dropping
>>> references got converted by using this wrapper instead of gup. The
>>> counterpart would then be more logically named as unpin_page() or whatever
>>> instead of put_user_page().  Sure this is not completely foolproof (you can
>>> create new callsite using vaddr_pin_pages() and then just drop refs using
>>> put_page()) but I suppose it would be a high enough barrier for missed
>>> conversions... Thoughts?

The debug option above is still a bit simplistic in its implementation (and maybe
not taking full advantage of the data it has), but I think it's preferable,
because it monitors the "core" and WARNs.

Instead of the wrapper, I'm thinking: documentation and the passage of time,
plus the debug option (perhaps enhanced--probably once I post it someone will
notice opportunities), yes?

>>
>> I think the API we really need is get_user_bvec() / put_user_bvec(),
>> and I know Christoph has been putting some work into that.  That avoids
>> doing refcount operations on hundreds of pages if the page in question is
>> a huge page.  Once people are switched over to that, they won't be tempted
>> to manually call put_page() on the individual constituent pages of a bvec.
> 
> Well, get_user_bvec() is certainly a good API for one class of users but
> just looking at the above series, you'll see there are *many* places that
> just don't work with bvecs at all and you need something for those.
> 

Yes, there are quite a few places that don't involve _bvec, as we can see
right here. So we need something. Andrew asked for a debug option some time
ago, and several people (Dave Hansen, Dan Williams, Jerome) had the idea
of vmap-ing gup pages separately, so you can definitely tell where each
page came from. I'm hoping not to have to go to that level of complexity
though.


[1] "mm/gup: debug tracking of get_user_pages() references" :
https://github.com/johnhubbard/linux/commit/21ff7d6161ec2a14d3f9d17c98abb00cc969d4d6

thanks,
-- 
John Hubbard
NVIDIA

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
