Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DECA4968C0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 20:48:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T3IkgoQ6VMFeEAdGjw/LcpJken6o1FWAQUviboE2tAc=; b=UJdiMweBR7Pi8B
	t3LJ0Zb+gCy4G4t/tCkT5dJLvUSX/1We7cDn79+0ZmaKlBqAb5oCUcFm4x34BMwtV/AoRL09h3A6/
	PPyoApyQiIZQFJMWY6MUHFhfFOwSW1Hs+YCjne4PCK8GkpN1g7kd64alYEYCMtOAh7HxDjIsnY4f9
	P59tXTUk9yx6W5Kqfp+4mUvu5gQFulBqO1BvbfuM4l7D3GB0AWliXdepr1FXbvuA/7wAylmXZtOZm
	h5FzJ+Qhis0U59a0T3CZZ2BkJVJCC0f7Wj0anQB2adjaytSN5Cd4dwYVwZpqJjTQ860Lg9BSfEI+j
	MgT4Gs84yUfdZPnd7Fig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i09BV-0006ME-Vx; Tue, 20 Aug 2019 18:48:46 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i09BM-0006Li-S8
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 18:48:38 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7KImVsf089762;
 Tue, 20 Aug 2019 13:48:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566326911;
 bh=0iAoRSni0dkEtLK/MQU115BeYkMGMV8Be+XLd0zwvjg=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=NBqHNFPxS9qqHi/0NJZzytXkc8R4wQAS9+Bw6E5ljeSDxGoY7pnr/1cypTRwJuGw5
 UhN1fBi1/E0p/bW5BfRF10+RdYuuMdFWtOHPpsTDjI2i8ax8uY4qxL3lI+QKBr/Z3f
 bTF7oAvfQ9ZoaTUOVnB/JAykJiRTS033eMEPzLfE=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7KImVnC036656
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 20 Aug 2019 13:48:31 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 20
 Aug 2019 13:48:31 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 20 Aug 2019 13:48:30 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7KImVxE046981;
 Tue, 20 Aug 2019 13:48:31 -0500
Subject: Re: [PATCH 6/8] soc: ti: omap_prm: add data for am33xx
To: Tero Kristo <t-kristo@ti.com>, <ssantosh@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-omap@vger.kernel.org>,
 <robh+dt@kernel.org>
References: <1565164139-21886-1-git-send-email-t-kristo@ti.com>
 <1565164139-21886-7-git-send-email-t-kristo@ti.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <ebb6e240-1252-5a4f-39a2-403ee699d8aa@ti.com>
Date: Tue, 20 Aug 2019 13:48:31 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1565164139-21886-7-git-send-email-t-kristo@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_114837_026057_E29DE2CA 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: tony@atomide.com, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tero,

On 8/7/19 2:48 AM, Tero Kristo wrote:
> Add PRM instance data for AM33xx SoC. Includes some basic register
> definitions and reset data for now.
> 
> Signed-off-by: Tero Kristo <t-kristo@ti.com>
> ---
>  drivers/soc/ti/omap_prm.c | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/drivers/soc/ti/omap_prm.c b/drivers/soc/ti/omap_prm.c
> index 9b8d5945..fadfc7f 100644
> --- a/drivers/soc/ti/omap_prm.c
> +++ b/drivers/soc/ti/omap_prm.c
> @@ -73,8 +73,25 @@ struct omap_prm_data omap4_prm_data[] = {
>  	{ },
>  };
>  
> +struct omap_rst_map am3_wkup_rst_map[] = {
> +	{ .rst = 3, .st = 5 },
> +	{ .rst = -1 },
> +};
> +
> +struct omap_prm_data am3_prm_data[] = {
> +	{ .name = "per", .base = 0x44e00c00, .pwstctrl = 0xc, .pwstst = 0x8, .flags = OMAP_PRM_NO_RSTST },
> +	{ .name = "wkup", .base = 0x44e00d00, .pwstctrl = 0x4, .pwstst = 0x8, .rstst = 0xc, .rstmap = am3_wkup_rst_map },
> +	{ .name = "mpu", .base = 0x44e00e00, .pwstst = 0x4 },

Has a rstst but no rstctrl, but your registration logic takes care of
this. Somewhat confusing, when you just look at the data. Should you
limit the check to only rstctrl and OMAP_PRM_NO_RSTST?

> +	{ .name = "device", .base = 0x44e00f00, .rstctl = 0x0, .rstst = 0x8 },

No pwrstctrl and pwrstst registers, so same comment as on OMAP4 data.

> +	{ .name = "rtc", .base = 0x44e01000, .pwstst = 0x4 },
> +	{ .name = "gfx", .base = 0x44e01100, .pwstst = 0x10, .rstctl = 0x4, .rstst = 0x14 },
> +	{ .name = "cefuse", .base = 0x44e01200, .pwstst = 0x4 },

I am not sure if it is better to explicitly list the registers at 0
offset rather than using the implied value of 0, since there are some
registers that do not exist on some PRM instances which are also not
defined.

regards
Suman

> +	{ },
> +};
> +
>  static const struct of_device_id omap_prm_id_table[] = {
>  	{ .compatible = "ti,omap4-prm-inst", .data = omap4_prm_data },
> +	{ .compatible = "ti,am3-prm-inst", .data = am3_prm_data },
>  	{ },
>  };
>  
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
