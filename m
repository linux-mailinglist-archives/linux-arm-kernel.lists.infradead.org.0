Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 556175C22A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 19:42:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LMDJZQ1iC23PiIdA9gkLYgQC9DXRye/Z9HmOWCnB5hg=; b=b0zaBkLxhdabuz3HH9t2HTKH3
	kpLh7jVSgHH4GbfC9x9/c8EpTSlxw6EpOqEAoANefRdBN4s34ctrXXxqudggBzDkVwdGNKmClcA19
	ti7hrY3nm841XQzy1mZUcu5EvDuE1vZmO5tUblMniHu1QEP9vzn5IypJGba6J7jawdD6TAi/9eSI+
	+WIIHVeEVQRvdBHQWBz2wxkNSmPlQKkzxjyMW5C8XKsjhdeekrk756lymHgymSxZchO55yf6m/cxi
	2NxgBGMJkMA3bnesY9piW6Ye/eRLCcv9qIZM50neL73p21PQlSwIVLV1c9qdqY3a57INhaVtK3RvV
	xbwkFYb/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi0Jc-0002FU-Nr; Mon, 01 Jul 2019 17:42:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hi0JW-0002En-2a
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 17:42:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A200228;
 Mon,  1 Jul 2019 10:41:59 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 155A33F703;
 Mon,  1 Jul 2019 10:41:57 -0700 (PDT)
Subject: Re: [PATCH v3 8/9] iommu/arm-smmu-v3: Add support for PCI ATS
To: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 will.deacon@arm.com, lorenzo.pieralisi@arm.com, bhelgaas@google.com
References: <20190417182448.12382-1-jean-philippe.brucker@arm.com>
 <20190417182448.12382-9-jean-philippe.brucker@arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <7fcd5263-8a20-11cb-0c20-9fee35fe65c1@arm.com>
Date: Mon, 1 Jul 2019 18:41:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190417182448.12382-9-jean-philippe.brucker@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_104202_167313_1B5AF2A5 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: zhongmiao@hisilicon.com, okaya@kernel.org, sudeep.holla@arm.com,
 rjw@rjwysocki.net, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jean-Philippe,

I realise it's a bit late for a "review", but digging up the original 
patch seemed as good a place as any to raise this...

On 17/04/2019 19:24, Jean-Philippe Brucker wrote:
[...]
> @@ -1740,6 +1906,9 @@ static void arm_smmu_detach_dev(struct arm_smmu_master *master)
>   
>   	master->domain = NULL;
>   	arm_smmu_install_ste_for_dev(master);
> +
> +	/* Disabling ATS invalidates all ATC entries */
> +	arm_smmu_disable_ats(master);
>   }

Is that actually true? I had initially overlooked this entirely while 
diagnosing something else and thought that we were missing any ATC 
invalidation on detach at all, but even having looked again I'm not 
entirely convinced it's bulletproof.

Firstly, the ATS spec only seems to say that *enabling* the ATS 
capability invalidates all ATC entries, although I think any corner 
cases that that alone opens up should be at best theoretical. More 
importantly though, pci_disable_ats() might not actually touch the 
capability - given that, it seems possible to move a VF to a new domain, 
and if it's not reset, end up preserving now-bogus ATC entries despite 
the old domain being torn down and freed. Do we need an explicit ATC 
invalidation here to be 100% safe, or is there something else I'm missing?

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
