Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E009B17259A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 18:49:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7mp83tMbRKKRh8/mInzDFma+sIVRVXIgYVZgHZQdkR8=; b=NGbteWBUNZvsiN
	PTap8PVR/YmW7NWZkGpcj2qp5bD9v9br1MzKgsmUO7XBletJ2zzELnnhpFBXxNKUvdvnpEyxCuO+1
	mixYpB+cOrl3ScGFcTRnLUTAL31/WbcfmrH0yBkmgXxmDk3rNA3u/gIOWt2IE+gSnMBX2Eb+/ms86
	cApt6l/jOKvCXhQW7GisH1Yv8HNQpMB0MvLNkPgzG/xW+xN7Dg1+fW/xRG5ElBiLcKSaq3X+VGWjP
	/zyeXb+VWaaATircjfhQ0RpTZtebX/4M5peAkT+XKV5Pafgjx4CCv/oIozeFoGmWxTq7NKQ6cXER1
	JOsB1ExTWtBRMGYqZGmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7NHj-00068r-LL; Thu, 27 Feb 2020 17:49:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7NH8-0005ty-34
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 17:48:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AA1261FB;
 Thu, 27 Feb 2020 09:48:41 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 AA2DD3F73B; Thu, 27 Feb 2020 09:48:40 -0800 (PST)
Date: Thu, 27 Feb 2020 17:48:38 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vlastimil Babka <vbabka@suse.cz>
Subject: Re: cma can't activate area on arm64
Message-ID: <20200227174838.GI3281767@arrakis.emea.arm.com>
References: <CAHrpVsXay=8q6a9Vee3wnLVAKHdd_c5+miHbvz+1uqJAEoRZ0A@mail.gmail.com>
 <8f82edf2-7313-eb4c-f68e-ff18f7a5e919@suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8f82edf2-7313-eb4c-f68e-ff18f7a5e919@suse.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_094842_212016_C68FFE72 
X-CRM114-Status: GOOD (  21.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Jonathan Richardson <jonathan.richardson@broadcom.com>, linux-mm@kvack.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, akpm@linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 10:56:12AM +0100, Vlastimil Babka wrote:
> On 2/22/20 12:42 AM, Jonathan Richardson wrote:
> > As of the 5.5 kernel I see boot errors in cma. It reserves 1G and then can't
> > activate an area. I added some prints. It's trying to activate the DMA
> > zone. This causes a driver to fail allocating a dma pool later on. The
> > coherent pool is the default 256MB. If I reduce cma from 1G to 512M
> > then it only tries activates DMA32 zone. I assume there was not enough cma
> > memory for DMA zone? Are there any configuration changes required due
> > to the DMA_ZONE and DMA_ZONE32 changes? I've attached my boot log.
> 
> I think this question is better for the ARM guys. CC'd

With commit 1a8e1cef7603 ("arm64: use both ZONE_DMA and ZONE_DMA32"), we
limited ZONE_DMA to 1G to accommodate the RPi4 requirements. ZONE_DMA32
spans to the end of the 32-bit space. So with a CMA region that goes
across the 1st GB, you'd hit this problem.

The dma_contiguous_reserve() call in arm64 uses ZONE_DMA32 as the upper
limit under the assumption that you don't need CMA in ZONE_DMA. But this
one doesn't have a lower limit.

What platform is this and how to you request the CMA size (cmdline)? Do
you use a fixed base? Also, do you want the CMA in ZONE_DMA or
ZONE_DMA32?

> > [    0.000000] cma: Reserved 1024 MiB at 0x00000000a0000000
> > ...
> > [    0.390448] Activating cma name: reserved, zone name: DMA
> > [    0.396564] pfn = 0xa0000
> > [    0.399522] cma->count = 262144
> > [    0.406244] pfn failed on = c0000
> > [    0.410002] cma: CMA area reserved could not be activated
> > 
> > static int __init cma_activate_area(struct cma *cma)
> > {
> >    ...
> >     printk("Activating cma name: %s, zone name: %s\n", cma->name, zone->name);
> >     printk("pfn = 0x%lx\n", pfn);
> >     printk("cma->count = %lu\n", cma->count);
> > 
> >     do {
> >         unsigned j;
> > 
> >         base_pfn = pfn;
> >         for (j = pageblock_nr_pages; j; --j, pfn++) {
> >             WARN_ON_ONCE(!pfn_valid(pfn));
> >             /*
> >              * alloc_contig_range requires the pfn range
> >              * specified to be in the same zone. Make this
> >              * simple by forcing the entire CMA resv range
> >              * to be in the same zone.
> >              */
> >             if (page_zone(pfn_to_page(pfn)) != zone) {
> >                 printk("pfn failed on = 0x%lx\n", pfn);
> >                 goto not_in_zone;

So I guess it's this test that fails as the CMA now spans ZONE_DMA and
ZONE_DMA32.

> >             }
> >         }
> >         init_cma_reserved_pageblock(pfn_to_page(base_pfn));
> >     } while (--i);
> > 
> > Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
