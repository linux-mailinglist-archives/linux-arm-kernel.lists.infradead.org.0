Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8984B075
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 05:39:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:In-Reply-To:
	References:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1BPFEPuy97Fbd6WslrW7xSRd21RTF0eZUBJkUGs0FTg=; b=AZIYI4V17ubfoL
	L2ymQ0DFKY+/37tXa/27dfuT/7v478WOeT9BwKUr0IFQrM2x+Zz7AsTb7phVbE2xgy9YMzg5QF80y
	e4qxSrBRE3lfkRUnrPfZVDP9XWvEN8rvkqiDFKiH9aj1lGMVXrbH16DWUol5yFLyB7w1iBNlFb4un
	rRQyiSZE+IrZYkRxPpTCvxHHd6cKXKFPxVLA0LB7zb8w4q+B9m0/aiWgDhGIHG6vmoP3DSkCv1D0/
	+Nj8Nr0F31MC/+50A+xPWdjWa2oA56Ix0FGHqTSolvzrIyYvMPlMYNoPHLuZAx41hPJx4iVJctl2l
	0Wju0Jd43B6vn0XYY51g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdRR4-000636-7H; Wed, 19 Jun 2019 03:38:58 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdRQp-00062D-62
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 03:38:44 +0000
Received: by mail-pg1-x541.google.com with SMTP id w10so4180414pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 20:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:references:in-reply-to:mime-version
 :user-agent:message-id:content-transfer-encoding;
 bh=X5S359TT2jtWbNMb2akLbFAUxVXw3JQDVjQ+R52t1xY=;
 b=S6UNpDi/FNqJ1wWojVY5Qfy9zBjyJFliXTvsl4vQVTsMqBMwOGNUKuZEfRXJW8VKmj
 D3T4za6dyg+WLPx42iPOExedOSsY0K6XEyda6izcLy3Ki6BXqqgBz6Sn6moEc5Vzex+Q
 nabKV97AkgIinO/iCOdzvFnRvDYnLKbm49K9EawFITT4ZT373SKVZVe6+6ycX7aCEpUg
 NIz+2rX6aQig9QiekVK7api9ev7wvhV/bRWSCDX+Je5V3w8lpGebW1BgpUqv/EhOlxg+
 m5/HqAQwhqSZWLYU+oNlTIqveSGoIqg+v2mIGihx6AGxZrPC8M5eE8V5xoWeEmyEPpt7
 sK6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:references:in-reply-to
 :mime-version:user-agent:message-id:content-transfer-encoding;
 bh=X5S359TT2jtWbNMb2akLbFAUxVXw3JQDVjQ+R52t1xY=;
 b=agOtzIwCEqYrnHmrgxwjDT6YQueWggxCa6pJg/j+afMoWARfbwb2J1jKpGyhgMQWwD
 qxOM4+NhfIrHZehfE5/hdmScAjcaaR7hdEau4aUiptsUcNaexe6+Lw8msdSmjs9vonAP
 09ZJQEVkXWEiEWgAKWPZ+bZcLSp88ORx3rzIW0LN8aD7pBJGM86GwsYXJ1Hdn2SUCS7F
 wNtamWZmqEUxTHM6s3lCjwdtW9lILUexKDs66zu7mQ/SoBqPIX2sRX2R/bv99vgxEOED
 pGZ8x7Ev+Xam5LVi+nIkb6VwYeIUZ1iD/82XclXidBvQo4b/2NrSx4g9wNa6ExUY+FeT
 DCgQ==
X-Gm-Message-State: APjAAAVXODFOMXYVZjsqBL8Sy89q4nr9akES1kJxgbI6b6kbXOOhSkKv
 yU+gqZChucpCCIE6FHIZs+nQjs4q
X-Google-Smtp-Source: APXvYqwnSBPFeZZjes4n8S6fPdWj8hj9VM+/z9NnV7ssCaV0ebSAiRrrqcOoX7VBgbIPkomjZ7oI3w==
X-Received: by 2002:a65:4009:: with SMTP id f9mr5756765pgp.110.1560915520951; 
 Tue, 18 Jun 2019 20:38:40 -0700 (PDT)
Received: from localhost (193-116-92-108.tpgi.com.au. [193.116.92.108])
 by smtp.gmail.com with ESMTPSA id u4sm15770215pfu.26.2019.06.18.20.38.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 18 Jun 2019 20:38:40 -0700 (PDT)
Date: Wed, 19 Jun 2019 13:33:36 +1000
From: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH 4/4] mm/vmalloc: Hugepage vmalloc mappings
To: Anshuman Khandual <anshuman.khandual@arm.com>, Mark Rutland
 <mark.rutland@arm.com>
References: <20190610043838.27916-1-npiggin@gmail.com>
 <20190610043838.27916-4-npiggin@gmail.com>
 <20190610141036.GA16989@lakrids.cambridge.arm.com>
 <1560177786.t6c5cn5hw4.astroid@bobo.none>
 <a1747247-f4f6-ea9a-149c-07c7eb9193d8@arm.com>
In-Reply-To: <a1747247-f4f6-ea9a-149c-07c7eb9193d8@arm.com>
MIME-Version: 1.0
User-Agent: astroid/0.14.0 (https://github.com/astroidmail/astroid)
Message-Id: <1560915007.fpyj1b1zh5.astroid@bobo.none>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_203843_228123_02B392DD 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (npiggin[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-mm@kvack.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Anshuman Khandual's on June 11, 2019 4:17 pm:
> 
> 
> On 06/10/2019 08:14 PM, Nicholas Piggin wrote:
>> Mark Rutland's on June 11, 2019 12:10 am:
>>> Hi,
>>>
>>> On Mon, Jun 10, 2019 at 02:38:38PM +1000, Nicholas Piggin wrote:
>>>> For platforms that define HAVE_ARCH_HUGE_VMAP, have vmap allow vmalloc to
>>>> allocate huge pages and map them
>>>>
>>>> This brings dTLB misses for linux kernel tree `git diff` from 45,000 to
>>>> 8,000 on a Kaby Lake KVM guest with 8MB dentry hash and mitigations=off
>>>> (performance is in the noise, under 1% difference, page tables are likely
>>>> to be well cached for this workload). Similar numbers are seen on POWER9.
>>>
>>> Do you happen to know which vmalloc mappings these get used for in the
>>> above case? Where do we see vmalloc mappings that large?
>> 
>> Large module vmalloc could be subject to huge mappings.
>> 
>>> I'm worried as to how this would interact with the set_memory_*()
>>> functions, as on arm64 those can only operate on page-granular mappings.
>>> Those may need fixing up to handle huge mappings; certainly if the above
>>> is all for modules.
>> 
>> Good point, that looks like it would break on arm64 at least. I'll
>> work on it. We may have to make this opt in beyond HUGE_VMAP.
> 
> This is another reason we might need to have an arch opt-ins like the one
> I mentioned before.
> 

Let's try to get the precursor stuff like page table functions and
vmalloc_to_page in this merge window, and then concentrate on the
huge vmalloc support issues after that.

Christophe points out that powerpc is likely to have a similar 
problem which I didn't realise, so I'll re think it.

Thanks,
Nick

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
