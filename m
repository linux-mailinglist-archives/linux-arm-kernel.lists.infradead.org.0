Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB1F1DBBCC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 19:44:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m/QF4cDjzmCA6j+GC3SskE73mpkwguDciO5SoD4muSo=; b=s7vEdvkZVitl7t
	kDbWFhAoSWI1ZZS0x7Hs5kS+viYHjRXYMDonb5Se5KJEYFRKMEolrV4UoSLwCvo4y0s3JfC3i4AL5
	vs8+Z5wycK0oNry+REuXExgmfXhW8ohoRI0i+Ekt2NgX6lNBOdlcXNvoeQ+oWuY3KuQLpeJVBMh7H
	fDnYgnMRVCDAoOJjkJQsUgItGrvpZ/1UG+8sKMqLkjAsEhUV3hRZGMqL89SxA8IEcElJCjB66Wb6H
	7jMY06n7kOXpCPuLQ0ZvBJTmDUWZHWgO1dmN62yUEqbpgq5lyTIwfmrNM5KUzjN4xz7r2aWkMwBQb
	+B8VYVV0inAWJVYWof6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbSlG-0000BC-Vj; Wed, 20 May 2020 17:44:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbSl7-0000Ad-H1
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 17:44:02 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 427C82075F;
 Wed, 20 May 2020 17:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589996641;
 bh=P2aat+TlaI2N+/z7SW3hph4BEYfuA7FSbseNufQGe4k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LJ5Q3o7lmeUADmYQ2lB29DmpSJq9CwNkr/C8uOM21tMpkAFWObarU+Bu1OsPfq9FG
 4F6Ql4BWleoI4gCPqUB936+6/WYnqm5xYt5ZI5xAF0uY3EHOr74j831yY9jHzVpFEC
 at7VFnF549jrYb1WBdZlx226K8TrOTtmFi+2M4UA=
Date: Wed, 20 May 2020 18:43:56 +0100
From: Will Deacon <will@kernel.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH v5] ACPI/IORT: Fix PMCG node single ID mapping handling
Message-ID: <20200520174355.GC27629@willie-the-truck>
References: <1589994787-28637-1-git-send-email-tuanphan@os.amperecomputing.com>
 <20200520172736.GA10693@e121166-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520172736.GA10693@e121166-lin.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_104401_583892_E405F191 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Hanjun Guo <guohanjun@huawei.com>,
 Tuan Phan <tuanphan@os.amperecomputing.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>,
 linux-acpi@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 patches@amperecomputing.com, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 06:27:36PM +0100, Lorenzo Pieralisi wrote:
> On Wed, May 20, 2020 at 10:13:07AM -0700, Tuan Phan wrote:
> > An IORT PMCG node can have no ID mapping if its overflow interrupt is
> > wire based therefore the code that parses the PMCG node can not assume
> > the node will always have a single mapping present at index 0.
> > 
> > Fix iort_get_id_mapping_index() by checking for an overflow interrupt
> > and mapping count.
> > 
> > Fixes: 24e516049360 ("ACPI/IORT: Add support for PMCG")
> > 
> > Acked-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > Reviewed-by: Hanjun Guo <guoahanjun@huawei.com>
> > Signed-off-by: Tuan Phan <tuanphan@os.amperecomputing.com>
> > ---
> > v1 -> v2:
> > - Use pmcg node to detect wired base overflow interrupt.
> > 
> > v2 -> v3:
> > - Address Hanjun and Robin's comments.
> > 
> > v3 -> v4:
> > - Update the title and description as mentioned by Lorenzo.
> > 
> > v4 -> v5:
> > - Remove period in the title and commit references.
> > 
> >  drivers/acpi/arm64/iort.c | 5 +++++
> 
> Hi Will,
> 
> is there a chance we can get this patch into v5.8 ? I understand
> we are very late in the cycle but I wanted to ask (it applies cleanly
> to for-next/acpi).

Sorry, Lorenzo -- I didn't notice that this had been Acked already. I was
waiting for somebody to chime in! I'll queue it ASAP for 5.8.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
