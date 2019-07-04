Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 301445FA5C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 16:57:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A5JvhSlkyD0/CNRbhaaGnQAwp+253Zlr1++bp21RdzY=; b=b72QQ4X4pN7me6
	wCp54NnvYU+KVhFTIRf6sPqUveqAdGwgoseSXdpK25l2+lyPk0MRH41s5Ev+duv5MiMSZpQ7/aln4
	RrY70gqgLYvKakl1A4zXRkA99fz2/cx8RrQGQIBZjdLdTka5teYSTao4R6nhU9BnOiNO7Vxz8N/Po
	mSwlbcuReEjpyDn4vzOFgT+F+bh+r8ThnOQeav6uDiegbEzlrycWS4W+gRXkBr181GX8+Dbqp+/we
	OULh79paYhaRxZjZnmWICIe8UbncA4C+Yy4GzjLxFF3ACkXqCuJ0fU7sYL0PNqDV5+TN5KcmGgz66
	sKtKGbAbTqlo9smEITmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj3Ad-0001DB-R8; Thu, 04 Jul 2019 14:57:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hj3AS-0001Cq-UA
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 14:57:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 71E6428;
 Thu,  4 Jul 2019 07:56:57 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 880B03F738;
 Thu,  4 Jul 2019 07:56:53 -0700 (PDT)
Subject: Re: [RFC v2 11/14] arm64: Move the ASID allocator code in a separate
 file
To: Julien Grall <julien.grall@arm.com>
References: <20190620130608.17230-1-julien.grall@arm.com>
 <20190620130608.17230-12-julien.grall@arm.com>
From: James Morse <james.morse@arm.com>
Message-ID: <3e6c6636-8522-ab4a-0183-ae0198a7a047@arm.com>
Date: Thu, 4 Jul 2019 15:56:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190620130608.17230-12-julien.grall@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_075701_019501_347690E2 
X-CRM114-Status: GOOD (  15.43  )
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
Cc: julien.thierry@arm.com, marc.zyngier@arm.com, catalin.marinas@arm.com,
 suzuki.poulose@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Julien,

On 20/06/2019 14:06, Julien Grall wrote:
> We will want to re-use the ASID allocator in a separate context (e.g
> allocating VMID). So move the code in a new file.
> 
> The function asid_check_context has been moved in the header as a static
> inline function because we want to avoid add a branch when checking if the
> ASID is still valid.

> diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
> index 3df63a28856c..b745cf356fe1 100644
> --- a/arch/arm64/mm/context.c
> +++ b/arch/arm64/mm/context.c
> @@ -23,46 +23,21 @@

> -#define ASID_FIRST_VERSION(info)	NUM_ASIDS(info)

> diff --git a/arch/arm64/lib/asid.c b/arch/arm64/lib/asid.c
> new file mode 100644
> index 000000000000..7252e4fdd5e9
> --- /dev/null
> +++ b/arch/arm64/lib/asid.c
> @@ -0,0 +1,185 @@

> +#define ASID_FIRST_VERSION(info)	(1UL << ((info)->bits))

(oops!)


> @@ -344,7 +115,7 @@ static int asids_init(void)
>  	if (!asid_allocator_init(&asid_info, bits, ASID_PER_CONTEXT,
>  				 asid_flush_cpu_ctxt))
>  		panic("Unable to initialize ASID allocator for %lu ASIDs\n",
> -		      1UL << bits);
> +		      NUM_ASIDS(&asid_info));

Could this go in the patch that adds NUM_ASIDS()?


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
