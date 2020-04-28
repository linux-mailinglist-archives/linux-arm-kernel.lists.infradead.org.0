Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DD71BC46A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 18:03:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9kHz89whetgFoeqcXYv4UESaw6qVDJuGYOlZcZ+MKcU=; b=ckH3+4UGz5SNnHFbdsoRBKX3+
	byovZKhHm0EkfObzvp5MKku5aGC8BTA2pVtlpN2w0F/v+SnpR/LsmtFm4QsgKxPATHMsNzfxfP8zG
	eXWlAXSLYHyCSOZdHehGWBfGJcP14xOslbOYhrKuSnAp/eXU29CnMytcjPDNR/r1qgt8rLsREh1oy
	AGl/HatPRQtLZMxMTP8Qt8IgVbbhVLBsQDqt0vHFl0J9+0ZOOQYSDA/jJ/Uvv7y9l2zrYMhrLK/Lu
	Pm4A326wjxfefT/4Rfr93dhUvrWTSadfCyb44sMpPHDu9/Gw6GRCsXKNUsOWV9G/3Pnz1uR3AYJ4f
	k0I1Lmd4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTShW-0008GS-55; Tue, 28 Apr 2020 16:03:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTShM-0008FM-Qf
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 16:03:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 11FB530E;
 Tue, 28 Apr 2020 09:03:02 -0700 (PDT)
Received: from [10.57.33.170] (unknown [10.57.33.170])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0EE773F305;
 Tue, 28 Apr 2020 09:02:59 -0700 (PDT)
Subject: Re: [RFC 00/17] DRM: fix struct sg_table nents vs. orig_nents misuse
To: Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 intel-gfx@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 amd-gfx@lists.freedesktop.org, David Airlie <airlied@linux.ie>
References: <CGME20200428132022eucas1p2aa4716cbaca61c432ee8028be15fef7a@eucas1p2.samsung.com>
 <20200428132005.21424-1-m.szyprowski@samsung.com>
 <20200428140257.GA3433@lst.de> <20200428153202.GY3456981@phenom.ffwll.local>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <c01c9766-9778-fd1f-f36e-2dc7bd376ba4@arm.com>
Date: Tue, 28 Apr 2020 17:02:58 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200428153202.GY3456981@phenom.ffwll.local>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_090304_905091_1D0C4CE7 
X-CRM114-Status: GOOD (  13.60  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-28 4:32 pm, Daniel Vetter wrote:
> On Tue, Apr 28, 2020 at 04:02:57PM +0200, Christoph Hellwig wrote:
>> On Tue, Apr 28, 2020 at 03:19:48PM +0200, Marek Szyprowski wrote:
>>> 1. introduce a dma_{map,sync,unmap}_sgtable() wrappers, which will use
>>>     a proper sg_table entries and call respective DMA-mapping functions
>>>     and adapt current code to it
>>
>> That sounds reasonable to me.  Those could be pretty trivial wrappers.
>>
>>>
>>>
>>> 2. rename nents and orig_nents to nr_pages, nr_dmas to clearly state
>>>     which one refers to which part of the scatterlist; I'm open for
>>>     other names for those entries
>>
>> nr_cpu_ents and nr_dma_ents might be better names, but it still would be
>> a whole lot of churn for little gain.  I think just good wrappers like
>> suggested above might be more helpful.
> 
> I guess long-term we could aim for both? I.e. roll out better wrappers
> first, once that's soaked through the tree, rename the last offenders.

Yes, that's what I was thinking too - most of these uses are just 
passing them in and out of the DMA APIs, and thus would be subsumed into 
the wrappers anyway, then in the relatively few remaining places where 
the table is actually iterated for one reason or the other, renaming 
would stand to help review and maintenance in terms of making it far 
more obvious when the implementation and the intent don't match.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
