Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B237A17F2A1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 10:02:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A17k2hF0hlzBHKVo8YDFPPlL+umpeumRkty9xsWufoA=; b=gKqKXyRQyP2+0y
	bo5nllD0ijjHGHfwh82Ie8PIGK80BoVE+V5ZehBbQq0Ac8HqLoLGWjIpm0lRP2Ig/mlfMaJGL2g0V
	TinApK+mqN0z4zeVaemTe/8aWzdE8xdgwapdsy1G4j1M08JVxwCBGP8tik4b8pzcrNICZTHrSGnjq
	uQfg7h+rhLeSo5BhDeQbjn6U7Ap3iNwiXG4pzPIoDa1oeikzUsgXx1p+enB5EyVHUpx09VGg8uCSR
	7s7fqEgZ20k/WTQf21E8xvqXSvlCjPXq6+xAt0X5/h5MtM9bXD6Nxz66ZozWYc8F6syDIKn9ZLMxa
	PW1y7MvOXOwluNERjUGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBamK-0001hZ-QJ; Tue, 10 Mar 2020 09:02:20 +0000
Received: from mail-eopbgr50082.outbound.protection.outlook.com ([40.107.5.82]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBamD-0001gl-Sl
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 09:02:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DCXQyxpaLT+WkrtRxVDRdgbcsaIxVen22sGb9V8uA9TjFYd96L3Z6RglW2nHbRHiR2jUxAv0+LM7Du4UrwYDV4H75OsgAwAGVZSYeTjce/NcyIUG856W8m9Tqnx5DDRCLwhkL1i7lT7DPGSzDWt6G9pV41zEjQpLOb2fpnM7m0WtISY+IhsRkIe77N6MvCBhZkqwH2pcEvacweAnAl1ZS+pHN8bu0b0pVZN84uoeppVdAw7rOjdGQFV6mPW95QBMnl347wu5mlrlezpSvqIXa0yio2C1ELr8fsfWv6kv4ygJSjIXVhoJ8gao7Pf7pLHluz432tPC8xQx6Fdu/16zKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fCrgOZ0DeDIjIMZC/9xKzqmm+35+mySyLhnDR1fMF7Y=;
 b=clTv9f7H93ZN4vzxce2JJjc3gsGFS0wvoI3CZFzLSDO8zTil0UCeNbzXfIpAP6IllqQ39p/rs2Ypr7LSXs46NJ3SImo7TJauk55XRo6Jg2WFnEMjKZbljsRDUV8kXsr+7FNN+uZiXn05/tYwQpFZgykb8bGzGUjDjjuFhvW1KB7JjfMQYaAT0EKaC1pXpX/3WtU83Y9Jyavkpr0d5Wc8pW57wTNl3utjHSnvKaeyMVXQEzt3MS87qz5QfhRd5a4N5SswT1d5+Hky5ElyJmWf9/xaDllOD+aangqQiBuyjueGhS0UnLPQhUE8urpq8Ur5O8FUxLbG/47qE8SBjwXn3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fCrgOZ0DeDIjIMZC/9xKzqmm+35+mySyLhnDR1fMF7Y=;
 b=qgbv5wUkaW3ebLVLwzy8XZ+Lepjes8xweWqGEn3LqX+CkXwIyUhPW4t+AkglAsI/0SAtSyJKs593NUxvFhYhFrAA50H8nbyNwEqky/r9nuLbwS9qmma6wXkdQFhs0R5IIRZtDZHd2TAsnHXWlGewuRWGg+M+fgMbirjVW2c/fN0=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6749.eurprd04.prod.outlook.com (10.255.118.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Tue, 10 Mar 2020 09:02:09 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31%6]) with mapi id 15.20.2793.013; Tue, 10 Mar 2020
 09:02:09 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: =?iso-8859-1?Q?Uwe_Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: RE: [RESEND v6  06/13] spi: imx: fix ERR009165
Thread-Topic: [RESEND v6  06/13] spi: imx: fix ERR009165
Thread-Index: AQHV9oxXftoGpg9l0ka8yr0vqbewZqhBcOwAgAAKFSCAAAYlgIAABlYA
Date: Tue, 10 Mar 2020 09:02:08 +0000
Message-ID: <VE1PR04MB6638B911F4767D238B16279289FF0@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <1583839922-22699-1-git-send-email-yibin.gong@nxp.com>
 <1583839922-22699-7-git-send-email-yibin.gong@nxp.com>
 <20200310073920.GR3335@pengutronix.de>
 <VE1PR04MB66384DA6732A840FE1D80C1989FF0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200310083725.sb6cufp5wznvxcji@pengutronix.de>
In-Reply-To: <20200310083725.sb6cufp5wznvxcji@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 72b9ad52-1ecd-43ff-f5a0-08d7c4d1b6dd
x-ms-traffictypediagnostic: VE1PR04MB6749:|VE1PR04MB6749:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB67490CCCF13A35B93381F84289FF0@VE1PR04MB6749.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-forefront-prvs: 033857D0BD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(376002)(136003)(39860400002)(346002)(199004)(189003)(81156014)(66476007)(8936002)(64756008)(66556008)(66446008)(76116006)(66946007)(8676002)(54906003)(186003)(71200400001)(26005)(7696005)(316002)(81166006)(66574012)(6506007)(4326008)(7416002)(478600001)(966005)(45080400002)(2906002)(6916009)(33656002)(52536014)(5660300002)(86362001)(9686003)(55016002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6749;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bhKnSoLwZCTBQpoDUd/QHyDXqZgdNNYvuR38libsVOK1iu7XFcHDaeqy4PdwRk6fHAxheXJJLRDquOZeEO2Ta4znYqjcB483O/sYzwbp1E69UajzplFcG9pe1pWCVBfQ807/gbZVYO48q4nV3BzVHdQgRpHJHEGOaO1AOml+cjI8AlcTlvUC9nG6YYgXvNO9KhkNLFM5HTwqJc4V03FcIBY0XhVwo89ZJaWb5XRtTzDhAjCHVuEMRZ4rirLhRw790NFUs04NVMZ2XkOdRBzEdP0JR+eDcfW0epk2N5EKykHrZnTDHqVa7PanGuFySCbPlPrXNh3TplLEPJ7tCN2sku9tTIw1UbG7rsyIFsF/Ce02x+mcgvzr01c8zUo57Wq4nVr1eHbjJ3Pkgpf2n6940EUYjundh5tBPNa0HI6gjyl4oAINA2M+Jcc8EIOouE1/Es/apODdbH56q4P8NBOuqQt2VNBJ+BY4NxGoy6WsTOBFA3xvNgXEbsX8E/hOHyMcjnuBoDPNEcz5DBKCbVkGZg==
x-ms-exchange-antispam-messagedata: jxTSNTu9eneTnlaC2cDz1Sl/j9hqaLwEVIQp+0hm/6SCv5Iv6Zni8R7gx70bq29I41BGOOiYg3wp0wUVd4HxCPrInwzMn60fCLOexBNaoqOLLXLqKKjuMoho6Gttreve3L4yZ7YsFYYIux3GEl94FA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72b9ad52-1ecd-43ff-f5a0-08d7c4d1b6dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2020 09:02:09.0213 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ojr/6iNY6CL0R+gsu7DaB+7f9xJLgXGET1HN0goQTSDCSSwvPwmke2eN69iILeWkV32zIABiL9Y7Gj2WGCP1aA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6749
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_020213_931567_6F1F0620 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.82 listed in list.dnswl.org]
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
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "martin.fuzzey@flowbird.group" <martin.fuzzey@flowbird.group>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/03/10 Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de> wrote:
> =

> Hello,
> =

> On Tue, Mar 10, 2020 at 08:27:41AM +0000, Robin Gong wrote:
> > On 2020/03/10 Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > > On Tue, Mar 10, 2020 at 07:31:55PM +0800, Robin Gong wrote:
> > > >  	writel(ctrl, spi_imx->base + MX51_ECSPI_CTRL);
> > > >
> > > > @@ -612,12 +613,14 @@ static int mx51_ecspi_prepare_transfer(struct
> > > > spi_imx_data *spi_imx,
> > > >
> > > >  static void mx51_setup_wml(struct spi_imx_data *spi_imx)  {
> > > > +	u32 tx_wml =3D 0;
> > > > +
> > > >  	/*
> > > >  	 * Configure the DMA register: setup the watermark
> > > >  	 * and enable DMA request.
> > > >  	 */
> > > >  	writel(MX51_ECSPI_DMA_RX_WML(spi_imx->wml - 1) |
> > > > -		MX51_ECSPI_DMA_TX_WML(spi_imx->wml) |
> > > > +		MX51_ECSPI_DMA_TX_WML(tx_wml) |
> > >
> > > tx_wml is never assigned any other value than 0. Drop the variable.
> > That's prepared for 07/13 patch which may assign spi_imx->wml to tx_wml.
> =

> Then this belongs into patch 7, right?
Okay, understood your concern. Then I'll drop tx_wml to make it clear.
> =

> Best regards
> Uwe
> =

> --
> Pengutronix e.K.                           | Uwe Kleine-K=F6nig
> |
> Industrial Linux Solutions                 |
> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fwww.p
> engutronix.de%2F&amp;data=3D02%7C01%7Cyibin.gong%40nxp.com%7Cca6f14
> 28f4224fa79f1d08d7c4ce4a41%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0
> %7C0%7C637194262606339591&amp;sdata=3DkI9HAyC%2FG3qmrIrLmfUDJ7dac
> %2FOEDBtDm4oeRyak1xE%3D&amp;reserved=3D0 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
