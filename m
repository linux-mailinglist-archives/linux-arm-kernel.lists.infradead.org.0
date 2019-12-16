Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AACB0120965
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 16:15:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=x+IV6BLCub3ZkvxrGB74vCkVxvFCWbSwmKjfib0lFZg=; b=OkNIIHgv+xZiTF
	1q4mDAINJkZO6DOSjxmoCskRKnAQo6+VL+srTV0I3xLJhrvmHWN9ig1+OxGtsKTy4fhYvEvoSdF/4
	Ti6JuUnnSYiDI7tjIJo9iFchC5JifYFYoNpx3sY1AxRKjA2h16RBY2ct9dstY67FN4D5njgDlFTc5
	nXLJ25qiXYumtiAczmAXpSJwbHaU8jcd6xNVK9zGJ27XfxUEPqoyhKzRiOKyq6RfDnnLyY9qD4g0B
	0TuOydPKXDDd9N7rqQazJ+fwYGXgbs6E4c7d2O/6ja36iy6/OcOH4++cGSQj+qlWD96F7el6BBsmU
	MB0c//tkda6zWcRl1Ljw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igs5v-0003MX-9X; Mon, 16 Dec 2019 15:15:35 +0000
Received: from mail-eopbgr10041.outbound.protection.outlook.com ([40.107.1.41]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igs5l-0003Lg-V4
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 15:15:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ivb153RFAgzIYrqZBO1s+zGgvrJIjwaLt0L64QJfi7IC9yv9Uban4N5rSqrgr6AJHaGehAJcqM4CO/4IQPmowpZLSp/dXfXIv6aq7m2hW3SKeS/1aSMgGwejfQiGiEDX+U2rUHDJ9LnWH8yt/Yqew5DKPVhRDqnL1cMeiM4bAJQqKEW+PuXP381o3+8/T5MwafHF6fVyvEB3ffrPl93ySD+YwgY5QmDxQJ1EMZic5dQItUGTHGZPEuY9yaGBAn+53Z1qXz0IyfYu/twigJTKHpYWFrxe4tQ3lOPf2AktIZ0vbq9X7kxfRKiE4/+5QfzvRxt7lnJ8c+rsyVAf4Aijvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C6MbaWIFwA+Otf0jXkJMmU3vBcJKD8H03ALxUVCXqu4=;
 b=Xe3+aO3vgoYWiV3rGusVV3ISD9hP9fVzSEKT651Wp0h0GmUGOTN7yHLcghnwnQix9pj4FKdrziMC9ovGFWFBUK/ke2hOv9GcWw+8T3SCuWizZAyJn2xnyvSXKty9UQ1OGZP2PrbBZUdS1TFvsrXxaDy3CDc6ClV9SRsrxLOsEQAgnTk5k4kNCIQV4PYROiJYYpLHipD0+S4irMtwxE4ONiim8oIXopd8FXLjUnYtgP3IM6CQXpywvtYE4vvy3JCdvMOWttmwowaC19R8q/Z6VuoMNplQoMHeNe5VjtCENE8khxg8xOdecApZ1IbG640PF0sUhV5i+pO0Vs4n9p+EFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C6MbaWIFwA+Otf0jXkJMmU3vBcJKD8H03ALxUVCXqu4=;
 b=qjZW5/0szZdjoUejXFJFOizdL/vQTC2hX35/MUKrRdqq0f5goAF3WLThXOHI5Xa+EovUOyhM3sl8q/JP9pYncAoy6wLr7KFSI8ToIVmdgJF+fxNlct/tHSXZftAH31nJ395xjKjg6Dn1Wx1unf3+RdES8p0y7FAFwRmA1+8CyTw=
Received: from VI1PR04MB4445.eurprd04.prod.outlook.com (20.177.55.161) by
 VI1PR04MB6317.eurprd04.prod.outlook.com (20.179.28.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.18; Mon, 16 Dec 2019 15:15:19 +0000
Received: from VI1PR04MB4445.eurprd04.prod.outlook.com
 ([fe80::304d:b7d8:1233:2ae0]) by VI1PR04MB4445.eurprd04.prod.outlook.com
 ([fe80::304d:b7d8:1233:2ae0%6]) with mapi id 15.20.2538.019; Mon, 16 Dec 2019
 15:15:19 +0000
From: Iuliana Prodan <iuliana.prodan@nxp.com>
To: Adam Ford <aford173@gmail.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH V2 1/3] crypto: caam: Add support for i.MX8M Mini
Thread-Topic: [PATCH V2 1/3] crypto: caam: Add support for i.MX8M Mini
Thread-Index: AQHVsct+SXIDv4fpXk+kA2HSOm06vg==
Date: Mon, 16 Dec 2019 15:15:19 +0000
Message-ID: <VI1PR04MB444575F41B9C8A5E58E666258C510@VI1PR04MB4445.eurprd04.prod.outlook.com>
References: <20191213153910.11235-1-aford173@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=iuliana.prodan@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ad63df01-e72a-4b80-62fc-08d7823ac35d
x-ms-traffictypediagnostic: VI1PR04MB6317:|VI1PR04MB6317:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB6317F787EF456ACBF78BBCC68C510@VI1PR04MB6317.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 02530BD3AA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(376002)(396003)(39860400002)(136003)(189003)(199004)(8936002)(2906002)(478600001)(9686003)(55016002)(26005)(81166006)(316002)(4326008)(33656002)(7416002)(71200400001)(110136005)(54906003)(81156014)(86362001)(186003)(66446008)(64756008)(66556008)(66476007)(66946007)(76116006)(91956017)(44832011)(6506007)(52536014)(53546011)(5660300002)(7696005)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6317;
 H:VI1PR04MB4445.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nOT6DQAZgT62Yfc1cJUbVVtRfP7Rtl3OOYQ1/Z6t7Pgrd86snXlMSBZtVku53Nqcqq41xba6PKfIe5wp5/eJZlIQIj65AKVi93H9joMUm5MpQVICljY4RCUgXwtodTYY5sTGig5OTEx1Q1QwngsKplUxsrFEbLxv5aw/vtE10Xu8XshwUcTRCTJdKyhqNvHES7Ci8ew5Br3qdtGqiCiO25JHo2Pdo9nZyX2Gmr1MjnFkxjUEvgVfRErCSLD7B3y5RkaXLShKSTWD/MtDldyAqtAucbNqp5+Mi4vRtfIRuGicpO4qZETC2iUTVQO1z+LzOgmu5miJ6JJYA4pP2jmaFcGPansorjASz1eZtcZaQmTvgnP9MoyDI8bjv0RHIWtOYndTlDIpK21UkBxDbyKjAybmUg1RXrBu0JOgg8kEq2h8mbt59N2b/Tl+p1GaOW8d
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad63df01-e72a-4b80-62fc-08d7823ac35d
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2019 15:15:19.0127 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LlMhYztTcZyFtr3qlKG6f5spHYh5CW1OBDfRKpUT69x6NI7ocIyFqfIcPlK4ujpuX3EszcDY4GDo5CCSXcrvfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6317
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_071526_003935_C5F64875 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.41 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.1.41 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Herbert Xu <herbert@gondor.apana.org.au>, Horia Geanta <horia.geanta@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Will Deacon <will@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/13/2019 5:39 PM, Adam Ford wrote:
> The i.MX8M Mini uses the same crypto engine as the i.MX8MQ, but
> the driver is restricting the check to just the i.MX8MQ.
> 
> This patch expands the check for either i.MX8MQ or i.MX8MM.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> 

For the series:

Tested-by: Iuliana Prodan <iuliana.prodan@nxp.com>
Reviewed-by: Iuliana Prodan <iuliana.prodan@nxp.com>

> ---
> V2:  Expand the check that forces the setting on imx8mq to also be true for imx8mm
>       Explictly state imx8mm compatiblity instead of making it generic to all imx8m*
>        this is mostly due to lack of other hardware to test
> 
> diff --git a/drivers/crypto/caam/ctrl.c b/drivers/crypto/caam/ctrl.c
> index d7c3c3805693..c01dda692ecc 100644
> --- a/drivers/crypto/caam/ctrl.c
> +++ b/drivers/crypto/caam/ctrl.c
> @@ -102,7 +102,8 @@ static inline int run_descriptor_deco0(struct device *ctrldev, u32 *desc,
>   	     * Apparently on i.MX8MQ it doesn't matter if virt_en == 1
>   	     * and the following steps should be performed regardless
>   	     */
> -	    of_machine_is_compatible("fsl,imx8mq")) {
> +	    of_machine_is_compatible("fsl,imx8mq") ||
> +	    of_machine_is_compatible("fsl,imx8mm")) {
>   		clrsetbits_32(&ctrl->deco_rsr, 0, DECORSR_JR0);
>   
>   		while (!(rd_reg32(&ctrl->deco_rsr) & DECORSR_VALID) &&
> @@ -509,6 +510,7 @@ static const struct soc_device_attribute caam_imx_soc_table[] = {
>   	{ .soc_id = "i.MX6*",  .data = &caam_imx6_data },
>   	{ .soc_id = "i.MX7*",  .data = &caam_imx7_data },
>   	{ .soc_id = "i.MX8MQ", .data = &caam_imx7_data },
> +	{ .soc_id = "i.MX8MM", .data = &caam_imx7_data },
>   	{ .family = "Freescale i.MX" },
>   	{ /* sentinel */ }
>   };
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
