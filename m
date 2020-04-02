Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7299E19BB6D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 07:50:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DinoezWB9tyHpBoFPA1XLsAR+GWEZicDqxmbnT5y114=; b=StJX62QglW8oM3
	U7DhUOVg3deyo5cX15VCeI+zanTccNNVcWPC3Hqj9VERao2VzkjudOr+3XqE6UHgxCk/ZWrlBCYFx
	LM7gqlo0ylPa3uN4WUMlSSClUoNN3xaOw9CWUBLFs15/TtmxWAZgeInzbIctzEL4c7r609+huBtq8
	rGKrycTZv6OjFiL8R4kPRc26WN/oB+yqwf84CoUWfbM6UYtHSoIC6NHcsjIRQJTxi6fxrGQaSWQ0h
	JtIKAXEoFUX1DAGT/ww8/2cxwc2Ezs1OYbbsffwVeKhQ6SDC3OfYa4a8nAyfmHlR3YDGtWJTRxMZj
	OaavKea1jxlCXE6SHSTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJsk4-0002vG-H3; Thu, 02 Apr 2020 05:50:16 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJsju-0001Be-ED
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 05:50:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585806603;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xMDnd3ax23EWdxGHiLoq71hyYScPUzKD31WtkAS1KYg=;
 b=N+6MS7WY2MsBkaAhXYKwPsPlRe76WTiV7CPtVXN4vpyDKRoDFa2p/MErrFyRziEM595TQy
 6FRaaA3hwcGXvDsGGFluGxqv9huPrwfw4MsQnBVFS5nihiDMHb9Govx0cjbMw+Mft5FkFS
 Bxaw4SYgduQNKjB0gilTohhy7n5pnsk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-389-CD6EhWq8N6yS2QZXFDCMhg-1; Thu, 02 Apr 2020 01:49:57 -0400
X-MC-Unique: CD6EhWq8N6yS2QZXFDCMhg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 381F38018A1;
 Thu,  2 Apr 2020 05:49:55 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-164.pek2.redhat.com
 [10.72.12.164])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 566DC99DFD;
 Thu,  2 Apr 2020 05:49:50 +0000 (UTC)
Date: Thu, 2 Apr 2020 13:49:46 +0800
From: Dave Young <dyoung@redhat.com>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 2/3] mm/memory_hotplug: Allow arch override of non boot
 memory resource names
Message-ID: <20200402054946.GA97238@dhcp-128-65.nay.redhat.com>
References: <20200326180730.4754-1-james.morse@arm.com>
 <20200326180730.4754-3-james.morse@arm.com>
MIME-Version: 1.0
In-Reply-To: <20200326180730.4754-3-james.morse@arm.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_225006_564390_7D6CF6F9 
X-CRM114-Status: GOOD (  20.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: piliu@redhat.com, Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 linux-mm@kvack.org, Eric Biederman <ebiederm@xmission.com>,
 Hari Bathini <hbathini@linux.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/26/20 at 06:07pm, James Morse wrote:
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

Could arm64 use similar way to update DT, or a cooked UEFI maps?

Add pingfan in cc, he said ppc64 update the DT after a memremove thus it
would be good to just redo a kexec load.

Added Pingfan and Hari for comments and corrections.

> 
> Allow an architecture to specify a different name for these hotplug
> regions.
> 
> Signed-off-by: James Morse <james.morse@arm.com>
> ---
>  mm/memory_hotplug.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
> index 0a54ffac8c68..69b03dd7fc74 100644
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
> -- 
> 2.25.1
> 
> 
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/kexec
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
