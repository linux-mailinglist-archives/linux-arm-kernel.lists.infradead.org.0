Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9056189160
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 23:28:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=memPef8XXgIH4tzXzyhtiLJc3HCiXUSEyMdzQUAJqDE=; b=JQRIAGU5gIVIjt
	0MQ9VJM4MqAtnDXfYD4qQIMIZgEYfvhqzJROEy3MBPS+Ps8LGqCPcJXJfiq1XByB5moqvEvad2oAk
	DmfqEXzQEpBb/u49RLU2uAyeMuAD+waTj/bIAsWTA7m1iqx7KogJ7nysrfAn8hShdTABicG0twC9s
	1asmwNhJFQj3nwjmp6SPX/sT5P8hq/WHVhW1x/xBdjH5aBQkiRSVoaxG4MLfw5m6OFuQ3HIdAFWUk
	3QjURHNtdBexlWmwO8w5o8YYFuBTX5SDf03w93hN6o3Dk9unum9+U0O1oZRIl8kHc0HQoNXHyEvzR
	9UDGaetQoYnbkAI9t/jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEKhU-0006C4-QE; Tue, 17 Mar 2020 22:28:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEKhJ-0006Bk-C6
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 22:28:30 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0E7B6206EC;
 Tue, 17 Mar 2020 22:28:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584484109;
 bh=fkwDszDySoCeKnopQtq7FmCT+AUuyAXm1e4W0arilAY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AmaJdMHPXbhUkZXOLUarwbDBVLWG++cjrtPnJZZlBfIR3gXYn6imyhUvJNa8uYVQ6
 Z5HFUKLXhEBB/CPfXruZq30wp7WxPtr96VHKG7f1jADYLkzrwqOWfNWljc9vancoOG
 LnhvHZvKMD/rt1opKZUwjhz3clsoR8NmPpu/pZY4=
Date: Tue, 17 Mar 2020 22:28:24 +0000
From: Will Deacon <will@kernel.org>
To: Zheng Wei <wei.zheng@vivo.com>
Subject: Re: [PATCH] arm64: add blank after 'if'
Message-ID: <20200317222823.GG20788@willie-the-truck>
References: <20200313145403.6395-1-wei.zheng@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313145403.6395-1-wei.zheng@vivo.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_152829_435520_A919D9B4 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Hanjun Guo <guohanjun@huawei.com>,
 linux-kernel@vger.kernel.org, kernel@vivo.com,
 Yunfeng Ye <yeyunfeng@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>,
 wenhu.wang@vivo.com, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 10:54:02PM +0800, Zheng Wei wrote:
> add blank after 'if' for armv8_deprecated_init()
> to make it comply with kernel coding style.
> 
> Signed-off-by: Zheng Wei <wei.zheng@vivo.com>
> ---
>  arch/arm64/kernel/armv8_deprecated.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/armv8_deprecated.c b/arch/arm64/kernel/armv8_deprecated.c
> index 7832b3216370..4cc581af2d96 100644
> --- a/arch/arm64/kernel/armv8_deprecated.c
> +++ b/arch/arm64/kernel/armv8_deprecated.c
> @@ -630,7 +630,7 @@ static int __init armv8_deprecated_init(void)
>  		register_insn_emulation(&cp15_barrier_ops);
>  
>  	if (IS_ENABLED(CONFIG_SETEND_EMULATION)) {
> -		if(system_supports_mixed_endian_el0())
> +		if (system_supports_mixed_endian_el0())
>  			register_insn_emulation(&setend_ops);
>  		else
>  			pr_info("setend instruction emulation is not supported on this system\n");

(Catalin: I'm just acking these trivial typo/style fixes to get them out
of my inbox; do whatever you like with them ;)

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
