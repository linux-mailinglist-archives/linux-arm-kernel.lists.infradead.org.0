Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DAF12FA19
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 17:08:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6VMkJceFUWFVSK6bBIo2KHBBGar3N3XFrcBcBsVi9XM=; b=fBaqw555oFK2p9
	8dnkpL5GrsjhUGO3YvQjoGN0bCRVn3VLcMizn99Nx1ZhJGrtjK3ouJlyggMmMHHKaLu18iddVIdP/
	A/M35IBhPEIKXFSDy3ohMrtgJqEi3JZ9jxaEZfghrdB1Fq/WcW5aOixNDFu9mGFqTYiHZptfJlr4S
	g+j6ZoYGJC3gpMH5d90z/NkrnPAMt+8paFXjCKLGuNexOMhcyTa3uJAXjR1dj+AjPaMYEbnZNpX4X
	Xi8ZZ1tMvRnFi5nL7ofdJsA4a3fDB4PCvdqLMjfDbCZ/s92I3RQq01IyOTm171CplEaTFN5DQjRCp
	5PHg92JEWvVLkyMWHmag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inPV3-0005rn-B4; Fri, 03 Jan 2020 16:08:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inPUw-0005r3-RK
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 16:08:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C3695328;
 Fri,  3 Jan 2020 08:08:23 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 1C3F23F703; Fri,  3 Jan 2020 08:08:23 -0800 (PST)
Date: Fri, 3 Jan 2020 16:08:21 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH] arm64: Kconfig: Remove CONFIG_ prefix from
 ARM64_PSEUDO_NMI section
Message-ID: <20200103160820.GF10107@arrakis.emea.arm.com>
References: <78317df96ccb67b462878e07b3f87348c9d898cc.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <78317df96ccb67b462878e07b3f87348c9d898cc.camel@perches.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_080826_929279_A1DADCB5 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Will Deacon <will@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 31, 2019 at 01:54:57AM -0800, Joe Perches wrote:
> Remove the CONFIG_ prefix from the select statement for ARM_GIC_V3.
> 
> Signed-off-by: Joe Perches <joe@perches.com>
> ---
>  arch/arm64/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index b1b447..e9b1fc 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1544,7 +1544,7 @@ config ARM64_MODULE_PLTS
>  
>  config ARM64_PSEUDO_NMI
>  	bool "Support for NMI-like interrupts"
> -	select CONFIG_ARM_GIC_V3
> +	select ARM_GIC_V3
>  	help
>  	  Adds support for mimicking Non-Maskable Interrupts through the use of
>  	  GIC interrupt priority. This support requires version 3 or later of

Ah, kbuild doesn't warn about this. Anyway, it's not urgent since we
already select ARM_GIC_V3 in the main ARM64 config, so Will can pick it
up for 5.6. Thanks.

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
