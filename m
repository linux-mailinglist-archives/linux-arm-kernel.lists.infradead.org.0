Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E6E71FDB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 21:03:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CxndrB9S9XUk8/e2olUpdNVkJFz4LffI74FkNIPxJ4M=; b=YoMN9ic02oD7cT
	Fw8Ji2DHVD+nLRHn8zqasa7JWGZsL0d0kGkM/F6qf9UhxG98ol0VyVe6GI/Sojl8j+IhXri0avoFY
	K+mGY2P8YJrOJOj6bS7Cw0prRsOAtGhtEmwYS09vITIjkG4Mi2syWzOR3qGItROxeaS7vlgOwNWvD
	TB8qMJ1pXQeMODAYnXWmV/Dd5k72YNgMBgCSbsRxtVvwxzqSCNsiBcb/2E7+23DJFNJrO61tJyfEd
	YLht6DMpSK/NyA9ijhCA6Lko8KtLYkwuGEdeIRx9Zl0/UY5t43UhNGy4C1+mhTQgydnd4DfUOGjQ1
	bED733yGpZaXV9qZyD0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq04O-0007CT-Sa; Tue, 23 Jul 2019 19:03:28 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq04C-0007C2-1j
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 19:03:17 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6NJ3Dx2070436;
 Tue, 23 Jul 2019 14:03:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563908593;
 bh=dgAWQjxtCP5dIIzQPntXQvITimMe67GhUEu5H0ZWdpM=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=gy+LLjyXgC5A3RA4GVKO+AvXneYwLjeV590QU7snUStl1OHXMmPMMFs4oa6VVWkKT
 Usl+KatzH41hPr3P8wNfK2+jp+JMAZTvuWL2o7/p6YdEx2g9v/Rf4dhMt1ok0lphYN
 pTjZxeRTTKCd3pHlWqqQBM435Mv18Ab/i4zD0mRk=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6NJ3DEf036172
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 23 Jul 2019 14:03:13 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 23
 Jul 2019 14:03:12 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 23 Jul 2019 14:03:12 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6NJ3CFq033455;
 Tue, 23 Jul 2019 14:03:12 -0500
Subject: Re: [PATCH 2/8] ARM: OMAP2+: Remove unconfigured midlemode for am3
 lcdc
To: Tony Lindgren <tony@atomide.com>, <linux-omap@vger.kernel.org>, Jyri Sarha
 <jsarha@ti.com>
References: <20190723112811.44381-1-tony@atomide.com>
 <20190723112811.44381-3-tony@atomide.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <bcc130a5-f7e0-e182-9f4b-5a48fc3d6e17@ti.com>
Date: Tue, 23 Jul 2019 14:03:12 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190723112811.44381-3-tony@atomide.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_120316_196262_8369323B 
X-CRM114-Status: GOOD (  21.08  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Dave Gerlach <d-gerlach@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 Keerthy <j-keerthy@ti.com>, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+ Jyri

On 7/23/19 6:28 AM, Tony Lindgren wrote:
> We currently get a warning for lcdc because of a difference
> with dts provided configuration compared to the legacy platform
> data. This is because lcdc has SYSC_HAS_MIDLEMODE configured in
> the platform data without configuring the modes.

Hi Tony,
While I understand that you are trying to match the DT data with the
existing legacy data, do you know if there was a reason why this was
omitted in the first place? Should we be really adding the MSTANDBY_
flags and fix up the DTS node accordingly? I tried looking through the
git log, and the initial commit itself didn't add the MSTANDBY_ flags
but used the SYSC_HAS_MIDLEMODE.

Jyri,
Do you know the history?

regards
Suman

> 
> Let's fix the warning by removing SYSC_HAS_MIDLEMODE. Note that
> the am335x TRM lists SYSC_HAS_MIDLEMODE, but it is unused.



> 
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>  arch/arm/mach-omap2/omap_hwmod_33xx_data.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-omap2/omap_hwmod_33xx_data.c b/arch/arm/mach-omap2/omap_hwmod_33xx_data.c
> --- a/arch/arm/mach-omap2/omap_hwmod_33xx_data.c
> +++ b/arch/arm/mach-omap2/omap_hwmod_33xx_data.c
> @@ -231,7 +231,7 @@ static struct omap_hwmod am33xx_control_hwmod = {
>  static struct omap_hwmod_class_sysconfig lcdc_sysc = {
>  	.rev_offs	= 0x0,
>  	.sysc_offs	= 0x54,
> -	.sysc_flags	= (SYSC_HAS_SIDLEMODE | SYSC_HAS_MIDLEMODE),
> +	.sysc_flags	= SYSC_HAS_SIDLEMODE,
>  	.idlemodes	= (SIDLE_FORCE | SIDLE_NO | SIDLE_SMART),
>  	.sysc_fields	= &omap_hwmod_sysc_type2,
>  };
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
