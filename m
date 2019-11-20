Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF0C103616
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 09:35:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iDpHG55BvG0d4aDXI3Tki3joomUXVdOfy++1J9U8wUc=; b=YvO2i8e+u7jP/x
	SolOOthDUB5Ori+LWW4OFHumjyzGP5ozS/hHMGwSMMFZ4tWHIDFVU9MWpar6FyGD2CatQoTF7Dc3M
	1KtxzFEOdaaaTy3cnTF+lyN9BhW/EeAp1DGD2HU1Tc7wtMJ9uw/a8q/gsktPQlyboH17GKZCwna/H
	C55zIIIFTid0sXyJVREzqTk+of8nYUX98qfD9VsDScHcH9ZCBM7d1M5Bysf+17sMCKhiiGxTvKwU7
	gJCeeGeysmfUfMbsIE1WKrT+sgxQdfcznoClroAXm9J1lsBJrqw5m8qpqT5LJTHAfZFOUqj0pnmnX
	JM/qoHaxyavXli3rPSfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXLS6-0004uC-66; Wed, 20 Nov 2019 08:35:06 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXLRp-0004tB-2T; Wed, 20 Nov 2019 08:34:51 +0000
X-UUID: 3d17690246bd4262b86813d41cb0af1e-20191120
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=M2UT7PsbBttLm3d7KtnkpApkgoUAHdiQRcC9lfgSQY4=; 
 b=tIc0hGv85d75/m3EVc4EHLT28WAsA0Eog+cs2ueT1CAJTs8wD7TkAgFIFQSqwrJe9Zix2dxzDEjzqFDkB45mfr9ITFApSCeQ5S58uTx7PHSPwgG7wHw8Tr9UAOHA1Q7c1Q6yYUtGfSVxLehaJkBqoW4/MYcQNdvB+kija5AIHGY=;
X-UUID: 3d17690246bd4262b86813d41cb0af1e-20191120
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1329380053; Wed, 20 Nov 2019 00:34:47 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 20 Nov 2019 00:34:48 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 20 Nov 2019 16:34:37 +0800
Received: from [172.21.84.99] (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 20 Nov 2019 16:34:48 +0800
Message-ID: <1574238882.20045.2.camel@mtksdccf07>
Subject: Re: [PATCH v4 1/2] kasan: detect negative size in memory operation
 function
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>
Date: Wed, 20 Nov 2019 16:34:42 +0800
In-Reply-To: <20191112065302.7015-1-walter-zh.wu@mediatek.com>
References: <20191112065302.7015-1-walter-zh.wu@mediatek.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_003449_131527_3404B973 
X-CRM114-Status: GOOD (  21.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-11-12 at 14:53 +0800, Walter Wu wrote:
> KASAN missed detecting size is a negative number in memset(), memcpy(),
> and memmove(), it will cause out-of-bounds bug. So needs to be detected
> by KASAN.
> 
> If size is a negative number, then it has a reason to be defined as
> out-of-bounds bug type.
> Casting negative numbers to size_t would indeed turn up as
> a large size_t and its value will be larger than ULONG_MAX/2,
> so that this can qualify as out-of-bounds.
> 
> KASAN report is shown below:
> 
>  BUG: KASAN: out-of-bounds in kmalloc_memmove_invalid_size+0x70/0xa0
>  Read of size 18446744073709551608 at addr ffffff8069660904 by task cat/72
> 
>  CPU: 2 PID: 72 Comm: cat Not tainted 5.4.0-rc1-next-20191004ajb-00001-gdb8af2f372b2-dirty #1
>  Hardware name: linux,dummy-virt (DT)
>  Call trace:
>   dump_backtrace+0x0/0x288
>   show_stack+0x14/0x20
>   dump_stack+0x10c/0x164
>   print_address_description.isra.9+0x68/0x378
>   __kasan_report+0x164/0x1a0
>   kasan_report+0xc/0x18
>   check_memory_region+0x174/0x1d0
>   memmove+0x34/0x88
>   kmalloc_memmove_invalid_size+0x70/0xa0
> 
> [1] https://bugzilla.kernel.org/show_bug.cgi?id=199341
> 
> Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> Reported-by: Dmitry Vyukov <dvyukov@google.com>
> Suggested-by: Dmitry Vyukov <dvyukov@google.com>
> Reviewed-by: Dmitry Vyukov <dvyukov@google.com>
> Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
> Cc: Alexander Potapenko <glider@google.com>
> Reported-by: kernel test robot <lkp@intel.com>
> ---
>  include/linux/kasan.h     |  2 +-
>  mm/kasan/common.c         | 25 ++++++++++++++++++-------
>  mm/kasan/generic.c        |  9 +++++----
>  mm/kasan/generic_report.c | 11 +++++++++++
>  mm/kasan/kasan.h          |  2 +-
>  mm/kasan/report.c         |  5 +----
>  mm/kasan/tags.c           |  9 +++++----
>  mm/kasan/tags_report.c    | 11 +++++++++++
>  8 files changed, 53 insertions(+), 21 deletions(-)
> 
> diff --git a/include/linux/kasan.h b/include/linux/kasan.h
> index cc8a03cc9674..2ef6b8fc63ef 100644
> --- a/include/linux/kasan.h
> +++ b/include/linux/kasan.h
> @@ -180,7 +180,7 @@ void kasan_init_tags(void);
>  
>  void *kasan_reset_tag(const void *addr);
>  
> -void kasan_report(unsigned long addr, size_t size,
> +bool kasan_report(unsigned long addr, size_t size,
>  		bool is_write, unsigned long ip);
>  
>  #else /* CONFIG_KASAN_SW_TAGS */
> diff --git a/mm/kasan/common.c b/mm/kasan/common.c
> index 6814d6d6a023..4bfce0af881f 100644
> --- a/mm/kasan/common.c
> +++ b/mm/kasan/common.c
> @@ -102,7 +102,8 @@ EXPORT_SYMBOL(__kasan_check_write);
>  #undef memset
>  void *memset(void *addr, int c, size_t len)
>  {
> -	check_memory_region((unsigned long)addr, len, true, _RET_IP_);
> +	if (!check_memory_region((unsigned long)addr, len, true, _RET_IP_))
> +		return NULL;
>  
>  	return __memset(addr, c, len);
>  }
> @@ -110,8 +111,9 @@ void *memset(void *addr, int c, size_t len)
>  #undef memmove
>  void *memmove(void *dest, const void *src, size_t len)
>  {
> -	check_memory_region((unsigned long)src, len, false, _RET_IP_);
> -	check_memory_region((unsigned long)dest, len, true, _RET_IP_);
> +	if (!check_memory_region((unsigned long)src, len, false, _RET_IP_) ||
> +	    !check_memory_region((unsigned long)dest, len, true, _RET_IP_))
> +		return NULL;
>  
>  	return __memmove(dest, src, len);
>  }
> @@ -119,8 +121,9 @@ void *memmove(void *dest, const void *src, size_t len)
>  #undef memcpy
>  void *memcpy(void *dest, const void *src, size_t len)
>  {
> -	check_memory_region((unsigned long)src, len, false, _RET_IP_);
> -	check_memory_region((unsigned long)dest, len, true, _RET_IP_);
> +	if (!check_memory_region((unsigned long)src, len, false, _RET_IP_) ||
> +	    !check_memory_region((unsigned long)dest, len, true, _RET_IP_))
> +		return NULL;
>  
>  	return __memcpy(dest, src, len);
>  }
> @@ -627,12 +630,20 @@ void kasan_free_shadow(const struct vm_struct *vm)
>  }
>  
>  extern void __kasan_report(unsigned long addr, size_t size, bool is_write, unsigned long ip);
> +extern bool report_enabled(void);
>  
> -void kasan_report(unsigned long addr, size_t size, bool is_write, unsigned long ip)
> +bool kasan_report(unsigned long addr, size_t size, bool is_write, unsigned long ip)
>  {
> -	unsigned long flags = user_access_save();
> +	unsigned long flags;
> +
> +	if (likely(!report_enabled()))
> +		return false;
> +
> +	flags = user_access_save();
>  	__kasan_report(addr, size, is_write, ip);
>  	user_access_restore(flags);
> +
> +	return true;
>  }
>  
>  #ifdef CONFIG_MEMORY_HOTPLUG
> diff --git a/mm/kasan/generic.c b/mm/kasan/generic.c
> index 616f9dd82d12..56ff8885fe2e 100644
> --- a/mm/kasan/generic.c
> +++ b/mm/kasan/generic.c
> @@ -173,17 +173,18 @@ static __always_inline bool check_memory_region_inline(unsigned long addr,
>  	if (unlikely(size == 0))
>  		return true;
>  
> +	if (unlikely(addr + size < addr))
> +		return !kasan_report(addr, size, write, ret_ip);
> +
>  	if (unlikely((void *)addr <
>  		kasan_shadow_to_mem((void *)KASAN_SHADOW_START))) {
> -		kasan_report(addr, size, write, ret_ip);
> -		return false;
> +		return !kasan_report(addr, size, write, ret_ip);
>  	}
>  
>  	if (likely(!memory_is_poisoned(addr, size)))
>  		return true;
>  
> -	kasan_report(addr, size, write, ret_ip);
> -	return false;
> +	return !kasan_report(addr, size, write, ret_ip);
>  }
>  
>  bool check_memory_region(unsigned long addr, size_t size, bool write,
> diff --git a/mm/kasan/generic_report.c b/mm/kasan/generic_report.c
> index 36c645939bc9..c82bc3f52c9a 100644
> --- a/mm/kasan/generic_report.c
> +++ b/mm/kasan/generic_report.c
> @@ -107,6 +107,17 @@ static const char *get_wild_bug_type(struct kasan_access_info *info)
>  
>  const char *get_bug_type(struct kasan_access_info *info)
>  {
> +	/*
> +	 * If access_size is a negative number, then it has reason to be
> +	 * defined as out-of-bounds bug type.
> +	 *
> +	 * Casting negative numbers to size_t would indeed turn up as
> +	 * a large size_t and its value will be larger than ULONG_MAX/2,
> +	 * so that this can qualify as out-of-bounds.
> +	 */
> +	if (info->access_addr + info->access_size < info->access_addr)
> +		return "out-of-bounds";
> +
>  	if (addr_has_shadow(info->access_addr))
>  		return get_shadow_bug_type(info);
>  	return get_wild_bug_type(info);
> diff --git a/mm/kasan/kasan.h b/mm/kasan/kasan.h
> index 35cff6bbb716..afada2ce14bf 100644
> --- a/mm/kasan/kasan.h
> +++ b/mm/kasan/kasan.h
> @@ -152,7 +152,7 @@ bool check_memory_region(unsigned long addr, size_t size, bool write,
>  void *find_first_bad_addr(void *addr, size_t size);
>  const char *get_bug_type(struct kasan_access_info *info);
>  
> -void kasan_report(unsigned long addr, size_t size,
> +bool kasan_report(unsigned long addr, size_t size,
>  		bool is_write, unsigned long ip);
>  void kasan_report_invalid_free(void *object, unsigned long ip);
>  
> diff --git a/mm/kasan/report.c b/mm/kasan/report.c
> index 621782100eaa..c94f8e9c78d4 100644
> --- a/mm/kasan/report.c
> +++ b/mm/kasan/report.c
> @@ -446,7 +446,7 @@ static void print_shadow_for_address(const void *addr)
>  	}
>  }
>  
> -static bool report_enabled(void)
> +bool report_enabled(void)
>  {
>  	if (current->kasan_depth)
>  		return false;
> @@ -478,9 +478,6 @@ void __kasan_report(unsigned long addr, size_t size, bool is_write, unsigned lon
>  	void *untagged_addr;
>  	unsigned long flags;
>  
> -	if (likely(!report_enabled()))
> -		return;
> -
>  	disable_trace_on_warning();
>  
>  	tagged_addr = (void *)addr;
> diff --git a/mm/kasan/tags.c b/mm/kasan/tags.c
> index 0e987c9ca052..25b7734e7013 100644
> --- a/mm/kasan/tags.c
> +++ b/mm/kasan/tags.c
> @@ -86,6 +86,9 @@ bool check_memory_region(unsigned long addr, size_t size, bool write,
>  	if (unlikely(size == 0))
>  		return true;
>  
> +	if (unlikely(addr + size < addr))
> +		return !kasan_report(addr, size, write, ret_ip);
> +
>  	tag = get_tag((const void *)addr);
>  
>  	/*
> @@ -111,15 +114,13 @@ bool check_memory_region(unsigned long addr, size_t size, bool write,
>  	untagged_addr = reset_tag((const void *)addr);
>  	if (unlikely(untagged_addr <
>  			kasan_shadow_to_mem((void *)KASAN_SHADOW_START))) {
> -		kasan_report(addr, size, write, ret_ip);
> -		return false;
> +		return !kasan_report(addr, size, write, ret_ip);
>  	}
>  	shadow_first = kasan_mem_to_shadow(untagged_addr);
>  	shadow_last = kasan_mem_to_shadow(untagged_addr + size - 1);
>  	for (shadow = shadow_first; shadow <= shadow_last; shadow++) {
>  		if (*shadow != tag) {
> -			kasan_report(addr, size, write, ret_ip);
> -			return false;
> +			return !kasan_report(addr, size, write, ret_ip);
>  		}
>  	}
>  
> diff --git a/mm/kasan/tags_report.c b/mm/kasan/tags_report.c
> index 969ae08f59d7..1d412760551a 100644
> --- a/mm/kasan/tags_report.c
> +++ b/mm/kasan/tags_report.c
> @@ -36,6 +36,17 @@
>  
>  const char *get_bug_type(struct kasan_access_info *info)
>  {
> +	/*
> +	 * If access_size is a negative number, then it has reason to be
> +	 * defined as out-of-bounds bug type.
> +	 *
> +	 * Casting negative numbers to size_t would indeed turn up as
> +	 * a large size_t and its value will be larger than ULONG_MAX/2,
> +	 * so that this can qualify as out-of-bounds.
> +	 */
> +	if (info->access_addr + info->access_size < info->access_addr)
> +		return "out-of-bounds";
> +
>  #ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
>  	struct kasan_alloc_meta *alloc_meta;
>  	struct kmem_cache *cache;

Hi Andrey,

Would you have any concerns?
Thanks.

Walter
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
