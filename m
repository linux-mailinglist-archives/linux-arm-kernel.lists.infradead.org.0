Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C639171487
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 10:56:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VQbehnkLwkrNniXUJWyWKyQZI0MNrFzUNR4hBbbUD5k=; b=KoVwJLcFZ8o6ig1OhknnvBjZa9
	1uHW0jNLyuywJH4mJ93Qw8UTxzQ8foLD4cyY6UYjpzqxRUm0cqJ8zQdB2AeMSkRCVy4SphTvtRUVv
	3NBZoqB1WORVoPGyM0gXWX+7KDimMIOgJCBNhZb0zsZF/5yl/EQEI6bFbBGXlwbAB5hFSNJr8tlrh
	L/6wony0lQOip4ZTVSCFbLmLtwYBV7jDsgAyalRI+JJ+MqSw1HTh7N+RV3SDKjjPxG7skrvqDlLjE
	Gt/HiDfJkCbMX6HFCPeMcBJ/zbVneU4FGitRzqTyy4ijX2GEgeV0ZfmS3JWgtCMVu9yoh39WdG97x
	muU5e+NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7FuB-0001RN-2h; Thu, 27 Feb 2020 09:56:31 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Fu1-0001Q5-Ru
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 09:56:23 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id C91FCAE46;
 Thu, 27 Feb 2020 09:56:13 +0000 (UTC)
Subject: Re: cma can't activate area on arm64
To: Jonathan Richardson <jonathan.richardson@broadcom.com>,
 linux-mm@kvack.org, akpm@linux-foundation.org,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <CAHrpVsXay=8q6a9Vee3wnLVAKHdd_c5+miHbvz+1uqJAEoRZ0A@mail.gmail.com>
From: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <8f82edf2-7313-eb4c-f68e-ff18f7a5e919@suse.cz>
Date: Thu, 27 Feb 2020 10:56:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAHrpVsXay=8q6a9Vee3wnLVAKHdd_c5+miHbvz+1uqJAEoRZ0A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_015622_050829_C7BE6275 
X-CRM114-Status: GOOD (  19.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/22/20 12:42 AM, Jonathan Richardson wrote:
> Hi,
> As of the 5.5 kernel I see boot errors in cma. It reserves 1G and then can't
> activate an area. I added some prints. It's trying to activate the DMA
> zone. This causes a driver to fail allocating a dma pool later on. The
> coherent pool is the default 256MB. If I reduce cma from 1G to 512M
> then it only tries activates DMA32 zone. I assume there was not enough cma
> memory for DMA zone? Are there any configuration changes required due
> to the DMA_ZONE and DMA_ZONE32 changes? I've attached my boot log.

I think this question is better for the ARM guys. CC'd

> [    0.000000] cma: Reserved 1024 MiB at 0x00000000a0000000
> ...
> [    0.390448] Activating cma name: reserved, zone name: DMA
> [    0.396564] pfn = 0xa0000
> [    0.399522] cma->count = 262144
> [    0.406244] pfn failed on = c0000
> [    0.410002] cma: CMA area reserved could not be activated
> 
> static int __init cma_activate_area(struct cma *cma)
> {
>    ...
>     printk("Activating cma name: %s, zone name: %s\n", cma->name, zone->name);
>     printk("pfn = 0x%lx\n", pfn);
>     printk("cma->count = %lu\n", cma->count);
> 
>     do {
>         unsigned j;
> 
>         base_pfn = pfn;
>         for (j = pageblock_nr_pages; j; --j, pfn++) {
>             WARN_ON_ONCE(!pfn_valid(pfn));
>             /*
>              * alloc_contig_range requires the pfn range
>              * specified to be in the same zone. Make this
>              * simple by forcing the entire CMA resv range
>              * to be in the same zone.
>              */
>             if (page_zone(pfn_to_page(pfn)) != zone) {
>                 printk("pfn failed on = 0x%lx\n", pfn);
>                 goto not_in_zone;
>             }
>         }
>         init_cma_reserved_pageblock(pfn_to_page(base_pfn));
>     } while (--i);
> 
> Thanks.
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
