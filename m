Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D23A8D084B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 09:31:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MAJG73Yfxlp+3VMkHH6A4sg3xTNDveb1RHqXNdlakGI=; b=ELHrAKBPHiOg0y
	oD1inUYdBrZ305/iiJ5FcSayb0PPfHlJ3rli7NXlXhFy3ck3wggPC3EwvqOxqrFWBxJj9KlKIzf0o
	U1pVvwcVVvr6NHCP4FkxohwvG1Y8ShiwCBLVMol5IFXkv0pfHj6TuA9JIg0j2p7L8i+6+R2cbJd8X
	brkrEbcNyvdczEC1qKzavFGwhPUqklWT12o0fPKVEpLAWtQRWYDGwmo0BbsVeTkGlSDzPl1KPua2E
	TCFF5DG+o0dkWet8Koac9F5Hzswy+C+7WoeHI423YBH8wya68+gY2GyCtdG7wGAYBHHdFx5sa0j3D
	h/3pnIhPBVPNZnI+Sy8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI6Rc-0003pp-Kc; Wed, 09 Oct 2019 07:31:36 +0000
Received: from mail-eopbgr770072.outbound.protection.outlook.com
 ([40.107.77.72] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI6RQ-0003pA-OI
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 07:31:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cln2tRgSpwgVN2orCImqsT8uSH0Z94IZu40s9EGnpd0BhGiqS678s2f/CHTQMPrVj+KxGw3BHkj7SGzEBHb1TUsLQuqpNbKHfJHl+VogsY3xqOySdQ0WXE05MMSe7sBe2w3mxUefq7KjksZhlbaPDxGntwXmpTAm6Cah3iYtZvoNXmT+mWY9dc0ny2fLIhvjy6i1XfAJ4E8l2kksJ2dKE6DDXZEHnpfoH9QnIGyCb9tqwCI159idD79R39l81kr5vo0dBciqJn3owxWHabpNeugMuqCT5DTjq9lYUQ/4BFZTK8a2WLL0sKhpWeOqFE1wUoGwHGL7kIQXrsjObsaotQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TICxxJ4gbVYstsWViRFhRaaguQCT6iZ2qqwVW/bgP1I=;
 b=UHp6lxzGc70ANJKdujglnNcOxQkY7Ct+evtCo+mdGDfXHvUSH0axlBe/kjZxRZgFGs1OQvQP0TZwvDfyT58NdCnvOaFAucxVLaCljJyDZvNK/kJxBPr5BJD0b6T+Mtek3/QSGZKWrMDAFO5UdRNUDa8YIkPWE9nQYWio99wihbZSkeuUe9lm8mTt9kUFj/eThfZbyfouKr32cPDFzVhU2XnRt8FFzl1cW3Sv0WM3nkj008Ndo/bJylPBS5PHq156e3eSOl/glSxl+sSrLjU4VrB2PAYEr5A6ESsMgpNrFl1AvmENceH3I3vwjMB+8hrs94NOWvq0fqbSW5b7gnm/2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TICxxJ4gbVYstsWViRFhRaaguQCT6iZ2qqwVW/bgP1I=;
 b=p/7hODrHMbalsWORDZ1qhskFDGD+5CgidhSxpsAOa0hH78LrCtxFeQPdDU5x0yKJCSX5kdI7KhmmP25y8onXE6cIs/ac5hiWHyWQoWcTw6GlmplKMc59KliiQV3FJsmVWUMNRcXpVKGmjPAAci/sdaPMho8GDV6hi8cmRztCUnU=
Received: from MN2PR02MB6400.namprd02.prod.outlook.com (52.132.173.155) by
 MN2PR02MB6046.namprd02.prod.outlook.com (52.132.174.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Wed, 9 Oct 2019 07:31:22 +0000
Received: from MN2PR02MB6400.namprd02.prod.outlook.com
 ([fe80::2490:5890:f2e7:14b3]) by MN2PR02MB6400.namprd02.prod.outlook.com
 ([fe80::2490:5890:f2e7:14b3%7]) with mapi id 15.20.2327.026; Wed, 9 Oct 2019
 07:31:21 +0000
From: Appana Durga Kedareswara Rao <appanad@xilinx.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>, Anssi Hannula
 <anssi.hannula@bitwise.fi>
Subject: RE: [PATCH 2/6] net: can: xilinx_can: Fix flags field initialization
 for axi can and canps
Thread-Topic: [PATCH 2/6] net: can: xilinx_can: Fix flags field initialization
 for axi can and canps
Thread-Index: AQHVesCfvo8HLFt+ZUeAzSH0lYp+g6dRtjlAgAA3lYCAAANrwA==
Date: Wed, 9 Oct 2019 07:31:21 +0000
Message-ID: <MN2PR02MB640062BAF9E353802FF9EDA0DC950@MN2PR02MB6400.namprd02.prod.outlook.com>
References: <1552908766-26753-1-git-send-email-appana.durga.rao@xilinx.com>
 <1552908766-26753-3-git-send-email-appana.durga.rao@xilinx.com>
 <d1bedb13-f66f-b0fd-bd6d-9f95b64fc405@bitwise.fi>
 <MN2PR02MB64004059908C95EB5E16746FDC950@MN2PR02MB6400.namprd02.prod.outlook.com>
 <644fb76f-8169-4911-2293-92ae2dfe4e1c@pengutronix.de>
In-Reply-To: <644fb76f-8169-4911-2293-92ae2dfe4e1c@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=appanad@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d3aef0c8-2d47-4967-552e-08d74c8aaeef
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: MN2PR02MB6046:|MN2PR02MB6046:
x-ms-exchange-purlcount: 1
x-ld-processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR02MB60469015DEACA261DA16DE1ADC950@MN2PR02MB6046.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 018577E36E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(39860400002)(376002)(396003)(346002)(199004)(189003)(7736002)(5660300002)(305945005)(316002)(2906002)(7696005)(74316002)(6116002)(3846002)(99286004)(256004)(110136005)(55016002)(54906003)(81166006)(6436002)(6306002)(966005)(4326008)(8936002)(229853002)(8676002)(52536014)(6246003)(81156014)(14454004)(9686003)(478600001)(33656002)(76116006)(66476007)(25786009)(64756008)(66946007)(26005)(186003)(102836004)(66556008)(66446008)(6506007)(53546011)(76176011)(86362001)(486006)(71200400001)(71190400001)(66066001)(11346002)(476003)(446003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6046;
 H:MN2PR02MB6400.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rmHYal2828jrvC/d9/gQRpY9QcOaxWdaZtXTdgwcmUc9MxenKCPsZ6vUYKvgDfBgvmdOMVB00h3VMUSlSinTUlMXeAowSeLIFSL/IOG6AI8hRqie1DKaLu5x8o9G60AxDFt1MrOrFhWxpIhGL2vybVcLvUH6F1pdnjcVjDxOciERGB+Q+0zflOTUXtQ3GH2ylVwRO4s7mf7FxQDMFFfnkyJwtFeL8jqRyeZ/ZTNGfG6V3h0lZWBIJqWko27fxKHghIZwJQOEfSrdAW/ndWYI8uYyGxMI29aCZckC3brcPRJ28U6QVZZiI9770qvc//PKEeufCdFf6db1yV8uooH2dhSB789AMJlxNQQaNfcs49pveWj4kSRDVCwMTM8N4AMmJQGUT01HBlnQvgpwi2Fz5Bq8FcxhDt0oirVNRzjbecSYgNX3BWDrPnGCbNZwZhFBFCr/tRE2Ap0LKi5hKWEYrw==
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3aef0c8-2d47-4967-552e-08d74c8aaeef
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2019 07:31:21.6545 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lx2DR9b/mADNn/4gQd4TlTLMTsll+aIVNe2T9i+qiLfZFbsVTK+hvRIKJvv2m4MJ5rdi6ahOstLX8KBTfxB//Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6046
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_003124_794467_6D192896 
X-CRM114-Status: GOOD (  20.00  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.72 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-can@vger.kernel.org" <linux-can@vger.kernel.org>,
 Michal Simek <michals@xilinx.com>, "wg@grandegger.com" <wg@grandegger.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

<Snip>
> On 10/9/19 6:01 AM, Appana Durga Kedareswara Rao wrote:
> > Hi,
> >
> > <Snip>
> >> On 18.3.2019 13.32, Appana Durga Kedareswara rao wrote:
> >>> AXI CAN IP and CANPS IP supports tx fifo empty feature, this patch
> >>> updates the flags field for the same.
> >>>
> >>> Signed-off-by: Appana Durga Kedareswara rao
> >>> <appana.durga.rao@xilinx.com>
> >>> ---
> >>>  drivers/net/can/xilinx_can.c | 2 ++
> >>>  1 file changed, 2 insertions(+)
> >>>
> >>> diff --git a/drivers/net/can/xilinx_can.c
> >>> b/drivers/net/can/xilinx_can.c index 2de51ac..22569ef 100644
> >>> --- a/drivers/net/can/xilinx_can.c
> >>> +++ b/drivers/net/can/xilinx_can.c
> >>> @@ -1428,6 +1428,7 @@ static const struct dev_pm_ops
> xcan_dev_pm_ops
> >> =
> >>> {  };
> >>>
> >>>  static const struct xcan_devtype_data xcan_zynq_data = {
> >>> +	.flags = XCAN_FLAG_TXFEMP,
> >>>  	.bittiming_const = &xcan_bittiming_const,
> >>>  	.btr_ts2_shift = XCAN_BTR_TS2_SHIFT,
> >>>  	.btr_sjw_shift = XCAN_BTR_SJW_SHIFT,
> >>
> >> Thanks for catching this, this line seemed to have been incorrectly
> >> removed by my 9e5f1b273e ("can: xilinx_can: add support for Xilinx CAN FD
> core").
> >>
> >> But:
> >>
> >>> @@ -1435,6 +1436,7 @@ static const struct xcan_devtype_data
> >>> xcan_zynq_data = {  };
> >>>
> >>>  static const struct xcan_devtype_data xcan_axi_data = {
> >>> +	.flags = XCAN_FLAG_TXFEMP,
> >>>  	.bittiming_const = &xcan_bittiming_const,
> >>>  	.btr_ts2_shift = XCAN_BTR_TS2_SHIFT,
> >>>  	.btr_sjw_shift = XCAN_BTR_SJW_SHIFT,
> >>
> >>
> >> Are you sure this is right?
> >> In the documentation [1] there does not seem to be any TXFEMP
> >> interrupt, it would be interrupt bit 14 but AXI CAN 5.0 seems to only go up
> to 11.
> >>
> >> Or maybe it is undocumented or there is a newer version somewhere?
> >
> > Sorry for the delay in the reply.
> > Agree TXFEMP interrupt feature is not supported by the Soft IP CAN.
> > Since this patch already got applied will send a separate patch to fix this.
> 
> Please base your patch on net/master and add the appropriate fixes tag:
> 
> Fixes: 3281b380ec9f ("can: xilinx_can: Fix flags field initialization for axi can
> and canps")

Sure Marc will send the patch on top of net/master. 

Regards,
Kedar.

> 
> Marc
> 
> --
> Pengutronix e.K.                  | Marc Kleine-Budde           |
> Industrial Linux Solutions        | Phone: +49-231-2826-924     |
> Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
> Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
