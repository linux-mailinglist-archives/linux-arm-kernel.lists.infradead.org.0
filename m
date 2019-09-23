Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C5EBADED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 08:39:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6CFBXlzIb+2GfNs2WjRJOgiI0RIR4OflPpnA79anpRw=; b=ppBGPFMHGs3ziblEzPrUCffmp
	UhAcERD1mZ3bzrqA0DJ7Cel+dVTdNyHMdnn+JLpL6xBEjTLFWRFkmPUTN8LaLN9WGj2IKps3GovJw
	seYiZXXC4QeYZDDght2LZ2KwD0p2riK3iWV2O7amCaLQdnGyNio4LiVYr6drxGddY84M8NGfwPxtX
	koWy21Zrd9fIDvMG+Zjaoazuir8hjXCfV2m/KIxlI2obGVkywWVd6vNWMITswflzBgUMHNWRqakVe
	DlAAUMaz5s73a1uY7bN7rkYUZpZVNGHn9Ofh7UIgjnZJBb1cNisw3rcW/Ms5L1c/fuCFQEs6AcS0H
	R5zJNfW/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCI08-000706-5l; Mon, 23 Sep 2019 06:39:12 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCHyf-0006La-Ul
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 06:37:44 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8N6bbVK091275;
 Mon, 23 Sep 2019 01:37:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1569220657;
 bh=81vyAGK0pd1ZcMINNblxDjya56uP9C2U0M4h7mCK9Pk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=tuq5cZ1ybE8XMoUSxHZmXR9YGdLOPkbWMyPk2jfjXWvEMlphf9ILCa1Qg+rI/kZRK
 UrOpZWBRD6nSzWjnD5/Vy5g1axko2PEtBHcUILZv0UVRCtzECqC0XEnwK3vANV+MzN
 V43hhDXs5HTw89hDmVoZhSx1EvBNqVnarwysHRLQ=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8N6bb6w099029;
 Mon, 23 Sep 2019 01:37:37 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 23
 Sep 2019 01:37:37 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 23 Sep 2019 01:37:37 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8N6bY98102382;
 Mon, 23 Sep 2019 01:37:35 -0500
Subject: Re: [PATCH] soc: ti: ti_sci_pm_domains: Store device id in platform
 device
To: Lokesh Vutla <lokeshvutla@ti.com>, Nishanth Menon <nm@ti.com>, Santosh
 Shilimkar <ssantosh@kernel.org>
References: <20190923033439.20070-1-lokeshvutla@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <ff2919a1-1330-31e2-7c96-ecfb0c727f7d@ti.com>
Date: Mon, 23 Sep 2019 09:37:34 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190923033439.20070-1-lokeshvutla@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_233742_308714_FF7BC36F 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [198.47.19.142 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sekhar Nori <nsekhar@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23/09/2019 06:34, Lokesh Vutla wrote:
> Device ID that is passed from power-domains is used by peripheral
> drivers for communicating with sysfw. Instead of individual drivers
> traversing power-domains entry in DT node, store the device ID in
> platform_device so that drivers can directly access it.

Uhm, isn't this kind of wrong place to allocate the ID? The power domain 
solution itself is a client also. In theory, someone could access the 
pdev->id before this. pdev->id should be assigned by bus driver so that 
it can be properly handled within platform_device_add.

-Tero

> 
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> ---
>   drivers/soc/ti/ti_sci_pm_domains.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/soc/ti/ti_sci_pm_domains.c b/drivers/soc/ti/ti_sci_pm_domains.c
> index 8c2a2f23982c..a124ac409124 100644
> --- a/drivers/soc/ti/ti_sci_pm_domains.c
> +++ b/drivers/soc/ti/ti_sci_pm_domains.c
> @@ -116,6 +116,7 @@ static int ti_sci_pd_attach_dev(struct generic_pm_domain *domain,
>   	struct of_phandle_args pd_args;
>   	struct ti_sci_pm_domain *ti_sci_genpd = genpd_to_ti_sci_pd(domain);
>   	const struct ti_sci_handle *ti_sci = ti_sci_genpd->ti_sci;
> +	struct platform_device *pdev = to_platform_device(dev);
>   	struct ti_sci_genpd_dev_data *sci_dev_data;
>   	struct generic_pm_domain_data *genpd_data;
>   	int idx, ret = 0;
> @@ -129,6 +130,7 @@ static int ti_sci_pd_attach_dev(struct generic_pm_domain *domain,
>   		return -EINVAL;
>   
>   	idx = pd_args.args[0];
> +	pdev->id = idx;
>   
>   	/*
>   	 * Check the validity of the requested idx, if the index is not valid
> 

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
