Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 595FD2ADF7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 07:20:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5e4YaMwBvNZZrHOq0j5fehH4Vlj9VSVHs3lX/+APrpY=; b=ekIGyekr1I/3ek
	y/NWrat+lTijVigMWA3mqJ4z8/PVKeK9vzjMM1qhACJZ0Qp4dCK65pm3BfDgz4yYG3B9PWTvT8pF2
	IAODTyn6koJWrpjymyQ3DV1qoKsLKaaAH95g1gZf8UTULH0OigX3b4g0Xg/p7Ch38PcPmuqxiLEmC
	NmR1dfenjYcKoSLN+vhgHEwunBRSGwtEpFM4J10C0GYLIFqRN3qrVbFQuFwYw0wBVxgvfQFGzw/HP
	2xbFDu0NZ9Xl47xE7a6oMcCp0n2gVg2daxJ7nY4GxBDpRie2m7p8AzhC44FyfcACZlcBLtlF0Hkii
	qlTkIA1+nwNN8JfWDgeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV838-00087v-Rw; Mon, 27 May 2019 05:19:54 +0000
Received: from mail-eopbgr80077.outbound.protection.outlook.com ([40.107.8.77]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV830-00087N-Jl
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 05:19:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=56hDANp4suTB41J9pYnAJLDjA63ugdNhAfKjIV3Caho=;
 b=To/jfKTVsMsOoFb+4qf559yW546vS1Mmr3FgwdZb0BFtsHUkNCx48tGphWTsbvKSYyZ9YlQ30Bn2+TbtmJ4XTUhCEw1oXyLH9wGPSdP+XwEAUyPjmuZTzYS6Jhny2AmnnccjJWYs3H14aImnq7NkJdA48znR6qVP3lcl55P6xew=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4353.eurprd04.prod.outlook.com (52.134.125.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.18; Mon, 27 May 2019 05:19:41 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378%6]) with mapi id 15.20.1922.021; Mon, 27 May 2019
 05:19:41 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Florian Fainelli <f.fainelli@gmail.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>, "sudeep.holla@arm.com"
 <sudeep.holla@arm.com>
Subject: RE: [PATCH 0/2] mailbox: arm: introduce smc triggered mailbox
Thread-Topic: [PATCH 0/2] mailbox: arm: introduce smc triggered mailbox
Thread-Index: AQHVESt7O8zUR8j7k0mzGFqyu7YBg6Z4+DAAgAVHW8A=
Date: Mon, 27 May 2019 05:19:41 +0000
Message-ID: <AM0PR04MB4481C44F9B5EFCDD076EF728881D0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20190523060437.11059-1-peng.fan@nxp.com>
 <4ba2b243-5622-bb27-6fc3-cd9457430e54@gmail.com>
In-Reply-To: <4ba2b243-5622-bb27-6fc3-cd9457430e54@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1960822f-bb25-4312-5060-08d6e262ec34
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM0PR04MB4353; 
x-ms-traffictypediagnostic: AM0PR04MB4353:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <AM0PR04MB4353A34B2D5504584CF10500881D0@AM0PR04MB4353.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0050CEFE70
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(136003)(366004)(346002)(39860400002)(199004)(189003)(478600001)(966005)(74316002)(26005)(186003)(2906002)(110136005)(71190400001)(71200400001)(52536014)(73956011)(66556008)(64756008)(66446008)(76116006)(66946007)(66476007)(14454004)(102836004)(7416002)(53546011)(6506007)(229853002)(53936002)(6246003)(68736007)(6436002)(4326008)(15650500001)(5660300002)(76176011)(256004)(45080400002)(305945005)(7696005)(54906003)(6306002)(81166006)(81156014)(8676002)(8936002)(9686003)(55016002)(316002)(99286004)(446003)(3846002)(33656002)(86362001)(6116002)(11346002)(44832011)(486006)(2501003)(2201001)(14444005)(25786009)(476003)(66066001)(7736002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4353;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: vFaXc91ZFUFkeObqTRLlF73sNraOlJfE58AAtSTKNiltzHdgOxw2SDnAFq+MCwaFc58HrQaKk54GiCRkoHowJkocBULrRP4JzoUmVt2VpZ1SygHVRz4Blg0aFHBil0RUX/wVDJY2J5fd8XsReelYMpfE06Nleg97zr3TalI7y4R6hiTfuGu1rXfdMG3GXBmsMqf8ztCHaClBudkVGNm+V2BLuZiIe9VSRuKgunU+Y8BWTv3JhZF/+Al5+XSn4jDj4jUzhJxh5czj4DiK5yi2jZ4qQPzLt+HBZenhIjVnu5ieXh79Yd0hnxfykRY6h3rJpFbG4bteF5RLwMU9ci3OVPPffZMfWU98K+Z7jjZvUf4OQOqIsYb8xYoUaKjzJ4g5VcHSpRuNFMoGEPy7SiXkA84DlpWDWlklfzSOgXe6H5o=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1960822f-bb25-4312-5060-08d6e262ec34
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2019 05:19:41.5808 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peng.fan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4353
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_221946_772652_EBF8126A 
X-CRM114-Status: GOOD (  31.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.77 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

> Subject: Re: [PATCH 0/2] mailbox: arm: introduce smc triggered mailbox
> 
> Hi,
> 
> On 5/22/19 10:50 PM, Peng Fan wrote:
> > This is a modified version from Andre Przywara's patch series
> >
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore.ke
> rnel.org%2Fpatchwork%2Fcover%2F812997%2F&amp;data=02%7C01%7Cpe
> ng.fan%40nxp.com%7C010c9ddd5df645c9c66b08d6dfa46cb2%7C686ea1d3b
> c2b4c6fa92cd99c5c301635%7C0%7C0%7C636942294631442665&amp;sdat
> a=BbS5ZQtzMANSwaKRDJ62NKrPrAyaED1%2BvymQaT6Qr8E%3D&amp;rese
> rved=0.
> > [1] is a draft implementation of i.MX8MM SCMI ATF implementation that
> > use smc as mailbox, power/clk is included, but only part of clk has
> > been implemented to work with hardware, power domain only supports get
> > name for now.
> >
> > The traditional Linux mailbox mechanism uses some kind of dedicated
> > hardware IP to signal a condition to some other processing unit,
> > typically a dedicated management processor.
> > This mailbox feature is used for instance by the SCMI protocol to
> > signal a request for some action to be taken by the management processor.
> > However some SoCs does not have a dedicated management core to
> provide
> > those services. In order to service TEE and to avoid linux shutdown
> > power and clock that used by TEE, need let firmware to handle power
> > and clock, the firmware here is ARM Trusted Firmware that could also
> > run SCMI service.
> >
> > The existing SCMI implementation uses a rather flexible shared memory
> > region to communicate commands and their parameters, it still requires
> > a mailbox to actually trigger the action.
> 
> We have had something similar done internally with a couple of minor
> differences:
> 
> - a SGI is used to send SCMI notifications/delayed replies to support
> asynchronism (patches are in the works to actually add that to the Linux SCMI
> framework). There is no good support for SGI in the kernel right now so we
> hacked up something from the existing SMP code and adding the ability to
> register our own IPI handlers (SHAME!). Using a PPI should work and should
> allow for using request_irq() AFAICT.

So you are also implementing a firmware inside ATF for SCMI usecase, right?

Introducing SGI in ATF to notify Linux will introduce complexity, there is
no good framework inside ATF for SCMI, and I use synchronization call for
simplicity for now.

> 
> - the mailbox identifier is indicated as part of the SMC call such that we can
> have multiple SCMI mailboxes serving both standard protocols and
> non-standard (in the 0x80 and above) range, also they may have different
> throughput (in hindsight, these could simply be different channels)
> 
> Your patch series looks both good and useful to me, I would just put a
> provision in the binding to support an optional interrupt such that
> asynchronism gets reasonably easy to plug in when it is available (and
> desirable).

Ok. Let me think about and add that in new version patch.

Thanks,
Peng.

> 
> >
> > This patch series provides a Linux mailbox compatible service which
> > uses smc calls to invoke firmware code, for instance taking care of SCMI
> requests.
> > The actual requests are still communicated using the standard SCMI way
> > of shared memory regions, but a dedicated mailbox hardware IP can be
> > replaced via this new driver.
> >
> > This simple driver uses the architected SMC calling convention to
> > trigger firmware services, also allows for using "HVC" calls to call
> > into hypervisors or firmware layers running in the EL2 exception level.
> >
> > Patch 1 contains the device tree binding documentation, patch 2
> > introduces the actual mailbox driver.
> >
> > Please note that this driver just provides a generic mailbox
> > mechanism, though this is synchronous and one-way only (triggered by
> > the OS only, without providing an asynchronous way of triggering
> > request from the firmware).
> > And while providing SCMI services was the reason for this exercise,
> > this driver is in no way bound to this use case, but can be used
> > generically where the OS wants to signal a mailbox condition to
> > firmware or a hypervisor.
> > Also the driver is in no way meant to replace any existing firmware
> > interface, but actually to complement existing interfaces.
> >
> > [1]
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgith
> >
> ub.com%2FMrVan%2Farm-trusted-firmware%2Ftree%2Fscmi&amp;data=02
> %7C01%7
> >
> Cpeng.fan%40nxp.com%7C010c9ddd5df645c9c66b08d6dfa46cb2%7C686ea1
> d3bc2b4
> >
> c6fa92cd99c5c301635%7C0%7C0%7C636942294631442665&amp;sdata=kN
> 9bEFFcsZA
> > 1ePeNLLfHmONpVaG6O5ajVQvKMuaBXyk%3D&amp;reserved=0
> >
> > Peng Fan (2):
> >   DT: mailbox: add binding doc for the ARM SMC mailbox
> >   mailbox: introduce ARM SMC based mailbox
> >
> >  .../devicetree/bindings/mailbox/arm-smc.txt        |  96
> +++++++++++++
> >  drivers/mailbox/Kconfig                            |   7 +
> >  drivers/mailbox/Makefile                           |   2 +
> >  drivers/mailbox/arm-smc-mailbox.c                  | 154
> +++++++++++++++++++++
> >  include/linux/mailbox/arm-smc-mailbox.h            |  10 ++
> >  5 files changed, 269 insertions(+)
> >  create mode 100644
> > Documentation/devicetree/bindings/mailbox/arm-smc.txt
> >  create mode 100644 drivers/mailbox/arm-smc-mailbox.c  create mode
> > 100644 include/linux/mailbox/arm-smc-mailbox.h
> >
> 
> 
> --
> Florian
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
