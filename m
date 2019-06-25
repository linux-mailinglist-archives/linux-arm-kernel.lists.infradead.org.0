Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A177352928
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 12:13:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h/3qqVq4D/WoEKuw24aIfvSWT42r3GAlvm+HclvoMAk=; b=IlZXPKGEa4qSY1
	sHLEbKywA0C6AiJwkZzntoXflKZiA3lVmBdkKucLcwg6PsWm1lbI7D3jy6qNqwMO5ICnct3RXlAOy
	dKbt62pZgNxV4/8hEkgi5Saec4Yjkrw1MrjGb2nPeiyLstM6B5A5KDaD1zcQNxlZRkQFp/314KkBf
	EpuZjy/ylnkGUpfY4plSTDKpg7xgSV2PBhAklBkCxN18BWJdcQwsLrbjlb6jaoO9ihRsbIRIjn9Xo
	+NVfyENu/dpzw9whrfXnxlmC+pKaDF8O3SY9mdrY0U1Yf6cDtYg+alLrn0+GwiBzYxVjDHR0GPD6v
	o8J53aHAZ9Da9CwDIVsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfiRk-000636-VB; Tue, 25 Jun 2019 10:13:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfiRW-00062V-PJ
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 10:12:52 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9497020644;
 Tue, 25 Jun 2019 10:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561457569;
 bh=BccGv4rAyaS20N7ULXOIXSojeQUiRKMC5yb0GgHpenw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PwHE0qM6WpJ29nsXZ+hxtEv9CAAgJ2a+pQzJs/VJcWF+IonYcZ8AvVqF3Q50F6JrJ
 cvE+szA3JwIu3z7pcCX9Si2uRWKqWfusCMQDCR9Mhy4z0hQQ1CyV4eEGxykSZVj87b
 UzysuLk+r4aaeeKs1sbcsr83JqrihjX1WQHpnSyo=
Date: Tue, 25 Jun 2019 11:12:45 +0100
From: Will Deacon <will@kernel.org>
To: Hoan Tran OS <hoan@os.amperecomputing.com>
Subject: Re: [PATCH] arm64: Kconfig: Enable NODES_SPAN_OTHER_NODES config for
 NUMA
Message-ID: <20190625101245.s4vxfosoop52gl4e@willie-the-truck>
References: <1561387098-23692-1-git-send-email-Hoan@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561387098-23692-1-git-send-email-Hoan@os.amperecomputing.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_031250_840471_9BA6B27A 
X-CRM114-Status: GOOD (  18.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Open Source Review <OpenSourceReview@amperecomputing.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 02:38:28PM +0000, Hoan Tran OS wrote:
> Some NUMA nodes have memory ranges that span other nodes.
> Even though a pfn is valid and between a node's start and end pfns,
> it may not reside on that node.
> 
> This patch enables NODES_SPAN_OTHER_NODES config for NUMA to support
> this type of NUMA layout.
> 
> Signed-off-by: Hoan Tran <Hoan@os.amperecomputing.com>
> ---
>  arch/arm64/Kconfig | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 697ea05..21fc168 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -873,6 +873,13 @@ config NEED_PER_CPU_EMBED_FIRST_CHUNK
>  config HOLES_IN_ZONE
>  	def_bool y
>  
> +# Some NUMA nodes have memory ranges that span other nodes.
> +# Even though a pfn is valid and between a node's start and end pfns,
> +# it may not reside on that node.
> +config NODES_SPAN_OTHER_NODES
> +	def_bool y
> +	depends on ACPI_NUMA

How come this is specific to ACPI?

It would be nice if this was the default, given that only ia64, mips and
sh appear to be the only NUMA-capable architectures which don't have it.
In other words, replace the #ifdef CONFIG_NODES_SPAN_OTHER_NODES in
mm/page_alloc.c with #ifdef CONFIG_NUMA.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
