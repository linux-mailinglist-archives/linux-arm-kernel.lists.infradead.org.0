Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B657995184
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 01:12:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=banwBxA4MvZG+y/ouBJqx1fEZpL16ZHHr72JpsjpPcs=; b=mRI74uxlMcpubS
	dUjZ3Qnkp8QOYXn2ZPpZU/25ATolXLi0VrgP8jwueeG4hRcITl4ZSkEKIgCNjNZy0+DwS4NPRiHU+
	3nFms8VK/InCf2sjzd7+9G7x0xy2eH3DIqFPUQz0FckOF65DYB187Fbdw3HdK2ehIjkFKzjN/xfw0
	vIZF7FloRdDpUE7bqN4qcs8/fWwkS35hj9Ld9q6RxQovFkd/6wB845o92bQX5/owmjpbef1I43fqO
	reJL+qlHrZwsZ4+r8DLffRugmIL/iy1YBXuL+fjWirWHoR0Fq8StTCzgFZlsfY35MMKr1dEQbm/wA
	oANDqLx7NHd53MwwOZ3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzqon-0000XE-Od; Mon, 19 Aug 2019 23:12:05 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzqo8-0000Wt-B1
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 23:11:25 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7JNBKPG129944;
 Mon, 19 Aug 2019 18:11:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566256280;
 bh=aEu1YJ/im14vMDcoR35ULybLI6ifJc+u4jwJdC8b3oo=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=xa00bfjM4kweQHSTa8I73JF4zr4mxdzcrecfnk/NKZWJ3Na2Qqn0X7aKiXKm3GShE
 XROXphgSEp1L1IzJAAz6GDvZR/5sM9zIXjtyvgw9bGj4bcaUulLY9yr5Lib4K7mqh1
 zT+fISIy3k6fn0TAcb1CL6lTszrFYR9argN6diLs=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7JNBK4q123363
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 19 Aug 2019 18:11:20 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 19
 Aug 2019 18:11:20 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 19 Aug 2019 18:11:20 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7JNBJCY094993;
 Mon, 19 Aug 2019 18:11:19 -0500
Subject: Re: [PATCH 6/8] soc: ti: omap_prm: add data for am33xx
To: Tero Kristo <t-kristo@ti.com>, <ssantosh@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-omap@vger.kernel.org>,
 <robh+dt@kernel.org>
References: <1565164139-21886-1-git-send-email-t-kristo@ti.com>
 <1565164139-21886-7-git-send-email-t-kristo@ti.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <ca424fbf-feb4-3fad-2e95-4f8ae38547dc@ti.com>
Date: Mon, 19 Aug 2019 18:11:19 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1565164139-21886-7-git-send-email-t-kristo@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_161124_463536_081A1F5B 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: tony@atomide.com, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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

static const here and below.

regards
Suman

> +	{ .rst = 3, .st = 5 },
> +	{ .rst = -1 },
> +};
> +
> +struct omap_prm_data am3_prm_data[] = {
> +	{ .name = "per", .base = 0x44e00c00, .pwstctrl = 0xc, .pwstst = 0x8, .flags = OMAP_PRM_NO_RSTST },
> +	{ .name = "wkup", .base = 0x44e00d00, .pwstctrl = 0x4, .pwstst = 0x8, .rstst = 0xc, .rstmap = am3_wkup_rst_map },
> +	{ .name = "mpu", .base = 0x44e00e00, .pwstst = 0x4 },
> +	{ .name = "device", .base = 0x44e00f00, .rstctl = 0x0, .rstst = 0x8 },
> +	{ .name = "rtc", .base = 0x44e01000, .pwstst = 0x4 },
> +	{ .name = "gfx", .base = 0x44e01100, .pwstst = 0x10, .rstctl = 0x4, .rstst = 0x14 },
> +	{ .name = "cefuse", .base = 0x44e01200, .pwstst = 0x4 },
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
