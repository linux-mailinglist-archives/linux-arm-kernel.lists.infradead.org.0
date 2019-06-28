Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 315B5598F6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 13:04:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7JOub7bdaCdJpdLgyIj8q04v22v9aIBRQ3FGQh0RymI=; b=GhIn2RJJ6BO+Ib
	KZjINGOSm0NwU9dnp8v+379FfjpD/hEOX6NK3cbG0gHQoCzV7RrHOlJ6FCsf5Mt9/KnuXJ2hVb9GN
	IgjnS12W3TFQPyuNjo5iviE+0Dgq2FawQFGfceyj5UHVAZTpOL2RhtCnMlW5CdsTsFp4SVwX3/+Q1
	HGFMRw8vfUQ2PeRDpzc+ZjUUtZl6CUuiXPwVONFTuNy64y2hEAUVYYAEsHFW3sjYxDeVlOXrVEf03
	r6wgMXAZLBX9aaHW6Yr6m5yNSCOq2MEmlxY2uuEqghUP7zcuMcqYN/4z0JpoU51OUhXk19vYclrKJ
	kdBQWQFkvKcjoTwBni/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgogT-0002QB-Q0; Fri, 28 Jun 2019 11:04:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgogE-0002Pg-QB
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 11:04:36 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6B5C920645;
 Fri, 28 Jun 2019 11:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561719874;
 bh=YsCuJRrkfWyPVVBt0oD0GH0YAzXbA2QRQH8bnf82Amk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EXZ3fnFrkR0BgRwK8XSQGIFDHNHjhinFOHeufVv6dElUaQUXbiCDiAIuLu9DMtEfH
 BSQSxVCjSRLORa2GVfQaLCaYWH+bG7WS1NynjCC32oeNf4Ar12Yex9tFuTDV8yCElp
 Tvs8Kreoy4wMOPgrOCVW2TZ+J+ojSPyukgvg6Euk=
Date: Fri, 28 Jun 2019 12:04:30 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2] arm64: Add initial support for E0PD
Message-ID: <20190628110430.ffdqy5on3retyr42@willie-the-truck>
References: <20190627141532.6452-1-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190627141532.6452-1-broonie@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_040434_869799_1763DEC4 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 03:15:32PM +0100, Mark Brown wrote:
> Kernel Page Table Isolation (KPTI) is used to mitigate some speculation
> based security issues by ensuring that the kernel is not mapped when
> userspace is running but this approach is expensive and is incompatible
> with SPE.  E0PD, introduced in the ARMv8.5 extensions, provides an
> alternative to this which ensures that accesses from userspace to the
> kernel's half of the memory map to always fault with constant time,
> preventing timing attacks without requiring constant unmapping and
> remapping or preventing legitimate accesses.
> 
> This initial patch does not yet integrate with KPTI, a followup patch
> will ensure that by default we don't use KPTI on CPUs where E0PD is
> present which will provide a much greater benefit in general
> configurations.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
> 
>  - Reword commit message
>  - Change to detection as ARM64_CPUCAP_WEAK_LOCAL_CPU_FEATURE.

Thanks for the quick v2, although I still don't see the rush to merge this
without the associated kaslr/kpti changes we've been discussing. It's not
like there's a whole load of 8.5 silicon we're rushing to support.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
