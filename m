Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C3C105C95
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 23:22:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ua4Po37VnEe+oEnful7RQabx99YbPUvuDOd9hC32aZs=; b=H6xBrQzPVuEfxY
	T/1ngPGh2snD1rahSwIX2/ZCTWfLQUEOHCsDTkdBNilliWelVdCsTvkWxYx3jJpFBIfbh/zJmAGLI
	ptDsDxlXOzGTyM3o57i38ssK4rB0Izde0x1edh3mxcB0awSDnPmPjGviKx4Vwv/fkTVQQagO/IDyT
	JUakpnI+4BvZnI3j4lPp9bsyDqgWb/TKO1Bfe4J3KPvAXUA1HfCOTsuR12HxdWTCdpmRCgDFbJFRF
	ZM0RE5GNDkRegu5Rciz+vLJ85Xah1D/PC8A6glEhFSzS7CZ5fXahuty5yErqNOzpha3SeVk/mro/S
	2raOp2XEpd2M5zlZb77w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXuqO-0003WX-2u; Thu, 21 Nov 2019 22:22:32 +0000
Received: from relay.sw.ru ([185.231.240.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXuq9-0003VI-6c; Thu, 21 Nov 2019 22:22:18 +0000
Received: from [192.168.15.154] by relay.sw.ru with esmtp (Exim 4.92.3)
 (envelope-from <aryabinin@virtuozzo.com>)
 id 1iXuq2-0007vl-St; Fri, 22 Nov 2019 01:22:11 +0300
Subject: Re: [PATCH v4 1/2] kasan: detect negative size in memory operation
 function
To: Walter Wu <walter-zh.wu@mediatek.com>,
 Alexander Potapenko <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
References: <20191112065302.7015-1-walter-zh.wu@mediatek.com>
From: Andrey Ryabinin <aryabinin@virtuozzo.com>
Message-ID: <b2ba5228-dec0-9acf-49e9-d57f156814ef@virtuozzo.com>
Date: Fri, 22 Nov 2019 01:20:23 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191112065302.7015-1-walter-zh.wu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_142217_239698_42267878 
X-CRM114-Status: GOOD (  11.29  )
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, linux-mm@kvack.org,
 linux-mediatek@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 11/12/19 9:53 AM, Walter Wu wrote:
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

Reviewed-by: Andrey Ryabinin <aryabinin@virtuozzo.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
