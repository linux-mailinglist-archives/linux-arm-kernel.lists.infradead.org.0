Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D44BE0A16
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 19:08:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vYBMdKzTSN1I6RvF8N86OKWdgbMV6C7IqDpMbxptk1Q=; b=H3+aj/nB5eW8M7
	8QzEVx36q4U1XMCC81i/4k7+A7KzTH0qTYCC080ptRLSm/Dvcz6eaD72sqthm8lQQOcDakw69uDqe
	cBMTr4vS7jYueWEY3vGGP3DtEw6pIZTIvA6qSZTOtXe5jivTKPf91HkyIRKckGtJjVXbtlEGwZyXT
	Vd+8/EL9GEXZhUHHOcJjPTjVTXnM9q6YQ7nrBVWqOEzpwqxV9EmCJKzqVJ6zeHJwQRWyFvsMrANKL
	l9o+W2Jjq3CdiAO5CM7GsT7rXjHO4CXWBa8AdTcj081KXdzdAzLOGWPbuMsxV9oZhh7f4420AdP4f
	FkpqU3I2N+NOWTSYLhRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMxdu-00032H-LF; Tue, 22 Oct 2019 17:08:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMxdY-0002xb-TJ
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 17:08:02 +0000
Received: from localhost (c-67-164-102-47.hsd1.ca.comcast.net [67.164.102.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CAEFD20684;
 Tue, 22 Oct 2019 17:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571764079;
 bh=5UtxmgOZdl9E5i3D/9ZM3y/Y9J4jTJWTIr01NpjT7r8=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=Pvp/AvaXmINfAnzjA5+/mXTD5mU2+oIfqgLLT28pTi70h2FNWFvi25xVQQPhhORoR
 +CdPMDobq7H0FA5Rqzi8K2sigW1uEJwPNyen3UrV6STjHOhe+EV72axWtikC56H7Ur
 qy06j8HaSW+J/THZ7N8gX60nMMDKZead+9fvLAKk=
Date: Tue, 22 Oct 2019 10:07:58 -0700 (PDT)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@sstabellini-ThinkPad-T480s
To: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
Subject: Re: [PATCH] xen: mm: make xen_mm_init static
In-Reply-To: <20191022125251.4284-1-ben.dooks@codethink.co.uk>
Message-ID: <alpine.DEB.2.21.1910221007430.30080@sstabellini-ThinkPad-T480s>
References: <20191022125251.4284-1-ben.dooks@codethink.co.uk>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_100800_989444_5C4D8674 
X-CRM114-Status: GOOD (  14.91  )
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
Cc: linux-kernel@lists.codethink.co.uk, xen-devel@lists.xenproject.org,
 Stefano Stabellini <sstabellini@kernel.org>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 22 Oct 2019, Ben Dooks (Codethink) wrote:
> The xen_mm_init is not exported or used outside of the file
> it is declared in, so make it static. This fixes the following
> sparse warning:
> 
> arch/arm/xen/mm.c:136:12: warning: symbol 'xen_mm_init' was not declared. Should it be static?
> 
> Signed-off-by: Ben Dooks (Codethink) <ben.dooks@codethink.co.uk>

Reviewed-by: Stefano Stabellini <sstabellini@kernel.org>


> ---
> Cc: Stefano Stabellini <sstabellini@kernel.org>
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: xen-devel@lists.xenproject.org
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  arch/arm/xen/mm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/xen/mm.c b/arch/arm/xen/mm.c
> index 6feb6b78b13c..3c7645d7b9b4 100644
> --- a/arch/arm/xen/mm.c
> +++ b/arch/arm/xen/mm.c
> @@ -134,7 +134,7 @@ void xen_destroy_contiguous_region(phys_addr_t pstart, unsigned int order)
>  	return;
>  }
>  
> -int __init xen_mm_init(void)
> +static int __init xen_mm_init(void)
>  {
>  	struct gnttab_cache_flush cflush;
>  	if (!xen_initial_domain())
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
