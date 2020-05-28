Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9651E54C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 05:47:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pYPqtEPgpPYPjjCTHb/xF/V2BUP5HHmkElhT46Xgk5U=; b=jPwRPS2bc87QFw
	h0q1qMlyJiagZiT7nrTcgzieOvCEnfm1Z7ZF+UKtEMOo4791zUUugJlL3GJtGPqPVvIKBTcmRKLH7
	eTjbFcSO3nyZHL7+Z+9oN+++jWtei6Hkq5oc9XtDrbsPyCLEeuMEF7ZlxC1k7DZQWxFdT/yyvNQeW
	+fIWwJbuAP5iH/YwypmtwB50m6u7KKXjzjniemuZdgZiuEf/Fm4SoYxs8sOgQxnityovXmzck5Vjb
	msBNGMhjROljM8yMytkGBPsWSTiQqSE/rUPejOvGEyYdCiIBYoCwL4D6XW6CCE2TmjVnIiiY0cMfa
	/gcf5f2kAh2XWnwJeQrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je9Vl-0006Tk-O4; Thu, 28 May 2020 03:47:17 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je9Vc-0006Rv-1r
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 03:47:09 +0000
Received: by mail-oi1-x243.google.com with SMTP id w4so23803304oia.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 20:47:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=2qx91aVPuFO0vUiP0/I7F3TMnsxZODsCo0wW/nZA/Ek=;
 b=PL6zETkbGU9mqzrGsocE1HBzwqKl3IMV7yV8wFZbGm4wHOwRBD8OMMG+y5JKGvCgPi
 vm5n3+sf1eGzsQmqX4L8++JRmCX3DzLApuWLh2lFuHx1IPNt0zVceXBi8JMZm08yMjJi
 dgTLtqCBs6olHY2rqJsuK9NL5GyMjlA9kP/Cz6nR6Si2xwGFFoE603kc/Dr53G3rQp6S
 gFBb+PddTEBGiaWOuBvRGs40Im9zVq8VTNmoIb/MzDf19j1pLiqnHKik2BuMsIkBrRbh
 TYnm6OVvmQUcyWzw/IOjcAS7zNs0Q98eBrYT94efLyjDduG9AxjlXGJtnrsATHUpOImZ
 HIag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=2qx91aVPuFO0vUiP0/I7F3TMnsxZODsCo0wW/nZA/Ek=;
 b=RPG0qFzyvyqUTtIklYg870B9t7bj2xLGa7vM4VXIKS+qRW9icmKJ2Q27bFUfGXS/rV
 eMVzLtxLTNYQAAXFOjjvMwTXT+A9L/g8E42j6IzvmcXt/aLjOL0qlBdSSS5xhJ4RB3Dl
 SqkAJUSJcxif2MXH0Fh5oBj8DH4SI38DtWYF2AJrld2IBaPWyg+4PdSG+QLiDtVlVzm7
 dzLPikl7ac8BqUUXyArmxpPgEcg+fwSrSw0ni9N7T7kxB06+l8Q72wuJ4t1J7UtdgWM4
 9vSPBnoSrRwnnazopcEBRpHacHtfM4OY0Pn8zrOUebAr+74NcCM09WUXgGxxEc7xub/P
 gc0w==
X-Gm-Message-State: AOAM532BOcVwxOvCq15h8VjvL3kcX7jPnSpUnRra4Lz0ryyIokFb3NNb
 LONkBs7HGf8kErsZgfxfn1potw==
X-Google-Smtp-Source: ABdhPJyOlEQNd0DWG0KMQ3iclWevL0B8TV/DHISOzSWHCezO7ksCSIPPniMHO6dFdL8N85bmZfl1CA==
X-Received: by 2002:aca:d856:: with SMTP id p83mr958723oig.38.1590637619384;
 Wed, 27 May 2020 20:46:59 -0700 (PDT)
Received: from eggly.attlocal.net
 (172-10-233-147.lightspeed.sntcca.sbcglobal.net. [172.10.233.147])
 by smtp.gmail.com with ESMTPSA id v10sm1036334oov.15.2020.05.27.20.46.55
 (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
 Wed, 27 May 2020 20:46:58 -0700 (PDT)
Date: Wed, 27 May 2020 20:46:22 -0700 (PDT)
From: Hugh Dickins <hughd@google.com>
X-X-Sender: hugh@eggly.anvils
To: Jerome Glisse <jglisse@redhat.com>
Subject: Re: Cache flush issue with page_mapping_file() and swap back shmem
 page ?
In-Reply-To: <20200528002033.GB1992500@redhat.com>
Message-ID: <alpine.LSU.2.11.2005272021220.3857@eggly.anvils>
References: <20200528002033.GB1992500@redhat.com>
User-Agent: Alpine 2.11 (LSU 23 2013-08-11)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_204708_097519_59973E13 
X-CRM114-Status: GOOD (  29.47  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Rich Felker <dalias@libc.org>, linux-sh@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, linux-mips@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 linux-mm@kvack.org, Guo Ren <guoren@kernel.org>, sparclinux@vger.kernel.org,
 Paul Burton <paulburton@kernel.org>, Helge Deller <deller@gmx.de>,
 Huang Ying <ying.huang@intel.com>, James Hogan <jhogan@kernel.org>,
 rmk+kernel@arm.linux.org.uk, linux-xtensa@linux-xtensa.org,
 Steven Capper <steve.capper@linaro.org>, Rabin Vincent <rabinv@axis.com>,
 Ley Foon Tan <lftan@altera.com>, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, Chris Zankel <chris@zankel.net>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-parisc@vger.kernel.org,
 Max Filippov <jcmvbkbc@gmail.com>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, nios2-dev@lists.rocketboards.org,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jerome,

On Wed, 27 May 2020, Jerome Glisse wrote:
> So any arch code which uses page_mapping_file() might get the wrong
> answer, this function will return NULL for a swap backed page which
> can be a shmem pages. But shmem pages can still be shared among
> multiple process (and possibly at different virtual addresses if
> mremap was use).
> 
> Attached is a patch that changes page_mapping_file() to return the
> shmem mapping for swap backed shmem page. I have not tested it (no
> way for me to test all those architecture) and i spotted this while
> working on something else. So i hope someone can take a closer look.

I'm certainly no expert on flush_dcache_page() and friends, but I'd
be very surprised if such a problem exists, yet has gone unnoticed
for so long.  page_mapping_file() itself is fairly new, added when
a risk of crashing on a race with swapoff came in: but the previous
use of page_mapping() would have suffered equally if there were such
a cache flushinhg problem here.

And I'm afraid your patch won't do anything to help if there is a
problem: very soon after shmem calls add_to_swap_cache(), it calls
shmem_delete_from_page_cache(), which sets page->mapping to NULL.

But I can assure you that a shmem page (unlike an anon page) is never
put into swap cache while it is mapped into userspace, and never
mapped into userspace while it is still in swap cache: does that help?

Hugh

> This might be a shmem page that is in a sense a file that
> can be mapped multiple times in different processes at
> possibly different virtual addresses (fork + mremap). So
> return the shmem mapping that will allow any arch code to
> find all mappings of the page.
> 
> Note that even if page is not anonymous then the page might
> have a NULL page->mapping field if it is being truncated,
> but then it is fine as each pte poiting to the page will be
> remove and cache flushing should be handled properly by that
> part of the code.
> 
> Signed-off-by: Jerome Glisse <jglisse@redhat.com>
> Cc: "Huang, Ying" <ying.huang@intel.com>
> Cc: Michal Hocko <mhocko@suse.com>
> Cc: Mel Gorman <mgorman@techsingularity.net>
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Mike Rapoport <rppt@linux.vnet.ibm.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: "James E.J. Bottomley" <jejb@parisc-linux.org>
> ---
>  mm/util.c | 18 +++++++++++++++++-
>  1 file changed, 17 insertions(+), 1 deletion(-)
> 
> diff --git a/mm/util.c b/mm/util.c
> index 988d11e6c17c..ec8739ab0cc3 100644
> --- a/mm/util.c
> +++ b/mm/util.c
> @@ -685,8 +685,24 @@ EXPORT_SYMBOL(page_mapping);
>   */
>  struct address_space *page_mapping_file(struct page *page)
>  {
> -	if (unlikely(PageSwapCache(page)))
> +	if (unlikely(PageSwapCache(page))) {
> +		/*
> +		 * This might be a shmem page that is in a sense a file that
> +		 * can be mapped multiple times in different processes at
> +		 * possibly different virtual addresses (fork + mremap). So
> +		 * return the shmem mapping that will allow any arch code to
> +		 * find all mappings of the page.
> +		 *
> +		 * Note that even if page is not anonymous then the page might
> +		 * have a NULL page->mapping field if it is being truncated,
> +		 * but then it is fine as each pte poiting to the page will be
> +		 * remove and cache flushing should be handled properly by that
> +		 * part of the code.
> +		 */
> +		if (!PageAnon(page))
> +			return page->mapping;
>  		return NULL;
> +	}
>  	return page_mapping(page);
>  }
>  
> -- 
> 2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
