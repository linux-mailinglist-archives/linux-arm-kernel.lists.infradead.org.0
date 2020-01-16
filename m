Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A67B13D868
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 11:56:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y/F9QlNbU4ilT7yRYG1lAxO309rYkomJeMg6GYxYAzQ=; b=gjyhQViVRrl0t5
	cbfaHWx7Cj/wGASh0Rim18ydP/IxIF23FIU5+/HlMC4Y6y/zBA9qkdSPUJSxyk9M7QaeUjhZW8aGP
	6TMq7HH0WEKPzyvTrzAsFD1XcU+h2/DCWmbHbSMCdF4nYZHC7nvmK/f74y1rM8i5JpoCaSJo/Svma
	5xk0WQ8p9E/m7K7/sfXOEXD/2Dcmv3nKRlmwicN9NNGWV8F62DSk6bGm7oW2QHs36oGaM637QuS8N
	BFb758EEXKtgle9eq3LWsyc524T1DJDhCBz38vx4n+7GiUR5cjXEijiv0v4d5ywZ8ZAgNXRXOI4+S
	j98cpGy33lkQxqaFI1kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is2oc-0007CU-5F; Thu, 16 Jan 2020 10:55:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is2oO-00077R-4s
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 10:55:44 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 73847206E6;
 Thu, 16 Jan 2020 10:55:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579172139;
 bh=o4nD8XWT+idbsisHOfDMfhkIpG623FnudbQ7C59hqd4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HjFNWmVm25/rZl3Tl9HdF2MtkPW5FcYfhqrrjlvNsgxEAQVEceeVMCB9CkGPPhKc1
 YOMwfSVvqElcN+QSjCrG6qV8Mq5SIk7CLNuwl7vX+daeOUyTohw1XFLsVRfiNUfhWS
 QlkJPORwbdvYS+AxGkIIl4S9nEHRGrbW9jv8xF4s=
Date: Thu, 16 Jan 2020 10:55:35 +0000
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v5] arm64: Implement optimised checksum routine
Message-ID: <20200116105534.GC14761@willie-the-truck>
References: <44e00660247f8f39354ba8918071d6cff0d90612.1579106209.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <44e00660247f8f39354ba8918071d6cff0d90612.1579106209.git.robin.murphy@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_025540_226711_D233FA4D 
X-CRM114-Status: GOOD (  13.25  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: ard.biesheuvel@linaro.org, catalin.marinas@arm.com,
 zhangshaokun@hisilicon.com, huanglingyan2@huawei.com, zhaoyuke@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 04:42:39PM +0000, Robin Murphy wrote:
> Apparently there exist certain workloads which rely heavily on software
> checksumming, for which the generic do_csum() implementation becomes a
> significant bottleneck. Therefore let's give arm64 its own optimised
> version - for ease of maintenance this foregoes assembly or intrisics,
> and is thus not actually arm64-specific, but does rely heavily on C
> idioms that translate well to the A64 ISA and the typical load/store
> capabilities of most ARMv8 CPU cores.
> 
> The resulting increase in checksum throughput scales nicely with buffer
> size, tending towards 4x for a small in-order core (Cortex-A53), and up
> to 6x or more for an aggressive big core (Ampere eMAG).
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> 
> ---
> 
> I rigged up a simple userspace test to run the generic and new code for
> various buffer lengths at aligned and unaligned offsets; data is average
> runtime in nanoseconds.

Shaokun, Yuke -- please can you give this a spin and let us know how it
works for you? If it looks good, then I can queue it up today/tomorrow.

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
