Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 394701999C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 17:34:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+fOTxWYMk3XWNBtn/lgpSP9ZS/2XRh4FUP4sd9JyyPQ=; b=R5q90D45nOz/H4
	TkOwX5ZP/wBTQGIeSDYwN/s6FkzVcdiZ0NJaZ0IWGKPqMv6zrwugL5ja7wXDx+/XfUOU40N5oSv1c
	Lsgdvmd4oApEy2C/QkkQzwc15XUCCw3x10j43QSs9gQwceLX43K0bfpp9Yx9ljlmVDGQXyAHEj9yr
	CU6tzMJvgtdE4ucRZ39oYO5s32+4vz+YSPk4gEDmQi5QKS7r7gHVXQmwd7NtbzdNQgmD9pxO3AdTU
	4vbrTlKHRIpnWL4C512afeuaJ+DjM50petuXWpxMQeAuc/OO6nGeTrEqBUJHQH7p5V4EZ8bYapen+
	1wUgHLtqBKfiVlvY6PCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJIu2-0007DN-7O; Tue, 31 Mar 2020 15:34:10 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJItn-0007Cb-19
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 15:33:57 +0000
Received: by mail-wr1-f66.google.com with SMTP id m17so26496903wrw.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 08:33:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=wqixz+ZIYAqgoA7MPWIYOpEEYP0CoNu6CnseEEi5hws=;
 b=e/xwQNeZqQ5Lan6arijswESTz+yXr4XDcq4TmybKfD+ayoIMHIEJ2anih/qJa2BwbY
 LFcqxboeK+e8JkE6foig10MCJbFPZrUjKH2nM1maBweiErRBfdv/3jXOuBc2LIUcb5tV
 FePnomk9sN6ya0cthJfU/+IfO6bPo6E2NCy+kFt0UnBQ3/pQybpJpZQ70r/qKoK4t9+i
 IZ1qJylWdjdbphpZfwV5GAuVP8PFenFTWDxyqJQNKhPGlhMGAGCaA1JNTio3Z3tCHX/9
 M8NM2nuPK1VyZ9jIvrIomIB3ipvrQn0Hyjs0VCytE5HW12+wqf1UQ9XiHgX3P/skA54y
 dZZw==
X-Gm-Message-State: ANhLgQ39byJaTJhz3zMejqmB4Lxg08uNQedT+XXaM+lpkJBNyKC+sWnx
 pPm89SILruXDxjA7TYl3RaIgiqrY
X-Google-Smtp-Source: ADFU+vuyE5SEZ+dPIFAcnIpCK+KoCMyMOpra8z4yVhIRJ2B/XSHZ5tSKeX1VNNnmQoYfW1esDx7ZTg==
X-Received: by 2002:adf:eb0c:: with SMTP id s12mr20671936wrn.293.1585664500850; 
 Tue, 31 Mar 2020 07:21:40 -0700 (PDT)
Received: from localhost (ip-37-188-180-223.eurotel.cz. [37.188.180.223])
 by smtp.gmail.com with ESMTPSA id v7sm24508561wrs.96.2020.03.31.07.21.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 07:21:39 -0700 (PDT)
Date: Tue, 31 Mar 2020 16:21:38 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Baoquan He <bhe@redhat.com>
Subject: Re: [PATCH v3 0/5] mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by
 default for NUMA
Message-ID: <20200331142138.GL30449@dhcp22.suse.cz>
References: <1585420282-25630-1-git-send-email-Hoan@os.amperecomputing.com>
 <20200330074246.GA14243@dhcp22.suse.cz>
 <20200330175100.GD30942@linux.ibm.com>
 <20200330182301.GM14243@dhcp22.suse.cz>
 <20200331081423.GE30942@linux.ibm.com>
 <20200331085513.GE30449@dhcp22.suse.cz>
 <20200331140332.GA2129@MiWiFi-R3L-srv>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331140332.GA2129@MiWiFi-R3L-srv>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_083355_322110_E125B084 
X-CRM114-Status: GOOD (  23.65  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mstsxfx[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mmorana@amperecomputing.com, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Hoan Tran <Hoan@os.amperecomputing.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Pavel Tatashin <pavel.tatashin@microsoft.com>, lho@amperecomputing.com,
 Vasily Gorbik <gor@linux.ibm.com>, Vlastimil Babka <vbabka@suse.cz>,
 Will Deacon <will.deacon@arm.com>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Oscar Salvador <osalvador@suse.de>, linux-kernel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 31-03-20 22:03:32, Baoquan He wrote:
> Hi Michal,
> 
> On 03/31/20 at 10:55am, Michal Hocko wrote:
> > On Tue 31-03-20 11:14:23, Mike Rapoport wrote:
> > > Maybe I mis-read the code, but I don't see how this could happen. In the
> > > HAVE_MEMBLOCK_NODE_MAP=y case, free_area_init_node() calls
> > > calculate_node_totalpages() that ensures that node->node_zones are entirely
> > > within the node because this is checked in zone_spanned_pages_in_node().
> > 
> > zone_spanned_pages_in_node does chech the zone boundaries are within the
> > node boundaries. But that doesn't really tell anything about other
> > potential zones interleaving with the physical memory range.
> > zone->spanned_pages simply gives the physical range for the zone
> > including holes. Interleaving nodes are essentially a hole
> > (__absent_pages_in_range is going to skip those).
> > 
> > That means that when free_area_init_core simply goes over the whole
> > physical zone range including holes and that is why we need to check
> > both for physical and logical holes (aka other nodes).
> > 
> > The life would be so much easier if the whole thing would simply iterate
> > over memblocks...
> 
> The memblock iterating sounds a great idea. I tried with putting the
> memblock iterating in the upper layer, memmap_init(), which is used for
> boot mem only anyway. Do you think it's doable and OK? It yes, I can
> work out a formal patch to make this simpler as you said. The draft code
> is as below. Like this it uses the existing code and involves little change.

Doing this would be a step in the right direction! I haven't checked the
code very closely though. The below sounds way too simple to be truth I
am afraid. First for_each_mem_pfn_range is available only for
CONFIG_HAVE_MEMBLOCK_NODE_MAP (which is one of the reasons why I keep
saying that I really hate that being conditional). Also I haven't really
checked the deferred initialization path - I have a very vague
recollection that it has been converted to the memblock api but I have
happilly dropped all that memory.
 
> diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> index 138a56c0f48f..558d421f294b 100644
> --- a/mm/page_alloc.c
> +++ b/mm/page_alloc.c
> @@ -6007,14 +6007,6 @@ void __meminit memmap_init_zone(unsigned long size, int nid, unsigned long zone,
>  		 * function.  They do not exist on hotplugged memory.
>  		 */
>  		if (context == MEMMAP_EARLY) {
> -			if (!early_pfn_valid(pfn)) {
> -				pfn = next_pfn(pfn);
> -				continue;
> -			}
> -			if (!early_pfn_in_nid(pfn, nid)) {
> -				pfn++;
> -				continue;
> -			}
>  			if (overlap_memmap_init(zone, &pfn))
>  				continue;
>  			if (defer_init(nid, pfn, end_pfn))
> @@ -6130,9 +6122,17 @@ static void __meminit zone_init_free_lists(struct zone *zone)
>  }
>  
>  void __meminit __weak memmap_init(unsigned long size, int nid,
> -				  unsigned long zone, unsigned long start_pfn)
> +				  unsigned long zone, unsigned long range_start_pfn)
>  {
> -	memmap_init_zone(size, nid, zone, start_pfn, MEMMAP_EARLY, NULL);
> +	unsigned long start_pfn, end_pfn;
> +	unsigned long range_end_pfn = range_start_pfn + size;
> +	int i;
> +	for_each_mem_pfn_range(i, nid, &start_pfn, &end_pfn, NULL) {
> +		start_pfn = clamp(start_pfn, range_start_pfn, range_end_pfn);
> +		end_pfn = clamp(end_pfn, range_start_pfn, range_end_pfn);
> +		if (end_pfn > start_pfn)
> +			memmap_init_zone(size, nid, zone, start_pfn, MEMMAP_EARLY, NULL);
> +	}
>  }
>  
>  static int zone_batchsize(struct zone *zone)

-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
