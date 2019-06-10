Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2398C3AEF0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 08:23:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:In-Reply-To:
	References:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M8gkBTFuL1k+UzpyMN92MZaUF1dkGJwux7pxR9hh3LU=; b=FH1NU6McVKlYDI
	PzetNmCJZQuUWzZFUi2S54C+qnCWdWfIuJAfaNn9IJZ9KBUCv6yRhTlGEvx2qvDYO6AQQZQv89dZi
	BNDWM1n72W2g/fSd70PCjSh6FUkzZJyYOVsQ/IqicxsqKJmCTVzJGyE13ItwGsopupLVKs1RsYdfG
	kufcanhqi9aJVOYk71z6VMKh8XEi+a0hoIWGbIKGHTq/Xhcp+N9kAzrVeB8TzZpsI6M0kAT7I5ro4
	+7P34XyLz3rjpphNH0wJHsYFuoFh+YTjaENCc1rASIHMWEihz9wAnWPz3zaTD7RjEnQF0BpHXLMlt
	o6BihP7lN6q/U+XZ328Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haDii-00047N-Fr; Mon, 10 Jun 2019 06:23:52 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haDiV-00046s-Gz
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 06:23:40 +0000
Received: by mail-pg1-x544.google.com with SMTP id d30so4454758pgm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Jun 2019 23:23:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:references:in-reply-to:mime-version
 :user-agent:message-id:content-transfer-encoding;
 bh=lxnikhRVrLC3Z73VDFr/xBpCYRqbKfZ/1e83VsEWBxE=;
 b=HhS3RPzEgNDje8ZeE1beB7YaEgCu7QXAMpLFxSnCvGu25AyoYFquLZjcQ9HS35cUHX
 OjJrIJNYihJovEDfKK7wREuQr6mX3fB/p+JMid/mCa450vk23OoTJr5PP8FLnAZCO0aa
 qZ/bB+1jKDDhnGobtz7oFe0mRjdxrsdGDVqCLxKtBZf6e4EOBP9YKmTkH9JsHMZeGCXE
 2pDr+73d3GfR+18xpVN9GWeSJ38ufuoTNbG7RsahD3eXWksL0ALWJ8NUM/q9fEgYy6fA
 CMlvOIEQQ3JYF08bPoCo+zTzYVoLdPgpnp1YHL+Z5oKAZ7GZTyv5lT8vFPLsrf3CCIwO
 pG0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:references:in-reply-to
 :mime-version:user-agent:message-id:content-transfer-encoding;
 bh=lxnikhRVrLC3Z73VDFr/xBpCYRqbKfZ/1e83VsEWBxE=;
 b=p8Hg+w98HSvHRCf7ZvhgEj3od7c400DgB4Qeu6Ch27FPev+0ufzixDRFpKywoh6QLS
 pl2H9euhg5YYba3PdPWHSOytR9WAWQV+pUtT03Oo5lGTo4+8Bg5B4CZEaIHXZh4awHlB
 RTc5Ah7ghBID0Rr8Qoq8waaahGoirbjfi463BlxNjSg7fcO16zNBu1OrDA8VYntW5CM8
 LYHA9uVky7yoOxzNFBU+Ckk/yrMhI/tCjHN5iBbQwM9HTmDWdK9e31v2Pygzv/WZaagc
 HX2fRDdse4hiuIgphLTKvt64t+I8JQTyt9x82cEFOrY2ReEtDw0A8fhpl/10Jr/n16zM
 8QeA==
X-Gm-Message-State: APjAAAUUdeC4M/6S8LHiMlfVb+1SZwcHevu0YVwUnJqywPM4LMzWv3iN
 nZngxZJxsVZcndAXr4P0rxk=
X-Google-Smtp-Source: APXvYqzkDxHd9EVmOstnNeKlU2BwYtI5fqWFffgbDeETtbK8xN0ov7dak0twrcQF3n8lvJidVKHyRg==
X-Received: by 2002:aa7:8c52:: with SMTP id e18mr3569440pfd.233.1560147818885; 
 Sun, 09 Jun 2019 23:23:38 -0700 (PDT)
Received: from localhost (60-241-56-246.tpgi.com.au. [60.241.56.246])
 by smtp.gmail.com with ESMTPSA id i3sm9824804pfo.138.2019.06.09.23.23.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 09 Jun 2019 23:23:38 -0700 (PDT)
Date: Mon, 10 Jun 2019 16:21:16 +1000
From: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH 1/4] mm: Move ioremap page table mapping function to mm/
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
References: <20190610043838.27916-1-npiggin@gmail.com>
 <03de53e9-f1f9-1632-567e-b88aabc56764@arm.com>
In-Reply-To: <03de53e9-f1f9-1632-567e-b88aabc56764@arm.com>
MIME-Version: 1.0
User-Agent: astroid/0.14.0 (https://github.com/astroidmail/astroid)
Message-Id: <1560147293.7fxg58sp20.astroid@bobo.none>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_232339_614422_821DAD87 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (npiggin[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Anshuman Khandual's on June 10, 2019 3:42 pm:
> 
> 
> On 06/10/2019 10:08 AM, Nicholas Piggin wrote:
>> ioremap_page_range is a generic function to create a kernel virtual
>> mapping, move it to mm/vmalloc.c and rename it vmap_range.
> 
> Absolutely. It belongs in mm/vmalloc.c as its a kernel virtual range.
> But what is the rationale of changing the name to vmap_range ?

Well it doesn't just map IO. It's for arbitrary kernel virtual mapping
(including ioremap). Last patch uses it to map regular cacheable
memory.

>> For clarity with this move, also:
>> - Rename vunmap_page_range (vmap_range's inverse) to vunmap_range.
> 
> Will be inverse for both vmap_range() and vmap_page[s]_range() ?

Yes.

> 
>> - Rename vmap_page_range (which takes a page array) to vmap_pages.
> 
> s/vmap_pages/vmap_pages_range instead here ................^^^^^^

Yes.

> This deviates from the subject of this patch that it is related to
> ioremap only. I believe what this patch intends is to create
> 
> - vunmap_range() takes [VA range]
> 
> 	This will be the common kernel virtual range tear down
> 	function for ranges created either with vmap_range() or
> 	vmap_pages_range(). Is that correct ?
> - vmap_range() takes [VA range, PA range, prot]
> - vmap_pages_range() takes [VA range, struct pages, prot] 

That's right although we already have all those functions, so I don't
create anything, only move and re-name. I'm happy to change the
subject if you have a preference.

> Can we re-order the arguments (pages <--> prot) for vmap_pages_range()
> just to make it sync with vmap_range() ?
> 
> static int vmap_pages_range(unsigned long start, unsigned long end,
>  			   pgprot_t prot, struct page **pages)
> 

Sure, makes sense.

Thanks,
Nick


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
