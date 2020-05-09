Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 914F31CBBF5
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 02:45:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tm0IDpx46HkaYtKm+yDKSnoFDvDfTvG4Hm211IXysqM=; b=KpJn6m+OkufPkA
	ZlHO4gBO0po/QSvQuNZE8Hh8aMkgX+vw5GPCi0Fe58nMgcaD3YU+Dkx8QfBmoEoeXW36ZjytIxfHy
	BylSuDg7KJe23puZc5BQlTZgNVd/X9uHeCfGmS9PYadKAhHStG74eZgNcEzt8ubkZfa9AfkClgfSF
	dR6stWUYdX651ZTzPq6F+tFvI+A3fgOp31tW/td+l+xyWgu5KHlooTL5JbfNpw+ZT3ccb7bBZDzp9
	kSn2T9tA7atG289LLbLdIvDtFjHztn/dG/ivpja2Uxj7P1ZRjyIVHQS2pCgM1+whwZ/pR+Vw7qHRG
	UuwcjqR0MyR5xwlu6wCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXDcg-0005Hy-5e; Sat, 09 May 2020 00:45:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXDcX-0005Gt-Uv; Sat, 09 May 2020 00:45:39 +0000
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net
 [73.231.172.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D491421582;
 Sat,  9 May 2020 00:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588985137;
 bh=fkIkzzGIPxBuqh2taVX4dHP53jKpIlLL4G7UFSelXHE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=q24fb/5O8tgeilvfX4b7SugL2BvyR6UX/WCLg2p1yDYz0kKinDa+wXN6wOMDyItJv
 if7HTpifPbslDIdZgc1OGCleR1d708yuSYyzHq6dWc/Ig6VcyItzJ1yC21TSSWy8i1
 CxfafuJ9yOBqVZuPJoMB/qSQ8imHOb19WHD82aUU=
Date: Fri, 8 May 2020 17:45:36 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 2/3] mm/memory_hotplug: Allow arch override of non boot
 memory resource names
Message-Id: <20200508174536.77c7aa3d5d0220cedd07f2e9@linux-foundation.org>
In-Reply-To: <20200326180730.4754-3-james.morse@arm.com>
References: <20200326180730.4754-1-james.morse@arm.com>
 <20200326180730.4754-3-james.morse@arm.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_174538_014537_001DDF67 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 linux-mm@kvack.org, Eric Biederman <ebiederm@xmission.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 26 Mar 2020 18:07:29 +0000 James Morse <james.morse@arm.com> wrote:

> Memory added to the system by hotplug has a 'System RAM' resource created
> for it. This is exposed to user-space via /proc/iomem.
> 
> This poses problems for kexec on arm64. If kexec decides to place the
> kernel in one of these newly onlined regions, the new kernel will find
> itself booting from a region not described as memory in the firmware
> tables.
> 
> Arm64 doesn't have a structure like the e820 memory map that can be
> re-written when memory is brought online. Instead arm64 uses the UEFI
> memory map, or the memory node from the DT, sometimes both. We never
> rewrite these.
> 
> Allow an architecture to specify a different name for these hotplug
> regions.
> 
> ...
>
> --- a/mm/memory_hotplug.c
> +++ b/mm/memory_hotplug.c
> @@ -42,6 +42,10 @@
>  #include "internal.h"
>  #include "shuffle.h"
>  
> +#ifndef MEMORY_HOTPLUG_RES_NAME
> +#define MEMORY_HOTPLUG_RES_NAME "System RAM"
> +#endif
> +
>  /*
>   * online_page_callback contains pointer to current page onlining function.
>   * Initially it is generic_online_page(). If it is required it could be
> @@ -103,7 +107,7 @@ static struct resource *register_memory_resource(u64 start, u64 size)
>  {
>  	struct resource *res;
>  	unsigned long flags =  IORESOURCE_SYSTEM_RAM | IORESOURCE_BUSY;
> -	char *resource_name = "System RAM";
> +	char *resource_name = MEMORY_HOTPLUG_RES_NAME;
>  
>  	if (start + size > max_mem_size)
>  		return ERR_PTR(-E2BIG);

I suppose we should do this as well:

--- a/mm/memory_hotplug.c~mm-memory_hotplug-allow-arch-override-of-non-boot-memory-resource-names-fix
+++ a/mm/memory_hotplug.c
@@ -129,7 +129,8 @@ static struct resource *register_memory_
 			       resource_name, flags);
 
 	if (!res) {
-		pr_debug("Unable to reserve System RAM region: %016llx->%016llx\n",
+		pr_debug("Unable to reserve " MEMORY_HOTPLUG_RES_NAME
+				" region: %016llx->%016llx\n",
 				start, start + size);
 		return ERR_PTR(-EEXIST);
 	}

It assumes that MEMORY_HOTPLUG_RES_NAME will be a literal string, which
is the case in [3/3].


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
