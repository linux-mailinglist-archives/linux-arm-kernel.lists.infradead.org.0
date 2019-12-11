Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B764511A8B3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 11:13:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yMwYelK8nqmNw2bmxEo+dKbPuZmpoo/eeB5MFt1E1q8=; b=ZYzm/imLZN6DNC
	xA8zcjFGOl5y5u0guBI3dl+QJOGAaIsfN3EcKZn4DJ79USNAdcLWKK5wkBg5tz7wXVaeiTPTJVtk5
	gbFwehpxd4oBRgkz+YJOPj9nd9NLJgPb37DOqps/HEwCZ3z8XTLoJQCSAbPipGwJtRIeQ84WKOJrd
	DALWvcmOBPifM6wZ7cye/6vH84hybdJdJ9KMsYiIXzGeuLw67R9Lg+p6uuF1XccBUXWu2mSihpICP
	ZQZ8Jkdpq6I7vA3ZOouOLYxPu4cFJr7aiykMuQA+LNHmwU85FCo57uaaNH9TwP90rUuPAE2dpCgAx
	6qo2IQGauABvigy/95ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iez05-0001NU-2S; Wed, 11 Dec 2019 10:13:45 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieyzw-0001Mf-Il
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 10:13:38 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBBAClIp046366;
 Wed, 11 Dec 2019 04:12:47 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576059167;
 bh=8BGngI7zTQTQPw9XUjrusxMSY5BvpVVhXIk8XhaPkjg=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=YiKbE+m9ONDUBibMhEJdcGxQyJbj1sRfl1YT6JRXtuvy//mNi2fF5xWv/r4d9qpMp
 +FNI9copTvKFG2tPdEynVITozZ9Xi7XcO4PuWSi+kkJAkOrx7dbrjR4UgwL3qFRcvF
 9hEJ22o6XS44u9rvUxJs6MXpXolbkGIf1WK5AZBM=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBBACl57080780
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 11 Dec 2019 04:12:47 -0600
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 11
 Dec 2019 04:12:46 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 11 Dec 2019 04:12:46 -0600
Received: from [10.24.69.35] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBBAChGZ119576;
 Wed, 11 Dec 2019 04:12:43 -0600
Subject: Re: [PATCH] ARM: davinci: select CONFIG_RESET_CONTROLLER
To: Arnd Bergmann <arnd@arndb.de>
References: <20191210195202.622734-1-arnd@arndb.de>
From: Sekhar Nori <nsekhar@ti.com>
Message-ID: <ba94531d-1f16-b985-5638-c226bab28d5b@ti.com>
Date: Wed, 11 Dec 2019 15:42:42 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191210195202.622734-1-arnd@arndb.de>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_021336_713005_73A1C4A5 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: David Lechner <david@lechnology.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

On 11/12/19 1:21 AM, Arnd Bergmann wrote:
> Selecting RESET_CONTROLLER is actually required, otherwise we
> can get a link failure in the clock driver:
> 
> drivers/clk/davinci/psc.o: In function `__davinci_psc_register_clocks':
> psc.c:(.text+0x9a0): undefined reference to `devm_reset_controller_register'
> drivers/clk/davinci/psc-da850.o: In function `da850_psc0_init':
> psc-da850.c:(.text+0x24): undefined reference to `reset_controller_add_lookup'
> 
> Fixes: f962396ce292 ("ARM: davinci: support multiplatform build for ARM v5")
> Cc: <stable@vger.kernel.org> # v5.4
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Assuming you are going to apply directly to ARM-SoC,

Acked-by: Sekhar Nori <nsekhar@ti.com>

Thanks,
Sekhar

> ---
>  arch/arm/mach-davinci/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/mach-davinci/Kconfig b/arch/arm/mach-davinci/Kconfig
> index dd427bd2768c..02b180ad7245 100644
> --- a/arch/arm/mach-davinci/Kconfig
> +++ b/arch/arm/mach-davinci/Kconfig
> @@ -9,6 +9,7 @@ menuconfig ARCH_DAVINCI
>  	select PM_GENERIC_DOMAINS if PM
>  	select PM_GENERIC_DOMAINS_OF if PM && OF
>  	select REGMAP_MMIO
> +	select RESET_CONTROLLER
>  	select HAVE_IDE
>  	select PINCTRL_SINGLE
>  
> -- 
> 2.20.0
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
