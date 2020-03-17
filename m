Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9627418832C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 13:11:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+j89/Xewv+PQHiA2nNY8WqMCjUA3le0XEMKHRwYkQto=; b=X8lEBW3r54LTuE
	ehQj2Os8Y+DsJp/9XHVdmvHG6sElI+x4TN3vJHDRebCAb3QD53xT1LiNKyczDi/amgSuAJd0FLexW
	72DQJA0h0MXJjogB484ZSfer9CZPUUVSEIt4+7RzZ7nfYALr2luWpeYMB2HfFwRaHNLU30L5+QOSh
	7lYF1P7FWPWGgKEW3cNkV3H5VvqHLweZC+9Mc4d7Y0w8boPk+h/KK5SK1ftX4eDNfqijwjC5eMvKR
	lbeiNOqYfuHm3msi2a6xnWj4WpO4+IWDtyQgNasHygV36kc7djndbQK2OFw+sIaBFVyUztmZ1BDQu
	SXxZAJIgzoGAkouotH5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEB3m-0001v6-3u; Tue, 17 Mar 2020 12:11:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEB3f-0001ue-4n
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 12:10:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 52B6A30E;
 Tue, 17 Mar 2020 05:10:54 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6E6613F534;
 Tue, 17 Mar 2020 05:10:53 -0700 (PDT)
Date: Tue, 17 Mar 2020 12:10:51 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Hongbo Yao <yaohongbo@huawei.com>
Subject: Re: [RFC PATCH] arm64: fix the missing ktpi= cmdline check in
 arm64_kernel_unmapped_at_el0()
Message-ID: <20200317121050.GH8831@lakrids.cambridge.arm.com>
References: <20200317114708.109283-1-yaohongbo@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200317114708.109283-1-yaohongbo@huawei.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_051055_231570_B470E303 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: catalin.marinas@arm.com, broonie@kernel.org, will@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[Adding Catalin and LAKML]

Mark.

On Tue, Mar 17, 2020 at 07:47:08PM +0800, Hongbo Yao wrote:
> Kpti cannot be disabled from the kernel cmdline after the commit
> 09e3c22a("arm64: Use a variable to store non-global mappings decision").
> 
> Bring back the missing check of kpti= command-line option to fix the
> case where the SPE driver complains the missing "kpti-off" even it has
> already been set.
> 
> Signed-off-by: Hongbo Yao <yaohongbo@huawei.com>
> ---
>  arch/arm64/include/asm/mmu.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
> index 3c9533322558..ebbc0d3ac2f7 100644
> --- a/arch/arm64/include/asm/mmu.h
> +++ b/arch/arm64/include/asm/mmu.h
> @@ -34,7 +34,8 @@ extern bool arm64_use_ng_mappings;
>  
>  static inline bool arm64_kernel_unmapped_at_el0(void)
>  {
> -	return arm64_use_ng_mappings;
> +	return arm64_use_ng_mappings &&
> +		cpus_have_const_cap(ARM64_UNMAP_KERNEL_AT_EL0);
>  }
>  
>  typedef void (*bp_hardening_cb_t)(void);
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
