Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D912879CA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 14:21:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TL0ctdjP/IfUORJhVylmaQ6QQGt2wAj3RNtCpPO46iA=; b=l+Ii8X1VphGAnV
	7neHtsk0HkGbFukLE8Lb+BM6qj1O19tuY1uhY0iMYAtRGjk2AFXW7NfGBZWmnbej7TTjonUNMhIX/
	cVBQuqGifplbsAKkeSsOTiBdGcC6H/aNCnsJs5JXgoTIat8qo0YhQAu18MQq5+bo3zjnvBfDP9kPP
	rgW+1rEFi1b1SMW1O7T/a6tWUakkT6KF1l7QqzOrHMdO+1Xns4QxZkcGrUTIU5OCwwnzSh4sOCDFW
	H1faiBGVtw2osursfnIAL5fstMjx6YXZ6B+nLgNOiz8nk6kAPdwhLrq/VSM8ue1CsbsIMnaWDe5AZ
	1gH6fxPUuhMYr2/mWakQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw3tV-0005Nr-Ph; Fri, 09 Aug 2019 12:21:17 +0000
Received: from bilbo.ozlabs.org ([2401:3900:2:1::2] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw3t7-0004zu-7G; Fri, 09 Aug 2019 12:20:55 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 464kpy5K69z9sBF;
 Fri,  9 Aug 2019 22:20:42 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: John Hubbard <jhubbard@nvidia.com>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH v3 38/41] powerpc: convert put_page() to put_user_page*()
In-Reply-To: <248c9ab2-93cc-6d8b-606d-d85b83e791e5@nvidia.com>
References: <20190807013340.9706-1-jhubbard@nvidia.com>
 <20190807013340.9706-39-jhubbard@nvidia.com>
 <87k1botdpx.fsf@concordia.ellerman.id.au>
 <248c9ab2-93cc-6d8b-606d-d85b83e791e5@nvidia.com>
Date: Fri, 09 Aug 2019 22:20:40 +1000
Message-ID: <875zn6ttrb.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_052053_549421_DE983B15 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, Ira Weiny <ira.weiny@intel.com>,
 ceph-devel@vger.kernel.org, devel@driverdev.osuosl.org,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@lst.de>,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?utf-8?B?SsOpcsO0?= =?utf-8?B?bWU=?= Glisse <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

John Hubbard <jhubbard@nvidia.com> writes:
> On 8/7/19 10:42 PM, Michael Ellerman wrote:
>> Hi John,
>> 
>> john.hubbard@gmail.com writes:
>>> diff --git a/arch/powerpc/mm/book3s64/iommu_api.c b/arch/powerpc/mm/book3s64/iommu_api.c
>>> index b056cae3388b..e126193ba295 100644
>>> --- a/arch/powerpc/mm/book3s64/iommu_api.c
>>> +++ b/arch/powerpc/mm/book3s64/iommu_api.c
>>> @@ -203,6 +202,7 @@ static void mm_iommu_unpin(struct mm_iommu_table_group_mem_t *mem)
>>>  {
>>>  	long i;
>>>  	struct page *page = NULL;
>>> +	bool dirty = false;
>> 
>> I don't think you need that initialisation do you?
>> 
>
> Nope, it can go. Fixed locally, thanks.

Thanks.

> Did you get a chance to look at enough of the other bits to feel comfortable 
> with the patch, overall?

Mostly :) It's not really my area, but all the conversions looked
correct to me as best as I could tell.

So I'm fine for it to go in as part of the series:

Acked-by: Michael Ellerman <mpe@ellerman.id.au> (powerpc)

cheers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
