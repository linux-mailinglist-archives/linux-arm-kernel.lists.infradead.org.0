Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC36152426
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 09:15:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h1JCYRxoYJ72tVxfgDqAFAZw6KAi/vptHd6X+sV5OaQ=; b=ITlNKpdJqZ0BCg
	P3WBNGbaH+dW6uO/4aZN3AzuQfdEpr5PDecAmRn8wCo8eHb2cY1A4vMxpgmhVAdlQ+VsTucFuZzZC
	+CAIXH6oxoM/jrM7Bq4iKoQ9K5RrMAHvuNe0GJU+tPG9+4mZz/+Oi2WQEnchkdoNxxEiS49dtX8PO
	6rWXzKKLoE6aCNCWZbPJ9zC5k1cRKfYgu4SEAg+MgqjT5CX0wMznip3hg4Bb95x+L6Gt8IDQhzqeu
	RShBYYgYsUQ38w3YNHuhjpKJcTPlF1BpuuDMFWwH1FERXswiIOysY9yMsW07z6b09bNDkuCoD0zqj
	N7Cdg10Dj3UcRPb/27Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfffe-0005jA-UM; Tue, 25 Jun 2019 07:15:15 +0000
Received: from mail-eopbgr20060.outbound.protection.outlook.com ([40.107.2.60]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfffI-0005iM-F2
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 07:14:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IvcdrOKLhfCNdiesmDGwl/0cfO07l6aYiZCjZmwcJlM=;
 b=GR+U3WMpVFSAXa58gxN1FClc7F+HzVUotXQyFgGlWcSS23Uqv3aRN5pHvN0RxQk+avplYiQ5M8xpVFsmSLwPWGRFOop2XtbxpnXgZmIKpJkWTfcg+rY504B0+IA9vMLClit7yk+7nBm/qpCG4nkWaGSerfE96czld3ZR2fkhaqI=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.235.81) by
 VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.235.81) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Tue, 25 Jun 2019 07:14:48 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::a4a8:729f:e664:fa8]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::a4a8:729f:e664:fa8%2]) with mapi id 15.20.2008.014; Tue, 25 Jun 2019
 07:14:48 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Sven Van Asbroeck <thesven73@gmail.com>
Subject: RE: [PATCH] dmaengine: imx-sdma: fix use-after-free on probe error
 path
Thread-Topic: [PATCH] dmaengine: imx-sdma: fix use-after-free on probe error
 path
Thread-Index: AQHVKpYvC7hrWecAmkuNut7zTa078Kar9GvA
Date: Tue, 25 Jun 2019 07:14:48 +0000
Message-ID: <VE1PR04MB66381156C0EC77F6308D637889E30@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <20190624140731.24080-1-TheSven73@gmail.com>
In-Reply-To: <20190624140731.24080-1-TheSven73@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c6dd3faa-b7ef-4462-e210-08d6f93ccf14
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6638; 
x-ms-traffictypediagnostic: VE1PR04MB6638:
x-microsoft-antispam-prvs: <VE1PR04MB66382C4AF81C04FC64D2071589E30@VE1PR04MB6638.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0079056367
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(39860400002)(366004)(346002)(376002)(13464003)(189003)(199004)(99286004)(7736002)(305945005)(14454004)(7696005)(229853002)(6436002)(9686003)(8936002)(86362001)(26005)(316002)(3846002)(6916009)(6116002)(1411001)(8676002)(68736007)(54906003)(71190400001)(53936002)(7416002)(6246003)(71200400001)(52536014)(4326008)(25786009)(33656002)(76116006)(73956011)(55016002)(81156014)(66476007)(81166006)(66556008)(66446008)(64756008)(66946007)(486006)(476003)(11346002)(2906002)(66066001)(5660300002)(446003)(186003)(102836004)(478600001)(14444005)(256004)(76176011)(74316002)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6638;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: escAc2sAvC5UnL/6Du9+gDblS5g+hBhbo/7nk0sTvqfxvDHrmKKYinjAJCx6iuO0aIvVD8c0YF88bNwPPpU/fNZBPV448E758F0tf9dzh0dwu97qeRKq908W92Ynufg6LEFgraZyIDl0NecPE4r2d469m8aDtI0Sr8ynQszJyc5LgdYpOGFSg/simFUwiEpgBBoSw77buteaanJyQlffhb1sQTYlGS119fNAp7a2u4/Yj9rgCBFYkdr+qSgBX5fCR1pjpowv09ztHq8QwDdKyYag5LHI2sks1BxHTnPtTCu/F9Ahr1S4bQka0vTln5ds/8aevfjRU++klWJAgm1qyUriz7xPd/kGqkNxesbs3Vi0IL/sGTNcoAKa9/e85zJTiAbx9wWkgh37K3mcrqbH7dJPBvWeQYePwTblYUEC48A=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6dd3faa-b7ef-4462-e210-08d6f93ccf14
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2019 07:14:48.6710 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yibin.gong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6638
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_001452_559994_A1017808 
X-CRM114-Status: GOOD (  22.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.60 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 Dan Williams <dan.j.williams@intel.com>, Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Reviewed-by: Robin Gong <yibin.gong@nxp.com>
> -----Original Message-----
> From: Sven Van Asbroeck <thesven73@gmail.com>
> Subject: [PATCH] dmaengine: imx-sdma: fix use-after-free on probe error path
> 
> If probe() fails anywhere beyond the point where
> sdma_get_firmware() is called, then a kernel oops may occur.
> 
> Problematic sequence of events:
> 1. probe() calls sdma_get_firmware(), which schedules the
>    firmware callback to run when firmware becomes available,
>    using the sdma instance structure as the context 2. probe() encounters an
> error, which deallocates the
>    sdma instance structure
> 3. firmware becomes available, firmware callback is
>    called with deallocated sdma instance structure 4. use after free - kernel
> oops !
> 
> Solution: only attempt to load firmware when we're certain that probe() will
> succeed. This guarantees that the firmware callback's context will remain valid.
> 
> Note that the remove() path is unaffected by this issue: the firmware loader will
> increment the driver module's use count, ensuring that the module cannot be
> unloaded while the firmware callback is pending or running.
> 
> To: Robin Gong <yibin.gong@nxp.com>
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: Dan Williams <dan.j.williams@intel.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: dmaengine@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Sven Van Asbroeck <TheSven73@gmail.com>
> ---
>  drivers/dma/imx-sdma.c | 48 ++++++++++++++++++++++++------------------
>  1 file changed, 27 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c index
> 99d9f431ae2c..3f0f41d16e1c 100644
> --- a/drivers/dma/imx-sdma.c
> +++ b/drivers/dma/imx-sdma.c
> @@ -2096,27 +2096,6 @@ static int sdma_probe(struct platform_device
> *pdev)
>  	if (pdata && pdata->script_addrs)
>  		sdma_add_scripts(sdma, pdata->script_addrs);
> 
> -	if (pdata) {
> -		ret = sdma_get_firmware(sdma, pdata->fw_name);
> -		if (ret)
> -			dev_warn(&pdev->dev, "failed to get firmware from platform
> data\n");
> -	} else {
> -		/*
> -		 * Because that device tree does not encode ROM script address,
> -		 * the RAM script in firmware is mandatory for device tree
> -		 * probe, otherwise it fails.
> -		 */
> -		ret = of_property_read_string(np, "fsl,sdma-ram-script-name",
> -					      &fw_name);
> -		if (ret)
> -			dev_warn(&pdev->dev, "failed to get firmware name\n");
> -		else {
> -			ret = sdma_get_firmware(sdma, fw_name);
> -			if (ret)
> -				dev_warn(&pdev->dev, "failed to get firmware from device
> tree\n");
> -		}
> -	}
> -
>  	sdma->dma_device.dev = &pdev->dev;
> 
>  	sdma->dma_device.device_alloc_chan_resources =
> sdma_alloc_chan_resources; @@ -2161,6 +2140,33 @@ static int
> sdma_probe(struct platform_device *pdev)
>  		of_node_put(spba_bus);
>  	}
> 
> +	/*
> +	 * Kick off firmware loading as the very last step:
> +	 * attempt to load firmware only if we're not on the error path, because
> +	 * the firmware callback requires a fully functional and allocated sdma
> +	 * instance.
> +	 */
> +	if (pdata) {
> +		ret = sdma_get_firmware(sdma, pdata->fw_name);
> +		if (ret)
> +			dev_warn(&pdev->dev, "failed to get firmware from platform
> data\n");
> +	} else {
> +		/*
> +		 * Because that device tree does not encode ROM script address,
> +		 * the RAM script in firmware is mandatory for device tree
> +		 * probe, otherwise it fails.
> +		 */
> +		ret = of_property_read_string(np, "fsl,sdma-ram-script-name",
> +					      &fw_name);
> +		if (ret)
> +			dev_warn(&pdev->dev, "failed to get firmware name\n");
> +		else {
> +			ret = sdma_get_firmware(sdma, fw_name);
> +			if (ret)
> +				dev_warn(&pdev->dev, "failed to get firmware from device
> tree\n");
> +		}
> +	}
> +
>  	return 0;
> 
>  err_register:
> --
> 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
