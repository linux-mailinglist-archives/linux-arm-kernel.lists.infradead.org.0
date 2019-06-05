Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E04359C4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 11:40:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bFV1yDDIpeEUQhAly7diF9ZykFYnyDfQCERS/y2EDlY=; b=fK2SriqqXB7LpT
	Tr/1O4jAU1Qkv7vBCINb84SVGnoy3vXFeQTttl8hu6aZinNHPAQo6s3NlKhd6uwCf6HvCmV7kFGCK
	7JV1NtF3+MM3TAH1yyIFVolWcKbHNGSxlbDpXOzlE6k27QOasxW8nkuph2/XJLgMZ4yQcVimkkcuV
	2gDP6ciE9mTCAwzxBgjIiisczkvHdd6FM1apQaTtzF6n3cl20iFVEiFjm8d+p4p3JaDHtwNaCxwgw
	koXjwh+vY4OtfNSZVewz8CZbMDrMX6M37ttlmrPq1iDBJ807+hu7W5+BGn/9bLesIquxmUBC2ywfJ
	JsM+iGbIJMuFC06ervgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYSPW-0005GB-Io; Wed, 05 Jun 2019 09:40:46 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYSPQ-0005FT-3k
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 09:40:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B614C374;
 Wed,  5 Jun 2019 02:40:36 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5B9A93F690;
 Wed,  5 Jun 2019 02:40:34 -0700 (PDT)
Date: Wed, 5 Jun 2019 10:40:31 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ali Saidi <alisaidi@amazon.com>
Subject: Re: [PATCH 2/3] arm64: export acpi_psci_use_hvc
Message-ID: <20190605094031.GB28613@e107155-lin>
References: <20190604203100.15050-1-alisaidi@amazon.com>
 <20190604203100.15050-3-alisaidi@amazon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604203100.15050-3-alisaidi@amazon.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_024040_159992_20457449 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Sudeep Holla <sudeep.holla@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Matt Mackall <mpm@selenic.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Ron Rindjunsky <ronrindj@amazon.com>,
 linux-crypto@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 David Woodhouse <dwmw@amazon.co.uk>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 08:30:59PM +0000, Ali Saidi wrote:
> Allow a module that wants to make SMC calls to detect if it should be
> using smc or hvc.
>
> Signed-off-by: Ali Saidi <alisaidi@amazon.com>
> ---
>  arch/arm64/kernel/acpi.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/kernel/acpi.c b/arch/arm64/kernel/acpi.c
> index 803f0494dd3e..ea41c6541d3c 100644
> --- a/arch/arm64/kernel/acpi.c
> +++ b/arch/arm64/kernel/acpi.c
> @@ -119,6 +119,7 @@ bool acpi_psci_use_hvc(void)
>  {
>  	return acpi_gbl_FADT.arm_boot_flags & ACPI_FADT_PSCI_USE_HVC;
>  }
> +EXPORT_SYMBOL_GPL(acpi_psci_use_hvc);
>

I would rather have this in drivers/firmware/psci/psci.c checking the
value of psci_ops.conduit so that it's not just ACPI specific and can
be used on DT platforms too if required.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
