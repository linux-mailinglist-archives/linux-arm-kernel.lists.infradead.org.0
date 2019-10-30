Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74869E9B58
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 13:13:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g/mKej66vx2Kua2QuRbgV7C+jNiN12ScwIg7mpm5Dic=; b=cNRhprtclkqKpE
	LOyJJjNcSimjpT0rAiddMuk+z2YJGSCasVQnxQ0CoBEEtafR2dPxNrbRUZWfT7HEm2iX9U9AZp3fk
	zKibpY+0hZBCXZbBKe1La9jgdcBrMPdsVWW7kq1y3RyrM6gxy3amiydZMtl5VyBuIEM6lB1bs773+
	7OeQkLZooaz+vtgKrtkLW+qUTLKtwvXCbuFsuXdIyRJEunojGc1apluGBgabzf91XfO/NmD0y1ezo
	KV4zjlTQFYFEJESiEDG67OzOOtXHgs5qTlA5p9WWLu3g1P7sdfIIP4kbqhjgACM0BWYU40KkJwk7+
	KFo5OE94eCzJfn0Jr6EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPmqo-0003Sj-Ed; Wed, 30 Oct 2019 12:13:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPmqf-0003SB-Ff
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 12:13:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DA0671F1;
 Wed, 30 Oct 2019 05:13:10 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 4E9773F71E; Wed, 30 Oct 2019 05:13:10 -0700 (PDT)
Date: Wed, 30 Oct 2019 12:13:08 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v4 4/4] arm64: Use a variable to store non-global
 mappings decision
Message-ID: <20191030121307.GB10294@arrakis.emea.arm.com>
References: <20191024214207.20588-1-broonie@kernel.org>
 <20191024214207.20588-5-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024214207.20588-5-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_051313_568881_B95E142F 
X-CRM114-Status: GOOD (  18.25  )
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
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 10:42:07PM +0100, Mark Brown wrote:
> Refactor the code which checks to see if we need to use non-global
> mappings to use a variable instead of checking with the CPU capabilities
> each time, doing the initial check for KPTI early in boot before we
> start allocating memory so we still avoid transitioning to non-global
> mappings in common cases.
> 
> Since this variable always matches our decision about non-global
> mappings this means we can also combine arm64_kernel_use_ng_mappings()
> and arm64_unmap_kernel_at_el0() into a single function, the variable
> simply stores the result and the decision code is elsewhere. We could
> just have the users check the variable directly but having a function
> makes it clear that these uses are read-only.
> 
> The result is that we simplify the code a bit and reduces the amount of
> code executed at runtime.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> 
> vdfsv

Some random string here.

> @@ -158,6 +87,7 @@ extern void create_pgd_mapping(struct mm_struct *mm, phys_addr_t phys,
>  			       pgprot_t prot, bool page_mappings_only);
>  extern void *fixmap_remap_fdt(phys_addr_t dt_phys, int *size, pgprot_t prot);
>  extern void mark_linear_text_alias_ro(void);
> +extern bool kaslr_requires_kpti(void);

This doesn't seem to be used anywhere else, so we could remove it and
make it static.

> @@ -1051,7 +1087,7 @@ kpti_install_ng_mappings(const struct arm64_cpu_capabilities *__unused)
>  	 * it already or we have KASLR enabled and therefore have not
>  	 * created any global mappings at all.
>  	 */
> -	if (kpti_applied || kaslr_offset() > 0)
> +	if (kpti_applied || arm64_use_ng_mappings)
>  		return;

Can we get rid of kpti_applied? I think arm64_use_ng_mappings serves the
same purpose.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
