Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCDFD6FAA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 08:42:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3aGxpclFBT/uDzkV3VLjHkJ8bM4O5CrZooc9DE7iIWE=; b=nFcUq8gafoxgC8
	lYyQCt9UwIcHnkvMe0Vp8uHR6Kmu4ulOG3Iq9Uts0AfBuX1E8zVYnfN62ZMPN+C/5eRiywui+Em8t
	16/Le9KIbcNjoHvIyFyuwf4/MCP7SLtzWSox/odFadLKA820EwK73A33tSJlFOIAvrfEb9Gbhhpi1
	2drP69ENxmtR5m/zfdSxJNShI5mRnihBOeYSJkGW+L8eFWwWDCrso5vNCVAPr+6+2uKL9/6KTZYOz
	E6T17Glm29ExlJZ+kolZEFES4s24chZdigXsiQivmJ3sRXZEOUEKEEdRTniiqiAPDBVrk3yv8t6z1
	V1YpzaIkCKKwqNKLx+QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKGXJ-0005DS-5q; Tue, 15 Oct 2019 06:42:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKGX9-0005Ch-NR
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 06:42:17 +0000
Received: from [172.20.185.47] (unknown [151.9.251.10])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4E23320872;
 Tue, 15 Oct 2019 06:42:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571121734;
 bh=rysVRgS2FyWINWo6N494AjxosS0+rfoIKEY8cnAlqSA=;
 h=Date:In-Reply-To:References:Subject:To:CC:From:From;
 b=WJ1RiJWg0ldBHseqfrvp5PmB2jl/7wc3M+Lc/btmiZF+qOzXjamufdias7ll/sXEJ
 QwS1noye5k0R7HoaydsDEqHqK5e/mvsfAeXgrBzGgtAaYQ5tDA/4/k6x302+mFvcxj
 QnD2Xs8HFk6dR3yYBKakkri/5m/87RAUPZ70FxNQ=
Date: Tue, 15 Oct 2019 08:42:07 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <20191014154423.a472315834ce6a730ccbaf3f@linux-foundation.org>
References: <1570915861-17633-1-git-send-email-rppt@kernel.org>
 <20191014154423.a472315834ce6a730ccbaf3f@linux-foundation.org>
MIME-Version: 1.0
Subject: Re: [PATCH] mm: memblock: do not enforce current limit for
 memblock_phys* family
To: Andrew Morton <akpm@linux-foundation.org>
From: Mike Rapoport <rppt@kernel.org>
Message-ID: <43610D35-58EE-4019-B979-EAE3F4781EAA@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_234215_787129_04B4A008 
X-CRM114-Status: UNSURE (   6.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, etnaviv@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Fabio Estevam <festevam@gmail.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Adam Ford <aford173@gmail.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On October 15, 2019 12:44:23 AM GMT+02:00, Andrew Morton <akpm@linux-foundation.org> wrote:
>On Sun, 13 Oct 2019 00:31:01 +0300 Mike Rapoport <rppt@kernel.org>
>wrote:
>
>> Until commit 92d12f9544b7 ("memblock: refactor internal allocation
>> functions") the maximal address for memblock allocations was forced
>to
>> memblock.current_limit only for the allocation functions returning
>virtual
>> address. The changes introduced by that commit moved the limit
>enforcement
>> into the allocation core and as a result the allocation functions
>returning
>> physical address also started to limit allocations to
>> memblock.current_limit.
>> 
>> This caused breakage of etnaviv GPU driver:
>> 
>> ...
>>
>
>So I'll add a cc:stable, yes?

Yeah, right. Somehow I've missed that...

-- 
Sincerely yours,
Mike

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
