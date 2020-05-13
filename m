Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C45F51D0C62
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 11:37:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A5Bhpubw3aU8Sa3RxKb7qOtDOfD03B3vv6BZF+rO4+0=; b=WEQxMxtjxVA3j7
	sAoz/wmmVD9pZyuIAWg2ZQqKd0Rp5qM9fRUGLAk1K3mYgRy5ML7hJUv68oaefyfwL4sZup/FZ7GPa
	DalnAEr90savsJSKOY9CM0MRmfDHbYytYspMUSSjKfX/tU++LNsduOBQX1abmTej2ygce40WI08Y1
	pyYL3ynbIgywKlGzY4BQMvWN3SPiSsEDtUgPEXMHKk93NVR88ZUmdkDggLTVbuYSrjdWS+TJG4z5J
	wfHj+qpleLDG/2Vs3NL7iT+ZI7gat1oyUwVoNsX17/4l3eh5fKuufMyyWWHLDNcWZguS7+oc8U8di
	YGQhRhbhkMi0zrohMzwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYnpB-0001gh-O2; Wed, 13 May 2020 09:37:13 +0000
Received: from mail-eopbgr80087.outbound.protection.outlook.com ([40.107.8.87]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYnp3-0001fu-P8
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 09:37:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Eqkb+PlBGLHu/1YBHbUze3ZunIxcWZuAnmTT6q5M5olxRecqAOjpNJW3YtZs5vb5b3QXAndig20jStYthVJsiN/oSTk8PJJboHGaBG+izKrPErC5yjKDju9FJdn2X3HJUiwnYEmfipsAjLFZjloepFWnhX6Z2IcQdBM0YX0odBvpOCwyuMOvojH9Wwt5LVorj9V94+EkvIb/vlfuIar1kc+DrVA/HdQUS7gziaM5jyyxt4xfUFKp4wWtWxt1wJ1mpHG1hv0YsQhPYdWsn03bEoTKCbir0wGqRccYsy3bLYRGCToHoBsdnz0xubv+tJS9xj2XPR/bLG7jOyhB9bRDWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8+2XxqZt1AKKoYhjOq+JBMW+o7JZohzXyXxsUMB9tqA=;
 b=nBhelS4EVGjAqvhvY5Sa7todQpFxSOBxCV1ZBMNZuwP+bBB3gyH6XzzgT3dLipPHJvwtdfoTdQzU/srx6x9glG+FVfTAIItwpYYVbw16nnOt6/A4KTqZLhrF7hLgpNScdZY4Ha22eQ8G/rNg4Ylc0Idu5oLgo8vvL69rex2nhaZGy0i6BsExEYz+5rpcYYwxFSbo5n93JGgZ6RAvbfsNTvIkUW3WFz9znZlL7ZLV4tCjQXernRKZjTsQk3dwF1quqi2BGdnrfYrZWaPKBfr+Cmff1EvZOnoxguEdtgej9kRoTV5ElBRpcNTqKN/YraSmNjayL2WuYNuPaNNgjFALKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8+2XxqZt1AKKoYhjOq+JBMW+o7JZohzXyXxsUMB9tqA=;
 b=RIzl5E0Zqf41VKPkvLV7ClNPFpRPrtPulKCmj80fvySNEdjIR6dKU0k5iWdqQnA3AxZdgeQKo0TdvDqaeJHkRU54HMUpKj8KlPl/NLnvTsHx+Pwe927ttMDXmYXWaiLz0GGtZOjUB2skLGSp8fhJe6POXsmkGhexVdTglgc1gp4=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6718.eurprd04.prod.outlook.com (2603:10a6:803:124::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.33; Wed, 13 May
 2020 09:36:59 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa%4]) with mapi id 15.20.3000.016; Wed, 13 May 2020
 09:36:59 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: RE: [PATCH v7 RESEND 07/13] spi: imx: fix ERR009165
Thread-Topic: [PATCH v7 RESEND 07/13] spi: imx: fix ERR009165
Thread-Index: AQHWJ3cnZ0DWmxBZKkqSbDLRijv4Zqilos2AgAASCaCAAAuqgIAAAiNA
Date: Wed, 13 May 2020 09:36:59 +0000
Message-ID: <VE1PR04MB66380EFEEAFA1C7DBC98DAF489BF0@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <1589218356-17475-1-git-send-email-yibin.gong@nxp.com>
 <1589218356-17475-8-git-send-email-yibin.gong@nxp.com>
 <20200513073359.GM5877@pengutronix.de>
 <VE1PR04MB6638DE9AB1E51213DACCCA0F89BF0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200513092017.GQ5877@pengutronix.de>
In-Reply-To: <20200513092017.GQ5877@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c489a4d6-c247-4ae0-31a3-08d7f7212f59
x-ms-traffictypediagnostic: VE1PR04MB6718:|VE1PR04MB6718:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB671824625D0B601C6BB2FEC089BF0@VE1PR04MB6718.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-forefront-prvs: 0402872DA1
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Afvz9lPOsqc4m4SqR+XNciZHmDIQeO1MN8gPoaRUoknQhhghwypjuOgQC43YjIskOH10cjZ2cl1joOTBTIiBWxkv7w51wMylLpJ/iqQO2y/LMEmQDD5H156jcaQy3CwidSAJOrSu6y8nMMFJpJvncTPEgU3Gd+mLePsI/edhMJ/0cJVg3Nin5Fx+WG18Z7aKjxmcbpRz0plKLlwyTOa1Iu4c/QnMQV7mqaxY9jCm+qBYxiNb3aFG9U03sE4jU8qHBESmB5HGf+REBlFwDwq9so+oodLd4QBp1F96AnKPCO7rivRjhagVXPJIOf/5pui7L4palZIH7mgMGHJMvmt9qtiVcRMYmS4wCAb3ToIsDz/wUo2dFy7CXU6+wgua9xUhUvc8seBQ8r+a0pZM6pDsOlcQJob6KRUa8AGhl245FIQxk9gSei3SvMUOwy9oQMishzqxEPaM+S4HsHpj0XfVeDkTMC50IhGgTD4WIkmZyIspPW4yRSZqO1+aCNSTZlDbXG0hmVocga9IBqAmdOuMcQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(376002)(39860400002)(346002)(366004)(396003)(33430700001)(76116006)(86362001)(71200400001)(66946007)(6506007)(316002)(54906003)(8936002)(186003)(8676002)(52536014)(7416002)(4326008)(9686003)(6916009)(7696005)(33440700001)(64756008)(66476007)(66556008)(66446008)(26005)(55016002)(478600001)(5660300002)(33656002)(2906002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: zWpJdK6GRBB5T9d6fnEMm0XmyLpzi+O8my+VO+ViJg1CCr3I2Dz8OLynYliBxAo+rs8ZdYjFSqrOUGga3z6iwkgy3mvVU3aOD2ZpUV7IFJIqRuFXrRS2dN1AsGdho4SnYTEh9dkrbpGm7sVknycgqkFkGyhc3C1FTGSFLeMH0t2jXvbUDGr3JCkWcvxxMtwiUQ01dCvVPpLOfax7Nvptk3Gxmud4C99LlsRiKt80TlCQ/8krZD7xqCXAvDtLqrCM4+iym+pht6RH9yvZMWzTW1xgBM8vGLfK4kA8pcYM6ShOMYoriBFNugOepT2sMQayi8ra4NV83xY2m4sV+jEgYxY9cZEhgPG1b/NFITCs+Dpz7al3TfBtewLGqpZPtlELptcn2SD1Zfs7zRVq7Plb6pJDmHcH8r9jcjWzvFqwKvSZxyLzZ8aA/5EmvPep4zf9BZxoV13eg6N2Hx8trN02GmOWb0lfT+QRf0tni9ptMZE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c489a4d6-c247-4ae0-31a3-08d7f7212f59
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2020 09:36:59.5151 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7MNNA5qh6/E3ivKnCXEG0RhzVs+ZWMCRGgVXtF+lrrO5dfE7pM4oZR6INvNA7H8QaZ5fKrI8n52VvgxsTCOTiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6718
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_023705_817585_116CE53B 
X-CRM114-Status: GOOD (  23.24  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.8.87 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.87 listed in wl.mailspike.net]
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
 "festevam@gmail.com" <festevam@gmail.com>,
 "martin.fuzzey@flowbird.group" <martin.fuzzey@flowbird.group>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/05/13 Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Wed, May 13, 2020 at 09:05:33AM +0000, Robin Gong wrote:
> > On 2020/05/13 Sascha Hauer <s.hauer@pengutronix.de> wrote:d
> > > >  drivers/spi/spi-imx.c | 16 ++++++++--------
> > > >  1 file changed, 8 insertions(+), 8 deletions(-)
> > > >
> > > > diff --git a/drivers/spi/spi-imx.c b/drivers/spi/spi-imx.c index
> > > > f4f28a4..70df8e6 100644
> > > > --- a/drivers/spi/spi-imx.c
> > > > +++ b/drivers/spi/spi-imx.c
> > > > @@ -585,8 +585,8 @@ static int mx51_ecspi_prepare_transfer(struct
> > > spi_imx_data *spi_imx,
> > > >  	ctrl |= mx51_ecspi_clkdiv(spi_imx, t->speed_hz, &clk);
> > > >  	spi_imx->spi_bus_clk = clk;
> > > >
> > > > -	if (spi_imx->usedma)
> > > > -		ctrl |= MX51_ECSPI_CTRL_SMC;
> > > > +	/* ERR009165: work in XHC mode as PIO */
> > > > +	ctrl &= ~MX51_ECSPI_CTRL_SMC;
> > > >
> > > >  	writel(ctrl, spi_imx->base + MX51_ECSPI_CTRL);
> > > >
> > > > @@ -617,7 +617,7 @@ static void mx51_setup_wml(struct spi_imx_data
> > > *spi_imx)
> > > >  	 * and enable DMA request.
> > > >  	 */
> > > >  	writel(MX51_ECSPI_DMA_RX_WML(spi_imx->wml - 1) |
> > > > -		MX51_ECSPI_DMA_TX_WML(spi_imx->wml) |
> > > > +		MX51_ECSPI_DMA_TX_WML(0) |
> > > >  		MX51_ECSPI_DMA_RXT_WML(spi_imx->wml) |
> > > >  		MX51_ECSPI_DMA_TEDEN | MX51_ECSPI_DMA_RXDEN |
> > > >  		MX51_ECSPI_DMA_RXTDEN, spi_imx->base +
> MX51_ECSPI_DMA);
> > > @@ -1171,7
> > > > +1171,11 @@ static int spi_imx_dma_configure(struct spi_master
> > > > +*master)
> > > >  	tx.direction = DMA_MEM_TO_DEV;
> > > >  	tx.dst_addr = spi_imx->base_phys + MXC_CSPITXDATA;
> > > >  	tx.dst_addr_width = buswidth;
> > > > -	tx.dst_maxburst = spi_imx->wml;
> > > > +	/*
> > > > +	 * For ERR009165 with tx_wml = 0 could enlarge burst size to fifo size
> > > > +	 * to speed up fifo filling as possible.
> > > > +	 */
> > > > +	tx.dst_maxburst = spi_imx->devtype_data->fifo_size;
> > >
> > > In the next patch this is changed again to:
> > >
> > > +       if (spi_imx->devtype_data->tx_glitch_fixed)
> > > +               tx.dst_maxburst = spi_imx->wml;
> > > +       else
> > > +               tx.dst_maxburst = spi_imx->devtype_data->fifo_size;
> > >
> > > So with tx_glitch_fixed we end up with tx.dst_maxburst being the
> > > same as two patches before which is rather confusing. Better
> > > introduce tx_glitch_fixed in this patch, or maybe even merge this patch and
> the next one.
> > Sorry confused you, I should repleace 'tx_wml=0' in the above comments
> > with ' TX_THRESHOLD=0', which means tx transfer dma have to wait all
> > the tx data in tx fifo transferred with ERR009165 rather than
> > generically 'tx_wml' (for example --half fifo size used as
> > TX_THRESHOLD). Obviously TX_THRESHOLD=0 would down performance, so
> > enlarge dst_maxburst to fifo size as PIO with ERR009165. After
> > ERR009165 fixed at HW level. TX_THRESHOLD could be used as common
> > 'spi_imx->wml' so change it back. Will add more detail information in
> > v8.
> 
> I am not confused, I meant the patches are confusing. What you are doing
> is:
> 
> No patch:
> 	tx.dst_maxburst = a;
> 
> 1st patch
> 	tx.dst_maxburst = b;
> 
> 2nd patch:
> 
> 	if (foo)
> 		tx.dst_maxburst = a;
> 	else
> 		tx.dst_maxburst = b;
> 
> It would be better readable and understandable if you did that in one patch,
> because that would directly say "Under certain conditions we have to choose a,
> otherwise b". That's much better than changing "a" to "b" and then to "a or b"
> 
Okay, I'll merge those 2 changes into the next 08/13.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
