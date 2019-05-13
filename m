Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 254FB1B45D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 12:56:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SXBP2Nx669jYcRTI+kWZrMJKuQd7hOhCOkYh9uIF2LM=; b=Jxp2iPiB0XRa/l
	syNK/elx7wcPdUgXvoqdYcP65+awoudKsDS78CVe11vfh7I2iIRBmQzAg4JCkaHpe7xu28ynNZMJ/
	BslHFBzb9vG4y7j0GTeqziQyZyaA8iP9BpAmJy7ego4DTXT8tNHcunpfhRvtwBcbuYW1n+FlZF89g
	lJmgvBHX5DeMvmEhjL1yvEGQ201yeVH4LJTZyasoHgp+4PoUZOpBmmbm3U970/7JIsEIy4AO6u6/1
	3WMHxClgjUzRk72jSK7VC/MkBWl+kPEBpfA25BXf+BHmIJsT/0270k658weAq4c5OZKEiWHaaUZ/B
	nL2aK97ljYwZdnBU48ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ8dR-0001Nl-W1; Mon, 13 May 2019 10:56:45 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ8dK-0001Mr-Qn
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 10:56:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5F95F374;
 Mon, 13 May 2019 03:56:36 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 033D93F703;
 Mon, 13 May 2019 03:56:33 -0700 (PDT)
Date: Mon, 13 May 2019 11:56:31 +0100
From: Will Deacon <will.deacon@arm.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v3 0/5] arm64: SPE ACPI enablement
Message-ID: <20190513105631.GB6711@fuggles.cambridge.arm.com>
References: <20190503232407.37195-1-jeremy.linton@arm.com>
 <5eaa1607-4bf0-a320-e9cf-2d51eca912c6@huawei.com>
 <82032e5b-0cb5-e48f-ab51-ba5d5f9dceec@arm.com>
 <819de863-92ff-51c5-9c35-880db4f6a922@huawei.com>
 <20190508165149.GB21553@e107155-lin>
 <20190509092810.GC2667@brain-police>
 <20190509103559.GB8239@e107155-lin>
 <20190509141350.GF8239@e107155-lin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190509141350.GF8239@e107155-lin>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_035638_872462_3BB7A7B9 
X-CRM114-Status: GOOD (  21.07  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 catalin.marinas@arm.com, john.garry@huawei.com, rjw@rjwysocki.net,
 linuxarm@huawei.com, Jeremy Linton <jeremy.linton@arm.com>,
 linux-acpi@vger.kernel.org, Hongbo Yao <yaohongbo@huawei.com>,
 Hanjun Guo <guohanjun@huawei.com>, linux-arm-kernel@lists.infradead.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep,

On Thu, May 09, 2019 at 03:13:50PM +0100, Sudeep Holla wrote:
> On Thu, May 09, 2019 at 11:35:59AM +0100, Sudeep Holla wrote:
> > On Thu, May 09, 2019 at 10:28:11AM +0100, Will Deacon wrote:
> 
> [...]
> 
> > >
> > > Since SPE uses virtual addressing, we don't really care about the underlying
> > > page layout so there's no need to use higher-order allocations. I suppose we
> > > could theoretically map them at the pmd level in some cases, but ignoring
> > > them should also be harmless and I suspect you can delete the check.
> > >
> >
> > Yes, I did a quick look to see if we can do that, but couldn't find a clue.
> > Not sure if that's any optimisation, we can use order from page_private
> > and set the values accordingly ?
> >
> And I forgot to add the diff that I mentioned above, something like the
> patch below.
> 
> Regards,
> Sudeep
> 
> -->8
> 
> diff --git i/drivers/perf/arm_spe_pmu.c w/drivers/perf/arm_spe_pmu.c
> index 7cb766dafe85..45cd62517080 100644
> --- i/drivers/perf/arm_spe_pmu.c
> +++ w/drivers/perf/arm_spe_pmu.c
> @@ -827,7 +827,7 @@ static void arm_spe_pmu_read(struct perf_event *event)
>  static void *arm_spe_pmu_setup_aux(struct perf_event *event, void **pages,
>  				   int nr_pages, bool snapshot)
>  {
> -	int i, cpu = event->cpu;
> +	int i, j, cpu = event->cpu;
>  	struct page **pglist;
>  	struct arm_spe_pmu_buf *buf;
>  
> @@ -859,11 +859,12 @@ static void *arm_spe_pmu_setup_aux(struct perf_event *event, void **pages,
>  		struct page *page = virt_to_page(pages[i]);
>  
>  		if (PagePrivate(page)) {
> -			pr_warn("unexpected high-order page for auxbuf!");
> -			goto out_free_pglist;
> +			for (j = 0; j < 1 << page_private(page); j++)
> +				pglist[i + j] = page++;
> +			i += j - 1;
> +		} else {
> +			pglist[i] = page;

Hmm. Given that vmap() doesn't do anything special for high-order pages
and rb_alloc_aux()/rb_alloc_aux_page() already split the allocation up
for the page array, what does your change accomplish on top of that?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
