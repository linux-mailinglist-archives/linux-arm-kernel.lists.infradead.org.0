Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9FD1A79C7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 13:41:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:In-Reply-To:
	References:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=25T/TQNPiPVFZ/Vu1k7ABJyYNPIrGsZFAYebK0oWSQk=; b=CC8a85D/WwrYzG
	Yl5BacxPffkQsQTtCd/WiNhPeDgmG5f+L5cBmG/Jn9CM5YoJ+juSBhNjMF/tQv/eqWky21wMAGIdN
	L8kQqwOQl4VC8ur1ENsGsxzjhZW2WlhKDx30nLS9C1UEINo7dWmsCm+e7R2Sb7LfHT6gUhwLTMkzB
	wRV2n0gId7Z3t5qoglFnuxREm3hSWnEK0rf/xVr0NtPU755zFcIzbOrwPEsNC7Ul2PrnbDFrfwjP5
	zJU5iSR3tADiSdPlUMRVIWV6UpmPvlsr+LHHAX81kArNr1yJGymwS/XYKVAHVWPl+AnPK7rKDC7jY
	T4vm7G1uEKqytl8McwjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOJwm-0000Xz-CK; Tue, 14 Apr 2020 11:41:44 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOJwe-0000XL-F7
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 11:41:37 +0000
Received: by mail-pl1-x643.google.com with SMTP id a23so4561402plm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 04:41:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:references:in-reply-to:mime-version
 :message-id:content-transfer-encoding;
 bh=8Esq4uJjc7hCqZPSyfuH3UXfV8N/MZeW3NHhinZ8EQA=;
 b=ocqZqq6sP10NyE5Oqrsyu24BO4bUv9d+CybYLvjUEA0qRTbQq8IAo2pJTWQfIqu4RO
 sPTYsA+WN55nEjfpiAKwJ3efgvE0y02zIRGr4QJLeGvUEOTkWEwmF8lPwgWo+rxrPEs5
 VDTf42M1YbD+ARAsRZhdeD47bvnZpwfdPk63IxzHlEP4FOS+xZOTFLokGOmvq6qCsYSC
 9tfWtMbUwXgESksl6KkJnUtYDYhwxUwpcnrbpFt8xAH3B/hJvFo4WpPegEXCjs4dhUzZ
 W26SU5gqovyT9qgqJ6qWu6cT8BV0oBUpmf+pSVOyif6EAbW821Qd95yr49cfUdak8sxQ
 mhEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:references:in-reply-to
 :mime-version:message-id:content-transfer-encoding;
 bh=8Esq4uJjc7hCqZPSyfuH3UXfV8N/MZeW3NHhinZ8EQA=;
 b=JKkxVC8HxpYnQg1QZTxfXBoB2bZqi3qqwod7jae0qQi1LrnMvwadii4JAooBEU4vAC
 vBQOK0c9ZVhiB6E+VpoOtjZZ7Pg19Uq7aM1uUefg24LKEx/kK+4FdYoBdOQBY+UBDt8E
 vhYuHqLIOVvNkx1aIGFkAj08yIOHCp8j9KnQGU6SGmZWsK3eHeIsb5CkH9zY92cheh3i
 /bsTo6RZykz5peYrE6ZVF8yY/6tdZ7Ko1dIHGa1nOAaMAEKx6Zwm0mnSBhlqH0fV5LYt
 WHP+BgG36TadwQSDmLyxpDBXHkFOtvcKggmAPU8xEOAezjOgZ2Iay2pfnqzO4JJN6VLm
 G3Qg==
X-Gm-Message-State: AGi0PuY6MUlwoENllWERNJFoGJ8DFkD5sFoTpsk1LMDj+6Q8LtPZgYIY
 UqJYtJcyFyWKn8t8oYCgzT0=
X-Google-Smtp-Source: APiQypLIBjtk6RQd/AotCq9xnqN6ML09PMuOg/nS9Dm4xLrHmr38av9P0xvvmudk1+K5veWBSwJi4w==
X-Received: by 2002:a17:90a:2281:: with SMTP id
 s1mr27766299pjc.68.1586864495571; 
 Tue, 14 Apr 2020 04:41:35 -0700 (PDT)
Received: from localhost ([203.18.28.220])
 by smtp.gmail.com with ESMTPSA id 132sm11155833pfc.183.2020.04.14.04.41.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 04:41:35 -0700 (PDT)
Date: Tue, 14 Apr 2020 21:39:53 +1000
From: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH v2 4/4] mm/vmalloc: Hugepage vmalloc mappings
To: Matthew Wilcox <willy@infradead.org>
References: <20200413125303.423864-1-npiggin@gmail.com>
 <20200413125303.423864-5-npiggin@gmail.com>
 <20200413134106.GN21484@bombadil.infradead.org>
In-Reply-To: <20200413134106.GN21484@bombadil.infradead.org>
MIME-Version: 1.0
Message-Id: <1586863931.xb4yeowkao.astroid@bobo.none>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_044136_506927_169C9B98 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [npiggin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H. Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Excerpts from Matthew Wilcox's message of April 13, 2020 11:41 pm:
> On Mon, Apr 13, 2020 at 10:53:03PM +1000, Nicholas Piggin wrote:
>> +static int vmap_pages_range_noflush(unsigned long start, unsigned long end,
>> +				    pgprot_t prot, struct page **pages,
>> +				    unsigned int page_shift)
>> +{
>> +	if (page_shift == PAGE_SIZE) {
> 
> ... I think you meant 'page_shift == PAGE_SHIFT'

Thanks, good catch. I obviously didn't test the fallback path (the
other path works for small pages, it just goes one at a time).

> Overall I like this series, although it's a bit biased towards CPUs
> which have page sizes which match PMD/PUD sizes.  It doesn't offer the
> possibility of using 64kB page sizes on ARM, for example.

No, it's just an incremental step on existing huge vmap stuff in
tree, so such a thing would be out of scope.

> But it's a
> step in the right direction.
> 

I don't know about moving kernel maps away from a generic Linux page
table format. I quite like moving to it and making it as generic as
possible.

On the other hand, I also would like to make some arch-specific
allowances for certain special cases that may not fit within the
standard page table format, but it might be a much more specific and
limited interface than the general vmalloc stuff.

Thanks,
Nick

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
