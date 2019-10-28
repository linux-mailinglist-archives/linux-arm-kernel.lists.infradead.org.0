Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE67E6B42
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 04:06:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=medImQVOxQjZAoHDG9Fq8K48QsYw0XfiaLFXdAPyM+Q=; b=phd6oZYXoUmjNR
	npG0AErV6d61m/WQtwOQTRtC0MNQWSgCqBcn3Qotq18D+msFXEhMQzpyfr7Zscof2118Pf9KvthpQ
	HS5rDjl7EQ47vhN83QsuKkOuutKLqYXU22+IZ88HOZ6w5Ss6L/yWP0dKxnmdFm0YyvCP6FsE4bpYl
	WPpgC6urF2KgKiTj3PWxxC0f1OxXGOllF7Klq0Ba0shNVO6XHkKhXxSH0CDtR70qmT+4scNfH23lo
	V+CrxwUBWg2k42QH9Wxk+xoYW9gm1D1otf6LCpbKI+DdjHfF1C4n57SasoPyQ3lfmlL5AlwC+5UUv
	8chs5V6H+treLts/JVpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOvMo-0002Lm-05; Mon, 28 Oct 2019 03:06:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOvMf-0002LR-IY
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 03:06:42 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3A1BC20873;
 Mon, 28 Oct 2019 03:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572232000;
 bh=cl9WZdhvfl9tEyw5c/vAJC0v1ev1MUtHRoB9FkFV54I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Md2rso/xxXuFrbcTl7g1Q3KNfOwkOUhTpXJewGMfn18dRMd4KuwtxsCzDBJd5xFVu
 BuqCEYWy+MebvDcvcjqsLn3VAX6mIsvcfQQ50CHr6/DoDrAIk1DqNV+r/Rn5gIAYxC
 7IfWvcrNoAyA56NVRtVumH8lcCEGnRJBPQYjadvQ=
Date: Mon, 28 Oct 2019 11:06:23 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>,
 Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] zx: make zx_smp_prepare_cpus static
Message-ID: <20191028030621.GG16985@dragon>
References: <20191017103934.6814-1-ben.dooks@codethink.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191017103934.6814-1-ben.dooks@codethink.co.uk>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_200641_634045_53B228D3 
X-CRM114-Status: GOOD (  15.69  )
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
Cc: linux-kernel@lists.codethink.co.uk, Jun Nie <jun.nie@linaro.org>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 11:39:34AM +0100, Ben Dooks (Codethink) wrote:
> The zx_smp_prepare_cpus is not declared and not directly
> exported outside of the file it is in. Make it static to
> remove the following sparse warning:
> 
> arch/arm/mach-zx/platsmp.c:41:13: warning: symbol 'zx_smp_prepare_cpus' was not declared. Should it be static?
> 
> Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>

Acked-by: Shawn Guo <shawnguo@kernel.org>

@Arnd, please help apply it to arm-soc, thanks!

Shawn

> ---
> Cc: Jun Nie <jun.nie@linaro.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  arch/arm/mach-zx/platsmp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-zx/platsmp.c b/arch/arm/mach-zx/platsmp.c
> index d4e1d3792224..43a33eaff388 100644
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
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
