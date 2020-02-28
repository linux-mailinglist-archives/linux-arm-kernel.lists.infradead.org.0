Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BED5E174098
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 20:56:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2LTs8ugKLwaBJ9ebjfBCtH1VgpRgQ5TqXi6KqsqmhQM=; b=lCvOPgRc1/qIgW
	1SmGd7I16YVvmPoYB1vKuuQYyVJbOf3k4+sZzgQqftjF9PdjCwMe2MnL0DHYC1UxY1jDUY8sXtvi9
	bCqmX95LtOT6pFzP2FE7VeI3SKDIS7bZGHCg6oH3ob+X6Q4dorWnunPYpgDWHstiAsuLnpemCJOFH
	Zi4ohrtqOkq1+gyqSvdj3vSJYBEk3WXX0D1B9P3inf5D6Ne7HtBmkMqv3Qk23eXg8N6cR9oSBYdq1
	rzhUx9QLWRpYxWfQrTlMtNjWn4Q7yeGct3qc2jsJCCOdM6OGkCcFJzwQ2/XxBrm5irHXPpfJtkEB6
	oSt0WG47venU1P3sg5xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7lkN-0003se-1E; Fri, 28 Feb 2020 19:56:31 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7lkB-0003sE-52
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 19:56:20 +0000
Received: by mail-io1-xd41.google.com with SMTP id m25so4751973ioo.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 11:56:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oS1+Ji80G02EBn4QvyRRacQTAfx4SDEzG1Ln6iEkUH4=;
 b=AjnnrY8efOK3e9HBoTgryIGQ3lkOxQ7JxDBT0pZiq8R1plY1+VuPaOLfBXACQ76V/p
 v5Me/T1hLjO7C+43MasavfQqVnIgRMAh5sHfvshgfITTOz4zybh50QD65r3XsVyQD+Et
 nW/dgdug1pttdZVeh1Mxr0BTn8+rtlEtu+2o0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oS1+Ji80G02EBn4QvyRRacQTAfx4SDEzG1Ln6iEkUH4=;
 b=h3l+DBDrd7TrMem6Kw1kJzIBfbOQcFM8uxDWNEEj5bpdcyHUjLT3c1SIpY5AN5YDrY
 R7rw/NMm7hmvDuS0lw4mhIFCZGMbU3zVEtOeq8J916cQcb9LquorMTUfBUXatx4oibcH
 Oqcvas+duTIlC2eZ7/LqPvD/n/lKV7IkopPgGsDf3PaqFOlYldELEpGSwUVf0l4UR9gG
 f/rH+uhpEHyuZc8UCjWt6W8w2LIALxeBkTRgxT5+tOAjQF21DIQSZUrzY3ZpzQJa/SNH
 4eIfuIo6MYY7+tgJMIz3vJi0YwHf4963MZGOyNEjLM1cIFhr/aRtll61vbnmftsoWz2d
 1uXw==
X-Gm-Message-State: APjAAAUoe7yoCNkLGRZSV4gal1O4QueqrTqd5p5jbPkRovOVjxuHnJwD
 qFECMFRqcH+s9BLRgMsRHpCXz3b8pxbK7QnnlsksVQ==
X-Google-Smtp-Source: APXvYqzbP2H8I9c8cRV0ntwz96JSXUgDWTco16U/tNfHAu9vP3li44WVQfhUvxjdiAe8SevIn10XGsW8nuky5AfecQM=
X-Received: by 2002:a5d:824c:: with SMTP id n12mr114637ioo.234.1582919777609; 
 Fri, 28 Feb 2020 11:56:17 -0800 (PST)
MIME-Version: 1.0
References: <CAHrpVsXay=8q6a9Vee3wnLVAKHdd_c5+miHbvz+1uqJAEoRZ0A@mail.gmail.com>
 <8f82edf2-7313-eb4c-f68e-ff18f7a5e919@suse.cz>
 <20200227174838.GI3281767@arrakis.emea.arm.com>
In-Reply-To: <20200227174838.GI3281767@arrakis.emea.arm.com>
From: Jonathan Richardson <jonathan.richardson@broadcom.com>
Date: Fri, 28 Feb 2020 11:56:06 -0800
Message-ID: <CAHrpVsXuTEQR7GG6pS4AVjU=ABvmpec7wx3trZuoHz1yf97SVw@mail.gmail.com>
Subject: Re: cma can't activate area on arm64
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_115619_198814_FE8AAD90 
X-CRM114-Status: GOOD (  25.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-mm@kvack.org,
 Vlastimil Babka <vbabka@suse.cz>, akpm@linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 9:48 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Thu, Feb 27, 2020 at 10:56:12AM +0100, Vlastimil Babka wrote:
> > On 2/22/20 12:42 AM, Jonathan Richardson wrote:
> > > As of the 5.5 kernel I see boot errors in cma. It reserves 1G and then can't
> > > activate an area. I added some prints. It's trying to activate the DMA
> > > zone. This causes a driver to fail allocating a dma pool later on. The
> > > coherent pool is the default 256MB. If I reduce cma from 1G to 512M
> > > then it only tries activates DMA32 zone. I assume there was not enough cma
> > > memory for DMA zone? Are there any configuration changes required due
> > > to the DMA_ZONE and DMA_ZONE32 changes? I've attached my boot log.
> >
> > I think this question is better for the ARM guys. CC'd
>
> With commit 1a8e1cef7603 ("arm64: use both ZONE_DMA and ZONE_DMA32"), we
> limited ZONE_DMA to 1G to accommodate the RPi4 requirements. ZONE_DMA32
> spans to the end of the 32-bit space. So with a CMA region that goes
> across the 1st GB, you'd hit this problem.
>
> The dma_contiguous_reserve() call in arm64 uses ZONE_DMA32 as the upper
> limit under the assumption that you don't need CMA in ZONE_DMA. But this
> one doesn't have a lower limit.
>
> What platform is this and how to you request the CMA size (cmdline)?

This is stingray (arch/arm64/boot/dts/broadcom/stingray/bcm958742k.dts).
cma is specified on cmdline as "cma=1G". The full boot log was in the
attachment.

Do
> you use a fixed base? Also, do you want the CMA in ZONE_DMA or
> ZONE_DMA32?

I'm not sure which zone we want it in. I'm assuming ZONE_DMA32. Before
that change there was only one zone. If I disable ZONE_DMA I don't see
the error, though I haven't tested anything. I don't really understand why
ZONE_DMA is enabled by default if it's a requirement for Rpi only. I'm
assuming it should work as is with both zones enabled but not clear how
cma spans the two zones. Was there a reason for having both zones
enabled as the default?

>
> > > [    0.000000] cma: Reserved 1024 MiB at 0x00000000a0000000
> > > ...
> > > [    0.390448] Activating cma name: reserved, zone name: DMA
> > > [    0.396564] pfn = 0xa0000
> > > [    0.399522] cma->count = 262144
> > > [    0.406244] pfn failed on = c0000
> > > [    0.410002] cma: CMA area reserved could not be activated
> > >
> > > static int __init cma_activate_area(struct cma *cma)
> > > {
> > >    ...
> > >     printk("Activating cma name: %s, zone name: %s\n", cma->name, zone->name);
> > >     printk("pfn = 0x%lx\n", pfn);
> > >     printk("cma->count = %lu\n", cma->count);
> > >
> > >     do {
> > >         unsigned j;
> > >
> > >         base_pfn = pfn;
> > >         for (j = pageblock_nr_pages; j; --j, pfn++) {
> > >             WARN_ON_ONCE(!pfn_valid(pfn));
> > >             /*
> > >              * alloc_contig_range requires the pfn range
> > >              * specified to be in the same zone. Make this
> > >              * simple by forcing the entire CMA resv range
> > >              * to be in the same zone.
> > >              */
> > >             if (page_zone(pfn_to_page(pfn)) != zone) {
> > >                 printk("pfn failed on = 0x%lx\n", pfn);
> > >                 goto not_in_zone;
>
> So I guess it's this test that fails as the CMA now spans ZONE_DMA and
> ZONE_DMA32.

Yes it fails here.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
