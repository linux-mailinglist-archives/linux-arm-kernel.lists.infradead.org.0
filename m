Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 305841D0B66
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 11:02:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bH/TJvp9WK5GO6JkL/ekTsivuhP0ZjrMcnugmhX+JxQ=; b=kvGUV2HOq37mRi
	NJuWuJQelbP8l3PpuflhMUkvGkG2fKx1Oc9Z77e/ESoz+G3wD5JRjLYs6cVmvvk+ysbiW570OCM+4
	jjXrVdwSfemWcRPhUAr67QTTe3yu+LNnQhPnQOaBJiMEgNZJzdFUScdDX/843Qc7otA/+1zLo2HkI
	V09Wpqhqq4FZwEF1pt7YgupGBbg7HaqA2J+B6G+v7PvV9dYxecipN3KyKbkY8lNVzfZUCRln1WVIY
	xq350FPqNVJ4YNyLN6CU1MfP6DZPsNvHBGyxNGwj+ETsYqG2S0G57N/jsOE+LJ4LKvzmVYAYKIkwH
	4O8ovvrqlF7HfhlNW/ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYnHX-0004H9-5Y; Wed, 13 May 2020 09:02:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYnHP-0004Gn-OR
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 09:02:20 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 24654206CC;
 Wed, 13 May 2020 09:02:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589360539;
 bh=CqsZkNMhhFEmwvrrSyan044GTPZoDUPfKqcy2R8Ls0o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TRpAkENqc7CgUSrD1XHKcTgorVVSfpgABaWNQcjdHXZGtlULr1kxklX4v6396FkDp
 A15vbUz9LMe1qwuzG9N4aIg+VsyNXg/ouBOwoaogYUFx4AF7vWFUZvSp8zqgUompwE
 lRE5WW43G125cIf90oyBcY7q0z52qX9nXh9bAzDg=
Date: Wed, 13 May 2020 17:02:14 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Samuel Zou <zou_wei@huawei.com>, Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH -next] ARM: zx: Make zx_smp_prepare_cpus static
Message-ID: <20200513090213.GH26997@dragon>
References: <1589250561-106088-1-git-send-email-zou_wei@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589250561-106088-1-git-send-email-zou_wei@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_020219_812722_A2DA977C 
X-CRM114-Status: GOOD (  16.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: jun.nie@linaro.org, linux@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 10:29:21AM +0800, Samuel Zou wrote:
> Fix the following sparse warning:
> 
> arch/arm/mach-zx/platsmp.c:41:13: warning: symbol 'zx_smp_prepare_cpus' was not declared.
> 
> The zx_smp_prepare_cpus has only call site within platsmp.c
> It should be static
> 
> Fixes: 71bc724300e6 ("ARM: zx: enable SMP and hotplug for zx296702")
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Samuel Zou <zou_wei@huawei.com>

Acked-by: Shawn Guo <shawnguo@kernel.org>

Hi Arnd,

Can you please apply it to arm-soc tree?

Shawn

> ---
>  arch/arm/mach-zx/platsmp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-zx/platsmp.c b/arch/arm/mach-zx/platsmp.c
> index d4e1d37..43a33ea 100644
> --- a/arch/arm/mach-zx/platsmp.c
> +++ b/arch/arm/mach-zx/platsmp.c
> @@ -38,7 +38,7 @@ static void __iomem *pcu_base;
>  static void __iomem *matrix_base;
>  static void __iomem *scu_base;
>  
> -void __init zx_smp_prepare_cpus(unsigned int max_cpus)
> +static void __init zx_smp_prepare_cpus(unsigned int max_cpus)
>  {
>  	struct device_node *np;
>  	unsigned long base = 0;
> -- 
> 2.6.2
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
