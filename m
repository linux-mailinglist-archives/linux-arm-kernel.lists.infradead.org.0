Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D175112A59
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 12:39:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=26htD1f923K/6iLrIYLgAbT7bAkjR8IgfI5iXrXLuvM=; b=ElxlUJRgK6zNoU
	E9przT/koUYbxQNDeTqKapDuwNORHin7wtiM4bTaQJdHijiAwkARre8Li+of5/LSDVPFaLCZ5iLgs
	nfKrv06vDtMocPBA8rAps0cmjGFTli52qMjWeH7oWJytAPvNKTbWKcr/a3tN4xJ8foUuBfslD1hQ6
	UYPrOj5uiy7tthSi2FaicHfKe539hL1PEXMuwMrxHuIlVeylTz9edgso0s7jcjCXXriPzj25y2pka
	vG2K3qJAIFH77sOU96dPyaghKX970zujKIvVqxvPwCYVfIcko9woQbpeLaQ95fnje8iD0JwP754ln
	U+gOGXIqVQrKJ/f2xl3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icSzj-0000Iu-Pt; Wed, 04 Dec 2019 11:38:59 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icSzb-0000I8-A8
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 11:38:53 +0000
Received: from sntmail14r.snt-is.com (unknown [10.203.32.184])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge03.snt-world.com (Postfix) with ESMTPS id A91FB67B181;
 Wed,  4 Dec 2019 12:38:46 +0100 (CET)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail14r.snt-is.com
 (10.203.32.184) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Wed, 4 Dec 2019
 12:38:46 +0100
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Wed, 4 Dec 2019 12:38:46 +0100
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Adam Ford <aford173@gmail.com>, "linux-crypto@vger.kernel.org"
 <linux-crypto@vger.kernel.org>
Subject: Re: [PATCH 1/2] crypto: caam: Change the i.MX8MQ check support all
 i.MX8M variants
Thread-Topic: [PATCH 1/2] crypto: caam: Change the i.MX8MQ check support all
 i.MX8M variants
Thread-Index: AQHVp9kQe4CI+Rf8yUmun0IOEuspVqepzk4A
Date: Wed, 4 Dec 2019 11:38:46 +0000
Message-ID: <e8e429dd-4508-9835-fd01-825d2de8871e@kontron.de>
References: <20191130225153.30111-1-aford173@gmail.com>
In-Reply-To: <20191130225153.30111-1-aford173@gmail.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <E8132CB5151D4E48A2A1202728C1E995@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: A91FB67B181.A1F6F
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: aford173@gmail.com, aymen.sghaier@nxp.com,
 davem@davemloft.net, devicetree@vger.kernel.org, festevam@gmail.com,
 herbert@gondor.apana.org.au, horia.geanta@nxp.com,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, mark.rutland@arm.com,
 robh+dt@kernel.org, s.hauer@pengutronix.de, shawnguo@kernel.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_033851_681736_13584FA7 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 =?utf-8?B?SG9yaWEgR2VhbnTEgw==?= <horia.geanta@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel
 Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, "David S.
 Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Adam,

On 30.11.19 23:51, Adam Ford wrote:
> The i.MX8M Mini uses the same crypto engine as the i.MX8MQ, but
> the driver is restricting the check to just the i.MX8MQ.
> 
> This patch lets the driver support all i.MX8M Variants if enabled.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>

What about the following lines in run_descriptor_deco0()? Does this 
condition also apply to i.MX8MM?

drivers/crypto/caam/ctrl.c:

	if (ctrlpriv->virt_en == 1 ||
	    /*
	     * Apparently on i.MX8MQ it doesn't matter if virt_en == 1
	     * and the following steps should be performed regardless
	     */
	    of_machine_is_compatible("fsl,imx8mq")) {
		clrsetbits_32(&ctrl->deco_rsr, 0, DECORSR_JR0);

		while (!(rd_reg32(&ctrl->deco_rsr) & DECORSR_VALID) &&
		       --timeout)
			cpu_relax();

		timeout = 100000;
	}

Regards,
Frieder

> 
> diff --git a/drivers/crypto/caam/ctrl.c b/drivers/crypto/caam/ctrl.c
> index db22777d59b4..1ce03f8961b6 100644
> --- a/drivers/crypto/caam/ctrl.c
> +++ b/drivers/crypto/caam/ctrl.c
> @@ -527,7 +527,7 @@ static const struct soc_device_attribute caam_imx_soc_table[] = {
>   	{ .soc_id = "i.MX6UL", .data = &caam_imx6ul_data },
>   	{ .soc_id = "i.MX6*",  .data = &caam_imx6_data },
>   	{ .soc_id = "i.MX7*",  .data = &caam_imx7_data },
> -	{ .soc_id = "i.MX8MQ", .data = &caam_imx7_data },
> +	{ .soc_id = "i.MX8M*", .data = &caam_imx7_data },
>   	{ .family = "Freescale i.MX" },
>   	{ /* sentinel */ }
>   };
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
