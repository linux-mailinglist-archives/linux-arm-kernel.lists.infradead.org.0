Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 026971DEC68
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 17:49:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t6orPBE5uwmnDvh3koN8n0KOAdk4+0smF3gcl998nCk=; b=QhqhSPRcuyc8Gd
	/uESX/3+7xOcdBruO+be5NAOnL8E2LLDHsnTHpnNlmtF6RINEiqa3Uqo2gdXa/KcJpVhi/RmHt+iW
	c07tCQnKBshpsuxMM9zUT+yNKy4VEImJegXCjLUY4+y6WylhgydnIPXPFNq/VdwGm5JnMGMAwOEQy
	PQ0GHMT9dsp6KlQrdWk30mzeVD6gJvY2vXSmRmwRK8mapC6N8LvwXxtgRcotu4ECwiJ/JOXnOKESL
	7QDzAK5mMzR3QLRLWr2fQfhfolUgRYra2g1opMlxJ4I3hvmwzwK+MShT+/7WHs4lj82CVCCtZPilO
	0ceX331E2bzkouaLnAgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc9vh-0006fL-5M; Fri, 22 May 2020 15:49:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc9vV-0006e1-W2
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 15:49:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5181C55D;
 Fri, 22 May 2020 08:49:37 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5F41F3F305;
 Fri, 22 May 2020 08:49:32 -0700 (PDT)
Date: Fri, 22 May 2020 16:49:25 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Zhenyu Ye <yezhenyu2@huawei.com>
Subject: Re: [PATCH v2 3/6] arm64: Add tlbi_user_level TLB invalidation helper
Message-ID: <20200522154925.GE26492@gaia>
References: <20200423135656.2712-1-yezhenyu2@huawei.com>
 <20200423135656.2712-4-yezhenyu2@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200423135656.2712-4-yezhenyu2@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_084938_073643_818F6963 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, peterz@infradead.org, linux-mm@kvack.org,
 guohanjun@huawei.com, will@kernel.org, linux-arch@vger.kernel.org,
 yuzhao@google.com, aneesh.kumar@linux.ibm.com, steven.price@arm.com,
 arm@kernel.org, Dave.Martin@arm.com, arnd@arndb.de, suzuki.poulose@arm.com,
 npiggin@gmail.com, zhangshaokun@hisilicon.com, broonie@kernel.org,
 rostedt@goodmis.org, prime.zeng@hisilicon.com, kuhn.chenqun@huawei.com,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 xiexiangyou@huawei.com, linux-kernel@vger.kernel.org, maz@kernel.org,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 09:56:53PM +0800, Zhenyu Ye wrote:
> @@ -190,8 +196,8 @@ static inline void flush_tlb_page_nosync(struct vm_area_struct *vma,
>  	unsigned long addr = __TLBI_VADDR(uaddr, ASID(vma->vm_mm));
>  
>  	dsb(ishst);
> -	__tlbi(vale1is, addr);
> -	__tlbi_user(vale1is, addr);
> +	__tlbi_level(vale1is, addr, 0);
> +	__tlbi_user_level(vale1is, addr, 0);
>  }

This one remains with a level 0 throughout the series. Is this
intentional? If we can't guarantee the level here, better to use the
non-level __tlbi().

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
