Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F167139A71
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 21:00:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=v5GsGee01nwsMneMW82urW20HiDNc66dr/hs188V4mA=; b=S59OqRFa1epWMY
	HduBKRXLgn3NWldxzbkAncvDQryMQA14QybfP4v7p21NhEgKcyLUTOVRy6FKo2XLKha02VDMp7Rkw
	Q5TjSbz+6bTfzbBKJoE2U7usGXRuGTjB7RUUZAeOYrXQoQ/p978jTD+h735nTGuUlTEYIyt7sgsV3
	qMm47tsqZNLfTsc6XOxlG+O81o4pHVytKRMTDZNpQ0j1TZ4YnO63cEnk4hyN4dgJ5NHPr5Xx+N3Q3
	X+ilxNsQxzNUIXxXNC8hV+L8/Mdg0o04UcFVkwqU7rKqJawQ7k0ZndO/h/+vsgLj9jN+TusdHmEox
	g+dd0fT3VIMB9oBPnr7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir5tC-0008Hw-FC; Mon, 13 Jan 2020 20:00:42 +0000
Received: from mail-eopbgr80045.outbound.protection.outlook.com ([40.107.8.45]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir5sk-0007zA-Sl
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 20:00:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c6i0tZiuP6vx+yrtZNqvzmow4YxPAwonGmk+R2asdVEiAbdnou2IiCN4bU0l5siAZ8kBIommpQgEXa+AAJULj8/tldaLoQrr9DXVr9KCYCY0PEHqCGbVAOyuIRQkhvxif1KtmYmpcsTTLkIg9E3O+2vSq4aah+Ews841drP9HTCVefUwHBVXw8iLOcCtC9FXvoJ7gituxomyp85fUyacrxcInQSutUd9r3FAuVv45xjfI5tI5X4/Z2HC6gH/mcJZgGGsxX7z8mMeAf1hNs50BxpTFZ3vUkKQ/xWTtLRzXmVq2UcQbTODmchfMMlYEMiZsIMo4M71oL8FnKNzxsi12w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ssdFqmg4SDBHgOOjt5/+gOcmGQrJOedWSUiNP5nGpcY=;
 b=S5JlkE2IZc9M3z5wGO/IM0rbHTmv4iwtLc/E0WoXo8fEnXg/J6O+2AvGCGMF+v5LH7tScgJfHZYM43LgZBxToBFQse2hnjcDV8caRZJwAu4qcPLt28HUaYKF1HjyXXQoB66eFp/LwKqnoofTzQLJCn83uPtTTJEcGWXmnG/w/NFqC8MxdX1t+Y+PYrZEcUOhcG20e9LyUs+z2T+ixN7iyKYlYDHkOMgvvJ47HjRw1mmeNshin7SZ0S2P1fz5I4G7DzSaR1x1bz2u4+goAUb+Fc5qJu5lOBU9QiVOsMR3M/NUcPIRMBBkH8DJSupz7eTzdAxFKrBBUyoiA9mZfYZaqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ssdFqmg4SDBHgOOjt5/+gOcmGQrJOedWSUiNP5nGpcY=;
 b=j0ixoaqdcqWdiN0GDpWGNGqHk8ekkNl34OjnnobHQZIeWe8Ra+iZHzw+yHkxCY6m00LACEqZMgM/motyDv8Qlrlys3iP1NNI8SdZd5lhIyDLOBZ2ow3XCYLF0GEUWIN1KBGUoTuoo0vfsDhgpSCatcvIyUA/N7qNel7g9rRFIH8=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4430.eurprd04.prod.outlook.com (20.177.53.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Mon, 13 Jan 2020 20:00:08 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953%7]) with mapi id 15.20.2623.015; Mon, 13 Jan 2020
 20:00:08 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Joakim Zhang <qiangqing.zhang@nxp.com>, Frank Li <frank.li@nxp.com>, Will
 Deacon <will@kernel.org>
Subject: Re: [PATCH] perf/imx_ddr: Fix leaking cpuhp_state
Thread-Topic: [PATCH] perf/imx_ddr: Fix leaking cpuhp_state
Thread-Index: AQHVtfm6st46ByBunk2ileZaCpNmwA==
Date: Mon, 13 Jan 2020 20:00:08 +0000
Message-ID: <VI1PR04MB70235D44E2534E2714BBC171EE350@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <3cff630697d76d24d4ab93dfcddc978d84b8f2d8.1576711200.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9e0a0beb-568d-4f12-7b96-08d7986330f5
x-ms-traffictypediagnostic: VI1PR04MB4430:|VI1PR04MB4430:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB4430DD726A747C57CF6091D0EE350@VI1PR04MB4430.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 028166BF91
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(346002)(136003)(366004)(39860400002)(189003)(199004)(478600001)(71200400001)(33656002)(66946007)(66446008)(91956017)(64756008)(76116006)(66476007)(316002)(86362001)(66556008)(4326008)(54906003)(110136005)(44832011)(9686003)(6506007)(81156014)(8676002)(8936002)(53546011)(186003)(81166006)(52536014)(5660300002)(26005)(55016002)(2906002)(7696005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4430;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2Nitg7KBxiisulIvJ6brcwoqLeH5D1r0DB/PfCoA8u5kzU/I75CqAj/oliTCRGgtD+DceS8ni+IaVY3H+rRXv24AWaOav0DjmbuKxIMjpsGPz75FfwSNj/2lrfDaCx/v5fiaZeUiM8HMPKWFIMl/SylbMxkcy1eXM0O2gHYtqIVlxt6j8L2AYB+Fgb0u5Uw1Pnrpg3OH2LbdxrimBq3JO3pp0/IJcs9mbSfZf+Xbu5tGEeh56KzK5k7+Pomq7UmxrJnA5YVXOZYcwEQp7lAHoYVP6jzwvO9fwryBDpbE+3lya9f2HH3JHpJRBcvt3/AebOaqJVhUCkjui+WiEHyOcqOzu4di2v6TM0n1HhWE4osKL3J4qHUx7nraFfqLe8o/tOQtc0hJT+5XgqoiMdS2KiIx/EuCdQ2pxjBDN97S5Rgz7g79+Jw5yC47aSBduyOV
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e0a0beb-568d-4f12-7b96-08d7986330f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2020 20:00:08.5339 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sM71i1HCXCo2GgUHD47EHUtwaUbgZTOtAPQ6fUZfcb4vy9w/TjMfvoFxi05rtzc2mcgP92ByMOIOkb2fY63QpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4430
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_120015_128847_A96780D6 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19.12.2019 01:20, Leonard Crestez wrote:
> This driver allocates a dynamic cpu hotplug state but never releases it.
> If reloaded in a loop it will quickly trigger a WARN message:
> 
> 	"No more dynamic states available for CPU hotplug"
> 
> Fix by calling cpuhp_remove_multi_state like several other perf pmu
> drivers.
> 
> Fixes: 8f4c58ae59f5 ("perf/imx_ddr: Fix leaking cpuhp_state")
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com> > ---
>   drivers/perf/fsl_imx8_ddr_perf.c | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
> index 3be61be1ba91..aa30ca5f6b29 100644
> --- a/drivers/perf/fsl_imx8_ddr_perf.c
> +++ b/drivers/perf/fsl_imx8_ddr_perf.c
> @@ -672,12 +672,14 @@ static int ddr_perf_probe(struct platform_device *pdev)
>   		goto ddr_perf_err;
>   
>   	return 0;
>   
>   ddr_perf_err:
> -	if (pmu->cpuhp_state)
> +	if (pmu->cpuhp_state) {
>   		cpuhp_state_remove_instance_nocalls(pmu->cpuhp_state, &pmu->node);
> +		cpuhp_remove_multi_state(pmu->cpuhp_state);
> +	}
>   
>   	ida_simple_remove(&ddr_ida, pmu->id);
>   	dev_warn(&pdev->dev, "i.MX8 DDR Perf PMU failed (%d), disabled\n", ret);
>   	return ret;
>   }
> @@ -685,10 +687,11 @@ static int ddr_perf_probe(struct platform_device *pdev)
>   static int ddr_perf_remove(struct platform_device *pdev)
>   {
>   	struct ddr_pmu *pmu = platform_get_drvdata(pdev);
>   
>   	cpuhp_state_remove_instance_nocalls(pmu->cpuhp_state, &pmu->node);
> +	cpuhp_remove_multi_state(pmu->cpuhp_state);
>   	irq_set_affinity_hint(pmu->irq, NULL);
>   
>   	perf_pmu_unregister(&pmu->pmu);
>   
>   	ida_simple_remove(&ddr_ida, pmu->id);
> 

Gentle ping?

I believe this got lost over the holidays.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
