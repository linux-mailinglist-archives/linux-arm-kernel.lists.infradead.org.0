Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A20711053B0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 14:57:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MdTOBw84wwhJxsTchG04BFV806XHrXu6fulOtgRPAcs=; b=pJDCvnMyXqd6uM
	oNbqPvkvWZADifvvCqxhsSJNrSWgHRu4faN4xK6DFwGSPrj6RCvQpxNWVKmxqjbEh0oW+GJgbC3FT
	RL0+DjxTzcz09r0ef3oEBYRzSicLkqhRy5aQEiuP3OpIMae29137eivF4gT7ZUmanY6cjHg/f7q17
	komiDWHPFMnRKFP4BR00lERQrHJVzkjn9SUS84vA8nTJst14TFnqcDXKEprInUdlNqRb0RpbKZSSx
	35E6Nt8HNIXUf+maMuitb7Qy40o/4VbmwB7wJ3UxhwA45XDMaZlyJ97GzRBLAUXswe4J268nwIXiR
	2zUnu/PgNO1hOOEE6K5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXmxa-0003Zq-8W; Thu, 21 Nov 2019 13:57:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXmxR-0003ZS-Dc
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 13:57:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E0C56DA7;
 Thu, 21 Nov 2019 05:57:15 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 12ADC3F703;
 Thu, 21 Nov 2019 05:57:14 -0800 (PST)
Date: Thu, 21 Nov 2019 13:57:10 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] arm64: mm: Fix column alignment for UXN in
 kernel_page_tables
Message-ID: <20191121135710.GA3454@lakrids.cambridge.arm.com>
References: <20191121135132.22480-1-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191121135132.22480-1-broonie@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_055717_500033_619C33BE 
X-CRM114-Status: GOOD (  16.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 21, 2019 at 01:51:32PM +0000, Mark Brown wrote:
> UXN is the only individual PTE bit other than the PTE_ATTRINDX_MASK ones
> which doesn't have both a set and a clear value provided, meaning that the
> columns in the table won't all be aligned. The PTE_ATTRINDX_MASK values
> are all both mutually exclusive and longer so are listed last to make a
> single final column for those values. Ensure everything is aligned by
> providing a clear value for UXN.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/mm/dump.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/mm/dump.c b/arch/arm64/mm/dump.c
> index 4997ce244172..ef4b3ca1e058 100644
> --- a/arch/arm64/mm/dump.c
> +++ b/arch/arm64/mm/dump.c
> @@ -144,6 +144,7 @@ static const struct prot_bits pte_bits[] = {
>  		.mask	= PTE_UXN,
>  		.val	= PTE_UXN,
>  		.set	= "UXN",
> +		.clear	= "   ",
>  	}, {
>  		.mask	= PTE_ATTRINDX_MASK,
>  		.val	= PTE_ATTRINDX(MT_DEVICE_nGnRnE),
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
