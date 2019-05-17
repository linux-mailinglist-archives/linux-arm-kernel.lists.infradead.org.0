Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B22621FEC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 23:53:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ilZebp7Nn7KTTey8xsDYy3FiavEzpgpltZCYLrC/27Q=; b=Po/e6gJHtJigTF
	RJj7WlXunTymPP528QGL4YkLzZzjjijpCIe+0xm02AymXYdnVJLCkv0imhVO1VwNZnNp9p5aIpvvP
	thyJep98pYfYb/q41bBwm31z6mvCcXOcrTY8FxYmKhzmrjSltjy7kHvshQ+bbARyO3ye1L8O7rd12
	1Q6Vxd2tIlFDk5WktM+FGTG+IFN4Cev06nUqDVtmLwEE5t7MrXDX6pHWVlgODOMr7FVGPAeJLeKFY
	aFZKxst2opjWEbcrwn+vLMp7l8z7gB6ed4kSfhVFKPG2Lz6jhNb2aUEoT/92RVMs4krexaWjC1KL+
	diwGNmymaJX+Rm6BmA5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRkmz-0002LS-Pk; Fri, 17 May 2019 21:53:17 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRkms-0002Kk-3x
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 21:53:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 99A151715;
 Fri, 17 May 2019 14:53:08 -0700 (PDT)
Received: from mbp (usa-sjc-mx-foss1.foss.arm.com [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 73CCD3F71E;
 Fri, 17 May 2019 14:53:07 -0700 (PDT)
Date: Fri, 17 May 2019 22:53:04 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Salyzyn <salyzyn@android.com>
Subject: Re: [PATCH] arch64: export __flush_dcache_area
Message-ID: <20190517215303.3daebi7o66we2cjh@mbp>
References: <20190517200012.136519-1-salyzyn@android.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517200012.136519-1-salyzyn@android.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_145310_175207_E542D8EB 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Will Deacon <will.deacon@arm.com>, kernel-team@android.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 12:59:56PM -0700, Mark Salyzyn wrote:
> Some (out of tree modular) drivers feel a need to ensure
> data is flushed to the DDR before continuing flow.
> 
> Signed-off-by: Mark Salyzyn <salyzyn@android.com>
> Cc: linux-kernel@vger.kernel.org
> Cc: kernel-team@android.com
> ---
>  arch/arm64/mm/cache.S | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/mm/cache.S b/arch/arm64/mm/cache.S
> index a194fd0e837f..70d7cb5c0bd2 100644
> --- a/arch/arm64/mm/cache.S
> +++ b/arch/arm64/mm/cache.S
> @@ -120,6 +120,7 @@ ENTRY(__flush_dcache_area)
>  	dcache_by_line_op civac, sy, x0, x1, x2, x3
>  	ret
>  ENDPIPROC(__flush_dcache_area)
> +EXPORT_SYMBOL_GPL(__flush_dcache_area)
>  
>  /*
>   *	__clean_dcache_area_pou(kaddr, size)

NAK. Such drivers are doing something wrong, there is a dedicated
in-kernel API for that handles kernel maintenance (hint: DMA).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
