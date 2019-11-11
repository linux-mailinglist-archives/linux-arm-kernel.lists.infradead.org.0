Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D97F6EEF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 08:15:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EbbWd14r7ael+ICQDw+KyBDGM25IWONBRkhH3VpITwQ=; b=tm1R/6JWVNwwX3
	BYHmUEKVb2sSUK5mQ+SWTJ768ZbBYBK0TqQsOggJqdVBRKzFTdFtrH5hmabiZQAVWyhpRD+HU9D4M
	GeCHALGWz568v/1SC/Y7JimS5Kg2k7FqtBXjY6RzkFl4VUk/lnuQs6dFIM0ZAUvAaM/9yr9eXlK7R
	ZX/R/UKLLMrWgukaC9FC0eJxx9SRm9//AFYDIUILhErq/WNXX8xA5DKYtfEjjYJtyA/Y19KpIxGmY
	kBqca28mLBHGoUSD1Ku/xfEziMSZoB52Z5rSFjURAiBsO2Tnt4RTrwqgcwJC6Jx2urANjAu0fuFAX
	nFbtRXM/x0+QwswPBlEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU3ut-0001e6-GZ; Mon, 11 Nov 2019 07:15:15 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU3uY-0001dT-2H
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 07:14:58 +0000
X-UUID: 75d2374e740248eea4acb7bd3525f022-20191110
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=ZET29UGGhorDG5MNMT5K7ddGjyv/P0hiwCQLJxUqtP4=; 
 b=aPVHgi82AH2ACnByaoYvGuHl4DEhcbZrnEjU57fAmRqjgqninzURpz/dwuWPPgCoxE9ckxQsBLIrSsSMavL1YEwsxR2WAg1QpnK7edrP4wpkj9lZJHzOGVI6mCPKihhcWoLaR7g+w6EX/O14h+IQgCffE1UbovoLLf38ktA8Kjw=;
X-UUID: 75d2374e740248eea4acb7bd3525f022-20191110
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1592935334; Sun, 10 Nov 2019 23:15:00 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 10 Nov 2019 23:14:24 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 11 Nov 2019 15:14:23 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 11 Nov 2019 15:14:22 +0800
Message-ID: <1573456464.20611.45.camel@mtksdccf07>
Subject: Re: [PATCH v3 1/2] kasan: detect negative size in memory operation
 function
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>
Date: Mon, 11 Nov 2019 15:14:24 +0800
In-Reply-To: <34bf9c08-d2f2-a6c6-1dbe-29b1456d8284@virtuozzo.com>
References: <20191104020519.27988-1-walter-zh.wu@mediatek.com>
 <34bf9c08-d2f2-a6c6-1dbe-29b1456d8284@virtuozzo.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_231456_054794_BA427A89 
X-CRM114-Status: GOOD (  21.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Matthias Brugger <matthias.bgg@gmail.com>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 2019-11-09 at 01:31 +0300, Andrey Ryabinin wrote:
> 
> On 11/4/19 5:05 AM, Walter Wu wrote:
> 
> > 
> > diff --git a/mm/kasan/common.c b/mm/kasan/common.c
> > index 6814d6d6a023..4ff67e2fd2db 100644
> > --- a/mm/kasan/common.c
> > +++ b/mm/kasan/common.c
> > @@ -99,10 +99,14 @@ bool __kasan_check_write(const volatile void *p, unsigned int size)
> >  }
> >  EXPORT_SYMBOL(__kasan_check_write);
> >  
> > +extern bool report_enabled(void);
> > +
> >  #undef memset
> >  void *memset(void *addr, int c, size_t len)
> >  {
> > -	check_memory_region((unsigned long)addr, len, true, _RET_IP_);
> > +	if (report_enabled() &&
> > +	    !check_memory_region((unsigned long)addr, len, true, _RET_IP_))
> > +		return NULL;
> >  
> >  	return __memset(addr, c, len);
> >  }
> > @@ -110,8 +114,10 @@ void *memset(void *addr, int c, size_t len)
> >  #undef memmove
> >  void *memmove(void *dest, const void *src, size_t len)
> >  {
> > -	check_memory_region((unsigned long)src, len, false, _RET_IP_);
> > -	check_memory_region((unsigned long)dest, len, true, _RET_IP_);
> > +	if (report_enabled() &&
> > +	   (!check_memory_region((unsigned long)src, len, false, _RET_IP_) ||
> > +	    !check_memory_region((unsigned long)dest, len, true, _RET_IP_)))
> > +		return NULL;
> >  
> >  	return __memmove(dest, src, len);
> >  }
> > @@ -119,8 +125,10 @@ void *memmove(void *dest, const void *src, size_t len)
> >  #undef memcpy
> >  void *memcpy(void *dest, const void *src, size_t len)
> >  {
> > -	check_memory_region((unsigned long)src, len, false, _RET_IP_);
> > -	check_memory_region((unsigned long)dest, len, true, _RET_IP_);
> > +	if (report_enabled() &&
> 
>             report_enabled() checks seems to be useless.
> 

Hi Andrey,

If it doesn't have report_enable(), then it will have below the error.
We think it should be x86 shadow memory is invalid value before KASAN
initialized, it will have some misjudgments to do directly return when
it detects invalid shadow value in memset()/memcpy()/memmove(). So we
add report_enable() to avoid this happening. but we should only use the
condition "current->kasan_depth == 0" to determine if KASAN is
initialized. And we try it is pass at x86.


>> [    0.029609] RIP: 0010:clear_page_orig+0x12/0x40
>> [    0.030247] Code: 90 90 90 90 90 90 90 90 b9 00 02 00 00 31 c0 f3
48 ab c3 0f 1f 44 00 00 31 c0 b9 40 00 00 00 66 0f 1f 84 00 00 00 00 00
ff c9 <48> 89 07 48 89 47 08 48 89 47 10 48 89 47 18 48 89 47 20 48 89
47
>> [    0.032943] RSP: 0000:ffffffffb1e07c48 EFLAGS: 00010016 ORIG_RAX:
0000000000000002
>> [    0.034010] RAX: 0000000000000000 RBX: 0000000778000000 RCX:
000000000000003f
>> [    0.035056] RDX: 000000000000002c RSI: 2000040000000000 RDI:
0000000000000000
>> [    0.036068] RBP: ffffffffb1e07c78 R08: 0000000000000003 R09:
0000000000000007
>> [    0.037066] R10: ffffffffb1e07d48 R11: fffffbfff689abdc R12:
ffffffffb1c3c6d0
>> [    0.038057] R13: 0000000000000000 R14: 0000000000000001 R15:
0000000000000001
>> [    0.039049] FS:  0000000000000000(0000) GS:ffffffffb1f32000(0000)
knlGS:0000000000000000
>> [    0.040290] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>> [    0.041134] CR2: 0000000000000000 CR3: 000000003adba000 CR4:
00000000000606b0
>> [    0.042128] Call Trace:
>> [    0.042482]  ? alloc_low_pages+0x1b1/0x1d6
>> [    0.043062]  alloc_low_page+0x15/0x1e
>> [    0.043619]  __kernel_physical_mapping_init+0x121/0x2f9
>> [    0.044354]  kernel_physical_mapping_init+0x15/0x1e
>> [    0.045081]  init_memory_mapping+0x357/0x465
>> [    0.045684]  ? alloc_low_pages+0x1d6/0x1d6
>> [    0.046314]  ? __kasan_check_read+0x2b/0x36
>> [    0.046914]  init_mem_mapping+0x26d/0x4f2
>> [    0.047524]  ? 0xffffffffaf400000
>> [    0.047994]  setup_arch+0xa6f/0xf9d
>> [    0.048490]  start_kernel+0xdb/0x9ce
>> [    0.049001]  ? mem_encrypt_init+0x12/0x12
>> [    0.049567]  ? x86_early_init_platform_quirks+0x8f/0x124
>> [    0.050314]  ? __asan_loadN+0x31/0x3a
>> [    0.050878]  x86_64_start_reservations+0x40/0x49
>> [    0.051614]  x86_64_start_kernel+0xfb/0x105
>> [    0.052212]  secondary_startup_64+0xb6/0xc0



> > +	   (!check_memory_region((unsigned long)src, len, false, _RET_IP_) ||
> > +	    !check_memory_region((unsigned long)dest, len, true, _RET_IP_)))
> > +		return NULL;
> >  
> >  	return __memcpy(dest, src, len);
> >  }
> > diff --git a/mm/kasan/generic.c b/mm/kasan/generic.c
> > index 616f9dd82d12..02148a317d27 100644
> > --- a/mm/kasan/generic.c
> > +++ b/mm/kasan/generic.c
> > @@ -173,6 +173,11 @@ static __always_inline bool check_memory_region_inline(unsigned long addr,
> >  	if (unlikely(size == 0))
> >  		return true;
> >  
> > +	if (unlikely((long)size < 0)) {
> 
>         if (unlikely(addr + size < addr)) {
> 
> > +		kasan_report(addr, size, write, ret_ip);
> > +		return false;
> > +	}
> > +
> >  	if (unlikely((void *)addr <
> >  		kasan_shadow_to_mem((void *)KASAN_SHADOW_START))) {
> >  		kasan_report(addr, size, write, ret_ip);
> > diff --git a/mm/kasan/generic_report.c b/mm/kasan/generic_report.c
> > index 36c645939bc9..52a92c7db697 100644
> > --- a/mm/kasan/generic_report.c
> > +++ b/mm/kasan/generic_report.c
> > @@ -107,6 +107,24 @@ static const char *get_wild_bug_type(struct kasan_access_info *info)
> >  
> >  const char *get_bug_type(struct kasan_access_info *info)
> >  {
> > +	/*
> > +	 * If access_size is negative numbers, then it has three reasons
> > +	 * to be defined as heap-out-of-bounds bug type.
> > +	 * 1) Casting negative numbers to size_t would indeed turn up as
> > +	 *    a large size_t and its value will be larger than ULONG_MAX/2,
> > +	 *    so that this can qualify as out-of-bounds.
> > +	 * 2) If KASAN has new bug type and user-space passes negative size,
> > +	 *    then there are duplicate reports. So don't produce new bug type
> > +	 *    in order to prevent duplicate reports by some systems
> > +	 *    (e.g. syzbot) to report the same bug twice.
> > +	 * 3) When size is negative numbers, it may be passed from user-space.
> > +	 *    So we always print heap-out-of-bounds in order to prevent that
> > +	 *    kernel-space and user-space have the same bug but have duplicate
> > +	 *    reports.
> > +	 */
>  
> Completely fail to understand 2) and 3). 2) talks something about *NOT* producing new bug
> type, but at the same time you code actually does that.
> 3) says something about user-space which have nothing to do with kasan.
> 
about 2)
We originally think the heap-out-of-bounds is similar to
heap-buffer-overflow, maybe we should change the bug type to
heap-buffer-overflow.

about 3)
Our idea is just to always print "heap-out-of-bounds" and don't
differentiate if the size come from user-space or not.


> > +	if ((long)info->access_size < 0)
> 
>         if (info->access_addr + info->access_size < info->access_addr)
> 
> > +		return "heap-out-of-bounds";
> > +
> >  	if (addr_has_shadow(info->access_addr))
> >  		return get_shadow_bug_type(info);
> >  	return get_wild_bug_type(info);
> > diff --git a/mm/kasan/report.c b/mm/kasan/report.c
> > index 621782100eaa..c79e28814e8f 100644
> > --- a/mm/kasan/report.c
> > +++ b/mm/kasan/report.c
> > @@ -446,7 +446,7 @@ static void print_shadow_for_address(const void *addr)
> >  	}
> >  }
> >  
> > -static bool report_enabled(void)
> > +bool report_enabled(void)
> >  {
> >  	if (current->kasan_depth)
> >  		return false;
> > diff --git a/mm/kasan/tags.c b/mm/kasan/tags.c
> > index 0e987c9ca052..b829535a3ad7 100644
> > --- a/mm/kasan/tags.c
> > +++ b/mm/kasan/tags.c
> > @@ -86,6 +86,11 @@ bool check_memory_region(unsigned long addr, size_t size, bool write,
> >  	if (unlikely(size == 0))
> >  		return true;
> >  
> > +	if (unlikely((long)size < 0)) {
> 
>         if (unlikely(addr + size < addr)) {
> 
Thanks. We will change it in v4.

> > +		kasan_report(addr, size, write, ret_ip);
> > +		return false;
> > +	}
> > +
> >  	tag = get_tag((const void *)addr);
> >  
> >  	/*
> > diff --git a/mm/kasan/tags_report.c b/mm/kasan/tags_report.c
> > index 969ae08f59d7..f7ae474aef3a 100644
> > --- a/mm/kasan/tags_report.c
> > +++ b/mm/kasan/tags_report.c
> > @@ -36,6 +36,24 @@
> >  
> >  const char *get_bug_type(struct kasan_access_info *info)
> >  {
> > +	/*
> > +	 * If access_size is negative numbers, then it has three reasons
> > +	 * to be defined as heap-out-of-bounds bug type.
> > +	 * 1) Casting negative numbers to size_t would indeed turn up as
> > +	 *    a large size_t and its value will be larger than ULONG_MAX/2,
> > +	 *    so that this can qualify as out-of-bounds.
> > +	 * 2) If KASAN has new bug type and user-space passes negative size,
> > +	 *    then there are duplicate reports. So don't produce new bug type
> > +	 *    in order to prevent duplicate reports by some systems
> > +	 *    (e.g. syzbot) to report the same bug twice.
> > +	 * 3) When size is negative numbers, it may be passed from user-space.
> > +	 *    So we always print heap-out-of-bounds in order to prevent that
> > +	 *    kernel-space and user-space have the same bug but have duplicate
> > +	 *    reports.
> > +	 */
> > +	if ((long)info->access_size < 0)
> 
>         if (info->access_addr + info->access_size < info->access_addr)
> 
Thanks. We will change it in v4.

> > +		return "heap-out-of-bounds";
> > +
> >  #ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
> >  	struct kasan_alloc_meta *alloc_meta;
> >  	struct kmem_cache *cache;
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
