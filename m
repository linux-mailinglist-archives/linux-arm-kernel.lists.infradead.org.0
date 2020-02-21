Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D815166FE6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 07:56:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D2WZc6EfQ2CS/Xde+AZT8RBWx9SPMm5WTEVWiEOZUl8=; b=TaKBa7c0PSA06D
	/R3orZi+fgQBsxzX7r8q8DnV3bIHB97G+3fUKr2vShh1QtGPIe40h5OMDJJIyC84CxwGi1qjwb1zr
	gw9q++SOGgYe/+MJbPU5fFHUgJU7xB2BI1pMhrQtnLoalyi/WpQ5sxNHUtByGpGV0zlCb29YHLrWB
	awrpneXXkpkP4sMZM5gcvT9ETaBIIa06FTrDJG0uzxVLB4COMDArQrDRU5Fv1HTkwwg9wjE9KO45s
	A2KSmZ9WyIlpkE1TLwcT3v8zic34oFxID739yos7kZFXecP0r4+f5K5TDehscKIskF3ri/lJBGF9U
	ccl+jWNK0fXrf2tiLcsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j52ER-0005M0-6C; Fri, 21 Feb 2020 06:56:15 +0000
Received: from mail-eopbgr30045.outbound.protection.outlook.com ([40.107.3.45]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j52EH-0005La-3J
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 06:56:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oX4Rfq5RUMD/41HxAy8HtbfjQSwgYHMv64bAUZf6D8iT7IOPnP6NcIDQlvTJLoynXyvpixyZYEY/2Mq9shKxIAO80aZ5i72rlr/cCi/NzeN5G1ptd14otZ4C6tOraaAnEY2eI/sLMkS+9aoosHlAdLP7KImxsMTCV+Wpx7Hnxo6A2bf2IBhJ4cV+UmJO7G9jbuDwYQefT198dt2PquuW2bWRER00osG81JLCwaYdiqz5AHYQelE3IfcHMfz7q99fpoBq3IO0DJqlWxJjVM63us7RJ3TBz+ApZX5wlxeGZEUx/tIr+A8ftv25yL9lWpkODMM/cCsyQJP32x0b9yWtQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mCYNwBGMxy+6QRNTEjtgQiKAcWl5qkWtNmqhfbDCp6Q=;
 b=j6x24AYrFQm+PGwKX9YILpK3uTik/ivJ9eKqFANgnmcy8YzhbrEizCDS2Ns8mJfOnT3cVxPBw8x9RR/n0zZNqW0qIheeemOrEhKh6vCdTCfu6FAWQb46jNCOxTE8SFYy9B0xq6pOyJVf7lcQGs3Hidn2zURf6gTFWUvtVrOof9wi7FWjTg4jfVlorpSV4tUgj9wkSvile2N/Z2bvNoPvdypNT/QwIKRFMXpt+TiHOBKEwhFqV1yJYOo2ZAyrFhzmJitP079W2ouYfopESjUcnEzezLKKcYuGoYpzTxfhd1PgsShJHPjqeYuOXIoh30oVsis8cwvet0W1OrPUan4dPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mCYNwBGMxy+6QRNTEjtgQiKAcWl5qkWtNmqhfbDCp6Q=;
 b=cVQnwZyKt1Vld3TrvBgAT8xEWbYitiyI1LYFssIDqqc4ZCRQ/HGZgaFmeVc3/18IR6bhxHIi/6Y5P7v0cmn4HxGsNlKzNfp7cLtokL0xyYAL7jY4PzkPyrop9l6Dlzi1UHS4Hzzr7LgwcI05w/7yIcOE0KkYm0moQ1rgkKPukC0=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5715.eurprd04.prod.outlook.com (20.178.117.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Fri, 21 Feb 2020 06:56:02 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.033; Fri, 21 Feb 2020
 06:56:02 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Subject: RE: [PATCH 0/9] remoteproc: imx_rproc: support i.MX8/8M/7ULP
Thread-Topic: [PATCH 0/9] remoteproc: imx_rproc: support i.MX8/8M/7ULP
Thread-Index: AQHV5vbmWntOo1W/0E+zZvFdhH2I6KglOM8AgAAASJA=
Date: Fri, 21 Feb 2020 06:56:02 +0000
Message-ID: <AM0PR04MB4481C4C811F139665AB1C54088120@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1582097265-20170-1-git-send-email-peng.fan@nxp.com>
 <20200221065140.mn4wxk5c2xayqwan@pengutronix.de>
In-Reply-To: <20200221065140.mn4wxk5c2xayqwan@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 50cfaa3f-4088-4a62-d2f8-08d7b69b1d39
x-ms-traffictypediagnostic: AM0PR04MB5715:|AM0PR04MB5715:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB571580E5932F938307A8C29B88120@AM0PR04MB5715.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0320B28BE1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(39860400002)(366004)(346002)(136003)(189003)(199004)(9686003)(5660300002)(33656002)(6506007)(316002)(966005)(26005)(71200400001)(54906003)(478600001)(186003)(2906002)(81156014)(81166006)(44832011)(4326008)(8676002)(8936002)(76116006)(7416002)(66446008)(64756008)(66476007)(55016002)(52536014)(66556008)(7696005)(86362001)(6916009)(66946007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5715;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vwidBodEsdF0ProV8tw0DKu0PXDeHE6fyvMHrCcmlkfpAqvRwEWE3zq5i6QC+jCSu8zOe3T9aH+yt9O1q/MQHSTyoaWJreTQuC8+QkEM2/q11Fb/WsHSBEn6j/KdLV6T9h0vZ6QYiza3vrk0i9iQhuGbbbx7T/58/Q8FbyL9ok0J7Rhfw530i2+NTH/ufClD0jWQ3FcoOfLImUvTHxUVd5/WnL3sRNLmlfCKVRORDWp8VINXKn4b/pQwQfvmlI4/tXcSNdH8DAiGhmnW0rH5mBS4iEU3+WTqPlw1HAqkuEa1+o2YH9hj85NS3nRBECeqTnLKJkHswJFB32sMcOTQ6GdgsSVnl3n/eucGV3DMz3KUSmoTZsOVtWFy+1F0z7kORcuh7b1Zaio4U1kPBPQEN/1VtL0GJoF6U15cofHJOSDCNGyueZvZGRCSGYo8uzMA5nF822a8Q4Kv1sVNMQb6ix4o6uGXs2KuQak+M0ocVAl0zRoJ5gQhimmKxqsfw6NstyBG2k1HXB18H+Bubqk63A==
x-ms-exchange-antispam-messagedata: VUr1+mXj/5cNs9yaLrs8xC4gq5RO+Qnb4IQ7FY246lksWGv+e3qrrlPaF6Jlf+AhJzR0zbiJArvjSkABIVlbpabGytmNGbqqC7rGsPhbvcfLmiUul8zcdplUDNn8biMbDd93CsB3/v9k49q5IMW/+g==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50cfaa3f-4088-4a62-d2f8-08d7b69b1d39
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2020 06:56:02.1839 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VIDK8aUikJHRFNZXKvMxoI2cY3gc6jNHER9e78rFD++x1R8DlOp7KHwzcVwzk11ENIYL8OKmLMCbFXI7AisXmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5715
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_225605_226028_BC765533 
X-CRM114-Status: GOOD (  22.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "ohad@wizery.com" <ohad@wizery.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Oleksij,

> Subject: Re: [PATCH 0/9] remoteproc: imx_rproc: support i.MX8/8M/7ULP
> 
> Hi Peng,
> 
> i can't apply your patches on kernel master HEAD. Do I need some extras?

The patchset is based on Shawn's for-next branch. With Loic' V4 patch
applied as showed in cover-letter.

> 
> Please add me to CC for this driver next time.

I used get_maintainer.pl to get the to/cc list. Will add you in v2, but may
delay for a while, sine early boot stuff not settle down until now.

Thanks,
Peng.

> 
> On Wed, Feb 19, 2020 at 03:27:36PM +0800, peng.fan@nxp.com wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > This patchset aim to replace NXP vendor imx_rpmsg.c driver.
> >
> > This patchset is tested with Loic PALLARDY's patch
> > "remoteproc: add support for co-processor loaded and booted before
> kernel"
> > https://patchwork.kernel.org/patch/11265869/,
> > and inspried from st's remoteproc early boot support.
> > Since Loic's patch is still under review, just expect your comments :)
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
> > +	imx8x-cm4 {
> > +		compatible = "fsl,imx8qxp-cm4";
> > +		rsrc-table = <
> > +			0x1 0x2 0x0 0x0 0x18 0x5c
> > +			3
> > +			/*fw_rsc_vdev*/
> > +			7 0 1 0 0 0x200
> > +			/*fw_rsc_vdev_vring*/
> > +			0x90000000 4096 256 1 0
> > +			0x90008000 4096 256 2 0
> > +			3
> > +			/*fw_rsc_vdev*/
> > +			7 1 1 0 0 0x200
> > +			/*fw_rsc_vdev_vring*/
> > +			0x90010000 4096 256 1 0
> > +			0x90018000 4096 256 2 0
> > +		>;
> > +		early-booted;
> > +		mbox-names = "tx", "rx", "rxdb";
> > +		mboxes = <&lsio_mu5 0 1
> > +			  &lsio_mu5 1 1
> > +			  &lsio_mu5 3 1>;
> > +		mub-partition = <3>;
> > +		memory-region = <&vdev0vring0>, <&vdev0vring1>,
> <&vdev0buffer>,
> > +				<&vdev1vring0>, <&vdev1vring1>, <&vdev0buffer>;
> > +	};
> > +
> > +	reserved-memory {
> > +		#address-cells = <2>;
> > +		#size-cells = <2>;
> > +		ranges;
> > +
> > +		vdev0vring0: vdev0vring0@90000000 {
> > +                       compatible = "shared-dma-pool";
> > +			reg = <0 0x90000000 0 0x8000>;
> > +			no-map;
> > +		};
> > +
> > +		vdev0vring1: vdev0vring1@90008000 {
> > +                       compatible = "shared-dma-pool";
> > +			reg = <0 0x90008000 0 0x8000>;
> > +			no-map;
> > +		};
> > +
> > +		vdev1vring0: vdev1vring0@90010000 {
> > +                       compatible = "shared-dma-pool";
> > +			reg = <0 0x90010000 0 0x8000>;
> > +			no-map;
> > +		};
> > +
> > +		vdev1vring1: vdev1vring1@90018000 {
> > +                       compatible = "shared-dma-pool";
> > +			reg = <0 0x90018000 0 0x8000>;
> > +			no-map;
> > +		};
> > +
> > +		vdev0buffer: vdev0buffer {
> > +                       compatible = "shared-dma-pool";
> > +			reg = <0 0x90400000 0 0x100000>;
> > +			no-map;
> > +		};
> > +	};
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
> >
> >
> 
> --
> Pengutronix e.K.                           |
> |
> Steuerwalder Str. 21                       |
> http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone:
> +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:
> +49-5121-206917-5555 |
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
