Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24CF7F5AED
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 23:33:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QCSLkTZux6r0U2DBcQdBsw7Nrln1PwdTAPB6vBa3NA8=; b=FI6GTWSLvZ4V40
	h7ZBK6mtJjZ9+qbmOTxcvqOA7M50tAiV3neSamki/SfBquuReBqdHlivXrxYeJWf4MYl7DIMTwt8c
	GoULqO77ReYnAmZHlSVqGNsrJJwlU8SSG/nS15jey9HBodiheL1Zw3mzCRJkXYJx5inFvm91AhJbu
	FbSkPyMpP/ZqwpehOicZn6yDGLSthDT47UCNp0ZO7bXXcbpqOvwreVco31XdIxCxjgl56p8wQB2KI
	jwkhc6AG5BRxOE1gxBzd/oec/jITUlMIflu/jqFO2YnZEjjhJWsfkB+QVerp5B6aVwzpui3qNJ5g+
	FTHIpjaV0EmCIm7PezIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTCoL-0004Qn-NU; Fri, 08 Nov 2019 22:32:57 +0000
Received: from relay.sw.ru ([185.231.240.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTCo8-0004Fh-PP
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 22:32:46 +0000
Received: from [192.168.15.61] by relay.sw.ru with esmtp (Exim 4.92.3)
 (envelope-from <aryabinin@virtuozzo.com>)
 id 1iTCnz-0006wD-JO; Sat, 09 Nov 2019 01:32:35 +0300
Subject: Re: [PATCH v3 1/2] kasan: detect negative size in memory operation
 function
To: Walter Wu <walter-zh.wu@mediatek.com>,
 Alexander Potapenko <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
References: <20191104020519.27988-1-walter-zh.wu@mediatek.com>
From: Andrey Ryabinin <aryabinin@virtuozzo.com>
Message-ID: <34bf9c08-d2f2-a6c6-1dbe-29b1456d8284@virtuozzo.com>
Date: Sat, 9 Nov 2019 01:31:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191104020519.27988-1-walter-zh.wu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_143244_829576_B62D3C68 
X-CRM114-Status: GOOD (  19.21  )
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
Cc: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com,
 wsd_upstream <wsd_upstream@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 11/4/19 5:05 AM, Walter Wu wrote:

> 
> diff --git a/mm/kasan/common.c b/mm/kasan/common.c
> index 6814d6d6a023..4ff67e2fd2db 100644
> --- a/mm/kasan/common.c
> +++ b/mm/kasan/common.c
> @@ -99,10 +99,14 @@ bool __kasan_check_write(const volatile void *p, unsigned int size)
>  }
>  EXPORT_SYMBOL(__kasan_check_write);
>  
> +extern bool report_enabled(void);
> +
>  #undef memset
>  void *memset(void *addr, int c, size_t len)
>  {
> -	check_memory_region((unsigned long)addr, len, true, _RET_IP_);
> +	if (report_enabled() &&
> +	    !check_memory_region((unsigned long)addr, len, true, _RET_IP_))
> +		return NULL;
>  
>  	return __memset(addr, c, len);
>  }
> @@ -110,8 +114,10 @@ void *memset(void *addr, int c, size_t len)
>  #undef memmove
>  void *memmove(void *dest, const void *src, size_t len)
>  {
> -	check_memory_region((unsigned long)src, len, false, _RET_IP_);
> -	check_memory_region((unsigned long)dest, len, true, _RET_IP_);
> +	if (report_enabled() &&
> +	   (!check_memory_region((unsigned long)src, len, false, _RET_IP_) ||
> +	    !check_memory_region((unsigned long)dest, len, true, _RET_IP_)))
> +		return NULL;
>  
>  	return __memmove(dest, src, len);
>  }
> @@ -119,8 +125,10 @@ void *memmove(void *dest, const void *src, size_t len)
>  #undef memcpy
>  void *memcpy(void *dest, const void *src, size_t len)
>  {
> -	check_memory_region((unsigned long)src, len, false, _RET_IP_);
> -	check_memory_region((unsigned long)dest, len, true, _RET_IP_);
> +	if (report_enabled() &&

            report_enabled() checks seems to be useless.

> +	   (!check_memory_region((unsigned long)src, len, false, _RET_IP_) ||
> +	    !check_memory_region((unsigned long)dest, len, true, _RET_IP_)))
> +		return NULL;
>  
>  	return __memcpy(dest, src, len);
>  }
> diff --git a/mm/kasan/generic.c b/mm/kasan/generic.c
> index 616f9dd82d12..02148a317d27 100644
> --- a/mm/kasan/generic.c
> +++ b/mm/kasan/generic.c
> @@ -173,6 +173,11 @@ static __always_inline bool check_memory_region_inline(unsigned long addr,
>  	if (unlikely(size == 0))
>  		return true;
>  
> +	if (unlikely((long)size < 0)) {

        if (unlikely(addr + size < addr)) {

> +		kasan_report(addr, size, write, ret_ip);
> +		return false;
> +	}
> +
>  	if (unlikely((void *)addr <
>  		kasan_shadow_to_mem((void *)KASAN_SHADOW_START))) {
>  		kasan_report(addr, size, write, ret_ip);
> diff --git a/mm/kasan/generic_report.c b/mm/kasan/generic_report.c
> index 36c645939bc9..52a92c7db697 100644
> --- a/mm/kasan/generic_report.c
> +++ b/mm/kasan/generic_report.c
> @@ -107,6 +107,24 @@ static const char *get_wild_bug_type(struct kasan_access_info *info)
>  
>  const char *get_bug_type(struct kasan_access_info *info)
>  {
> +	/*
> +	 * If access_size is negative numbers, then it has three reasons
> +	 * to be defined as heap-out-of-bounds bug type.
> +	 * 1) Casting negative numbers to size_t would indeed turn up as
> +	 *    a large size_t and its value will be larger than ULONG_MAX/2,
> +	 *    so that this can qualify as out-of-bounds.
> +	 * 2) If KASAN has new bug type and user-space passes negative size,
> +	 *    then there are duplicate reports. So don't produce new bug type
> +	 *    in order to prevent duplicate reports by some systems
> +	 *    (e.g. syzbot) to report the same bug twice.
> +	 * 3) When size is negative numbers, it may be passed from user-space.
> +	 *    So we always print heap-out-of-bounds in order to prevent that
> +	 *    kernel-space and user-space have the same bug but have duplicate
> +	 *    reports.
> +	 */
 
Completely fail to understand 2) and 3). 2) talks something about *NOT* producing new bug
type, but at the same time you code actually does that.
3) says something about user-space which have nothing to do with kasan.

> +	if ((long)info->access_size < 0)

        if (info->access_addr + info->access_size < info->access_addr)

> +		return "heap-out-of-bounds";
> +
>  	if (addr_has_shadow(info->access_addr))
>  		return get_shadow_bug_type(info);
>  	return get_wild_bug_type(info);
> diff --git a/mm/kasan/report.c b/mm/kasan/report.c
> index 621782100eaa..c79e28814e8f 100644
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
> diff --git a/mm/kasan/tags.c b/mm/kasan/tags.c
> index 0e987c9ca052..b829535a3ad7 100644
> --- a/mm/kasan/tags.c
> +++ b/mm/kasan/tags.c
> @@ -86,6 +86,11 @@ bool check_memory_region(unsigned long addr, size_t size, bool write,
>  	if (unlikely(size == 0))
>  		return true;
>  
> +	if (unlikely((long)size < 0)) {

        if (unlikely(addr + size < addr)) {

> +		kasan_report(addr, size, write, ret_ip);
> +		return false;
> +	}
> +
>  	tag = get_tag((const void *)addr);
>  
>  	/*
> diff --git a/mm/kasan/tags_report.c b/mm/kasan/tags_report.c
> index 969ae08f59d7..f7ae474aef3a 100644
> --- a/mm/kasan/tags_report.c
> +++ b/mm/kasan/tags_report.c
> @@ -36,6 +36,24 @@
>  
>  const char *get_bug_type(struct kasan_access_info *info)
>  {
> +	/*
> +	 * If access_size is negative numbers, then it has three reasons
> +	 * to be defined as heap-out-of-bounds bug type.
> +	 * 1) Casting negative numbers to size_t would indeed turn up as
> +	 *    a large size_t and its value will be larger than ULONG_MAX/2,
> +	 *    so that this can qualify as out-of-bounds.
> +	 * 2) If KASAN has new bug type and user-space passes negative size,
> +	 *    then there are duplicate reports. So don't produce new bug type
> +	 *    in order to prevent duplicate reports by some systems
> +	 *    (e.g. syzbot) to report the same bug twice.
> +	 * 3) When size is negative numbers, it may be passed from user-space.
> +	 *    So we always print heap-out-of-bounds in order to prevent that
> +	 *    kernel-space and user-space have the same bug but have duplicate
> +	 *    reports.
> +	 */
> +	if ((long)info->access_size < 0)

        if (info->access_addr + info->access_size < info->access_addr)

> +		return "heap-out-of-bounds";
> +
>  #ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
>  	struct kasan_alloc_meta *alloc_meta;
>  	struct kmem_cache *cache;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
