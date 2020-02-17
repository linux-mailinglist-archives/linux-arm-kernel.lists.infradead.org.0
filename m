Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3C21615EB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 16:15:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y6o0Fi+4+N34pKYDl1rPpw4O5jmUC2QO9tpIJD5UQzs=; b=J2b95hyoPaJ+R2SpegNDMa3NA
	+bBzGY3gq3ZCjWWKcyYLVVArbLqCqNcXmTikTuCZHGE3GKSENKU2nz52BUnc3/jt8rD4v8BUs1JaQ
	YsMj6nzI+4vidc1x+ofr/iPfn7V/LvYxzib2ZwXBP4MgyqF0cpwm5yOk8Hqj6NTqYuAVVPXsoVmqb
	F5WLkOTn9mrjyXqrJlGNe99b3w5gUOQRVkDCZs8fcB9RSq+ImZtMIiodZZQL9nweEUhGD1SzqLASY
	Di89yLosBpoEojjD6N0eJ66b6+Up8YJZpLAqm1FRtNvV0y7dftt96waIVV2eWI5KXP5pEf/3p7e5C
	fC7yzPyqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3i7h-0006ba-GU; Mon, 17 Feb 2020 15:15:49 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3i7Z-0006YP-Qg
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 15:15:43 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01HFFTk5125091;
 Mon, 17 Feb 2020 09:15:29 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1581952529;
 bh=sesL32PDsZi01y0X5NncQMWx/LULUnsHSmLX5Wya1Xc=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=gCgf3hT+IcPMAv4XKF0sDStZbR0mz80E4QENsSIj7d/a/S0T9abzOcR9XKl/l4VRP
 2SmDJfX6EVy8ENek08jsvgB0YRJuZdn2JrQ2R1I74ByocsVYcggHmzoqhPB3jhe/ry
 f8Pk6FCS1OW8+2L6kaPAZzzqZsr6mp6T8TUrhg6o=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01HFFTfv119247
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 17 Feb 2020 09:15:29 -0600
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 17
 Feb 2020 09:15:28 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 17 Feb 2020 09:15:28 -0600
Received: from [10.250.65.13] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01HFFSIB067034;
 Mon, 17 Feb 2020 09:15:28 -0600
Subject: Re: [PATCH v2 2/3] can: m_can: m_can_platform: Add support for
 enabling transceiver
To: Faiz Abbas <faiz_abbas@ti.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <netdev@vger.kernel.org>, <linux-can@vger.kernel.org>
References: <20200217142836.23702-1-faiz_abbas@ti.com>
 <20200217142836.23702-3-faiz_abbas@ti.com>
From: Dan Murphy <dmurphy@ti.com>
Message-ID: <250f905a-33c3-dd17-15c9-e282299dd742@ti.com>
Date: Mon, 17 Feb 2020 09:10:47 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200217142836.23702-3-faiz_abbas@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_071541_946390_32298B47 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, sriram.dash@samsung.com,
 lgirdwood@gmail.com, robh+dt@kernel.org, broonie@kernel.org,
 mkl@pengutronix.de, wg@grandegger.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Faiz

On 2/17/20 8:28 AM, Faiz Abbas wrote:
> CAN transceivers on some boards have a standby line which can be
> toggled to enable/disable the transceiver. Model this as an optional
> fixed xceiver regulator.
>
> Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
> Acked-by: Sriram Dash <sriram.dash@samsung.com>
> ---
>   drivers/net/can/m_can/m_can_platform.c | 6 ++++++
>   1 file changed, 6 insertions(+)
>
> diff --git a/drivers/net/can/m_can/m_can_platform.c b/drivers/net/can/m_can/m_can_platform.c
> index 38ea5e600fb8..719468fab507 100644
> --- a/drivers/net/can/m_can/m_can_platform.c
> +++ b/drivers/net/can/m_can/m_can_platform.c
> @@ -6,6 +6,7 @@
>   // Copyright (C) 2018-19 Texas Instruments Incorporated - http://www.ti.com/
>   
>   #include <linux/platform_device.h>
> +#include <linux/regulator/consumer.h>
>   
>   #include "m_can.h"
>   
> @@ -57,6 +58,7 @@ static int m_can_plat_probe(struct platform_device *pdev)
>   {
>   	struct m_can_classdev *mcan_class;
>   	struct m_can_plat_priv *priv;
> +	struct regulator *reg_xceiver;
>   	struct resource *res;
>   	void __iomem *addr;
>   	void __iomem *mram_addr;
> @@ -111,6 +113,10 @@ static int m_can_plat_probe(struct platform_device *pdev)
>   
>   	m_can_init_ram(mcan_class);
>   
> +	reg_xceiver = devm_regulator_get_optional(&pdev->dev, "xceiver");
> +	if (PTR_ERR(reg_xceiver) == -EPROBE_DEFER)
> +		return -EPROBE_DEFER;
> +

Where is this regulator enabled?

Shouldn't the regulator be managed by runtime PM as well?

Dan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
