Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6BA518B64
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 16:14:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+uvRXJP/KlBgh9Sja91Jlmyb0OtVRr8wQDxHGZjooU=; b=QOkLmOc1Mf6vb3
	PsPxt5adjiG0ylBA1J1yTW6gh8b5ltrsEDn1GZN7sQQQIY12TB5E1lCGqgIEfrNW0JA/aW9ND3nwR
	qrUtHcgTVeXNOj6sms51MKLyj1GNatH/z1Y/u/B+ATBorSdBhyQVkSUHOa3yun3oNLkmKniJ+VHXs
	2h0/0rgAuSRRlv3ctw9i0CtuW91YHVN/2zqbbwcUaIfRPc7bd8L5LyGT2PgOpOmGU09iiLMBI6Ku5
	J13dvVFMlF0qtemWt/dGhTKSBy+Vpte1VCt+IgH+w8X0VBmMBUPX2AfZ1dhzfZXQYJ5tofPxWpKlZ
	5KS3WRfninjkf8F0MYzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOjoD-0007bj-8T; Thu, 09 May 2019 14:14:05 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOjo6-0007ay-CH
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 14:13:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 189CF374;
 Thu,  9 May 2019 07:13:55 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8E5C13F238;
 Thu,  9 May 2019 07:13:52 -0700 (PDT)
Date: Thu, 9 May 2019 15:13:50 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: [PATCH v3 0/5] arm64: SPE ACPI enablement
Message-ID: <20190509141350.GF8239@e107155-lin>
References: <20190503232407.37195-1-jeremy.linton@arm.com>
 <5eaa1607-4bf0-a320-e9cf-2d51eca912c6@huawei.com>
 <82032e5b-0cb5-e48f-ab51-ba5d5f9dceec@arm.com>
 <819de863-92ff-51c5-9c35-880db4f6a922@huawei.com>
 <20190508165149.GB21553@e107155-lin>
 <20190509092810.GC2667@brain-police>
 <20190509103559.GB8239@e107155-lin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190509103559.GB8239@e107155-lin>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_071358_421308_D13E87D9 
X-CRM114-Status: GOOD (  19.62  )
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
 Sudeep Holla <sudeep.holla@arm.com>, linux-acpi@vger.kernel.org,
 Hongbo Yao <yaohongbo@huawei.com>, Hanjun Guo <guohanjun@huawei.com>,
 linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 09, 2019 at 11:35:59AM +0100, Sudeep Holla wrote:
> On Thu, May 09, 2019 at 10:28:11AM +0100, Will Deacon wrote:

[...]

> >
> > Since SPE uses virtual addressing, we don't really care about the underlying
> > page layout so there's no need to use higher-order allocations. I suppose we
> > could theoretically map them at the pmd level in some cases, but ignoring
> > them should also be harmless and I suspect you can delete the check.
> >
>
> Yes, I did a quick look to see if we can do that, but couldn't find a clue.
> Not sure if that's any optimisation, we can use order from page_private
> and set the values accordingly ?
>
And I forgot to add the diff that I mentioned above, something like the
patch below.

Regards,
Sudeep

-->8

diff --git i/drivers/perf/arm_spe_pmu.c w/drivers/perf/arm_spe_pmu.c
index 7cb766dafe85..45cd62517080 100644
--- i/drivers/perf/arm_spe_pmu.c
+++ w/drivers/perf/arm_spe_pmu.c
@@ -827,7 +827,7 @@ static void arm_spe_pmu_read(struct perf_event *event)
 static void *arm_spe_pmu_setup_aux(struct perf_event *event, void **pages,
 				   int nr_pages, bool snapshot)
 {
-	int i, cpu = event->cpu;
+	int i, j, cpu = event->cpu;
 	struct page **pglist;
 	struct arm_spe_pmu_buf *buf;
 
@@ -859,11 +859,12 @@ static void *arm_spe_pmu_setup_aux(struct perf_event *event, void **pages,
 		struct page *page = virt_to_page(pages[i]);
 
 		if (PagePrivate(page)) {
-			pr_warn("unexpected high-order page for auxbuf!");
-			goto out_free_pglist;
+			for (j = 0; j < 1 << page_private(page); j++)
+				pglist[i + j] = page++;
+			i += j - 1;
+		} else {
+			pglist[i] = page;
 		}
-
-		pglist[i] = virt_to_page(pages[i]);
 	}
 
 	buf->base = vmap(pglist, nr_pages, VM_MAP, PAGE_KERNEL);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
