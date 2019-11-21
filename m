Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A371052B6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 14:09:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OG1btiM6RQ+MMJ0vVaHA+wJuqFOVIKApsm6IezIe8io=; b=QYHrJRp5wY0LzE
	a4gpLjLc7pGL1ZpjybbZLxpE6GZxSUccSv7pg4/sgIi7GlLT4EFEnLcAAQseNOro7nwsRUlcLsvtx
	NTRNITa3kkIlsU6xSoYNs7KDINiTewtX0uRGWg7H1nXKcoLsEsGbQ5DZFLaKoYjzk7D8GbvZKoSFO
	JjB1umxuCp7U5ZYCe2sPtsV9eF0YWTHCWnDpKD4V/lO6kVRnaE19cOk0EwhRrTCcysTNCisRhvwGQ
	UXSKMMXFUdF/a4H4v+k8OnzzphXBq2vI/krQti0ELD/NPnFmZiJFGPFrGaSoifLI5yDlgsBgnSJVh
	KHxuGVcd4YC80b27R+SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXmDG-00007o-T4; Thu, 21 Nov 2019 13:09:34 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXmD5-00006n-QI; Thu, 21 Nov 2019 13:09:25 +0000
X-UUID: e8743b01cd844a68aa452d3cf31c6ac1-20191121
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=GKRpbk2ZaobBcrGmB5jVBprxNIO5Hbu7SfyTwGSrIKk=; 
 b=K8JOzSEHkHL3MO8oyOwdXAKMIDqQpcxBEwEqlODopZEl7MFXIVymzFGDLqKxfOdWdz+LHf5P3vSb6Ev8xRUjc3ht/ru5qp7u3wwEn62wMugngeCHGIBNxYKJrFS3DSsAjRBqZ9xW9UcDmEt38gUd8ubGNI3FuTjP7915/GxBVws=;
X-UUID: e8743b01cd844a68aa452d3cf31c6ac1-20191121
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2052480214; Thu, 21 Nov 2019 05:09:16 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 21 Nov 2019 05:09:35 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 21 Nov 2019 21:09:07 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 21 Nov 2019 21:09:08 +0800
Message-ID: <1574341753.8338.7.camel@mtksdccf07>
Subject: Re: [PATCH v4 1/2] kasan: detect negative size in memory operation
 function
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>
Date: Thu, 21 Nov 2019 21:09:13 +0800
In-Reply-To: <217bd537-e6b7-3acc-b6bb-ac9c5d94da89@virtuozzo.com>
References: <20191112065302.7015-1-walter-zh.wu@mediatek.com>
 <040479c3-6f96-91c6-1b1a-9f3e947dac06@virtuozzo.com>
 <1574341376.8338.4.camel@mtksdccf07>
 <217bd537-e6b7-3acc-b6bb-ac9c5d94da89@virtuozzo.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_050923_858103_04A527F1 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Thu, 2019-11-21 at 16:03 +0300, Andrey Ryabinin wrote:
> 
> On 11/21/19 4:02 PM, Walter Wu wrote:
> > On Thu, 2019-11-21 at 15:26 +0300, Andrey Ryabinin wrote:
> >>
> >> On 11/12/19 9:53 AM, Walter Wu wrote:
> >>
> >>> diff --git a/mm/kasan/common.c b/mm/kasan/common.c
> >>> index 6814d6d6a023..4bfce0af881f 100644
> >>> --- a/mm/kasan/common.c
> >>> +++ b/mm/kasan/common.c
> >>> @@ -102,7 +102,8 @@ EXPORT_SYMBOL(__kasan_check_write);
> >>>  #undef memset
> >>>  void *memset(void *addr, int c, size_t len)
> >>>  {
> >>> -	check_memory_region((unsigned long)addr, len, true, _RET_IP_);
> >>> +	if (!check_memory_region((unsigned long)addr, len, true, _RET_IP_))
> >>> +		return NULL;
> >>>  
> >>>  	return __memset(addr, c, len);
> >>>  }
> >>> @@ -110,8 +111,9 @@ void *memset(void *addr, int c, size_t len)
> >>>  #undef memmove
> >>>  void *memmove(void *dest, const void *src, size_t len)
> >>>  {
> >>> -	check_memory_region((unsigned long)src, len, false, _RET_IP_);
> >>> -	check_memory_region((unsigned long)dest, len, true, _RET_IP_);
> >>> +	if (!check_memory_region((unsigned long)src, len, false, _RET_IP_) ||
> >>> +	    !check_memory_region((unsigned long)dest, len, true, _RET_IP_))
> >>> +		return NULL;
> >>>  
> >>>  	return __memmove(dest, src, len);
> >>>  }
> >>> @@ -119,8 +121,9 @@ void *memmove(void *dest, const void *src, size_t len)
> >>>  #undef memcpy
> >>>  void *memcpy(void *dest, const void *src, size_t len)
> >>>  {
> >>> -	check_memory_region((unsigned long)src, len, false, _RET_IP_);
> >>> -	check_memory_region((unsigned long)dest, len, true, _RET_IP_);
> >>> +	if (!check_memory_region((unsigned long)src, len, false, _RET_IP_) ||
> >>> +	    !check_memory_region((unsigned long)dest, len, true, _RET_IP_))
> >>> +		return NULL;
> >>>  
> >>
> >> I realized that we are going a wrong direction here. Entirely skipping mem*() operation on any
> >> poisoned shadow value might only make things worse. Some bugs just don't have any serious consequences,
> >> but skipping the mem*() ops entirely might introduce such consequences, which wouldn't happen otherwise.
> >>
> >> So let's keep this code as this, no need to check the result of check_memory_region().
> >>
> >>
> > Ok, we just need to determine whether size is negative number. If yes
> > then KASAN produce report and continue to execute mem*(). right?
> > 
> 
> Yes.

Thanks for your suggestion.
I will send a new v5 patch tomorrow.

Walter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
