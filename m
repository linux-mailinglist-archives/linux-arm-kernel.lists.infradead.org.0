Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5A51BEF89
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 07:02:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AVFMC93RgFtj8Y9uNrW/7tLIQIeJVorN8FWHhCGLN0w=; b=D1RpL3U1t3/bIo
	n6ksxCMO+HI/2usp87xGubOuK0UVMVT7L5rO8Tir4Pad3g3nusDDYPe45ppr2EzamD9G+Q1B5ckIJ
	kByqvfvaCuGP0q8bdvtBmZxWuQSb8H/gvItsZ//6H3VNvHGdBmeUddY9WwYE7a2e3QREC02h8TKxX
	jUDIzH58Gw4ZFhctOtRgpiMCAOS1S4PtVQhREW2UNbaRFibkWxG9R6PDYZQjqAtZ+fSPW00OhO+hL
	1UMYkDFfylVhKysUr3gGye4ZFDxnD9T63daf2UcIR3c5XqqMWhaHXwiP15tMhwOuEIPGvqqXiXbMj
	XQadZeAFMB5ax4y8mzjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU1LJ-0004IJ-LB; Thu, 30 Apr 2020 05:02:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU1LA-0004Ge-K9
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 05:02:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 959CC1063;
 Wed, 29 Apr 2020 22:02:25 -0700 (PDT)
Received: from [10.163.71.104] (unknown [10.163.71.104])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9A8B33F305;
 Wed, 29 Apr 2020 22:02:22 -0700 (PDT)
Subject: Re: [PATCH] arm: mm: use __pfn_to_section() to get mem_section
To: Guixiong Wei <guixiongwei@gmail.com>, catalin.marinas@arm.com,
 will@kernel.org
References: <20200430040437.119591-1-guixiongwei@gmail.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <bbe98908-4787-4981-0248-955b2cd2db19@arm.com>
Date: Thu, 30 Apr 2020 10:31:53 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200430040437.119591-1-guixiongwei@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_220228_717717_C120772A 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: steve.capper@arm.com, linux-kernel@vger.kernel.org, rppt@linux.ibm.com,
 tglx@linutronix.de, nsaenzjulienne@suse.de, akpm@linux-foundation.org,
 guro@fb.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 04/30/2020 09:34 AM, Guixiong Wei wrote:
> Use __pfn_to_section() to get mem_section, instead of open-coding it.

There is no open coding here. __pfn_to_section() helper which already
wraps around __nr_to_section(pfn_to_section_nr(pfn)), should be used
directly instead.

> No semantic changes.

and functional change. Please reword the commit message.

> 
> Signed-off-by: Guixiong Wei <guixiongwei@gmail.com>
> ---
>  arch/arm64/mm/init.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> index e42727e3568e..d2df416b840e 100644
> --- a/arch/arm64/mm/init.c
> +++ b/arch/arm64/mm/init.c
> @@ -272,7 +272,7 @@ int pfn_valid(unsigned long pfn)
>  	if (pfn_to_section_nr(pfn) >= NR_MEM_SECTIONS)
>  		return 0;
>  
> -	if (!valid_section(__nr_to_section(pfn_to_section_nr(pfn))))
> +	if (!valid_section(__pfn_to_section(pfn))
Looks good.

>  		return 0;
>  #endif
>  	return memblock_is_map_memory(addr);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
