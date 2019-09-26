Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1DBBED7A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 10:34:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GgGtom71z8lUSZq5LN9zfYfweRUeOnFZ7/oOZuFxh7w=; b=t7xYeJ7GMZN6Eq
	5Q4KLXcvJaChWazAUu0apvMVXBn0nX9IGp/Oe+MRqSGsMx/sEzSR/IdfYncpuswvjEmVM6BunUVtm
	8722VY9yaxkOLEJK18CLfoP/GBrhVUFgXkUTuzeA178kxj5CxLZciYeOF37E541u/D/gcrMi4/9k/
	zvtnCJbn/i6eqpH27w6HWjefXdCf4nMfRvIXLV+Ge62ZIGyhR/ikv8GlLKSgRv/xqUT5wQ1DtmCi0
	RRnDeXTGm+mAWtlqJJwOxO/OugayGI9jjBY6sLOYfUAYRUFHMyQj7hY+YUWydOzFQf1bsyUJOovDO
	lwMl7WtwMI4HqBMWxeCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDPEe-0003P4-SL; Thu, 26 Sep 2019 08:34:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDPCs-0002pE-3J
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 08:33:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6310A1000;
 Thu, 26 Sep 2019 01:32:51 -0700 (PDT)
Received: from iMac.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4D6933F836;
 Thu, 26 Sep 2019 01:32:50 -0700 (PDT)
Date: Thu, 26 Sep 2019 09:32:44 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH 3/4] arm64: vdso32: Fix compilation warning
Message-ID: <20190926083217.GD26802@iMac.local>
References: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
 <20190926060353.54894-1-vincenzo.frascino@arm.com>
 <20190926060353.54894-4-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190926060353.54894-4-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.11.1 (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_013305_055758_5C7121CE 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: ard.biesheuvel@linaro.org, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 26, 2019 at 07:03:52AM +0100, Vincenzo Frascino wrote:
> diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> index b61b50bf68b1..b1c8c43234c5 100644
> --- a/arch/arm64/include/asm/memory.h
> +++ b/arch/arm64/include/asm/memory.h
> @@ -228,11 +228,16 @@ static inline unsigned long kaslr_offset(void)
>  #define __tag_get(addr)		0
>  #endif /* CONFIG_KASAN_SW_TAGS */
>  
> +#ifdef __aarch64__
>  static inline const void *__tag_set(const void *addr, u8 tag)
>  {
>  	u64 __addr = (u64)addr & ~__tag_shifted(0xff);
>  	return (const void *)(__addr | __tag_shifted(tag));
>  }
> +#else
> +/* Unused in 32 bit mode */
> +#define __tag_set(addr, tag) 0
> +#endif

I'm fine with this as a temporary workaround (or hack). But please add a
better comment on what the 32-bit mode is about - the compat vDSO.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
