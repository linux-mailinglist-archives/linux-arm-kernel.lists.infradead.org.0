Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6025E17F3B4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 10:31:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5KJmpKTZyjZxMvjbbTPHO0jU58I8vupf9jP40odUVNM=; b=h7S95+1IV1dsqm
	rKXoTP+u/s7+AeXd/08lxBDCKH2RQmhDUFPX7E9xX8pc2XjEasGEvkn5uHSzHdVDnTodfLvxi+fhv
	l4i4rfLhLkYuHwzquuOuVGCNf1Qs8MWPXZw2gLBY1h7ddR9LXAeQAjzBamo4bd6n8vCrVrz/fMTL8
	zdEsaU6rSoYU/7us24pJY37OLM+xwByzd6y7aBWhxtcW7ZyzzOiTvoZhUUfX/1mussgI46DiXL51m
	lvdc5RFx9Au+ccQMKpt/9yLQ29OYRYsUYFhAl0eAXYzCJJ0xD8aBO1Cr0/DZZGBJhBv4FQfiZ5O8f
	eZSpQXq2/WRJ3c0qAMzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBbEr-0007ET-W3; Tue, 10 Mar 2020 09:31:49 +0000
Received: from mail-eopbgr70045.outbound.protection.outlook.com ([40.107.7.45]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBbEk-0007DV-CI
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 09:31:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UpRTBiieydHbW8BimJ7/4Ca+j5Pc04APHJR4siL2ZS3mY9nptqsnmV4A6TNqpKqKZlhezlsRXoDhuQ4FvJORCVvrXMaBKVH+DBhSKwcfESgct9nDKsh7WJwXLWUzCfqKll3VJpO5+yN9yp9ygWFF2mCLv7NaYrtqRaphgwOrBylVIU2EsNsRU+lYbWfC6QeP5y1SnSglAkvZ1u4e6QzvVNJeyGqd3w//IAp9ix9TU9B8o3xX0suFpMahl1bUiTzXoPCUoGvah1HMQxUxmhelU+1XLYlxoEgwrIR2t+x2Kf9x1IVujdV6YwioW+TZFlif+RTDIMAA6lRmqf9I46YeLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qudwH86z586/MxZy7/A1xHkou7Tzld5MD85MzGvha4g=;
 b=I/Rlg8S116bNqaoAroSWY9IuuWf7WVjqrMVcbwJ1VQ1jh7QJkTBzVCtfAtpXdweiXX9YZoCy+WKdRSilnstiLnM3jEI8tNj2weflldlQA9pbypkQRV/ragmPzWfQqwZTmQPG4IBh7oI7LGfEwTis25HwmsC6Rn3Vjdi44Ko3VoYP080lQXrkncbf0Nmp89tP/ix2O+cgq5Ow0FBqZR3rjyWljEk9uiQoYqqGEDmDZ5kgJVE3Tl/q1Pp/+TpOI9O5sb2kObFw8O4vGyauZRbEg/tHUK0Bkt3mdq/yYRZIHWfOOfhCH/qnwtJd8cO+CxMNxFqfouDazsCd7/ZFI4x/zA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qudwH86z586/MxZy7/A1xHkou7Tzld5MD85MzGvha4g=;
 b=TOjtSYE3rAKPs6J9IJPVUEmW/+bhVkizeHSkp1MqFbZws/aGtA1OxDgy0+pDUOGUYpdcgbC2tRLVNFhwpLOg/aPMNFkDthb6kyXuW8DJzsDcl5lGO62xIJZM86aIhmWGDCMTyiQzVub1749QoyIQQIJp42jILZsAtqeqJqk0knE=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6431.eurprd04.prod.outlook.com (10.255.118.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Tue, 10 Mar 2020 09:31:37 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31%6]) with mapi id 15.20.2793.013; Tue, 10 Mar 2020
 09:31:37 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: RE: [RESEND v6  07/13] spi: imx: remove ERR009165 workaround on
 i.mx6ul
Thread-Topic: [RESEND v6  07/13] spi: imx: remove ERR009165 workaround on
 i.mx6ul
Thread-Index: AQHV9oxbuHZ2XTzKaki/DoqL8Pfb26hBd3KAgAAG/XCAABAqgIAAAQ5A
Date: Tue, 10 Mar 2020 09:31:37 +0000
Message-ID: <VE1PR04MB663827D58A6AA3BE3E0AE3B189FF0@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <1583839922-22699-1-git-send-email-yibin.gong@nxp.com>
 <1583839922-22699-8-git-send-email-yibin.gong@nxp.com>
 <20200310080240.GS3335@pengutronix.de>
 <VE1PR04MB66384342F94C7B789C980F7A89FF0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200310092533.GV3335@pengutronix.de>
In-Reply-To: <20200310092533.GV3335@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9c77e820-bd7b-4514-cbbc-08d7c4d5d4ef
x-ms-traffictypediagnostic: VE1PR04MB6431:|VE1PR04MB6431:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB64314C9ED2A985BB570B1B4189FF0@VE1PR04MB6431.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:873;
x-forefront-prvs: 033857D0BD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10001)(10009020)(4636009)(39860400002)(396003)(366004)(346002)(136003)(376002)(199004)(189003)(55016002)(186003)(966005)(5660300002)(81166006)(8936002)(26005)(81156014)(316002)(7416002)(52536014)(6916009)(33656002)(54906003)(2906002)(66476007)(66946007)(66446008)(8676002)(66556008)(76116006)(9686003)(45080400002)(478600001)(4326008)(64756008)(86362001)(7696005)(71200400001)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6431;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TJgnaMq16FTIfeQr+D5F/8YYJAebg1nif13BCrrozOHNdChd4WN1089gX4+FG3vJXI/xsxsBfYzx252L5TxRKbYAmQYrPfg/CTJmWPbbiw+7YSyAjKjErvUqul4NemaRcA3vCiEP9YONppRPbWk1iYsQhygYZbJmsDlvwQcyjtjTxLvUn7oDvyA7QpZrhD0cGK/PRCaDYNJt1jDlV+HL/AajO2y4c0l8WkwXL6NF7EHELV20pMhSqqWGTrV7rlk0CrgV+5FzW8+MUrnyFdVw3/QqvlN0vAnGoT+DYCFHE0DXmywA4dqr6zmUZ+nU31VhDYmRXNKq975YqdoT1+MC4IpmO6XfAKSrL8dbmuVXoAjKO0aApSLfwAiVGpyUVzbx16d9yCsyPX4xEsD+5prvmy7IXWvkrE/hK+AEIBXNXANia+Divw8I0p+HJ4ONbQtMWzZQ7ItC1xV/XKT9DpRmG2ABuGpkD6LkQsGSpHX65d0cxfbhN11h7jfvNhObrR2XRjZ16cHazgAuI+d0yppkIMnQSYU4Xnxd2LyWARMDh6pa4t9abHjllvqBuNmXv3gr/T2jUy0B7G7hU3/i39tYKwwkZYL7n+Ifivz6WEZELYcs0JBOPVCcPU2rjasCZViL
x-ms-exchange-antispam-messagedata: DraJV7E0PGbViq/RMX5ctEcb9osvg5JJgw8e+6MExk2W8TxOQSreOYu46BtLB+tpQ8NK4ddSmg5R8lfVzMBqipxanpjwqYoB4UIcR+EnsjkZLvY9MtyOcuHEo1K5BtJwMloYr5DnEmXkbSbMYBG++Q==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c77e820-bd7b-4514-cbbc-08d7c4d5d4ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2020 09:31:37.4448 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LcJ3oOZ1NdGxpOB0vsxxE3wJAUNO4PZcM6gPf+lMY4FbhoFtX3kEwVk0L9b+PSlrfnYMSMn0jQ2fcD4uPXqOug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6431
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_023142_426678_67B7A0C1 
X-CRM114-Status: GOOD (  22.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.45 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.45 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
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

On 2020/03/10 Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Tue, Mar 10, 2020 at 08:43:10AM +0000, Robin Gong wrote:
> > On 2020/03/10 Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > > On Tue, Mar 10, 2020 at 07:31:56PM +0800, Robin Gong wrote:
> > > > ERR009165 fixed on i.mx6ul/6ull/6sll. All other i.mx6/7 and
> > > > i.mx8m/8mm still need this errata. Please refer to nxp official
> > > > errata document from
> > > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fww
> > > w.nx
> > >
> p.com%2F&amp;data=02%7C01%7Cyibin.gong%40nxp.com%7Cf73bfc11a68c4
> > >
> 2f5f6d308d7c4c96efa%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C1%7C
> > >
> 637194241755109112&amp;sdata=xzIUP8qZkrlDXX0yjTcUNZB6zDrevTdHFg1o4
> > > PZZd8E%3D&amp;reserved=0 .
> > > >
> > > > For removing workaround on those chips. Add new i.mx6ul type.
> > > >
> > > > Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> > > > Acked-by: Mark Brown <broonie@kernel.org>
> > > > ---
> > > >  drivers/spi/spi-imx.c | 50
> > > > +++++++++++++++++++++++++++++++++++++++++++++-----
> > > >  1 file changed, 45 insertions(+), 5 deletions(-)
> > > >
> > > > diff --git a/drivers/spi/spi-imx.c b/drivers/spi/spi-imx.c index
> > > > 842a86e..f7ee2ec 100644
> > > > --- a/drivers/spi/spi-imx.c
> > > > +++ b/drivers/spi/spi-imx.c
> > > > @@ -57,6 +57,7 @@ enum spi_imx_devtype {
> > > >  	IMX35_CSPI,	/* CSPI on all i.mx except above */
> > > >  	IMX51_ECSPI,	/* ECSPI on i.mx51 */
> > > >  	IMX53_ECSPI,	/* ECSPI on i.mx53 and later */
> > > > +	IMX6UL_ECSPI,	/* ERR009165 fix from i.mx6ul */
> > > >  };
> > > >
> > > >  struct spi_imx_data;
> > > > @@ -75,6 +76,11 @@ struct spi_imx_devtype_data {
> > > >  	bool has_slavemode;
> > > >  	unsigned int fifo_size;
> > > >  	bool dynamic_burst;
> > > > +	/*
> > > > +	 * ERR009165 fixed or not:
> > > > +	 *
> > > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fww
> > > w.nx
> p.com%2Fdocs%2Fen%2Ferrata%2FIMX6DQCE.pdf&amp;data=02%7C01%7Cyi
> > >
> bin.gong%40nxp.com%7Cf73bfc11a68c42f5f6d308d7c4c96efa%7C686ea1d3bc
> > >
> 2b4c6fa92cd99c5c301635%7C0%7C1%7C637194241755109112&amp;sdata=m
> > >
> uw4HL5nMDjREJwVd885Wrxka0moMaaZ%2BhJgsAgY3eo%3D&amp;reserved=
> > > 0
> > > > +	 */
> > > > +	bool tx_glitch_fixed;
> > > >  	enum spi_imx_devtype devtype;
> > > >  };
> > > >
> > > > @@ -128,7 +134,8 @@ static inline int is_imx35_cspi(struct
> > > > spi_imx_data *d)
> > > >
> > > >  static inline int is_imx51_ecspi(struct spi_imx_data *d)  {
> > > > -	return d->devtype_data->devtype == IMX51_ECSPI;
> > > > +	return d->devtype_data->devtype == IMX51_ECSPI ||
> > > > +	       d->devtype_data->devtype == IMX6UL_ECSPI;
> > > >  }
> > >
> > > Erm, no. A i.MX51 ECSPI is a i.MX51 ECSPI and not a i.MX6UL ECSPI.
> > > If you want to handle them equally somewhere then explicitly test
> > > for i.MX6ul *and*
> > > i.MX51 there.
> > But all i.mx6 chips including i.MX53 ECSPI are almost same as i.MX51 ECSPI,
> and ERR00915 is fixed from i.mx6ul....
> 
> You introduce .devtype = IMX6UL_ECSPI in this series, so apparently it is *not*
> the same as IMX51_ECSPI, then please also don't introduce a function which
> claims they are the same.
Okay, I'll add is_imx6ul_ecspi explicitly.
> 
> Sascha
> 
> --
> Pengutronix e.K.                           |
> |
> Steuerwalder Str. 21                       |
> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.pe
> ngutronix.de%2F&amp;data=02%7C01%7Cyibin.gong%40nxp.com%7Ca10f3fdc
> 28084c1fe89a08d7c4d50531%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7
> C0%7C637194291506592966&amp;sdata=aqMqER0j0fVbAiKqM1tzBuEVlhiVcVL
> GnrSRhJvhDk8%3D&amp;reserved=0  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0
> |
> Amtsgericht Hildesheim, HRA 2686           | Fax:
> +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
