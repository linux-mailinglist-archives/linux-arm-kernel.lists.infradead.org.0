Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C8D43708
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 16:01:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0jEzfI2v/um1iS0Z78LCdAGUU1ayp3HCK9BnXPdXddg=; b=fzGXSWZtagvBRc
	yGcPgFBu9GyStGj4mNRXcXvEqZ5uoqpgAg3lohxT/Xyy1XvdSQZO4UpfEAJ+QoXU0YUT4V8xn8ZJx
	s3R2hx2jvT0HoXy8wNZYezJf6UEFxin2G2RktSTooeaGg0iS4gAnGNK+8Vi/YuBIckURQgnAvMEwA
	/BfPaKq6d88kt9SWfgAFkSQPWEa4TK9mwNwYJ7waLTva0M26FebhgzjiD0h6pfKUFrdxxTozZ05Lc
	a8JYkdT+zWLFPKgWjimez12RKjDheH8b5ZJhejfxUh7AYrkikbeh7M4kLXomOyfqLdd1ZnIKzDg8d
	XkaPVqzwAPTqJf9ocSGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbQID-0000Sa-3t; Thu, 13 Jun 2019 14:01:29 +0000
Received: from mail-eopbgr130053.outbound.protection.outlook.com
 ([40.107.13.53] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbQI0-0000Rv-M7
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 14:01:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rQrX9RQyjPhk1o29x2UDUTYAagaN4qmvAjJXwwIPIX0=;
 b=NgBmX7rklLaS9C5GmJvNgxC84YDLidtg89akzdeBC8mquljAu3ZQYw49ogVKoxIR+XgchR68/d6dP3TqAf96yUCogQAZ1V5oI9g7zPZM/GvSE1utDF82qv6bF8PgkJrwHJQ2Zn8OJAKctpj+uaKXQVCxzbHoyLIs5yc2Qif1nF0=
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com (20.179.235.152) by
 VE1PR04MB6669.eurprd04.prod.outlook.com (20.179.235.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Thu, 13 Jun 2019 14:01:11 +0000
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::9e6:e136:4c09:fe67]) by VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::9e6:e136:4c09:fe67%5]) with mapi id 15.20.1987.010; Thu, 13 Jun 2019
 14:01:11 +0000
From: Leo Li <leoyang.li@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH] arm64: defconfig: Enable FSL_EDMA driver
Thread-Topic: [PATCH] arm64: defconfig: Enable FSL_EDMA driver
Thread-Index: AQHU+TmPiTydrhJTUUimRYhw3zmrnqZjx/sAgDVIQzeAANP4cA==
Date: Thu, 13 Jun 2019 14:01:11 +0000
Message-ID: <VE1PR04MB6687EE0E22DA0697A0A7038F8FEF0@VE1PR04MB6687.eurprd04.prod.outlook.com>
References: <20190422183056.16375-1-leoyang.li@nxp.com>
 <20190510030525.GC15856@dragon>
 <CADRPPNT2G20j2pvSEyqX=_WNDPrcNR+xCR_XZukbnSW19wFLNA@mail.gmail.com>
 <20190613004508.GA20747@dragon>
In-Reply-To: <20190613004508.GA20747@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leoyang.li@nxp.com; 
x-originating-ip: [136.49.234.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ecd90782-3b59-435e-e0fd-08d6f007974c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6669; 
x-ms-traffictypediagnostic: VE1PR04MB6669:
x-microsoft-antispam-prvs: <VE1PR04MB66699A931785CB4608DE0FE48FEF0@VE1PR04MB6669.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0067A8BA2A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(396003)(136003)(366004)(39860400002)(13464003)(189003)(199004)(53546011)(6116002)(6436002)(14454004)(76176011)(4326008)(33656002)(3846002)(186003)(99286004)(54906003)(86362001)(446003)(6916009)(5660300002)(14444005)(55016002)(7696005)(26005)(6506007)(25786009)(478600001)(68736007)(2906002)(9686003)(81166006)(316002)(8676002)(8936002)(81156014)(102836004)(256004)(305945005)(476003)(66946007)(486006)(76116006)(66066001)(74316002)(66446008)(66556008)(7736002)(66476007)(73956011)(64756008)(53936002)(11346002)(71190400001)(6246003)(71200400001)(229853002)(52536014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6669;
 H:VE1PR04MB6687.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: MfiHyzi+qwPVOxsMoUe62v3cF6DTpeosiu0nQmwChEg0mruGhIMDGAwjYhhndKLAjRjH8x8k+p3lZ0DrpFXXI0l5q4+k1NCl/g9QxaTbSI2hkIQoW9ECVTk4eHnbLLfhZJ4eoG3WI1EtTlbj+DgMXgT5RxJixE0yVAw4EGQtrwY3MiYHCLJy/V1rXJr2b6ifMMDw9U9Q/XlIYGEoz58D81djzzZ2PAxTxiKTh+cNQ8gUnzf09f/qlj6ivwOzAkdVFZ3uJ4HZtpcgr38Kfj+m31+B00nepl32jYFIX4z/rln2bMSbKmA/I93XRBk/oR9pRlSWIHASN8QcmHGCcF21G8mj5gSNzohqpje4daNKrP5MsIFqm3n+yRSSNakbcVWOzitDU8hkGvYvxbIKY4N4t12rCbBKuJ+BsKap3LLBTx8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ecd90782-3b59-435e-e0fd-08d6f007974c
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2019 14:01:11.1979 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leoyang.li@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6669
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_070116_795007_EAE29C56 
X-CRM114-Status: GOOD (  22.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.53 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Grant Likely <grant.likely@arm.com>,
 Madalin-cristian Bucur <madalin.bucur@nxp.com>,
 "wsa@the-dreams.de" <wsa@the-dreams.de>, lkml <linux-kernel@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>, "moderated
 list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Shawn Guo <shawnguo@kernel.org>
> Sent: Wednesday, June 12, 2019 7:45 PM
> To: Leo Li <leoyang.li@nxp.com>
> Cc: Madalin-cristian Bucur <madalin.bucur@nxp.com>; Rob Herring
> <robh+dt@kernel.org>; Aisheng Dong <aisheng.dong@nxp.com>; Vinod Koul
> <vkoul@kernel.org>; Grant Likely <grant.likely@arm.com>; moderated
> list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE <linux-arm-
> kernel@lists.infradead.org>; lkml <linux-kernel@vger.kernel.org>
> Subject: Re: [PATCH] arm64: defconfig: Enable FSL_EDMA driver
> 
> On Wed, Jun 12, 2019 at 03:01:29PM -0500, Li Yang wrote:
> > On Thu, May 9, 2019 at 10:15 PM Shawn Guo <shawnguo@kernel.org>
> wrote:
> > >
> > > On Mon, Apr 22, 2019 at 01:30:56PM -0500, Li Yang wrote:
> > > > Enables the FSL EDMA driver by default.  This also works around an
> > > > issue that imx-i2c driver keeps deferring the probe because of the
> > > > DMA is not ready.  And currently the DMA engine framework can not
> > > > correctly tell if the DMA channels will truly become available
> > > > later (it will never be available if the DMA driver is not enabled).
> > > >
> > > > This will cause indefinite messages like below:
> > > > [    3.335829] imx-i2c 2180000.i2c: can't get pinctrl, bus recovery not
> supported
> > > > [    3.344455] ina2xx 0-0040: power monitor ina220 (Rshunt = 1000
> uOhm)
> > > > [    3.350917] lm90 0-004c: 0-004c supply vcc not found, using dummy
> regulator
> > > > [    3.362089] imx-i2c 2180000.i2c: can't get pinctrl, bus recovery not
> supported
> > > > [    3.370741] ina2xx 0-0040: power monitor ina220 (Rshunt = 1000
> uOhm)
> > > > [    3.377205] lm90 0-004c: 0-004c supply vcc not found, using dummy
> regulator
> > > > [    3.388455] imx-i2c 2180000.i2c: can't get pinctrl, bus recovery not
> supported
> > > > .....
> > > >
> > > > Signed-off-by: Li Yang <leoyang.li@nxp.com>
> > >
> > > Applied, thanks.
> >
> > Hi Shawn,
> >
> > Is it possible to move this patch to the -fix series so that it can
> > reach the mainline earlier?  It is having a boot failure in mainline
> > for platforms using this device without this workaround.
> 
> Why would I2C device deferring cause boot failure on a platform?  I'm just
> trying to understand severity of the problem.

Currently the probe of imx-i2c will be retried immediately after it is deferred when the optional dependency on DMA driver is not met.  This will cause an indefinite loop of probe-defer-probe and keep printing the message as shown in the commit message.

On a further look into the imx-i2c driver, it looks like the driver need some fix too.  The requesting of dma channel is done at the very late stage of the imx-i2c probe after registering the i2c adapter.  Adding the i2c adapter triggers the probe of the i2c bus which probably immediately triggers the retry of deferred probe.  This was fine previously as requesting dma channel didn't trigger a defer.  But now it triggers defer after commit e1ab9a468e3b1636d60cebd0a778461270dde208.  We probably should move the i2c_imx_dma_request() to the beginning of the probe as it is considered as a dependency now.

Regards,
Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
