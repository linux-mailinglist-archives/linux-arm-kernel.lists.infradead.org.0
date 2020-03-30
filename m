Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE101975E3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 09:43:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nzMl1/cRZhGErUma6Zg7kxqk2wBjzUPQExcltLLLt+E=; b=G8ORaxXtPju058
	FDbS6NEqvEaESzkrjLNAROMfJhwl1q3IjkmKRT+GHwzpIaPYTJENhU4Js3rQYgimMLH/7X6IQ6f0d
	FlyqWpfcnagv9IODYylbGw8p4lpE1MHaO93JeDgJ0C069OtNkfyqNvzYJulhPGuEuTjb8UxRu4pE9
	vYhX19SDnNBBM2tcE4S26DsSds+uoXL06gfXGQlMrtZeDwbySp9uhLVJYgMeqhquosqa1gO+PUWYv
	hqW+Cudv9Ct8pra1Ov7tm4wHvh9PSIJ6AUbjRgubah0B18khxDF7jNtYgdzi7l+DTGae8faK9f/Td
	j7/3uDn5xEFhS9rhfSlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIp4W-0006x5-G6; Mon, 30 Mar 2020 07:43:00 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIp4M-0006wD-Lq
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 07:42:52 +0000
Received: by mail-wm1-f66.google.com with SMTP id b12so18862131wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 00:42:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=G2GbSd8nfrGqlF2CTXpVag+1XrsMr3qO8HlwnrY50kI=;
 b=dhKY0p0L5zytb/B1nd1IiGOPBuuLwLcjzQh4f4WYTOPu7MFEVbohExAlr17BLiR7q1
 WQ5ZIEKS16hUX6x/LK0I6Xf64fT++4rBDElL4R7Sb4r0wD0z6wheb2MwN9StcfYO0gL7
 3B9g1r/uHGq/S0Yc8OQjgztm0z/lYnjbovasPt+3eYuDOnakHtuoQGOpwppx01fO+Nju
 RaoOdvBcwQ/MwBGnD1PdEubLWz/Jy1RXo6UKFHQkWgWDJclO/xrwonmiQZRsmT8pyV0I
 k8oMNWFlIYcw6Es7DqRu3QVRPOV/heSWN0srEw3p58x2+IQaLpW4zrWwMWYeyOoz1CP5
 /4tA==
X-Gm-Message-State: ANhLgQ2JwYyyC4xexOWMKvpwq1jHZ7ZoYam7cbG6n1CeSsBTStJpF5Kl
 uR4VZR+KTM65LE8CvXfp0r8=
X-Google-Smtp-Source: ADFU+vtTO40ug73YLnNFJoExcCn1PsdhzxCpQLzjsmdgJmi+fsq6hPq9O7t9QjqmLmc+CwVgWIwn6A==
X-Received: by 2002:a05:600c:4145:: with SMTP id
 h5mr11604265wmm.3.1585554168707; 
 Mon, 30 Mar 2020 00:42:48 -0700 (PDT)
Received: from localhost (ip-37-188-180-223.eurotel.cz. [37.188.180.223])
 by smtp.gmail.com with ESMTPSA id 98sm21456009wrk.52.2020.03.30.00.42.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 00:42:47 -0700 (PDT)
Date: Mon, 30 Mar 2020 09:42:46 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Hoan Tran <Hoan@os.amperecomputing.com>
Subject: Re: [PATCH v3 0/5] mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by
 default for NUMA
Message-ID: <20200330074246.GA14243@dhcp22.suse.cz>
References: <1585420282-25630-1-git-send-email-Hoan@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1585420282-25630-1-git-send-email-Hoan@os.amperecomputing.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_004250_719233_86179856 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mstsxfx[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mmorana@amperecomputing.com, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Vlastimil Babka <vbabka@suse.cz>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Pavel Tatashin <pavel.tatashin@microsoft.com>, lho@amperecomputing.com,
 Vasily Gorbik <gor@linux.ibm.com>, Will Deacon <will.deacon@arm.com>,
 Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Oscar Salvador <osalvador@suse.de>,
 linux-kernel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat 28-03-20 11:31:17, Hoan Tran wrote:
> In NUMA layout which nodes have memory ranges that span across other nodes,
> the mm driver can detect the memory node id incorrectly.
> 
> For example, with layout below
> Node 0 address: 0000 xxxx 0000 xxxx
> Node 1 address: xxxx 1111 xxxx 1111
> 
> Note:
>  - Memory from low to high
>  - 0/1: Node id
>  - x: Invalid memory of a node
> 
> When mm probes the memory map, without CONFIG_NODES_SPAN_OTHER_NODES
> config, mm only checks the memory validity but not the node id.
> Because of that, Node 1 also detects the memory from node 0 as below
> when it scans from the start address to the end address of node 1.
> 
> Node 0 address: 0000 xxxx xxxx xxxx
> Node 1 address: xxxx 1111 1111 1111
> 
> This layout could occur on any architecture. Most of them enables
> this config by default with CONFIG_NUMA. This patch, by default, enables
> CONFIG_NODES_SPAN_OTHER_NODES or uses early_pfn_in_nid() for NUMA.

I am not opposed to this at all. It reduces the config space and that is
a good thing on its own. The history has shown that meory layout might
be really wild wrt NUMA. The config is only used for early_pfn_in_nid
which is clearly an overkill.

Your description doesn't really explain why this is safe though. The
history of this config is somehow messy, though. Mike has tried
to remove it a94b3ab7eab4 ("[PATCH] mm: remove arch independent
NODES_SPAN_OTHER_NODES") just to be reintroduced by 7516795739bd
("[PATCH] Reintroduce NODES_SPAN_OTHER_NODES for powerpc") without any
reasoning what so ever. This doesn't make it really easy see whether
reasons for reintroduction are still there. Maybe there are some subtle
dependencies. I do not see any TBH but that might be burried deep in an
arch specific code.

> v3:
>  * Revise the patch description
> 
> V2:
>  * Revise the patch description
> 
> Hoan Tran (5):
>   mm: Enable CONFIG_NODES_SPAN_OTHER_NODES by default for NUMA
>   powerpc: Kconfig: Remove CONFIG_NODES_SPAN_OTHER_NODES
>   x86: Kconfig: Remove CONFIG_NODES_SPAN_OTHER_NODES
>   sparc: Kconfig: Remove CONFIG_NODES_SPAN_OTHER_NODES
>   s390: Kconfig: Remove CONFIG_NODES_SPAN_OTHER_NODES
> 
>  arch/powerpc/Kconfig | 9 ---------
>  arch/s390/Kconfig    | 8 --------
>  arch/sparc/Kconfig   | 9 ---------
>  arch/x86/Kconfig     | 9 ---------
>  mm/page_alloc.c      | 2 +-
>  5 files changed, 1 insertion(+), 36 deletions(-)
> 
> -- 
> 1.8.3.1
> 

-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
