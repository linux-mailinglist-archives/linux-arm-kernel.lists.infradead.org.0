Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4A3B3D99
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 17:25:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vlJGwTHDMNFoykNmHcUyHGRCM8BEBPnsAhC+/rVtAUA=; b=HW1mq1cBDxzlHz
	dgR95P3w9T9fg9EhZwvaNw0GVndQtHwRxieSqKoZbnDC1kIyzjZx675Fqiy9+en+R+acTcEDJwc30
	1H9/5NDBb3YkgM9JTJZIczZU+Lh6FtdsFuK9NA/ZZobMvgpzBRP5VDhOekJ3kaa3z6F7kclRGNKbz
	LFUUA6eNlv4wbzgawScYZs+EwMacug58qkui06RLsUih2mOjKg3iWbGuZdks59l8LWX+m+JqjMaYk
	vWFj/WSHaQJHbXPLPVHCvhjR+rtgYrhcmjsKNIfZDrrxQTrwOmyAjUH4zAnCLBr5Tpg3cwoILLMBj
	rzonTPPh0gYV2Zt1A3vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9ssc-0007LG-IR; Mon, 16 Sep 2019 15:25:30 +0000
Received: from [2601:1c0:6280:3f0::9a1f]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9ssB-0006kx-FI; Mon, 16 Sep 2019 15:25:03 +0000
Subject: Re: [PATCH] Documentation: document earlycon without options for more
 platforms
To: Christoph Hellwig <hch@lst.de>, corbet@lwn.net
References: <20190916070316.7371-1-hch@lst.de>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <3e24518a-9e01-c244-3d58-ffd21dab6701@infradead.org>
Date: Mon, 16 Sep 2019 08:25:02 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190916070316.7371-1-hch@lst.de>
Content-Language: en-US
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
Cc: schwab@suse.de, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/16/19 12:03 AM, Christoph Hellwig wrote:
> The earlycon options without arguments is supposed on all device

                                         is supposed to work on all device

> tree platforms, not just arm64.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

I would add a comma, but that can be up to Jon.

Thanks.

> ---
>  Documentation/admin-guide/kernel-parameters.txt | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> index 4c1971960afa..fe81d8922edd 100644
> --- a/Documentation/admin-guide/kernel-parameters.txt
> +++ b/Documentation/admin-guide/kernel-parameters.txt
> @@ -977,12 +977,10 @@
>  
>  	earlycon=	[KNL] Output early console device and options.
>  
> -			[ARM64] The early console is determined by the
> -			stdout-path property in device tree's chosen node,
> -			or determined by the ACPI SPCR table.
> -
> -			[X86] When used with no options the early console is
> -			determined by the ACPI SPCR table.
> +			When used with no options the early console is
			                  options,

> +			determined by stdout-path property in device tree's
> +			chosen node or the ACPI SPCR table if supported by
> +			the platform.
>  
>  		cdns,<addr>[,options]
>  			Start an early, polled-mode console on a Cadence
> 


-- 
~Randy

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
