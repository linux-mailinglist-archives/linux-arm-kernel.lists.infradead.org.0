Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D08E5B5D8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 09:43:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=32ATerQmcLQZz72s1uR9CSh1YUB101gXu1FktJdqnNk=; b=MeNvKYM88WMVPk
	QypWQ40KcUVQClSrp7wGzR/nA3lxm6rg4yh8GbLmqD0+4wXrN0Au+a1MNZmgIkEPiA7KZEGz10Bzc
	GbsEN4VoUCJXPdpM7W8IhO9u20Q7C8+NxOrUyqT0EzO0czK61nUkxw94RBJ3h4UKmr4hzsQOYQRaY
	hcN+phJ36BdYtOShtQPxXfJCOYD5wtvr6rCJwpf8OR9Mzz7ZHheaD30QKxBRkDyn6sRZv814pSel6
	6Y38Xrr5C52W4ebNA5HwsIWzxwPuSVj8X7HeKVmiwvcaSnpLkye7aCF1ZZnvDZuZ5+OsSMAtFm1CN
	R5FADTHR2pFWUVVQhvPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhqyL-0003rm-6h; Mon, 01 Jul 2019 07:43:33 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhqxw-0003rI-5d
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 07:43:09 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id C7434AFFA;
 Mon,  1 Jul 2019 07:43:06 +0000 (UTC)
Date: Mon, 1 Jul 2019 09:43:06 +0200
From: Michal Hocko <mhocko@kernel.org>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v3 02/11] s390x/mm: Fail when an altmap is used for
 arch_add_memory()
Message-ID: <20190701074306.GC6376@dhcp22.suse.cz>
References: <20190527111152.16324-1-david@redhat.com>
 <20190527111152.16324-3-david@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527111152.16324-3-david@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_004308_355209_33ED91B0 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Oscar Salvador <osalvador@suse.com>, linux-s390@vger.kernel.org,
 linux-ia64@vger.kernel.org, Vasily Gorbik <gor@linux.ibm.com>,
 linux-sh@vger.kernel.org, Heiko Carstens <heiko.carstens@de.ibm.com>,
 linux-kernel@vger.kernel.org, Wei Yang <richard.weiyang@gmail.com>,
 linux-mm@kvack.org, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Igor Mammedov <imammedo@redhat.com>, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 27-05-19 13:11:43, David Hildenbrand wrote:
> ZONE_DEVICE is not yet supported, fail if an altmap is passed, so we
> don't forget arch_add_memory()/arch_remove_memory() when unlocking
> support.

Why do we need this? Sure ZONE_DEVICE is not supported for s390 and so
might be the case for other arches which support hotplug. I do not see
much point in adding warning to each of them.

> Cc: Martin Schwidefsky <schwidefsky@de.ibm.com>
> Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Michal Hocko <mhocko@suse.com>
> Cc: Mike Rapoport <rppt@linux.vnet.ibm.com>
> Cc: David Hildenbrand <david@redhat.com>
> Cc: Vasily Gorbik <gor@linux.ibm.com>
> Cc: Oscar Salvador <osalvador@suse.com>
> Suggested-by: Dan Williams <dan.j.williams@intel.com>
> Signed-off-by: David Hildenbrand <david@redhat.com>
> ---
>  arch/s390/mm/init.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/s390/mm/init.c b/arch/s390/mm/init.c
> index 14d1eae9fe43..d552e330fbcc 100644
> --- a/arch/s390/mm/init.c
> +++ b/arch/s390/mm/init.c
> @@ -226,6 +226,9 @@ int arch_add_memory(int nid, u64 start, u64 size,
>  	unsigned long size_pages = PFN_DOWN(size);
>  	int rc;
>  
> +	if (WARN_ON_ONCE(restrictions->altmap))
> +		return -EINVAL;
> +
>  	rc = vmem_add_mapping(start, size);
>  	if (rc)
>  		return rc;
> -- 
> 2.20.1
> 

-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
