Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B219037409
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 14:23:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bWxYvFcMwCp7K3D8IV3FpZfr8y0UX26FFbQo/YpaGLs=; b=SojypnBx4sJubx
	yTgQvoDI3uvhaSSpzRbtkXBsu55jYLY8XJ7tm4FdkA/rfeEemsEVP1iR5sz7/A+kTIpStAD3WYZPU
	lkHosI61dbKB37x2LviqxP1uji7COZY6lMJSZnYmqsbaRrtf92ngN3hTg2AeC1iVlVelFXLBGc2Gr
	2cchL8vKkGTbQ5bj2nLRC4h8Eq3UsNro4Rv9Dt3DwjZYRcPuTR5zqgUzoeqU8pey1OOKIuS4JBly3
	KzhGMrkK9iPw7cwmEDJQRR2x2sPrjxE5kKQoTNY+gn70Jza0IJbCHrsnwwI3wvYDw13do4YBISwWc
	qGUm4+Bqyt5sc5pvDIQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYrQP-0000Fd-0j; Thu, 06 Jun 2019 12:23:21 +0000
Received: from mail-eopbgr760084.outbound.protection.outlook.com
 ([40.107.76.84] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYrQH-0000FA-2A
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 12:23:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PeyhXymArBVhn9yOZ9BdY0SCC3sFt0O/m7nOcPL7l7s=;
 b=sxtF1DpxHoBZn8Di1JiQx3JDa1vuncl78Ce2IlOHCkXk0qwExNIY3N13wUrEC/ZXPp3MTEof0sjvacYxAJw49a2BLRaVc+oq0EebjI7umNZerugvUgCHbbttUONySOFAXyyeQNMNHxYvbPQ6iZ8qPduq5Ov32y70RGuN7ULBKJA=
Received: from CH2PR02MB6088.namprd02.prod.outlook.com (52.132.228.94) by
 SN4SPR01MB010.namprd02.prod.outlook.com (10.167.133.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.14; Thu, 6 Jun 2019 12:23:08 +0000
Received: from CH2PR02MB6088.namprd02.prod.outlook.com
 ([fe80::3cca:e795:ebe2:b366]) by CH2PR02MB6088.namprd02.prod.outlook.com
 ([fe80::3cca:e795:ebe2:b366%6]) with mapi id 15.20.1943.018; Thu, 6 Jun 2019
 12:23:08 +0000
From: Vishal Sagar <vsagar@xilinx.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Subject: RE: [PATCH v8 1/2] media: dt-bindings: media: xilinx: Add Xilinx MIPI
 CSI-2 Rx Subsystem
Thread-Topic: [PATCH v8 1/2] media: dt-bindings: media: xilinx: Add Xilinx
 MIPI CSI-2 Rx Subsystem
Thread-Index: AQHVGfMZOW4cFen74Uu6bLLV7F3ehaaL4iYAgAKizUCAAAlqAIAAAJyg
Date: Thu, 6 Jun 2019 12:23:08 +0000
Message-ID: <CH2PR02MB6088A1C4C6AA60462B1A338EA7170@CH2PR02MB6088.namprd02.prod.outlook.com>
References: <1559555971-193235-1-git-send-email-vishal.sagar@xilinx.com>
 <1559555971-193235-2-git-send-email-vishal.sagar@xilinx.com>
 <20190604192344.7tycwffjd3yeizxh@paasikivi.fi.intel.com>
 <CH2PR02MB60889B850DCAA810A772160DA7170@CH2PR02MB6088.namprd02.prod.outlook.com>
 <20190606121238.zxdvvogob3umzid4@paasikivi.fi.intel.com>
In-Reply-To: <20190606121238.zxdvvogob3umzid4@paasikivi.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vsagar@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2ad0c02d-06d8-486f-d75b-08d6ea79bbdf
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:SN4SPR01MB010; 
x-ms-traffictypediagnostic: SN4SPR01MB010:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <SN4SPR01MB01061B98FDE656EE65461D8A7170@SN4SPR01MB010.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(346002)(366004)(39860400002)(396003)(13464003)(199004)(189003)(8936002)(316002)(8676002)(6506007)(53936002)(6246003)(7696005)(102836004)(478600001)(53546011)(74316002)(256004)(5660300002)(7416002)(81166006)(81156014)(76116006)(6306002)(11346002)(33656002)(446003)(4326008)(9686003)(66946007)(73956011)(2906002)(54906003)(6436002)(76176011)(66476007)(66556008)(486006)(64756008)(66446008)(476003)(55016002)(99286004)(305945005)(86362001)(71190400001)(71200400001)(26005)(229853002)(68736007)(966005)(66066001)(25786009)(6916009)(186003)(6116002)(52536014)(14444005)(3846002)(14454004)(7736002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN4SPR01MB010;
 H:CH2PR02MB6088.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: X934sQJ2E3AupcKSUifWu3jj4Lke4xcvqeP6GVi4LUf8dctuu0RhdZtEsPpT8uImGzkAax2E99yIIBtBO0tohTGAZ7hpXz6eLyKIeHswLAxnMYR/+oAy+ZkKlKiowlNOZpYvnq4E8tWR8QMHPP17AvKizMp+eVYKwnBCtxMQgeBTKn6rgzXOcPjNP2iO8r15J18Dp0YDqiNtrQ5VXbIIr2Z3x0J1fK4dzHLM8ioXlOmBcr2BvOClMzSDs1CHZOL3yb9S/ufbRcVwR1uwO7ftsk9Dv7SPa5rEgezVzmeNDHyptcWB0UcgulpRb+12gEUxvvuoBF8YeTU76Ycb4EFTH4I9ICfhPhTpWKlBCeis+hv5tT/tzaUVWBzl7WqAy1s82YsAfrUV+v4QgVVXvp3bucaxBVGPdW4iVeO4IDtXsgw=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ad0c02d-06d8-486f-d75b-08d6ea79bbdf
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2019 12:23:08.2036 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vsagar@xilinx.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4SPR01MB010
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_052313_111668_30549156 
X-CRM114-Status: GOOD (  22.75  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.84 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Jacopo Mondi <jacopo@jmondi.org>, Dinesh Kumar <dineshk@xilinx.com>,
 Hyun Kwon <hyunk@xilinx.com>, Sandip Kothari <sandipk@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Michal Simek <michals@xilinx.com>,
 "laurent.pinchart@ideasonboard.com" <laurent.pinchart@ideasonboard.com>,
 Vishal Sagar <vishal.sagar@xilinx.com>, Luca Ceresoli <luca@lucaceresoli.net>,
 "hans.verkuil@cisco.com" <hans.verkuil@cisco.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sakari,

> -----Original Message-----
> From: Sakari Ailus [mailto:sakari.ailus@linux.intel.com]
> Sent: Thursday, June 06, 2019 5:43 PM
> To: Vishal Sagar <vsagar@xilinx.com>
> Cc: Vishal Sagar <vishal.sagar@xilinx.com>; Hyun Kwon <hyunk@xilinx.com>;
> laurent.pinchart@ideasonboard.com; mchehab@kernel.org;
> robh+dt@kernel.org; mark.rutland@arm.com; Michal Simek
> <michals@xilinx.com>; linux-media@vger.kernel.org;
> devicetree@vger.kernel.org; hans.verkuil@cisco.com; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org; Dinesh Kumar
> <dineshk@xilinx.com>; Sandip Kothari <sandipk@xilinx.com>; Luca Ceresoli
> <luca@lucaceresoli.net>; Jacopo Mondi <jacopo@jmondi.org>
> Subject: Re: [PATCH v8 1/2] media: dt-bindings: media: xilinx: Add Xilinx MIPI
> CSI-2 Rx Subsystem
> 
> Hi Vishal,
> 
> On Thu, Jun 06, 2019 at 11:54:19AM +0000, Vishal Sagar wrote:
> > Hi Sakari,
> >
> > > -----Original Message-----
> > > From: Sakari Ailus [mailto:sakari.ailus@linux.intel.com]
> > > Sent: Wednesday, June 05, 2019 12:54 AM
> > > To: Vishal Sagar <vishal.sagar@xilinx.com>
> > > Cc: Hyun Kwon <hyunk@xilinx.com>; laurent.pinchart@ideasonboard.com;
> > > mchehab@kernel.org; robh+dt@kernel.org; mark.rutland@arm.com;
> Michal
> > > Simek <michals@xilinx.com>; linux-media@vger.kernel.org;
> > > devicetree@vger.kernel.org; hans.verkuil@cisco.com; linux-arm-
> > > kernel@lists.infradead.org; linux-kernel@vger.kernel.org; Dinesh Kumar
> > > <dineshk@xilinx.com>; Sandip Kothari <sandipk@xilinx.com>; Luca Ceresoli
> > > <luca@lucaceresoli.net>; Jacopo Mondi <jacopo@jmondi.org>
> > > Subject: Re: [PATCH v8 1/2] media: dt-bindings: media: xilinx: Add Xilinx
> MIPI
> > > CSI-2 Rx Subsystem
> > >
> > > EXTERNAL EMAIL
> > >
> > > Hi Vishal,
> > >
> > > On Mon, Jun 03, 2019 at 03:29:30PM +0530, Vishal Sagar wrote:
> > >
> > > > +Optional properties:
> > > > +--------------------
> > > > +- .
> > > > +  Without this property the driver won't be loaded as IP won't be able to
> > > generate
> > > > +  media bus format compliant stream output.
> > >
> > > I think we previously concluded that the format will be just different in
> > > this case. So the description appears incorrect.
> > >
> >
> > Referring to your email https://lkml.org/lkml/2019/3/22/1823 in response to
> v6 patches,
> > if the video format bridge is not enabled, then the way in which pixels are
> transported on
> > the bus don't correspond to the existing media bus formats in Linux.
> >
> > If not loading the driver is incorrect way, is it ok for the driver to allow same
> media bus format
> > for packed and unpacked data type on the sink pad?
> >
> > Or is it ok for the driver to not validate the media bus format set on the sink
> pad?
> 
> Taking a fresh look at the issue --- usually such unpacking is done by the
> DMA engine, or the same device contains both the CSI-2 RX and DMA. But here
> it actually affects the input of that DMA engine. You're right in saying we
> don't have format definitions from which you could tell which case it is,
> and we also don't have other pre-existing means to tell them apart.
> 
> Feel free to keep the check in the driver, but we can't refer to the driver
> loading in DT binding documentation: this is really not supposed to be
> related to that driver, or even Linux at all.
> 

Ok got it. The description here shouldn't be specific to driver.
I will keep the check in driver.

> How about changing this to:
> 
> xlnx,vfb: Present when Video Format Bridge is enabled in IP configuration.
> 
> That'd be aligned with the other properties and would more accurately
> convey what this means.

Agree this is a good way to define the property. I will update it the description as mentioned here.

> 
> --
> Kind regards,
> 
> Sakari Ailus
> sakari.ailus@linux.intel.com

Regards
Vishal Sagar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
