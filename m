Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F41891CF2AF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 12:39:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SpmBjhR6mDEdWi1ef1/HHTYiaSqClKlz6zMtX4/9XRM=; b=GLz3GeG53Zs87J
	yfi/oVjR7IkWoXSToZLxI2JxqQybuLxirL3rAgIMLaYtER/2eecNoE4e4UdgUhqu9ClVQgz6iHbe5
	AXjcIbgIIxLmGKBB7DS2dZfv92d+61OyfCND4mvaEdQT10oM6t5+dvY9HDC8z8xDaVyRLopMqro8D
	T6NWeEmAVrP2YOTAQnvJL0aB3/YkjKJhPwoYyJgFhYpeoSyLaz8K9ILEyX1KIE7Ry0r+O3a0jjgjr
	oMd7M1BldLPZk1NMLtOYyylou1OXeJFCoHvDXFkinyCLAEyGFzLW7UNAiMbIsu/YNvUxKHQIp3KOB
	2qwRd5Qs0Kebv7OVZnOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYSJl-0008EG-Dk; Tue, 12 May 2020 10:39:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYSJe-0008Ds-8P
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 10:39:15 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CE334206DD;
 Tue, 12 May 2020 10:39:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589279953;
 bh=67Q9fnQD3iRgc2Hqw38NJ/V+neTBan8Gtp9IuNhAMeE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=E5CJxnHJkH9rwGNsGTJ9jRYQHcFVjBm2Ox+5C68XCwaWgqBTqjE5Ui5VSN2mj7mHc
 n642XAw2Y2CkHThua18kYkakLdLI/kiTm/wEc8dvTVd8VvtPmqB+llSLYhKAiTkh2u
 K8kEwKal873f3DEnSn3tbYE0LsrlY7zhMp4Af8+o=
Date: Tue, 12 May 2020 11:39:09 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] arm64: bti: Fix support for userspace only BTI
Message-ID: <20200512103908.GB3021@willie-the-truck>
References: <20200512092155.56931-1-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512092155.56931-1-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_033914_316066_3FB1A63C 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 10:21:55AM +0100, Mark Brown wrote:
> When setting PTE_MAYBE_GP we check system_supports_bti() but this is
> true for systems where only CONFIG_BTI is set causing us to enable BTI
> on some kernel text. Add an extra check for the kernel mode option,
> using an ifdef due to line length.
> 
> Fixes: c8027285e366 (arm64: Set GP bit in kernel page tables to enable BTI for the kernel)
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  arch/arm64/include/asm/pgtable-prot.h | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/pgtable-prot.h b/arch/arm64/include/asm/pgtable-prot.h
> index 310690332896..3f07a044bdfb 100644
> --- a/arch/arm64/include/asm/pgtable-prot.h
> +++ b/arch/arm64/include/asm/pgtable-prot.h
> @@ -32,7 +32,11 @@ extern bool arm64_use_ng_mappings;
>  #define PTE_MAYBE_NG		(arm64_use_ng_mappings ? PTE_NG : 0)
>  #define PMD_MAYBE_NG		(arm64_use_ng_mappings ? PMD_SECT_NG : 0)
>

Might be worth a comment here in case somebody tries to "clean this up"
later on!

> +#ifdef CONFIG_ARM64_BTI_KERNEL
>  #define PTE_MAYBE_GP		(system_supports_bti() ? PTE_GP : 0)
> +#else
> +#define PTE_MAYBE_GP		0
> +#endif

I also notice we have a funny check in the vdso code:

  if (IS_ENABLED(CONFIG_ARM64_BTI_KERNEL) && system_supports_bti())

but why do we care about CONFIG_ARM64_BTI_KERNEL for the vdso pages?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
