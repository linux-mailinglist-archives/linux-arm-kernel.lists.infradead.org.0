Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 959FD1654B2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 02:51:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G9vbTK3tQNJ93lU6oCPSBocMZrz4ZaTgSkE/lp9D4j4=; b=YqNYVrVTtiw/5L
	8t+Rx3PCwkBpptDSpSKRG6kizB4Y9OiafumYF0T1thnDgvvMAPxVt1FGtwWUvPkGonheBsHRMbze1
	jlC9iwwwUlVvZFMW+a13J1TfY73FcJvdTKl68vZi4kxIC94/9sPkzCf1kjNz8EpF+bMu9FgqIgXeT
	rJaD8TPnM84H+RGfYGucnACR/u58a1erpfOhyBTh3w3jfyCn/A/p39ZENju/7KK34u/OI9ueNcCP/
	vRD1FThU8Ei0e1nrdfIK+E1yoG9cBTTdrmiieXpEMQmd0GPt1V4Db0rsvghKS19Wdyafp2+nQXPV/
	Ia7onUoLrBaOl5Xl+7hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4azz-0004XT-1v; Thu, 20 Feb 2020 01:51:31 +0000
Received: from mail-vi1eur05on2069.outbound.protection.outlook.com
 ([40.107.21.69] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4azn-0004Wt-Vz
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 01:51:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EpMq8G7ISPcvrb6LHrlp0phnoiIjj3H57QwZmmeNLCY+zERKg7IfEMqzJk9uJvIK2hNwA1Li/Mbh9Lgz9UEguj1bzYzGvaJ2lLOIYJHQ6rLLODuGTwwL5PUjTPaeA0c9KWXkDAbWg9UDuuC7RgukOAkZ1lya3SdHY0LYvHnJZZ/gifQhv9DOz4Rf5godJh/dX8bk/NxsOTCLjmU9lpDNfjTvUa1YR+MK0gBK1GhpdUH13CJc6OxJU37PsZQOJl1RnkW+g+RVr2RxS6WdGDtUIP6vZNyz68AtJW7FLHGJtQWSi3/fvD5VzSKAmEgy8FU6M2ABCMNWpw3CIigao339hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d81qYE9zzKV1wCeMOjt64gzr6BVwufA9LzoTTfcT/Ww=;
 b=gSZ+eVSwy1YLQQ92QpRBbJVnHgPMCQCfmZG35TY5RVZP8kRR7EIyXdKMKLHqR2gU2fZCI4zLVxVBqnptvNJU0O7QNBluzbCUN6RIr5a7QoJI6QRPqtlp1BDocThP59qlRlSXqvNrSPGTsZr+HOxfhGjoNfNnswqNcxu3AHnQ8q0avjehZADT2xFmErom40sOlVv4MaD46+34Ywvw8TAxdM3khm2Fw9axmJn+iX43Mp3cXsXZuRESVXSZpC9XOiV0HO2U++9oMRJWiW4Ah9U4NE/LUT/6VLdJR0niaMUYP4s+EvZTanQL3ewVAO8VkUmVxZY5jKud66K+3yW6KyFNmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d81qYE9zzKV1wCeMOjt64gzr6BVwufA9LzoTTfcT/Ww=;
 b=APw4/xWaWPOPxGfuv6qdyizbw75gdSDWmFzkbc8Mx8Q2pzWJJDff6gr1dJjBwbehBCjKoPD3ABHGjqPRkoySRk/iP0n/pxkPm9SpoPlz86iMzDX5Iu1jyqZlaK4vMjY3chJvyMwY7Bt+hIT1rwnrkCxDfYE5RubQ3kkNlPxaphw=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB7105.eurprd04.prod.outlook.com (10.186.130.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.22; Thu, 20 Feb 2020 01:36:08 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Thu, 20 Feb 2020
 01:36:08 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: RE: [PATCH 0/9] remoteproc: imx_rproc: support i.MX8/8M/7ULP
Thread-Topic: [PATCH 0/9] remoteproc: imx_rproc: support i.MX8/8M/7ULP
Thread-Index: AQHV5vbmWntOo1W/0E+zZvFdhH2I6Kgi1bgAgAB3WRA=
Date: Thu, 20 Feb 2020 01:36:08 +0000
Message-ID: <AM0PR04MB448114DF702180D0CF0553A688130@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1582097265-20170-1-git-send-email-peng.fan@nxp.com>
 <CANLsYkzeAyGhYqewGaHfd-myW5EzE83WUOwAbKwTP-34pbUR-w@mail.gmail.com>
In-Reply-To: <CANLsYkzeAyGhYqewGaHfd-myW5EzE83WUOwAbKwTP-34pbUR-w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: dbd73047-1f8a-4862-41eb-08d7b5a54273
x-ms-traffictypediagnostic: AM0PR04MB7105:|AM0PR04MB7105:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB71050B28F76D772BEFE73E7788130@AM0PR04MB7105.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 031996B7EF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10001)(10009020)(4636009)(346002)(366004)(136003)(39860400002)(396003)(376002)(189003)(199004)(9686003)(186003)(66946007)(316002)(52536014)(76116006)(966005)(86362001)(44832011)(5660300002)(55016002)(33656002)(71200400001)(6506007)(8936002)(54906003)(2906002)(8676002)(81156014)(81166006)(64756008)(4326008)(26005)(6916009)(66446008)(7416002)(45080400002)(66476007)(66556008)(478600001)(7696005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB7105;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uV8N8pFAuxcSjz/a3+8/DTE6NE6FHgpPIzZfxoAHmM8ZGzgOTicnRWVvJAAKRDUrUxIloAMpwoj0feL8oMFqd/hc6dbf8ytpL5MDEx3UQSPyFpIKg6oVakc26Ww9iP2uRI2PARxCeWAbIQfGCELaWB/WhFzqON+3LGyHcgYJyIf9sK2NQgIlBhRNmVnOMtW1maGu1y4gs1plLya+oTDTJY66ui97yQbyTLrnw94Vo5MBpcOmFcO2Qkk8Q2b4vvYcOwjcQVk0phWRNjmQBRF10aRRyvINIC4+d2fe2jEIKFxMbMSuXlmVI5cQ5c02yE3fQtYtxK9cCqeNh0HZhecJKrl44uy3H5pHoH+L2bac0nFme4VohRle9FCOYBHuv+TOOE5mqaZEGiSGaqQ9ns2+CfhMfmludP2npaoWo81qBlSsca2KsZjb0AxCojBSTdqSef9zhk7Qm5whXXGMxhEa6OPcv8VvAvLozl7zCnG3Sgd+oB70UTLLuJgmIfcrMQk5/Pszi5rFiPCzgc4BYY0s5iAmMtqPqXLKd+J5+RJIqEnN46NDCSaTOWMQhMGVAqis3tI0yFM1fgjj4cJVGU8/GT4n18mzKlrYBkMVbY8JNIP7MpCBZuXd8/qWnWBqa8Qn
x-ms-exchange-antispam-messagedata: fE9nh/imgTYaI3GmvN0ugpIDWiUp1hSdeYRUIdrazDb1cCG53w+jDL/zvujj3MQFdhpWd/BCZJMyjdLBsiZgsLWM+0R4JUskolrF0wwjRYqj2Oa3LmyB82JD9Df3Z2vcXyWkI3OcLY2X2RsMgAL1/Q==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dbd73047-1f8a-4862-41eb-08d7b5a54273
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2020 01:36:08.4426 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yhgf2oThR0nCEOtqhzhkt/oa/J25ZaQBtUbgvWAotYRX3kEPsvtjRMHFFZk6Kq8brKhqpnpBw24AIl7Z32tBBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7105
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_175120_036405_9B4ACCD5 
X-CRM114-Status: GOOD (  26.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.69 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-remoteproc <linux-remoteproc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

> Subject: Re: [PATCH 0/9] remoteproc: imx_rproc: support i.MX8/8M/7ULP
> 
> Hi Peng,
> 
> On Wed, 19 Feb 2020 at 00:33, <peng.fan@nxp.com> wrote:
> >
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > This patchset aim to replace NXP vendor imx_rpmsg.c driver.
> 
> You mean remoteproc/imx_rproc.c ?  Upstream rpmsg/imx_rpmsg.c doesn't
> exist.

imx_rpmsg.c only in NXP vendor tree. This pachset is to use imx_rproc.c for
rpmsg/virtio functions for i.MX SoC.

> 
> >
> > This patchset is tested with Loic PALLARDY's patch
> > "remoteproc: add support for co-processor loaded and booted before
> kernel"
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatc
> >
> hwork.kernel.org%2Fpatch%2F11265869%2F&amp;data=02%7C01%7Cpeng.f
> an%40n
> >
> xp.com%7Ce1cb19e535a14b63d0da08d7b568fd56%7C686ea1d3bc2b4c6fa9
> 2cd99c5c
> >
> 301635%7C0%7C0%7C637177334839497832&amp;sdata=aKQ%2Bulco63ba
> YT%2BDZDk0
> > VLt1NpkNuhrY3ssxiRCOcrM%3D&amp;reserved=0,
> > and inspried from st's remoteproc early boot support.
> > Since Loic's patch is still under review, just expect your comments :)
> 
> Did you base your work on top of Loic's because your MCU firmware is always
> loaded by the bootloader? 

I only took Loic's early-boot patch as base and apply my patchset.

The mcu firmware currently only loaded by bootloader or system controller firmware.
NXP released mcu firmware not support being loaded by Linux remoteproc.

 If not please send another revision of your work
> without early boot support.  When we have a clear view on how to proceed
> with the early boot support you can send another set to enable that.

I'll wait your new patch for early boot in remoteproc-core. Then I'll rebase
and send a new version. Since I introduce big changes to imx_rproc.c, so
I'll see whether any comments there.

Thanks,
Peng.

> 
> Thanks,
> Mathieu
> 
> >
> > Patch [1,2]/9: dt-bindings convert to json and new SoC support Patch
> > 3/9: skip firmware load when recovery. To i.MX8, firmware is not
> >            handled by Linux.
> >
> > Patch [4-9]/9: i.MX specific part to support rpmsg/virtio with mbox.
> >       because NXP release image not have resoure table, so add resource
> >       table in dts
> >
> > My test dts diff for i.MX8QXP MEK, but I have tested this patchset for
> > i.MX8QXP MEK, i.MX8MM EVK, i.MX7ULP EVK:
> >
> > +
> > +       imx8x-cm4 {
> > +               compatible = "fsl,imx8qxp-cm4";
> > +               rsrc-table = <
> > +                       0x1 0x2 0x0 0x0 0x18 0x5c
> > +                       3
> > +                       /*fw_rsc_vdev*/
> > +                       7 0 1 0 0 0x200
> > +                       /*fw_rsc_vdev_vring*/
> > +                       0x90000000 4096 256 1 0
> > +                       0x90008000 4096 256 2 0
> > +                       3
> > +                       /*fw_rsc_vdev*/
> > +                       7 1 1 0 0 0x200
> > +                       /*fw_rsc_vdev_vring*/
> > +                       0x90010000 4096 256 1 0
> > +                       0x90018000 4096 256 2 0
> > +               >;
> > +               early-booted;
> > +               mbox-names = "tx", "rx", "rxdb";
> > +               mboxes = <&lsio_mu5 0 1
> > +                         &lsio_mu5 1 1
> > +                         &lsio_mu5 3 1>;
> > +               mub-partition = <3>;
> > +               memory-region = <&vdev0vring0>, <&vdev0vring1>,
> <&vdev0buffer>,
> > +                               <&vdev1vring0>, <&vdev1vring1>,
> <&vdev0buffer>;
> > +       };
> > +
> > +       reserved-memory {
> > +               #address-cells = <2>;
> > +               #size-cells = <2>;
> > +               ranges;
> > +
> > +               vdev0vring0: vdev0vring0@90000000 {
> > +                       compatible = "shared-dma-pool";
> > +                       reg = <0 0x90000000 0 0x8000>;
> > +                       no-map;
> > +               };
> > +
> > +               vdev0vring1: vdev0vring1@90008000 {
> > +                       compatible = "shared-dma-pool";
> > +                       reg = <0 0x90008000 0 0x8000>;
> > +                       no-map;
> > +               };
> > +
> > +               vdev1vring0: vdev1vring0@90010000 {
> > +                       compatible = "shared-dma-pool";
> > +                       reg = <0 0x90010000 0 0x8000>;
> > +                       no-map;
> > +               };
> > +
> > +               vdev1vring1: vdev1vring1@90018000 {
> > +                       compatible = "shared-dma-pool";
> > +                       reg = <0 0x90018000 0 0x8000>;
> > +                       no-map;
> > +               };
> > +
> > +               vdev0buffer: vdev0buffer {
> > +                       compatible = "shared-dma-pool";
> > +                       reg = <0 0x90400000 0 0x100000>;
> > +                       no-map;
> > +               };
> > +       };
> > +
> >
> > Peng Fan (9):
> >   dt-bindings: remoteproc: Convert imx-rproc to json-schema
> >   dt-bindings: remoteproc: imx-rproc: support i.MX[8,8M,7ULP]
> >   remoteproc: add support to skip firmware load when recovery
> >   remoteproc: imx_rproc: surport early booted remote processor
> >   remoteproc: imx_rproc: parse early-booted property
> >   remoteproc: imx_proc: enable virtio/mailbox
> >   remoteproc: imx_rproc: add i.MX8QM/QXP
> >   remoteproc: imx_rproc: support i.MX7ULP
> >   remoteproc: imx_rproc: add i.MX8MM support
> >
> >  .../devicetree/bindings/remoteproc/imx-rproc.txt   |  33 --
> >  .../devicetree/bindings/remoteproc/imx-rproc.yaml  |  95 +++++
> >  drivers/remoteproc/imx_rproc.c                     | 455
> +++++++++++++++++++--
> >  drivers/remoteproc/remoteproc_core.c               |  19 +-
> >  include/linux/remoteproc.h                         |   1 +
> >  5 files changed, 531 insertions(+), 72 deletions(-)  delete mode
> > 100644 Documentation/devicetree/bindings/remoteproc/imx-rproc.txt
> >  create mode 100644
> > Documentation/devicetree/bindings/remoteproc/imx-rproc.yaml
> >
> > --
> > 2.16.4
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
