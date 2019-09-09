Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB422AD550
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 11:07:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sDjlynA+Swxv6vXu6CW2J1cy4zRRK8L2qoB/ZRQkk6s=; b=GtDQ8PRsSpBWAR
	gXawd7yRFQJrQW+77FAMr/iRJWE36L4pv6hlqq2n/+5ZdiO9MeSt1QIjeMYFY8yt6D2FDCAWxDG+z
	AUJRFZ3SlENGNsuq0nniZVyH7dJCsyL2tQ/Aj4kVHutFwZDYe14YTkmap5BJyomufsowC+63jFchs
	mPglV5mZCXfihMmkvpDOD+qYz7bDfZEh0xbqLtXmheEC7Id6+4ss4wja0AGU0gAR12AuLssC+WM5a
	A2drJ1cRksUXgcgoHkU/EMfH8D3gUTJHkFMs95nso/ctZwtC+1CbZIbYAbFaQiDHx0f0Z2Ce82k9M
	MjsChAZDlZdJdGe1xxRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Fdr-0000TT-17; Mon, 09 Sep 2019 09:07:23 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Fdc-0000SE-Ud
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 09:07:10 +0000
Received: by mail-ed1-x541.google.com with SMTP id v38so12252732edm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 02:07:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4SKyZYA96ZSRssF5bkYvn8/ZaoQgr/75nnF3v6r+aa4=;
 b=v8w3omLdQptz1DFzG6nBTgRTann5rTwOgCIpzFAUG6tuIXQysQUnfXsX6/y/3pY3P9
 uuS7yln7izn8sa95u0TM8CxgbGe80u+X7t+BlonTv/Ols4bkZ2vzfkF1DV9YLxLMbFWT
 xMTJREdPJWH3jVZBD9E+ZKhbm9fxBa7VvxrMdRD31hii4MCogV1JmJclv2q1d2hOR8mU
 ZmP3pZ6SwqNXdDC1we1lskq5l3t193Mkb/3/NHR7WEDq49Askf9VlLY7UIB/Uu8JTBTS
 Nb6KVgXuECh0+jAIrDzxGYdOgJP/buaC0u2KcFllDTZyMTRwGgl/GCSf7CPvpXRD1ygX
 8PnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4SKyZYA96ZSRssF5bkYvn8/ZaoQgr/75nnF3v6r+aa4=;
 b=qFHcAA7H/uWIfk3DQjXfNTjpNzcoyyEXBx+kYfMmKOp982BWbF4Lk36nnE1tcE0LJW
 AcwyHBfojHbL+vfsUNOhZ3HOn6dzRpeYwvdwjNIT1eb4031wm4u1KSL5Z0r1KHuRgHmM
 b40VE8UToqH0tmPt1A1vzNTs89tIp4DIg9iKv4fvQxq1sVcI5vT61Ox9gzkab7Qmq8ha
 EPdU5sybFC93pB4TnRWfbkmYNAUgvMZNg3QlHASEezwX7bp9VImC5qPlG8WKpEwVO78q
 YCE3wCqW0rjPP6lMSPGBT0+Qkzw/tNKubt/vR2PCeYW/LYU14Srn+YdqEHBOwtAOEjRh
 1v9w==
X-Gm-Message-State: APjAAAXALN7PMcS+iDUfIlarWuKtmH4MYHPvJaxNUHEVwmqW3wuSL8tl
 wPqFDMWpQyTbaKTwS67d6yQEqg==
X-Google-Smtp-Source: APXvYqyy8JsEYXIXPZAEHqSPlkNj11nYxwtRGAlvmsF3QvGEid/LtADgJQP/uhTJkNkMTa1lQpdZXQ==
X-Received: by 2002:a17:906:af98:: with SMTP id
 mj24mr18377781ejb.199.1568020023846; 
 Mon, 09 Sep 2019 02:07:03 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id t21sm1658127ejs.37.2019.09.09.02.07.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Sep 2019 02:07:03 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id 94FB410022D; Mon,  9 Sep 2019 12:07:01 +0300 (+03)
Date: Mon, 9 Sep 2019 12:07:01 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Alexander Duyck <alexander.duyck@gmail.com>
Subject: Re: [PATCH v9 1/8] mm: Add per-cpu logic to page shuffling
Message-ID: <20190909090701.7ebz4foxyu3rxzvc@box>
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190907172512.10910.74435.stgit@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907172512.10910.74435.stgit@localhost.localdomain>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_020708_991954_EB84A23D 
X-CRM114-Status: GOOD (  22.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: yang.zhang.wz@gmail.com, pagupta@redhat.com, kvm@vger.kernel.org,
 david@redhat.com, catalin.marinas@arm.com, mhocko@kernel.org,
 linux-mm@kvack.org, alexander.h.duyck@linux.intel.com, will@kernel.org,
 aarcange@redhat.com, virtio-dev@lists.oasis-open.org, mst@redhat.com,
 willy@infradead.org, wei.w.wang@intel.com, ying.huang@intel.com,
 riel@surriel.com, dan.j.williams@intel.com, lcapitulino@redhat.com,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de, nitesh@redhat.com,
 konrad.wilk@oracle.com, dave.hansen@intel.com, linux-kernel@vger.kernel.org,
 pbonzini@redhat.com, akpm@linux-foundation.org, fengguang.wu@intel.com,
 kirill.shutemov@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 07, 2019 at 10:25:12AM -0700, Alexander Duyck wrote:
> From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> 
> Change the logic used to generate randomness in the suffle path so that we

Typo.

> can avoid cache line bouncing. The previous logic was sharing the offset
> and entropy word between all CPUs. As such this can result in cache line
> bouncing and will ultimately hurt performance when enabled.
> 
> To resolve this I have moved to a per-cpu logic for maintaining a unsigned
> long containing some amount of bits, and an offset value for which bit we
> can use for entropy with each call.
> 
> Reviewed-by: Dan Williams <dan.j.williams@intel.com>
> Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> ---
>  mm/shuffle.c |   33 +++++++++++++++++++++++----------
>  1 file changed, 23 insertions(+), 10 deletions(-)
> 
> diff --git a/mm/shuffle.c b/mm/shuffle.c
> index 3ce12481b1dc..9ba542ecf335 100644
> --- a/mm/shuffle.c
> +++ b/mm/shuffle.c
> @@ -183,25 +183,38 @@ void __meminit __shuffle_free_memory(pg_data_t *pgdat)
>  		shuffle_zone(z);
>  }
>  
> +struct batched_bit_entropy {
> +	unsigned long entropy_bool;
> +	int position;
> +};
> +
> +static DEFINE_PER_CPU(struct batched_bit_entropy, batched_entropy_bool);
> +
>  void add_to_free_area_random(struct page *page, struct free_area *area,
>  		int migratetype)
>  {
> -	static u64 rand;
> -	static u8 rand_bits;
> +	struct batched_bit_entropy *batch;
> +	unsigned long entropy;
> +	int position;
>  
>  	/*
> -	 * The lack of locking is deliberate. If 2 threads race to
> -	 * update the rand state it just adds to the entropy.
> +	 * We shouldn't need to disable IRQs as the only caller is
> +	 * __free_one_page and it should only be called with the zone lock
> +	 * held and either from IRQ context or with local IRQs disabled.
>  	 */
> -	if (rand_bits == 0) {
> -		rand_bits = 64;
> -		rand = get_random_u64();
> +	batch = raw_cpu_ptr(&batched_entropy_bool);
> +	position = batch->position;
> +
> +	if (--position < 0) {
> +		batch->entropy_bool = get_random_long();
> +		position = BITS_PER_LONG - 1;
>  	}
>  
> -	if (rand & 1)
> +	batch->position = position;
> +	entropy = batch->entropy_bool;
> +
> +	if (1ul & (entropy >> position))

Maybe something like this would be more readble:

	if (entropy & BIT(position))

>  		add_to_free_area(page, area, migratetype);
>  	else
>  		add_to_free_area_tail(page, area, migratetype);
> -	rand_bits--;
> -	rand >>= 1;
>  }
> 
> 

-- 
 Kirill A. Shutemov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
