Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFF4C21D1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 15:22:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/+EpKBRl1ulpUeOna8KcBLfdSfktJvz2Ecszw5cuEaM=; b=Hd9rgMyMotpV2m
	eSOQpd2L5lFWF5mfAiVSSDla053IbJv5wTqF6jesbU5pcQ2NJjY+ZB2UFlYLpap4I7xzeH0/L6Jd4
	LpnGP7S0ZmIVH2tcV36L5DaP9Ae0+PLhULhz9DcR0PNCfEje+AMTzsYnJp5tgbxeWz9JxrM/Jk3bz
	C4au5ZxsHaJGuBWFqYaN6UPxZmkYUUQ2sPZ9SbqFYqUDoyagMpjgk9FNZdNSvhpkWy7pAWFZDdAXe
	JbPnQ3ZHbGbMG/aWl9ZSeFuPfbnnayQk6bpLt7uN5/oZR2cgMkMMi+i/hOWnkZncAmUwCrA8iBAdD
	I6GxrWGJvdHRHexEUpgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEvdC-0003d3-Nl; Mon, 30 Sep 2019 13:22:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEvd2-0003cO-A6
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 13:22:17 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2384120842;
 Mon, 30 Sep 2019 13:22:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569849734;
 bh=5YgzqjSTmNEx7qj7fQeG6vrEjnUn7W/lfum0s/DKHGY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1d0oL1arMIQkT3rZLOZ6EqO21ByQGs1tnW7R8kZ5o2NUeo28JRXzi9RVhryn48xaa
 dGD0ACOAKudBKKq9x8/KquD18TBawUJJYQnVvLLd6iZu/DCDnPVUOVwEY/HvV2IMcl
 BjtBvC8uqVeTuJT5Z+lIt/fWQRlvOiaOrEnFF/Mc=
Date: Mon, 30 Sep 2019 14:22:10 +0100
From: Will Deacon <will@kernel.org>
To: Yunfeng Ye <yeyunfeng@huawei.com>
Subject: Re: [PATCH] arm64: armv8_deprecated: Checking return value for
 memory allocation
Message-ID: <20190930132209.jyyemkck7orji64i@willie-the-truck>
References: <ea235720-5bbd-27b7-a9b1-34aa8a344e3a@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ea235720-5bbd-27b7-a9b1-34aa8a344e3a@huawei.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_062216_385439_BDEEA8C1 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kstewart@linuxfoundation.org, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org, tglx@linutronix.de,
 info@metux.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Sep 29, 2019 at 12:44:17PM +0800, Yunfeng Ye wrote:
> There are no return value checking when using kzalloc() and kcalloc() for
> memory allocation. so add it.
> 
> Signed-off-by: Yunfeng Ye <yeyunfeng@huawei.com>
> ---
>  arch/arm64/kernel/armv8_deprecated.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/kernel/armv8_deprecated.c b/arch/arm64/kernel/armv8_deprecated.c
> index 2ec09de..ca158be 100644
> --- a/arch/arm64/kernel/armv8_deprecated.c
> +++ b/arch/arm64/kernel/armv8_deprecated.c
> @@ -174,6 +174,9 @@ static void __init register_insn_emulation(struct insn_emulation_ops *ops)
>  	struct insn_emulation *insn;
> 
>  	insn = kzalloc(sizeof(*insn), GFP_KERNEL);
> +	if (!insn)
> +		return;
> +
>  	insn->ops = ops;
>  	insn->min = INSN_UNDEF;
> 
> @@ -233,6 +236,8 @@ static void __init register_insn_emulation_sysctl(void)
> 
>  	insns_sysctl = kcalloc(nr_insn_emulated + 1, sizeof(*sysctl),
>  			       GFP_KERNEL);
> +	if (!insns_sysctl)
> +		return;

Since both of these failure paths are fatal to the instruction emulation,
can you please return an error code when the allocation fails and use that
to fail the calling initcall() appropriately?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
