Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30ABA1D0B7A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 11:05:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JMgAvSmXfVr6SIUAmoVLGnmcpsVjwyZ+ko9ckvFwUvI=; b=MM5+xRyzwZ5R0a
	JOAOifTf42AtbAsISVUoSM6jXzUdd6ov2l+cvNf/jOYluX6tdrR9g+Wtm5yLg/eVbwFZd1md/T+2e
	NWzjFnTi6+JsJcKgR31WK2VhTi/42ogYqICmJefpLue44Ng4HpQRjz+3dephtr54RECFygCGxtD5K
	StZOpnoRPJ7KAU5HJUZp7lvuDkmGdIgDbbt3PPS/APPzV62dgLPjJQhkOn63litvNlgTxiN82bO07
	CyqcTa/nGNKqxY24XwoGFp4DhVa3slC1wXWNRhcXMMmmJ/McuX6nyKotqJz0hvw7MocVw2q1xfKGx
	9dw35/SaymedbE4095vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYnKl-0007bq-Vg; Wed, 13 May 2020 09:05:47 +0000
Received: from mail-eopbgr20046.outbound.protection.outlook.com ([40.107.2.46]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYnKc-0007aC-95
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 09:05:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NcBFV6WhewY/tbU3Is0Tnxu/jNoWLuNdR3wQw7dcrg0/v0nCln+AsxPA8Im7I7aWWh75pdRkahpfE7zXTaQpu30SFeE2HEcXBkQeOQK4Rhol0hhOdU9phlB17OZyiCpZb3Q5oGCGWZgjtYyoNtKz7zLHd1jWd737jdAjLhAw/1rsrs/cKqXpxAKeg3UPrG8WXtZypTdHq16AMPOUi5caRWW18qtN4hC6DVnJ3JAdC8w6/HQycmt84KJatIAdQyV/7tgtyppEfb90Wkc1pcEm/nUUzodgFJ6CDsshwkxCprK9KW0QpyME/HNsv5ZAVXkKVkH9+TLKlCR6uh5nnIl0AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DSMlPGs/O07F0OqGvYGDcXIQRqOJK2nkRDayIya42rw=;
 b=hIvCnzdM7iN7NTPad0dDXXHKvdhPNQUNhORymOPFIxh0dorzzeI46UqQqw7L1/rUP3gDm2je0Q5Ii6m6IloxttMl6f1NqNQ222mDtoKXUuyQZSJiIJK4jIZguIvJiYwqz80qaUXfTeB9VONWotK9kPL9NYmpsn8rSyq1/3nZqdA27mH0jBZxEoVuYKRyNINfqtc0mensHlIRxWySNd9JLPSAk7+S3a22WBmIiqk6+lnZ4Y+TuYt1vT76wbsFeWrVlDVDEc7G06Obj7PnhuYcuvZTNg33vqGtbBlvMfojiqwgCQtpRxEZSiuz2RFv9R6GSdOBwvCrThSDdH5MQjkbcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DSMlPGs/O07F0OqGvYGDcXIQRqOJK2nkRDayIya42rw=;
 b=EFJ3em0OndJKN+e1QuCaWFocclPL4MAPjtZkRYVMu7L9hE+kR4SkoAev9FFCBPIEwZmb3zwU4fuHbi8RsY2QxKpn6c0SDHn50t3Q/y23N4g0b3WDaAVNtImdB4iKYIDaMSA4lCjENbNmdKY8bmXTYAZ0IJIpX3e78gKOamHEKak=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6765.eurprd04.prod.outlook.com (2603:10a6:803:126::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.34; Wed, 13 May
 2020 09:05:33 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa%4]) with mapi id 15.20.3000.016; Wed, 13 May 2020
 09:05:33 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: RE: [PATCH v7 RESEND 07/13] spi: imx: fix ERR009165
Thread-Topic: [PATCH v7 RESEND 07/13] spi: imx: fix ERR009165
Thread-Index: AQHWJ3cnZ0DWmxBZKkqSbDLRijv4Zqilos2AgAASCaA=
Date: Wed, 13 May 2020 09:05:33 +0000
Message-ID: <VE1PR04MB6638DE9AB1E51213DACCCA0F89BF0@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <1589218356-17475-1-git-send-email-yibin.gong@nxp.com>
 <1589218356-17475-8-git-send-email-yibin.gong@nxp.com>
 <20200513073359.GM5877@pengutronix.de>
In-Reply-To: <20200513073359.GM5877@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c8d3405c-33ce-4a6a-56f6-08d7f71ccb35
x-ms-traffictypediagnostic: VE1PR04MB6765:|VE1PR04MB6765:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6765B5A59C96EAEC55D259DE89BF0@VE1PR04MB6765.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0402872DA1
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: khb+cMHEQCLWxbQ9giKB4nbXqtoM61CzbHjK1GRHQ74TBMDsQwqBuRRdemfr7CjAGQJzeiZMjnjfcmpTNM36RWj/JGZMUGt1aWTZApmWPZkjU7mUaQtgoKIzL9bup7v7iwrvtgovczs2hPhJMyNu/ndRnTeUKo/xZR2p+TR3lcaK4Xy2MWMnG9HQ74nZ09hj5nGePCbIyFJZG9OI85IqeEe4QpfwwxVsTzGJTM0YkHcFudHHlg3wH2u3mliEPvl1gcKqDUB8Rz2gMUxSoj9gBRfv7phpAu4vyY19nEJBta0jnOsEDvAV16kr8g1msSDrjcGA1pOOZ0r3L24r6iOSa0eTxFq7k/2AeNqrEcttD05CkYfmsWDKKj48iPz8+pMcSNji/AHt//VqoLaXmpfJULIUM+7tAX5WA+rnQIFbPQ/1A33hC+bodSzyxVtvgGjNhiHdXtnL9zuBzU7efQZ2o+nQveKxekpEyS/QCoROO9lUFULTloT+fGf8AQclmWGaiUep4uxa6BrLwdjdOz0Phw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(396003)(366004)(39860400002)(346002)(376002)(33430700001)(6916009)(33656002)(66446008)(55016002)(64756008)(86362001)(54906003)(8676002)(66556008)(76116006)(5660300002)(66946007)(66476007)(6506007)(316002)(478600001)(186003)(7416002)(52536014)(4326008)(8936002)(26005)(9686003)(2906002)(71200400001)(33440700001)(7696005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: rHbyuqL68E1ypyT1+2giYjmAVja/+KJSDDGTIusFxYXXFhtVc893rnIb4KT1oGjnhr8AKXOTigT9wyJr+oSP+mVyQWZAxeC30isQT6MWWvKePeUONUO0sNJ1tIIusLc7KHCBJKEircoHob9Hi0PZLldPSsBL93+kLiznCozKR6urWuQoiCdlFRN5qJVQwLS5J9FgSepguVUTnMpZk0D8/AzuGysOj4VWU74CG3kkjeTjC2FlZvICFjBdR1qhd3TYRfOD5q7JQsjnZn+p4VxLOuXTKAHFX9mr4EPP/5Ce/0XI9xDaDN1113hyZmwFxu81vBfBMc0JPu+W76/Ww8M/HrLuh+aDCIoHMero7em1h1vxwOFisFlanO4pJz6IKOhkMm3i+fFK9rTV5pnMCZ4ey68Ndt2YI69XOvPzexBurB97y777h4NgSs+bKrTIZ7CZ/9z/WKelnh8fXEOnQIzsAEm9vsDY2RAyBgShzHnVCts=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8d3405c-33ce-4a6a-56f6-08d7f71ccb35
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2020 09:05:33.5410 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Vfz5EV79WnHnTPTa0tXoQoJ9djZbxIGq1VhwL/onmcVqdwIBJP8NsKsj+1vqFiDXV5tuHCVhM5JN2/CHryEUtA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6765
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_020538_458493_F446DD77 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.2.46 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.2.46 listed in wl.mailspike.net]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "martin.fuzzey@flowbird.group" <martin.fuzzey@flowbird.group>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/05/13 Sascha Hauer <s.hauer@pengutronix.de> wrote:d
> >  drivers/spi/spi-imx.c | 16 ++++++++--------
> >  1 file changed, 8 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/spi/spi-imx.c b/drivers/spi/spi-imx.c index
> > f4f28a4..70df8e6 100644
> > --- a/drivers/spi/spi-imx.c
> > +++ b/drivers/spi/spi-imx.c
> > @@ -585,8 +585,8 @@ static int mx51_ecspi_prepare_transfer(struct
> spi_imx_data *spi_imx,
> >  	ctrl |= mx51_ecspi_clkdiv(spi_imx, t->speed_hz, &clk);
> >  	spi_imx->spi_bus_clk = clk;
> >
> > -	if (spi_imx->usedma)
> > -		ctrl |= MX51_ECSPI_CTRL_SMC;
> > +	/* ERR009165: work in XHC mode as PIO */
> > +	ctrl &= ~MX51_ECSPI_CTRL_SMC;
> >
> >  	writel(ctrl, spi_imx->base + MX51_ECSPI_CTRL);
> >
> > @@ -617,7 +617,7 @@ static void mx51_setup_wml(struct spi_imx_data
> *spi_imx)
> >  	 * and enable DMA request.
> >  	 */
> >  	writel(MX51_ECSPI_DMA_RX_WML(spi_imx->wml - 1) |
> > -		MX51_ECSPI_DMA_TX_WML(spi_imx->wml) |
> > +		MX51_ECSPI_DMA_TX_WML(0) |
> >  		MX51_ECSPI_DMA_RXT_WML(spi_imx->wml) |
> >  		MX51_ECSPI_DMA_TEDEN | MX51_ECSPI_DMA_RXDEN |
> >  		MX51_ECSPI_DMA_RXTDEN, spi_imx->base + MX51_ECSPI_DMA);
> @@ -1171,7
> > +1171,11 @@ static int spi_imx_dma_configure(struct spi_master *master)
> >  	tx.direction = DMA_MEM_TO_DEV;
> >  	tx.dst_addr = spi_imx->base_phys + MXC_CSPITXDATA;
> >  	tx.dst_addr_width = buswidth;
> > -	tx.dst_maxburst = spi_imx->wml;
> > +	/*
> > +	 * For ERR009165 with tx_wml = 0 could enlarge burst size to fifo size
> > +	 * to speed up fifo filling as possible.
> > +	 */
> > +	tx.dst_maxburst = spi_imx->devtype_data->fifo_size;
> 
> In the next patch this is changed again to:
> 
> +       if (spi_imx->devtype_data->tx_glitch_fixed)
> +               tx.dst_maxburst = spi_imx->wml;
> +       else
> +               tx.dst_maxburst = spi_imx->devtype_data->fifo_size;
> 
> So with tx_glitch_fixed we end up with tx.dst_maxburst being the same as two
> patches before which is rather confusing. Better introduce tx_glitch_fixed in
> this patch, or maybe even merge this patch and the next one.
Sorry confused you, I should repleace 'tx_wml=0' in the above comments with ' TX_THRESHOLD=0', which means tx transfer dma have to wait all the tx data in tx fifo transferred with ERR009165 rather than generically 'tx_wml' (for example --half fifo size used as TX_THRESHOLD). Obviously TX_THRESHOLD=0 would down performance, so enlarge dst_maxburst to fifo size as PIO with ERR009165. After ERR009165 fixed at HW level. TX_THRESHOLD could be used as common 'spi_imx->wml' so change it back. Will add more detail information in v8.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
