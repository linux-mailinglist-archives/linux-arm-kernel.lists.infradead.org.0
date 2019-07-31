Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7917C86C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 18:19:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y/7uWIIX7fBpCELkmlJUAxULAObaP6z7yidIMUaFNNA=; b=F/YRdIkh4jJGGs
	hGrkFxE6RbGrBuWGEpKlXwoidoKrmfZruJr72zYE0i6Bi4dPkN9FpsOecyYQQ5PrsqLRX1byZi+J1
	pIserOqXRTNMKa/pHlYVQ/0Kdkm0gABbOajyurNbwNi/FszDnBKOkgPxvn/xrLYlIS5h6dvAz+Fth
	zTzm0uEgxsCUWCUAIjvVb1fyYr+HbQnYQ8AzlRHDcdzZm6AZyiz4O4tR5/dcf0gjqTKEhgZmuv1nP
	5bud6NYb01B6F6F/vnp1WpzuzHR3EIpY85GjkCf7Xu8Ws+e+MZX+6Td7M261vSiOqQpIwBF1zCxs6
	qIP/YriHRQPahKMu3J6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsrJf-0003jT-Da; Wed, 31 Jul 2019 16:19:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsrJY-0003jA-4B
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 16:18:57 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AF7DE206A3;
 Wed, 31 Jul 2019 16:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564589935;
 bh=m7LJ3cDXN8hWsMVQHOFhXh2IAaCcNSFO7AdnTzfmink=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xHTQjj7PSrLQWiXVVgdu/bqDtHo9wdnu/reCcbSA4Ojc/21Ec3AP2DK9NlMM/UdMB
 aDywlRLRPeWFiu1Il/2qBhpBmsteNuQmh7C1wnSHzmFkxBOJ8kRifhCGya1xWPfH/X
 hrKYsr1KcoXaLFH50ccWaTzmv943SK2SjFdRMYno=
Date: Wed, 31 Jul 2019 17:18:52 +0100
From: Will Deacon <will@kernel.org>
To: Qian Cai <cai@lca.pw>
Subject: Re: [PATCH] arm64/efi: fix variable 'si' set but not used
Message-ID: <20190731161851.raecunlcm4zpd3pb@willie-the-truck>
References: <1564521828-4528-1-git-send-email-cai@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564521828-4528-1-git-send-email-cai@lca.pw>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_091856_188971_DF5A6064 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: catalin.marinas@arm.com, linux-efi@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 ard.biesheuvel@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 05:23:48PM -0400, Qian Cai wrote:
> GCC throws out this warning on arm64.
> 
> drivers/firmware/efi/libstub/arm-stub.c: In function 'efi_entry':
> drivers/firmware/efi/libstub/arm-stub.c:132:22: warning: variable 'si'
> set but not used [-Wunused-but-set-variable]
> 
> Fix it by making free_screen_info() a static inline function.
> 
> Signed-off-by: Qian Cai <cai@lca.pw>
> ---
>  arch/arm64/include/asm/efi.h | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/efi.h b/arch/arm64/include/asm/efi.h
> index 8e79ce9c3f5c..76a144702586 100644
> --- a/arch/arm64/include/asm/efi.h
> +++ b/arch/arm64/include/asm/efi.h
> @@ -105,7 +105,11 @@ static inline unsigned long efi_get_max_initrd_addr(unsigned long dram_base,
>  	((protocol##_t *)instance)->f(instance, ##__VA_ARGS__)
>  
>  #define alloc_screen_info(x...)		&screen_info
> -#define free_screen_info(x...)
> +
> +static inline void free_screen_info(efi_system_table_t *sys_table_arg,
> +				    struct screen_info *si)
> +{
> +}
>  
>  /* redeclare as 'hidden' so the compiler will generate relative references */
>  extern struct screen_info screen_info __attribute__((__visibility__("hidden")));
> -- 
> 1.8.3.1

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
