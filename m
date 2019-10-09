Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A81D1757
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 20:10:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HrNDFZL+2dYf2UI1Be+J8O7G0w/ALBsxBR4lzTusqbc=; b=tJMrbSpSXsA1qy
	sMlOSM5WQhKGfJOC/9X8oRaGENll+IYElzVNrOIbAdHI8+VbmYGFmyANknoII0fNQSxu8vtQTiWqp
	hj8JN/U/sfb7z4T9QH2AEYPjt/H4wh/3i8DxbcQRZe/0vxZ1wMLCgPhhN1pQQaXGWlwqOB9FZrMuB
	bf0RimLzlaXzyzta0A2I4CxfSYn18oT55PAwsD+VOkZ0oTwc6nyt2qt2wBKZYhTWOUPJGw2/eIB2N
	EPL0VE3tfbI+6V4e4e3z5QucZ8OQBKUvtuPAV/1evKTgWW9gQw3JiGPrUf7k8qQ/7VZ/LyVfDmH7z
	GajT09vDoGrlGjQDPhsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIGPb-0006mE-Bd; Wed, 09 Oct 2019 18:10:11 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIGPK-0006lU-5u
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 18:09:55 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 47F08308219E;
 Wed,  9 Oct 2019 18:09:50 +0000 (UTC)
Received: from crecklin.bos.csb (ovpn-125-78.rdu2.redhat.com [10.10.125.78])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 59DD85D9E2;
 Wed,  9 Oct 2019 18:09:49 +0000 (UTC)
From: Chris von Recklinghausen <crecklin@redhat.com>
Subject: [PATCH] arm64: remove arm64 definitions of kc_vaddr_to_offset and
 kc_offset_to_vaddr.
To: linux-arm-kernel@lists.infradead.org, steve.capper@arm.com
References: <20191008175434.27434-1-crecklin@redhat.com>
Organization: Red Hat
Message-ID: <ded48e8e-9ff6-0272-568e-49bccd069c65@redhat.com>
Date: Wed, 9 Oct 2019 14:09:48 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20191008175434.27434-1-crecklin@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Wed, 09 Oct 2019 18:09:50 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_110954_241447_C7D37BBD 
X-CRM114-Status: GOOD (  19.04  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Dave Anderson <anderson@redhat.com>, Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/08/2019 01:54 PM, Chris von Recklinghausen wrote:
> With the reshuffling of kernel VA space to support 52 bits, the
> kc_vaddr_to_offset and kc_offset_to_vaddr macros are broken, since they are
> based on VA_START, but VA_START no longer points to the base of the kernel
> virtual address space, (PAGE_OFFSET does now). fs/proc/kcore.c already has
> default definitions of kc_vaddr_to_offset and kc_offset_to_vaddr based on
> PAGE_OFFSET, so simply remove the arm64 definitions of them.
>
> Fixes: 14c127c957c1c607 ("arm64: mm: Flip kernel VA space")
> ---
>  arch/arm64/include/asm/pgtable.h | 3 ---
>  1 file changed, 3 deletions(-)
>
> diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
> index 7576df00eb50..8330810f699e 100644
> --- a/arch/arm64/include/asm/pgtable.h
> +++ b/arch/arm64/include/asm/pgtable.h
> @@ -876,9 +876,6 @@ static inline void update_mmu_cache(struct vm_area_struct *vma,
>  
>  #define update_mmu_cache_pmd(vma, address, pmd) do { } while (0)
>  
> -#define kc_vaddr_to_offset(v)	((v) & ~PAGE_END)
> -#define kc_offset_to_vaddr(o)	((o) | PAGE_END)
> -
>  #ifdef CONFIG_ARM64_PA_BITS_52
>  #define phys_to_ttbr(addr)	(((addr) | ((addr) >> 46)) & TTBR_BADDR_MASK_52)
>  #else

This patch addresses the breakage of access to unity mapped kernel
addresses via /proc/kcore, which is a regression.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
