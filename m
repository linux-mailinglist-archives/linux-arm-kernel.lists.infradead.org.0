Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ECDA1CF527
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 15:00:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wamN6lsc3Av3DYHfUTmb6I/DI5DJMy126vugVfgg/Ts=; b=EOlbdCGN3tGJIF
	ECFC0zNwlXVB7nrMGW0kDTopMj7WhIOzH5iIEDKeCxKpnYaJ08X3mc2n35F9NY2OCbSU9BL67YFdJ
	mQFhNY27AJP1fggr2VB+Lx1XTb+8X+VdeuiqClT1oOmt3rkIEyi4I5UNjfyGI8b6QManvCfkRe3EU
	5qmT1JSb9KO0nZHXmVhOYSo/CiWg8WRQeS988WMhPTBIhddAnA8h12VtyH5Tv3tkOX62KmXFmWdfK
	nPhOhBxMCcLenycLkGF/zz8YZuOhrEXuX5B/R3p/PR1P4cIKnwWpw1JMoz64+s9EMtlGDUI/tovUM
	g+8DqU1+oVhfBVLxJ2YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYUWZ-0001BQ-Et; Tue, 12 May 2020 13:00:43 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYUWR-0001Av-IT
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 13:00:37 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512130033euoutp02ceb5a7c4633b353508e6b7770f4d603b~OSWjVG--a2975729757euoutp023
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 13:00:33 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200512130033euoutp02ceb5a7c4633b353508e6b7770f4d603b~OSWjVG--a2975729757euoutp023
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589288433;
 bh=1uzzQOyNb7Mv/r9ipa91ltDY7wY8vT4HL7FRN1tYdZM=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=XA062SCu4VBCXYmsYEUM2iZVfXIfYdH1ggs1x/ZCZ2W/rZExETBsDtzWrMojhjiwQ
 U6O3uXvVPK/NtdyDKEBR+Saeza67YUvU2S0OYPMN14Vmsg3IT7ivMONGuxSHU7rpug
 Hp320L5KJwVKkpUAVLJtYbVt0jXPDmecTJZ+Ur94=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200512130032eucas1p1f73e728ec6203501ba81ebfeef9eef6e~OSWjHUrIM0405704057eucas1p1q;
 Tue, 12 May 2020 13:00:32 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 7F.F8.60679.0FD9ABE5; Tue, 12
 May 2020 14:00:32 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200512130032eucas1p1b4a35fc40a37196f67477d042455479c~OSWisXm8w0405804058eucas1p1h;
 Tue, 12 May 2020 13:00:32 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200512130032eusmtrp19afb98684ac9523b752ffa9d028963e1~OSWirtUcz3237932379eusmtrp1B;
 Tue, 12 May 2020 13:00:32 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-30-5eba9df0e0af
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 1F.F7.07950.0FD9ABE5; Tue, 12
 May 2020 14:00:32 +0100 (BST)
Received: from [106.210.88.143] (unknown [106.210.88.143]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200512130031eusmtip16fed83b076c2cc5d92d4b400faec47e2~OSWiFPXJW0680906809eusmtip1F;
 Tue, 12 May 2020 13:00:31 +0000 (GMT)
Subject: Re: [PATCH v4 01/38] dma-mapping: add generic helpers for mapping
 sgtable objects
To: Christoph Hellwig <hch@lst.de>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <1a80255d-81de-2c5d-6d06-ea126fd7f994@samsung.com>
Date: Tue, 12 May 2020 15:00:31 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200512121808.GA20393@lst.de>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0hTcRj1t/vY3ejKdRp+qBSsBxSl9oBuJFEQcQshCSIqZ628mKjTdjNT
 qMzsNTU1rWyVrgzMR9o2U7tlpWBrWSt0lanQQyV7jCyXpYXldnv43znnO9/vnA9+FKbqJIKo
 eN1uXq/TJqpJJd5wb/Tx/KELYkx4c344m+ewy1hzSR3B/mooxFjn108kW1ndJmNNd5axbudr
 GWvpe0awneJ5km0Z6idWKLma0hrENY+YcK5x5BXBvcyxyTjr5QNcz3gfxhV1VSDu5otMkjtR
 X4W4Ycu0KOVmZUQsnxi/h9eHLd+m3Jl3sBildMHeyuomlIm++xuQggJmMRSPHSUNSEmpmCsI
 HrkLkUTcCAa/vSIkMoygtO80/nelcjAHkwYVCD435sgl8mmCuLK9Ln8mGh7euoZ5cACjhoH3
 j7zvYoxDBsb8Dq+JZBaAwWUgPZhmloN53I48GGdmgbngIuHBUxkNtJdbkeTxA/vZfu+ugpkH
 d26KXh1jpkOj6zwm4UDo7i+TecKAccnhS9mwXOq9Csp//cAk7A/vbfV/9BBoL8rFpYVDCF47
 rsolkougM6sESa5l0OsYm6hKTUTMgToxTJJXgmjrl3tkYHyhy+UnlfCFkw1nMEmm4dgRleSe
 DUZb7b/YlicdWAFSGyedZpx0jnHSOcb/uSaEV6FAPlVIiuOFhTo+LVTQJgmpurjQHclJFjTx
 1drHbe4mJP7c3ooYCqmn0D77xBgVod0jpCe1IqAwdQCdHX8jRkXHatMzeH3yVn1qIi+0omAK
 VwfSiy6906iYOO1uPoHnU3j936mMUgRlotrYiLWKMeco2bZWkfF0ce9da+Q5s29hcv3tkfy3
 fpsGdB9r3eutWcFrAmhziebchsrpj+0hkQ+eB7QcWN24Mfx+TPZozwy9Mm1VBG0aJeindQMo
 ryyN7PBZvd9q2XgKPjjfJLxbF7aLP349eObSdM3hbmzNpi1R0eklYvUS07QsNS7s1C6Yi+kF
 7W/ftLrNZgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrCIsWRmVeSWpSXmKPExsVy+t/xu7of5u6KM/g9Tdyi99xJJouNM9az
 WvzfNpHZ4srX92wWK1cfZbJYsN/a4suVh0wWmx5fY7W4vGsOm8XBD09YHbg81sxbw+ix99sC
 Fo/t3x6wetzvPs7ksXlJvcftf4+ZPSbfWM7osftmA5tH35ZVjB6fN8kFcEXp2RTll5akKmTk
 F5fYKkUbWhjpGVpa6BmZWOoZGpvHWhmZKunb2aSk5mSWpRbp2yXoZfQ2TmEsuCFRsXL1DsYG
 xh/CXYycHBICJhIrX3QzdzFycQgJLGWUuPSwnR0iISNxcloDK4QtLPHnWhcbRNFbRon/K9aD
 FQkLxEic2bOBGcQWEVCSePrqLCNIEbPABSaJGzuPgiWEBJ4zSrycAWazCRhKdL0FmcTJwStg
 J7Hx30lGEJtFQFVi44SFYNtEBWIlVl9rZYSoEZQ4OfMJC4jNKaAjsX/3LrA4s4CZxLzND5kh
 bHmJ7W/nQNniEreezGeawCg0C0n7LCQts5C0zELSsoCRZRWjSGppcW56brGRXnFibnFpXrpe
 cn7uJkZgDG879nPLDsaud8GHGAU4GJV4eCPqd8UJsSaWFVfmHmKU4GBWEuFtydwZJ8SbklhZ
 lVqUH19UmpNafIjRFOi5icxSosn5wPSSVxJvaGpobmFpaG5sbmxmoSTO2yFwMEZIID2xJDU7
 NbUgtQimj4mDU6qBMfaQU9YMIfHlF58VKPmu+HnUXS9CWHu2wYktvz+YRv3Yz+U8z3E1V4Cz
 dOChvNkcsx00RLTMZFfcz59rdywsLuufEvOVS5tnhNxS83Oq4+aJ6PnouK0kKXuKTUhwXAnr
 lEJJd49P3IdVgu4IsR2Wu3pvzZQqlgtz+75euzT14OlVX56XOiqtVWIpzkg01GIuKk4EAJQJ
 QYT3AgAA
X-CMS-MailID: 20200512130032eucas1p1b4a35fc40a37196f67477d042455479c
X-Msg-Generator: CA
X-RootMTR: 20200512090107eucas1p13a38ce5ce4c15cd0033acaea7b26c9b0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090107eucas1p13a38ce5ce4c15cd0033acaea7b26c9b0
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <CGME20200512090107eucas1p13a38ce5ce4c15cd0033acaea7b26c9b0@eucas1p1.samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <20200512121808.GA20393@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_060035_813135_55EA6F3D 
X-CRM114-Status: GOOD (  23.25  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 iommu@lists.linux-foundation.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christoph,

On 12.05.2020 14:18, Christoph Hellwig wrote:
> On Tue, May 12, 2020 at 11:00:21AM +0200, Marek Szyprowski wrote:
>> struct sg_table is a common structure used for describing a memory
>> buffer. It consists of a scatterlist with memory pages and DMA addresses
>> (sgl entry), as well as the number of scatterlist entries: CPU pages
>> (orig_nents entry) and DMA mapped pages (nents entry).
>>
>> It turned out that it was a common mistake to misuse nents and orig_nents
>> entries, calling DMA-mapping functions with a wrong number of entries or
>> ignoring the number of mapped entries returned by the dma_map_sg
>> function.
>>
>> To avoid such issues, lets introduce a common wrappers operating directly
>> on the struct sg_table objects, which take care of the proper use of
>> the nents and orig_nents entries.
>>
>> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
>> ---
>> For more information, see '[PATCH v4 00/38] DRM: fix struct sg_table nents
>> vs. orig_nents misuse' thread:
>> https://lore.kernel.org/dri-devel/20200512085710.14688-1-m.szyprowski@samsung.com/T/
>> ---
>>   include/linux/dma-mapping.h | 79 +++++++++++++++++++++++++++++++++++++++++++++
>>   1 file changed, 79 insertions(+)
>>
>> diff --git a/include/linux/dma-mapping.h b/include/linux/dma-mapping.h
>> index b43116a..88f01cc 100644
>> --- a/include/linux/dma-mapping.h
>> +++ b/include/linux/dma-mapping.h
>> @@ -609,6 +609,85 @@ static inline void dma_sync_single_range_for_device(struct device *dev,
>>   	return dma_sync_single_for_device(dev, addr + offset, size, dir);
>>   }
>>   
>> +/**
>> + * dma_map_sgtable - Map the given buffer for the DMA operations
>> + * @dev:	The device to perform a DMA operation
>> + * @sgt:	The sg_table object describing the buffer
>> + * @dir:	DMA direction
>> + * @attrs:	Optional DMA attributes for the map operation
>> + *
>> + * Maps a buffer described by a scatterlist stored in the given sg_table
>> + * object for the @dir DMA operation by the @dev device. After success
>> + * the ownership for the buffer is transferred to the DMA domain. One has
>> + * to call dma_sync_sgtable_for_cpu() or dma_unmap_sgtable() to move the
>> + * ownership of the buffer back to the CPU domain before touching the
>> + * buffer by the CPU.
>> + * Returns 0 on success or -EINVAL on error during mapping the buffer.
>> + */
>> +static inline int dma_map_sgtable(struct device *dev, struct sg_table *sgt,
>> +		enum dma_data_direction dir, unsigned long attrs)
>> +{
>> +	int n = dma_map_sg_attrs(dev, sgt->sgl, sgt->orig_nents, dir, attrs);
>> +
>> +	if (n > 0) {
>> +		sgt->nents = n;
>> +		return 0;
>> +	}
>> +	return -EINVAL;
> Nit:  code tend to be a tad easier to read if the the exceptional
> condition is inside the branch block, so:
>
> 	if (n <= 0)
> 		return -EINVAL;
> 	sgt->nents = n;
> 	return 0;
>
Indeed this version looks much better. I will resend it in a few minutes.
> Otherwise this looks good to me:
>
> Reviewed-by: Christoph Hellwig <hch@lst.de>
>
Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
