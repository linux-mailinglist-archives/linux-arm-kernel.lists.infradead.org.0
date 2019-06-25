Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D29D5526A6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 10:29:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ULhXWfz2mvgQnDnC2PRV2w/CEd5n29Ay9TWj3qerVs=; b=bN61bQLTNcIdGZ
	hcUJ/j1MZu9+cSJx4BlrGCcSFApIcgFZIywNv7lJKBY/ARwJkND2t9CQD4q8WS4difwkmE7guZNd5
	uHZ6cFnweLLlqSTWvrsOyZhJQBwqHVpm9jEZj3tRJAdSADT4UUead56AKki4O6WEu9vXq6VWOTamm
	x3AXMdJr2Wgcge16LiZ5iVxptHx35hR/9BPuCrwV/nEflP1P1GWPsa/iTyxK4Bg0OeFZ8466RY/kt
	7ofP5jQWGTB2kqfMEO/33oQaKo5olPpEnqGnrG+rIdCxjv0v+r6YwrqlOMauwcJcPLIqXCSEGtB7r
	RuDVijvkBZBQqBJgQY2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfgpr-0004MR-0o; Tue, 25 Jun 2019 08:29:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfgpa-0004M5-L3
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 08:29:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 79C9C2B;
 Tue, 25 Jun 2019 01:29:33 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 8F36F3F718; Tue, 25 Jun 2019 01:29:32 -0700 (PDT)
Date: Tue, 25 Jun 2019 09:29:30 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v3] arm64: Allow user selection of ARM64_MODULE_PLTS
Message-ID: <20190625082928.GA3039@arrakis.emea.arm.com>
References: <20190617223000.11403-1-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617223000.11403-1-f.fainelli@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_012934_739822_F439D1EC 
X-CRM114-Status: GOOD (  11.38  )
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
Cc: Will Deacon <will.deacon@arm.com>, bcm-kernel-feedback-list@broadcom.com,
 open list <linux-kernel@vger.kernel.org>, linux-arm-kernel@lists.infradead.org,
 ard.biesheuvel@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 03:29:59PM -0700, Florian Fainelli wrote:
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 697ea0510729..9206feaeff07 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1418,8 +1418,26 @@ config ARM64_SVE
>  	  KVM in the same kernel image.
>  
>  config ARM64_MODULE_PLTS
> -	bool
> +	bool "Use PLTs to allow module memory to spill over into vmalloc area"
>  	select HAVE_MOD_ARCH_SPECIFIC

This needs a depends on MODULES now (it failed to build in one of my
tests where modules were disabled but this option was left enabled).

I'll add a patch on top.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
