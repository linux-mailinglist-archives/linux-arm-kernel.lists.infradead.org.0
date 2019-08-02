Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A62AA8006E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 20:50:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NKmWm5kPDpa+px5Rs2T/RKoSH0s0GCafMUnUe74sQ4I=; b=o8eFEN10omdraCXjWTwXGyng1
	VpsCbw++FljBfKPohKxZrqgQj7xhdgqzRN7bHjD8oV7/PbDsriDh092+yJIy65prj7xwoTmGT59AY
	DdCK83ZATa4Cl8xrU6aXGOi+t3Ax0YIzHYaiU7JWnNtOYwgjPYbLyblvZuoOyxUInNetiafYCjaCx
	Rv/3m+eI9jH+/lKbiyS5/sZKs0YDZu/3C8fZel2baWrW9PPvfaLQPIqIktlQoP1U5/KIlatqtAIJd
	fjYrGMWaABqAVacY8pWTmrQ97RlrGjv5dA6ab+WQz75A64zEyPUbp13TqIvhM57YOMf2O8zP0wGIK
	miLoWWKcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htcct-0002mm-4T; Fri, 02 Aug 2019 18:50:03 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htcce-0002lv-NS; Fri, 02 Aug 2019 18:49:50 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d4485cb0000>; Fri, 02 Aug 2019 11:49:47 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Fri, 02 Aug 2019 11:49:46 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Fri, 02 Aug 2019 11:49:46 -0700
Received: from [10.2.171.217] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 2 Aug
 2019 18:49:45 +0000
Subject: Re: [PATCH 06/34] drm/i915: convert put_page() to put_user_page*()
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Andrew Morton
 <akpm@linux-foundation.org>, <john.hubbard@gmail.com>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
 <20190802022005.5117-7-jhubbard@nvidia.com>
 <156473756254.19842.12384378926183716632@jlahtine-desk.ger.corp.intel.com>
X-Nvconfidentiality: public
From: John Hubbard <jhubbard@nvidia.com>
Message-ID: <7d9a9c57-4322-270b-b636-7214019f87e9@nvidia.com>
Date: Fri, 2 Aug 2019 11:48:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156473756254.19842.12384378926183716632@jlahtine-desk.ger.corp.intel.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL104.nvidia.com (172.18.146.11) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1564771787; bh=S6tEtRzvj2UDxwZj4cj8eQvbGOkT9/8mALKEDpv4kUk=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=Y3fHk+98nOh18vMhIm6oxYzfGEP8O2OFNum6iQoB2YYU2gm7Ou5mcASXhMaNa0kba
 BTSi3qY+ef5NxNUgS+af9aZz1Xc0xlcalUQEIFNZpatz8EG3c4tRcTzbThhIfTheTe
 KUIJTej9BZ3lpHo5Yb8ku9IclBxYdC+NGE9oZ9fgbh7w5eghYXLn/xfb7XAp0GzwuH
 IJ6d9B7kXtD+UvM1BqXw9xtNu+yigVn+igq6/71hO2kl6CxZVC/aFF46g+y63m13bY
 ASWUBsfN5BXUM2Pu5Zj4LSXQjLICQo96hEH38MKObK2sbDPzzqMyeBnMmqRYo7/r9E
 eYoSABVJVs3oQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_114948_779697_2E881BF3 
X-CRM114-Status: GOOD (  11.50  )
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
Cc: linux-fbdev@vger.kernel.org, Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Dave Hansen <dave.hansen@linux.intel.com>,
 Dave Chinner <david@fromorbit.com>, dri-devel@lists.freedesktop.org,
 linux-mm@kvack.org, sparclinux@vger.kernel.org,
 Ira Weiny <ira.weiny@intel.com>, ceph-devel@vger.kernel.org,
 devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>, linux-block@vger.kernel.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 linux-nfs@vger.kernel.org, netdev@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, linux-xfs@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/2/19 2:19 AM, Joonas Lahtinen wrote:
> Quoting john.hubbard@gmail.com (2019-08-02 05:19:37)
>> From: John Hubbard <jhubbard@nvidia.com>
>>
>> For pages that were retained via get_user_pages*(), release those pages
>> via the new put_user_page*() routines, instead of via put_page() or
>> release_pages().
>>
>> This is part a tree-wide conversion, as described in commit fc1d8e7cca2d
>> ("mm: introduce put_user_page*(), placeholder versions").
>>
>> Note that this effectively changes the code's behavior in
>> i915_gem_userptr_put_pages(): it now calls set_page_dirty_lock(),
>> instead of set_page_dirty(). This is probably more accurate.
> 
> We've already fixed this in drm-tip where the current code uses
> set_page_dirty_lock().
> 
> This would conflict with our tree. Rodrigo is handling
> drm-intel-next for 5.4, so you guys want to coordinate how
> to merge.
> 

Hi Joonas, Rodrigo,

First of all, I apologize for the API breakage: put_user_pages_dirty_lock()
has an additional "dirty" parameter.

In order to deal with the merge problem, I'll drop this patch from my series,
and I'd recommend that the drm-intel-next take the following approach:

1) For now, s/put_page/put_user_page/ in i915_gem_userptr_put_pages(),
and fix up the set_page_dirty() --> set_page_dirty_lock() issue, like this
(based against linux.git):

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c 
b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 528b61678334..94721cc0093b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -664,10 +664,10 @@ i915_gem_userptr_put_pages(struct drm_i915_gem_object *obj,

         for_each_sgt_page(page, sgt_iter, pages) {
                 if (obj->mm.dirty)
-                       set_page_dirty(page);
+                       set_page_dirty_lock(page);

                 mark_page_accessed(page);
-               put_page(page);
+               put_user_page(page);
         }
         obj->mm.dirty = false;


That will leave you with your original set_page_dirty_lock() calls
and everything works properly.

2) Next cycle, move to the new put_user_pages_dirty_lock().

thanks,
-- 
John Hubbard
NVIDIA


> Regards, Joonas
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
