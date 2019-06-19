Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7804BA08
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 15:32:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8UKglrtI7w4nwvXHE+DNrm1Z4N5D6K2ob09L4WeYmFQ=; b=YCoZebEWdeJ20l
	A5gEnPq+7tLO6wFd1ZIZeWYyBOtMIEMAI9LoToXApiRYNe9P4rnMr/XTW+8JRT3Jv8FL4C4ZzMEmi
	R+N1yUvThihZgTsaHsPSe+gpfrQ4CrkU+RUCy1HCDXaGaFzcWq9TTcVvvGV6Pk4MF+T9xCYElDN46
	9qpd3WWQoLgw+uzj7jLwZ2dIkYaDxv6IzyHB4VBSCzkgJoaC8cc3WvocGbqCjNbO7bBBbjo/mlbmE
	JJlbJ7w3EUVsYYjhMOr/NVjZlqag0qDw19ze2jlJYqILI55++zNh3tB7bWWP4LrplGGP7r+kf2mXb
	1ZqTK62os7Fc8VoLs0hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdaha-0005GU-0F; Wed, 19 Jun 2019 13:32:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdahQ-0005G1-VB
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 13:32:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 520DB344;
 Wed, 19 Jun 2019 06:32:27 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C838B3F738;
 Wed, 19 Jun 2019 06:32:26 -0700 (PDT)
Date: Wed, 19 Jun 2019 14:32:25 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] ARM: omap2: remove incorrect __init annotation
Message-ID: <20190619133224.GX20984@e119886-lin.cambridge.arm.com>
References: <20190619130529.1502322-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619130529.1502322-1-arnd@arndb.de>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_063229_052001_217A2EE9 
X-CRM114-Status: GOOD (  18.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Paul Walmsley <paul@pwsan.com>, Rajendra Nayak <rnayak@codeaurora.org>,
 Tony Lindgren <tony@atomide.com>, linux-kernel@vger.kernel.org, arm@kernel.org,
 Nathan Chancellor <natechancellor@gmail.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 03:04:54PM +0200, Arnd Bergmann wrote:
> omap3xxx_prm_enable_io_wakeup() is marked __init, but its caller is not, so
> we get a warning with clang-8:
> 
> WARNING: vmlinux.o(.text+0x343c8): Section mismatch in reference from the function omap3xxx_prm_late_init() to the function .init.text:omap3xxx_prm_enable_io_wakeup()
> The function omap3xxx_prm_late_init() references
> the function __init omap3xxx_prm_enable_io_wakeup().
> This is often because omap3xxx_prm_late_init lacks a __init
> annotation or the annotation of omap3xxx_prm_enable_io_wakeup is wrong.
> 

That's unfortunate, both omap3xxx_prm_enable_io_wakeup and
omap3xxx_prm_late_init are only ever called at init time (by prm_late_init
which is also __init annotated). However the omap3xxx_prm_ll_data
structure containing the late_init has a life beyond init. Otherwise I
would have suggested annotating omap3xxx_prm_late_init.

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

> When building with gcc, omap3xxx_prm_enable_io_wakeup() is always
> inlined, so we never noticed in the past.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Acked-by: Tony Lindgren <tony@atomide.com>
> ---
>  arch/arm/mach-omap2/prm3xxx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-omap2/prm3xxx.c b/arch/arm/mach-omap2/prm3xxx.c
> index 05858f966f7d..dfa65fc2c82b 100644
> --- a/arch/arm/mach-omap2/prm3xxx.c
> +++ b/arch/arm/mach-omap2/prm3xxx.c
> @@ -433,7 +433,7 @@ static void omap3_prm_reconfigure_io_chain(void)
>   * registers, and omap3xxx_prm_reconfigure_io_chain() must be called.
>   * No return value.
>   */
> -static void __init omap3xxx_prm_enable_io_wakeup(void)
> +static void omap3xxx_prm_enable_io_wakeup(void)
>  {
>  	if (prm_features & PRM_HAS_IO_WAKEUP)
>  		omap2_prm_set_mod_reg_bits(OMAP3430_EN_IO_MASK, WKUP_MOD,
> -- 
> 2.20.0
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
