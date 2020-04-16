Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D2A1AD1D5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 23:25:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4otYf5m01gYQkSEs6qbSyYFTyGQQZB7UE/ee1LQl2wc=; b=VunE7Wte7e7Znc
	FNNgu8JsH226/Kj5/1Q/4whsHUBF4eyyWPu50A/1hHwQBNaEA0G68FIk+gW4taH0IQ7rIvWfqTmMa
	+rFKUqp17I8HmOd0MpMI3UulyaMYFoCpqopNL+LRJmVKLxThOyYPg5R6KJJkR6HAIxvpTpo/aDNE+
	q/0kxEKp+m3QwRlCobEmpGzUCt6mcKClnQuMzm09pcU677OXYVTdOgSdZ5QADL0rGqVtwcpTi+vf7
	Yh2pQ4+UmtYU3GCUzca7Ac0TA6d0kX9d3ZAxrbGSsQUmWfPSr72bZ7avzMeqOQOpHBYm1HFLUz30d
	lveoRSFZP33giA9ohXbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPC08-0000FX-8U; Thu, 16 Apr 2020 21:24:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPBzz-0000En-Ct
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 21:24:41 +0000
Received: from localhost (c-67-164-102-47.hsd1.ca.comcast.net [67.164.102.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5977322201;
 Thu, 16 Apr 2020 21:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587072278;
 bh=RRSObpGdrqNjfvIEEsG9Z/f7yPIRU00BfWL00R3oQI4=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=jI3mqniXkjRzCj5RdMnIQkietwemkVIBM4mQtulV72/U7JOWC8lpxOr4B+KyrKssC
 upzZmCbx89P2OYVS8pe6EyeWIgs9QcbA55HfYWaLbt86LykbuIQOQ7oQnzpPpWxQIa
 rDe0O27DWQeHq+pIexYRjp1VA2dURAAspGXaOq1Q=
Date: Thu, 16 Apr 2020 14:24:37 -0700 (PDT)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@sstabellini-ThinkPad-T480s
To: Jason Yan <yanaijie@huawei.com>
Subject: Re: [PATCH] arm/xen: make _xen_start_info static
In-Reply-To: <20200415084853.5808-1-yanaijie@huawei.com>
Message-ID: <alpine.DEB.2.21.2004161424090.8316@sstabellini-ThinkPad-T480s>
References: <20200415084853.5808-1-yanaijie@huawei.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_142439_453463_55491D07 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: jgross@suse.com, sstabellini@kernel.org, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, Hulk Robot <hulkci@huawei.com>,
 xen-devel@lists.xenproject.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 15 Apr 2020, Jason Yan wrote:
> Fix the following sparse warning:
> 
> arch/arm64/xen/../../arm/xen/enlighten.c:39:19: warning: symbol
> '_xen_start_info' was not declared. Should it be static?
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Jason Yan <yanaijie@huawei.com>

Reviewed-by: Stefano Stabellini <sstabellini@kernel.org>

> ---
>  arch/arm/xen/enlighten.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/xen/enlighten.c b/arch/arm/xen/enlighten.c
> index dd6804a64f1a..fd4e1ce1daf9 100644
> --- a/arch/arm/xen/enlighten.c
> +++ b/arch/arm/xen/enlighten.c
> @@ -36,7 +36,7 @@
>  
>  #include <linux/mm.h>
>  
> -struct start_info _xen_start_info;
> +static struct start_info _xen_start_info;
>  struct start_info *xen_start_info = &_xen_start_info;
>  EXPORT_SYMBOL(xen_start_info);
>  
> -- 
> 2.21.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
