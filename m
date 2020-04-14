Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3171A7A77
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 14:15:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:In-Reply-To:
	References:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XOdDNZmfwbXEQgsPhNIWBifLUcR0TUoN1x4hoWiEz6A=; b=Gh+nJH58sFGMfu
	b4k3AAz3rDkBtrnK4UUn1quwdRaMVhwXc2LlxPrDuSBbTECuyWqROil16d2fA5ivoVhjkQE5e9YFr
	6IsEP9JIiIXsM/zaHEn6pEMZqfMSedGwjlxyf296RTEd1aBD+AbODd57+juURWBQKiqBdb4Q2U2EJ
	Gabd3R/U6qX8XA+o09IoMvQXZ5AfmqBjrwnihtxQAcYoHjsCHiijwebna0fgi6XqGxX5JqwaY3GF1
	dkcGiQsc6BKSXcbl7NjtwKoZg2YWPmnjfqpk6TcvnD31xTC15NFCak3Pj2pIjmlBBrsUgk2LfxZUo
	1GLaIcU7ehLNvQfelxZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOKTR-0006Gi-Kb; Tue, 14 Apr 2020 12:15:29 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOKTG-0006GC-8P
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 12:15:19 +0000
Received: by mail-pf1-x441.google.com with SMTP id y25so3682070pfn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 05:15:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:references:in-reply-to:mime-version
 :message-id:content-transfer-encoding;
 bh=WHNX39DWF5Hlf3u8CwKDc+Fsn/bhcoFrdGg2YrrvOo0=;
 b=YPCaSFzn0oIdss6PgqWqExMDv2Ya4MqFKlIMtqX30ds70r7RnGgcscEiuorDHOmIxt
 bkg/vokkN/rRhBD6LJ9mw3mjhOahMg1Uwg9Qx2UNZFWTj0IMg9WnUDxB+ULJSCbA1ldn
 KSpVK42kxhB9z/aw0NH4UBeJI+KqGuxcHQoEPZCHcqOEDmAKdAwLZgWjuAma+5C/4TbG
 JmUnZp5MHDPoBd4ygsIhvDZ8ijEsX/e2wJi1VmDzroDN1oJ8TnkuqyUyr4ayZCZKIFK0
 GcKo9BxipK0dpFhF+pZwLrt75E6HD72Q17JUhc4ZADldaZQrqxB3dU1lD6phiCSp3nG2
 3WbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:references:in-reply-to
 :mime-version:message-id:content-transfer-encoding;
 bh=WHNX39DWF5Hlf3u8CwKDc+Fsn/bhcoFrdGg2YrrvOo0=;
 b=FQbplZ/d08MR42bATkWzMasyLQLsHA5JQDO3/L8NatUCWDZhYF91RIZ0gQVwKUeEPC
 LfGfoFF4X8bhtE8VQUfKgQHzYGyAr5lousY4WOyTY1syV/7zynCbaiTqaYkqiIQjTnp5
 k7iV68dmQ3sv+dkP0vTgz/XfNbYSzF8KYrSccPp553oBSHaU+msMeGwBKyYOQb9/iOwl
 YOZyYxlOH/DTnkJNXt2SumKvBET8D053b2q9RYbOwml+TOnYsulIzeopKA9y9fl9sz93
 Sv/viu9pdMrdyY6cKxQ5/pp7IizUpmkzd/fhj0sdGQlmv31n0qWP/Rn0+DxLpLAm17xW
 feaQ==
X-Gm-Message-State: AGi0PuYdpNoFASHJQYuo9rdHg87y9/wKPqp18856O9vIWKs88fG6nun4
 24Ez27pQKaxf4uAYspIoEn8=
X-Google-Smtp-Source: APiQypIal3O38c4Mqwm4P9dpr8g1+GmgXzDHXceCqIscl9w/plzTRFxfjFtpP2vU89kIf2d05y9VAA==
X-Received: by 2002:a63:1820:: with SMTP id y32mr11205009pgl.182.1586866517492; 
 Tue, 14 Apr 2020 05:15:17 -0700 (PDT)
Received: from localhost ([203.18.28.220])
 by smtp.gmail.com with ESMTPSA id h11sm10999819pfn.125.2020.04.14.05.15.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 05:15:16 -0700 (PDT)
Date: Tue, 14 Apr 2020 22:13:44 +1000
From: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH v2 4/4] mm/vmalloc: Hugepage vmalloc mappings
To: Christoph Hellwig <hch@infradead.org>
References: <20200413125303.423864-1-npiggin@gmail.com>
 <20200413125303.423864-5-npiggin@gmail.com>
 <20200414072316.GA5503@infradead.org>
In-Reply-To: <20200414072316.GA5503@infradead.org>
MIME-Version: 1.0
Message-Id: <1586864403.0qfilei2ft.astroid@bobo.none>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_051518_299163_E8BA23D9 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [npiggin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
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

Excerpts from Christoph Hellwig's message of April 14, 2020 5:23 pm:
> On Mon, Apr 13, 2020 at 10:53:03PM +1000, Nicholas Piggin wrote:
>> For platforms that define HAVE_ARCH_HUGE_VMAP and support PMD vmap mappings,
>> have vmalloc attempt to allocate PMD-sized pages first, before falling back
>> to small pages. Allocations which use something other than PAGE_KERNEL
>> protections are not permitted to use huge pages yet, not all callers expect
>> this (e.g., module allocations vs strict module rwx).
>> 
>> This gives a 6x reduction in dTLB misses for a `git diff` (of linux), from
>> 45600 to 6500 and a 2.2% reduction in cycles on a 2-node POWER9.
>> 
>> This can result in more internal fragmentation and memory overhead for a
>> given allocation. It can also cause greater NUMA unbalance on hashdist
>> allocations.
>> 
>> There may be other callers that expect small pages under vmalloc but use
>> PAGE_KERNEL, I'm not sure if it's feasible to catch them all. An
>> alternative would be a new function or flag which enables large mappings,
>> and use that in callers.
> 
> Why do we even use vmalloc in this case rather than just doing a huge
> page allocation?

Which case? Usually the answer would be because you don't want to use
contiguous physical memory and/or you don't want to use the linear 
mapping.

> What callers are you intersted in?

The dentry and inode caches for this test, obviously.

Lots of other things could possibly benefit though, other system 
hashes like networking, but lot of other vmalloc callers that might
benefit right away, some others could use some work to batch up
allocation sizes to benefit.

Thanks,
Nick

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
