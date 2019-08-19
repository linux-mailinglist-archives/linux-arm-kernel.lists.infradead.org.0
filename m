Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A92A595185
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 01:12:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SE3qcHJVx5rMPbzaBd/Y4NdIutN52BNqY3Mv5uJPoNc=; b=OwIAguEy9XFfN3
	WVhSCQ4hR08BWFrzgBfHBmq9/lIE/z9NFFn/wpDJG/bJ4MQPSK06cwjKJ6P3tL0s0tqPqceU2VZtd
	J1HroViAlbyWe1k2Ic2qDhTnux7vSSEqhmOWiAjv/8t8Dgx3FyNQSA10CxsGP0frZ4syLE5k32HdH
	IR8VC+SxK5nv7TF0bRqcU6odE9/tyccEYd+bPymqEvGpJ3Beii4uSOcjCh604R09lufi9P6XFWqWQ
	avt1W4qP6I6Yj3is8L6WjN4F/jI2bcK+fEKIzz2ExzKnVY2nj+yzuJA5R2YhaDhm8tMnjMFrP6HAi
	wZS/KQB99YLwebjY7ong==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzqpF-0000kS-Re; Mon, 19 Aug 2019 23:12:34 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzqon-0000j9-0P
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 23:12:07 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7JNC1uY034022;
 Mon, 19 Aug 2019 18:12:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566256322;
 bh=zqOUhY0D+EOmc/ozhlkz0NcYx3GXT6+amWIjnozE780=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=mPL4PmlPLBLsfac6Zxy5WDV714ujbdl8UPjT03vbeU1IRN2ZXCuqmWpbvSVhaNMOH
 xpBAQdpupBLsajv4W3uzaZGNffz3ozxuzDbeUPAuDPHNrUyqA+0qyoWTugeHWGgiJo
 7GFUpMBof6pBU469BUmxdlLWBPqKUn4tZjLzj0qc=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7JNC1MK050183
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 19 Aug 2019 18:12:01 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 19
 Aug 2019 18:12:01 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 19 Aug 2019 18:12:01 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7JNC17U022786;
 Mon, 19 Aug 2019 18:12:01 -0500
Subject: Re: [PATCH 7/8] soc: ti: omap-prm: add dra7 PRM data
To: Tero Kristo <t-kristo@ti.com>, <ssantosh@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-omap@vger.kernel.org>,
 <robh+dt@kernel.org>
References: <1565164139-21886-1-git-send-email-t-kristo@ti.com>
 <1565164139-21886-8-git-send-email-t-kristo@ti.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <bfb01fcb-7b84-c5cf-8986-19f7e61623ad@ti.com>
Date: Mon, 19 Aug 2019 18:12:01 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1565164139-21886-8-git-send-email-t-kristo@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_161205_761675_4B5A12B5 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
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
> Add PRM data for dra7 family of SoCs.
> 
> Signed-off-by: Tero Kristo <t-kristo@ti.com>
> ---
>  drivers/soc/ti/omap_prm.c | 26 ++++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/drivers/soc/ti/omap_prm.c b/drivers/soc/ti/omap_prm.c
> index fadfc7f..05b7749 100644
> --- a/drivers/soc/ti/omap_prm.c
> +++ b/drivers/soc/ti/omap_prm.c
> @@ -73,6 +73,31 @@ struct omap_prm_data omap4_prm_data[] = {
>  	{ },
>  };
>  
> +static struct omap_prm_data dra7_prm_data[] = {

Same comment as on other data, static const.

regards
Suman

> +	{ .name = "mpu", .base = 0x4ae06300, .pwstst = 0x4 },
> +	{ .name = "dsp1", .base = 0x4ae06400, .pwstst = 0x4, .rstctl = 0x10, .rstst = 0x14 },
> +	{ .name = "ipu", .base = 0x4ae06500, .pwstst = 0x4, .rstctl = 0x10, .rstst = 0x14, .clkdm_name = "ipu1" },
> +	{ .name = "coreaon", .base = 0x4ae06628, .pwstst = 0x4 },
> +	{ .name = "core", .base = 0x4ae06700, .pwstst = 0x4, .rstctl = 0x210, .rstst = 0x214, .clkdm_name = "ipu2" },
> +	{ .name = "iva", .base = 0x4ae06f00, .pwstst = 0x4 },
> +	{ .name = "cam", .base = 0x4ae07000, .pwstst = 0x4 },
> +	{ .name = "dss", .base = 0x4ae07100, .pwstst = 0x4 },
> +	{ .name = "gpu", .base = 0x4ae07200, .pwstst = 0x4 },
> +	{ .name = "l3init", .base = 0x4ae07300, .pwstst = 0x4, .rstctl = 0x10, .rstst = 0x14 },
> +	{ .name = "l4per", .base = 0x4ae07400, .pwstst = 0x4 },
> +	{ .name = "custefuse", .base = 0x4ae07600, .pwstst = 0x4 },
> +	{ .name = "wkupaon", .base = 0x4ae07724, .pwstst = 0x4 },
> +	{ .name = "emu", .base = 0x4ae07900, .pwstst = 0x4 },
> +	{ .name = "dsp2", .base = 0x4ae07b00, .pwstst = 0x4, .rstctl = 0x10, .rstst = 0x14 },
> +	{ .name = "eve1", .base = 0x4ae07b40, .pwstst = 0x4 },
> +	{ .name = "eve2", .base = 0x4ae07b80, .pwstst = 0x4 },
> +	{ .name = "eve3", .base = 0x4ae07bc0, .pwstst = 0x4 },
> +	{ .name = "eve4", .base = 0x4ae07c00, .pwstst = 0x4 },
> +	{ .name = "rtc", .base = 0x4ae07c60, .pwstst = 0x4 },
> +	{ .name = "vpe", .base = 0x4ae07c80, .pwstst = 0x4 },
> +	{ },
> +};
> +
>  struct omap_rst_map am3_wkup_rst_map[] = {
>  	{ .rst = 3, .st = 5 },
>  	{ .rst = -1 },
> @@ -91,6 +116,7 @@ struct omap_prm_data am3_prm_data[] = {
>  
>  static const struct of_device_id omap_prm_id_table[] = {
>  	{ .compatible = "ti,omap4-prm-inst", .data = omap4_prm_data },
> +	{ .compatible = "ti,dra7-prm-inst", .data = dra7_prm_data },
>  	{ .compatible = "ti,am3-prm-inst", .data = am3_prm_data },
>  	{ },
>  };
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
