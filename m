Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3795B62F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 09:56:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=epPqp5tilZcQKEyO5O1r41LpFxIYoZeFnb9D94uzmB0=; b=r9nD/EcibjNz+P
	t2AL/gHjLriHBokdzEUTs6tRRJlvgh4CDU9oMPNiY7zYtL0uOb9uyy78Ynp42YUvni7k4aJdJ/JOI
	lBWolyZyV1o5WXg2VioRO4K1pYG45JN7qyi85wnl5JFnugqk/hY2ehNqSnhUxaGVa7x+Smpi5xMvw
	TpO7NqOJOLxqMU3UZMck119klG79SUvxbq1aHociY6BwHtcUi7fTj/KPRjyXBEUfEociY7URQniRe
	j+IJs0adorw+FZJJpCuAW+Xs5IN3E33KPcClCFjOvbTtCvzx4fvIDmDA5UDynoB8lUVTFhmyxP01q
	yyZV3STN9Tly7LnvQeag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhrAt-0004Uz-Eo; Mon, 01 Jul 2019 07:56:31 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhrAf-0004UP-3w
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 07:56:18 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 9AD85AEBD;
 Mon,  1 Jul 2019 07:56:15 +0000 (UTC)
Date: Mon, 1 Jul 2019 09:56:15 +0200
From: Michal Hocko <mhocko@kernel.org>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v3 05/11] drivers/base/memory: Pass a block_id to
 init_memory_block()
Message-ID: <20190701075615.GE6376@dhcp22.suse.cz>
References: <20190527111152.16324-1-david@redhat.com>
 <20190527111152.16324-6-david@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527111152.16324-6-david@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_005617_304001_8A7A60D5 
X-CRM114-Status: GOOD (  16.85  )
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
Cc: linux-s390@vger.kernel.org, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-kernel@vger.kernel.org,
 Wei Yang <richard.weiyang@gmail.com>, linux-mm@kvack.org,
 Igor Mammedov <imammedo@redhat.com>, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 27-05-19 13:11:46, David Hildenbrand wrote:
> We'll rework hotplug_memory_register() shortly, so it no longer consumes
> pass a section.
> 
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: "Rafael J. Wysocki" <rafael@kernel.org>
> Signed-off-by: David Hildenbrand <david@redhat.com>

Acked-by: Michal Hocko <mhocko@suse.com>

> ---
>  drivers/base/memory.c | 15 +++++++--------
>  1 file changed, 7 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/base/memory.c b/drivers/base/memory.c
> index f180427e48f4..f914fa6fe350 100644
> --- a/drivers/base/memory.c
> +++ b/drivers/base/memory.c
> @@ -651,21 +651,18 @@ int register_memory(struct memory_block *memory)
>  	return ret;
>  }
>  
> -static int init_memory_block(struct memory_block **memory,
> -			     struct mem_section *section, unsigned long state)
> +static int init_memory_block(struct memory_block **memory, int block_id,
> +			     unsigned long state)
>  {
>  	struct memory_block *mem;
>  	unsigned long start_pfn;
> -	int scn_nr;
>  	int ret = 0;
>  
>  	mem = kzalloc(sizeof(*mem), GFP_KERNEL);
>  	if (!mem)
>  		return -ENOMEM;
>  
> -	scn_nr = __section_nr(section);
> -	mem->start_section_nr =
> -			base_memory_block_id(scn_nr) * sections_per_block;
> +	mem->start_section_nr = block_id * sections_per_block;
>  	mem->end_section_nr = mem->start_section_nr + sections_per_block - 1;
>  	mem->state = state;
>  	start_pfn = section_nr_to_pfn(mem->start_section_nr);
> @@ -694,7 +691,8 @@ static int add_memory_block(int base_section_nr)
>  
>  	if (section_count == 0)
>  		return 0;
> -	ret = init_memory_block(&mem, __nr_to_section(section_nr), MEM_ONLINE);
> +	ret = init_memory_block(&mem, base_memory_block_id(base_section_nr),
> +				MEM_ONLINE);
>  	if (ret)
>  		return ret;
>  	mem->section_count = section_count;
> @@ -707,6 +705,7 @@ static int add_memory_block(int base_section_nr)
>   */
>  int hotplug_memory_register(int nid, struct mem_section *section)
>  {
> +	int block_id = base_memory_block_id(__section_nr(section));
>  	int ret = 0;
>  	struct memory_block *mem;
>  
> @@ -717,7 +716,7 @@ int hotplug_memory_register(int nid, struct mem_section *section)
>  		mem->section_count++;
>  		put_device(&mem->dev);
>  	} else {
> -		ret = init_memory_block(&mem, section, MEM_OFFLINE);
> +		ret = init_memory_block(&mem, block_id, MEM_OFFLINE);
>  		if (ret)
>  			goto out;
>  		mem->section_count++;
> -- 
> 2.20.1

-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
