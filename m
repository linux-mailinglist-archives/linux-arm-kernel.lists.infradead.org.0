Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B75E1E4588
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 16:16:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DusLyWPsLe4E895zr1n7Ydy7OQcowuml+psj23gDeZo=; b=bJ+RRAA7sIMhQ6
	UEHP2J34iLwMSK2aquvempWLjqrCsFd69hh6nn8WpUhdas7QrlHTmJdOKxWoz91ERqt1xWO2KOn5D
	qaMouXjiok/mB9KizzvDncg1uVAx91vCkQVIeydY5KgkTnYb1xFC+nPN5L9wwQVcLz6/q39SUmJdc
	mD5qDQE9+4SOMg8Ttav2kzFCwL0g7d4iM0Hp/R3nvCtGbvfpGTqJv8J3aaISE+2ASIj8EvF9CaOwS
	omXkHc2LRIXeaSGYWILDPOlnKk69WaDgC7530MHwctSTS2mNSIgVh8L/ZIvwXZ5q9xugg1gX/J8S5
	MEijAEdpZjui1keWc7yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdwr6-0001LY-Sp; Wed, 27 May 2020 14:16:28 +0000
Received: from mail-dm6nam12on2051.outbound.protection.outlook.com
 ([40.107.243.51] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdwno-0004pA-NL
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 14:13:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cu+IKm0GDu2ugP1zrfDZCU5vadfgMe9cSStTqWAJTgwmlOa155WRxlGM+ohWpFigTPwCqYRkXuo4aGVtfcRdna8XMNdHc5VGrtPUC9rsZ/rD+T5lJMm/OmZtiQccPOiBhdfUnpzzYW/SjpJElgrjUg03F+a9R1ZI/zCPHqCwDslZS1xJLqaduAkxy3wQWJr0R9koCV6m4b8rvg4eUEas0ezpvhjNNyV5t6jLV7rzJjYCyTwYavl4hrHYBfq89tHo74LRYA0Z0Y7GmmXi4Jlo8n7PpjoLY24pVLlP9KPXbn32FGTtErLT5xsPw+ullEAKzZVK+ibvDomlpuwEETDgdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/o2tae7R4E22TlXPOqtgrXvjZPkYdgQIEYMhqYHC0Tw=;
 b=kXxFokhxhbNwiEwqu/SBa68NzObtuNr2eE/aU1dyYKe07cZhu3aRjF/VDuyn/LBT/mQ/yg9WT3KOJIVj9K644NqqMW5N0y54QFSjc7jvKDOcXPn0NFD2kIug6NT/Q1x34aLmWTIG8fRHtULjDyLaToxGCU2h1aB9Emhv5rTE6QQRAQZ2zWpk8ceaHVbCslWRwAxYiwTz3PFDGCxauA6l4sbN87YyouJ4YQzmrx/Gb9iRL0qVEQBnDWxpd/Xfe7MxvM96wFlc23GNSKX2wiZFS8Fyq1x880Dba3vbh2p80bS7RsLKRoHrt3eEH1BQT3XeR9oGk4RRvXPYXBW235ME6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/o2tae7R4E22TlXPOqtgrXvjZPkYdgQIEYMhqYHC0Tw=;
 b=PGoOwVJtMoldzYzqMuWSthq5BtW8XNaPuRBnloChuZbyEShG97O9lS/adloTftTX/TKsEtbwIy/SzSsuiK41nZT21Wh/q0eKIcLd/4mY60n21N5tfledQq4I0oCM7zbBeac8pk0U7KTIzgnpRgptDPLXElr0olG5p92Nsq5L8qE=
Received: from DM6PR02MB6876.namprd02.prod.outlook.com (2603:10b6:5:22c::11)
 by DM6PR02MB4377.namprd02.prod.outlook.com (2603:10b6:5:22::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Wed, 27 May
 2020 14:13:01 +0000
Received: from DM6PR02MB6876.namprd02.prod.outlook.com
 ([fe80::ad68:d392:e519:f671]) by DM6PR02MB6876.namprd02.prod.outlook.com
 ([fe80::ad68:d392:e519:f671%9]) with mapi id 15.20.3021.029; Wed, 27 May 2020
 14:13:01 +0000
From: Vishal Sagar <vsagar@xilinx.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: RE: [PATCH v13 1/2] media: dt-bindings: media: xilinx: Add Xilinx
 MIPI CSI-2 Rx Subsystem
Thread-Topic: [PATCH v13 1/2] media: dt-bindings: media: xilinx: Add Xilinx
 MIPI CSI-2 Rx Subsystem
Thread-Index: AQHWKHDc6Gvs+SWyz0SjP54hjxgjuai2jc4AgAVYrQCAABy6AIAAC31g
Date: Wed, 27 May 2020 14:13:01 +0000
Message-ID: <DM6PR02MB6876967667A2FDFA4ABD8AEFA7B10@DM6PR02MB6876.namprd02.prod.outlook.com>
References: <20200512151947.120348-1-vishal.sagar@xilinx.com>
 <20200512151947.120348-2-vishal.sagar@xilinx.com>
 <20200524020214.GB6026@pendragon.ideasonboard.com>
 <DM6PR02MB68762DFB8F24E485B9B302B6A7B10@DM6PR02MB6876.namprd02.prod.outlook.com>
 <20200527132344.GC6171@pendragon.ideasonboard.com>
In-Reply-To: <20200527132344.GC6171@pendragon.ideasonboard.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: ideasonboard.com; dkim=none (message not signed)
 header.d=none;ideasonboard.com; dmarc=none action=none
 header.from=xilinx.com;
x-originating-ip: [149.199.50.130]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8c5fee14-7846-45b9-8a9a-08d8024810e8
x-ms-traffictypediagnostic: DM6PR02MB4377:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR02MB4377C91BE94B515CA062AF04A7B10@DM6PR02MB4377.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 04163EF38A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: u1qcx6ul8PWGR+dYl0gRg654cHSGgItypzd+Ey9KJTdfXzhMznQmeW+QMD5ZjmY8zfZ9lKcxf/UyV53qMlnah35YCTsPFewF9Yx9ERINoQ6F5zxyOEzbuMLZLs3j+FlvGn3K+/Uwy3yKgG3JP9U2UAKWuNzGyKuuQtaW/r9hn3pAr20mDU5tdpAmCTk8VZiBwmKMgdmDLY4fxyDEJiGf8PCVUWvOnRM6xnch8szG1Wk9u1T2gK8XWVXC0ZLM3PMRbHAdwhXxM9cAhMSNFX/3hierw1d1R+zXr8A6G1bmBIgDCbP7VCJdztPcNDjHkKjMTk5iRfHvJ7SIVxPt1qJfOxPckz1jWteaLBrBegGpCMkLVrkpYvdDMQnj0VvoYd1WPJPnHY4M5fGXZNNrBQcyDg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR02MB6876.namprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(346002)(39860400002)(136003)(366004)(396003)(8936002)(55016002)(478600001)(9686003)(71200400001)(6916009)(83380400001)(76116006)(52536014)(86362001)(66476007)(66446008)(66946007)(66556008)(64756008)(30864003)(5660300002)(966005)(26005)(8676002)(7416002)(4326008)(53546011)(316002)(33656002)(186003)(7696005)(54906003)(6506007)(2906002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: x1Y9S3anAXr5KvOhyf3jEiKmLAUT10heutnC9VGtd6+wrQ6BX+rKxxssNwSqpkcO9SbIkl1qFC29gD0YUj/Yky/a/Ecpb8uUizV0NSJPhe/poKaskODJmpC2rbRCOLxybiDHbTqYiFVXK0ygZL9px+Af/jf2UC2br4lyT2Iwa2p0M4DcJArgA9tsa/kf0PB/SDbLZtIEECSsAm1b0czBHAYigN/A2gihHszb6kDByepSMU0ihuBcwhhHWYT5U1PN79Ui9G8240eouGCgXWGfRTVd41Nq6oFqs7EZAXWgjn2KyI8yY1KMH0t7ND0XiIQzOi9xFFBuS/+sb2CABF5b0dvAOKLDqhehhZyQnn+yLd3lbs3FqPVWbHDLht+raZekWmPLnortr+KHvlxF07ovlr4OGrHmXQmw0OhSKJqYmi22aXP4KBb+HtL/iMwvDnseNTt5Uhr9PIiTC76hh+mx6cBOEpCh6kk2fwzXO/r8RKyfYrHCHZ+6Uf1jYHlPwb1X
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c5fee14-7846-45b9-8a9a-08d8024810e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2020 14:13:01.6017 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tVjPqxsbPCBn/Yd4WX+ebiqmmeI2xWmk8zpna2/cSlTUYJJ1JsNB15Syb0dcXNJqQMHbthTGwJd0rEm9Sf7ITQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4377
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_071305_160844_D3BA185F 
X-CRM114-Status: GOOD (  25.42  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.243.51 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.243.51 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Jacopo Mondi <jacopo@jmondi.org>, Dinesh Kumar <dineshk@xilinx.com>,
 Hyun Kwon <hyunk@xilinx.com>, Sandip Kothari <sandipk@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Michal Simek <michals@xilinx.com>,
 Luca Ceresoli <luca@lucaceresoli.net>,
 "hans.verkuil@cisco.com" <hans.verkuil@cisco.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laurent,

> -----Original Message-----
> From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Sent: Wednesday, May 27, 2020 6:54 PM
> To: Vishal Sagar <vsagar@xilinx.com>
> Cc: Hyun Kwon <hyunk@xilinx.com>; mchehab@kernel.org;
> robh+dt@kernel.org; mark.rutland@arm.com; Michal Simek
> <michals@xilinx.com>; linux-media@vger.kernel.org;
> devicetree@vger.kernel.org; hans.verkuil@cisco.com; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org; Dinesh Kumar
> <dineshk@xilinx.com>; Sandip Kothari <sandipk@xilinx.com>; Luca Ceresoli
> <luca@lucaceresoli.net>; Jacopo Mondi <jacopo@jmondi.org>; Rob Herring
> <robh@kernel.org>
> Subject: Re: [PATCH v13 1/2] media: dt-bindings: media: xilinx: Add Xilinx MIPI
> CSI-2 Rx Subsystem
> 
> Hi Vishal,
> 
> On Wed, May 27, 2020 at 11:53:01AM +0000, Vishal Sagar wrote:
> > On Sunday, May 24, 2020 7:32 AM, Laurent Pinchart wrote:
> > > On Tue, May 12, 2020 at 08:49:46PM +0530, Vishal Sagar wrote:
> > > > Add bindings documentation for Xilinx MIPI CSI-2 Rx Subsystem.
> > > >
> > > > The Xilinx MIPI CSI-2 Rx Subsystem consists of a CSI-2 Rx
> > > > controller, a D-PHY in Rx mode and a Video Format Bridge.
> > > >
> > > > Signed-off-by: Vishal Sagar <vishal.sagar@xilinx.com>
> > > > Reviewed-by: Hyun Kwon <hyun.kwon@xilinx.com>
> > > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > > Reviewed-by: Luca Ceresoli <luca@lucaceresoli.net>
> > > > Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > > > ---
> > > > v13
> > > > - Based on Laurent's suggestions
> > > > - Fixed the datatypes values as minimum and maximum
> > > > - condition added for en-vcx property
> > > >
> > > > v12
> > > > - Moved to yaml format
> > > > - Update CSI-2 and D-PHY
> > > > - Mention that bindings for D-PHY not here
> > > > - reset -> video-reset
> > > >
> > > > v11
> > > > - Modify compatible string from 4.0 to 5.0
> > > >
> > > > v10
> > > > - No changes
> > > >
> > > > v9
> > > > - Fix xlnx,vfb description.
> > > > - s/Optional/Required endpoint property.
> > > > - Move data-lanes description from Ports to endpoint property section.
> > > >
> > > > v8
> > > > - Added reset-gpios optional property to assert video_aresetn
> > > >
> > > > v7
> > > > - Removed the control name from dt bindings
> > > > - Updated the example dt node name to csi2rx
> > > >
> > > > v6
> > > > - Added "control" after V4L2_CID_XILINX_MIPICSISS_ACT_LANES as
> > > > suggested by Luca
> > > > - Added reviewed by Rob Herring
> > > >
> > > > v5
> > > > - Incorporated comments by Luca Cersoli
> > > > - Removed DPHY clock from description and example
> > > > - Removed bayer pattern from device tree MIPI CSI IP
> > > >   doesn't deal with bayer pattern.
> > > >
> > > > v4
> > > > - Added reviewed by Hyun Kwon
> > > >
> > > > v3
> > > > - removed interrupt parent as suggested by Rob
> > > > - removed dphy clock
> > > > - moved vfb to optional properties
> > > > - Added required and optional port properties section
> > > > - Added endpoint property section
> > > >
> > > > v2
> > > > - updated the compatible string to latest version supported
> > > > - removed DPHY related parameters
> > > > - added CSI v2.0 related property (including VCX for supporting upto 16
> > > >   virtual channels).
> > > > - modified csi-pxl-format from string to unsigned int type where the value
> > > >   is as per the CSI specification
> > > > - Defined port 0 and port 1 as sink and source ports.
> > > > - Removed max-lanes property as suggested by Rob and Sakari
> > > > .../bindings/media/xilinx/xlnx,csi2rxss.yaml  | 226
> > > > ++++++++++++++++++
> > > >  1 file changed, 226 insertions(+)  create mode 100644
> > > > Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.yaml
> > > >
> > > > diff --git
> > > > a/Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.yam
> > > > l
> > > > b/Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.yam
> > > > l
> > > > new file mode 100644
> > > > index 000000000000..b0885f461785
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss
> > > > +++ .yam
> > > > +++ l
> > > > @@ -0,0 +1,226 @@
> > > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) %YAML
> > > > +1.2
> > > > +---
> > > > +$id:
> > > > +http://devicetree.org/schemas/media/xilinx/xlnx,csi2rxss.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Xilinx MIPI CSI-2 Receiver Subsystem
> > > > +
> > > > +maintainers:
> > > > +  - Vishal Sagar <vishal.sagar@xilinx.com>
> > > > +
> > > > +description: |
> > > > +  The Xilinx MIPI CSI-2 Receiver Subsystem is used to capture
> > > > +MIPI
> > > > +CSI-2
> > > > +  traffic from compliant camera sensors and send the output as
> > > > +AXI4 Stream
> > > > +  video data for image processing.
> > > > +  The subsystem consists of a MIPI D-PHY in slave mode which
> > > > +captures the
> > > > +  data packets. This is passed along the MIPI CSI-2 Rx IP which
> > > > +extracts the
> > > > +  packet data. The optional Video Format Bridge (VFB) converts
> > > > +this data to
> > > > +  AXI4 Stream video data.
> > > > +  For more details, please refer to PG232 Xilinx MIPI CSI-2
> > > > +Receiver
> > > Subsystem.
> > > > +  Please note that this bindings includes only the MIPI CSI-2 Rx
> > > > +controller
> > > > +  and Video Format Bridge and not D-PHY.
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    items:
> > > > +      - enum:
> > > > +        - xlnx,mipi-csi2-rx-subsystem-5.0
> > > > +
> > > > +  reg:
> > > > +    maxItems: 1
> > > > +
> > > > +  interrupts:
> > > > +    maxItems: 1
> > > > +
> > > > +  clocks:
> > > > +    description: List of clock specifiers
> > > > +    items:
> > > > +      - description: AXI Lite clock
> > > > +      - description: Video clock
> > > > +
> > > > +  clock-names:
> > > > +    items:
> > > > +      - const: lite_aclk
> > > > +      - const: video_aclk
> > > > +
> > > > +  xlnx,csi-pxl-format:
> > > > +    description: |
> > > > +      This denotes the CSI Data type selected in hw design.
> > > > +      Packets other than this data type (except for RAW8 and
> > > > +      User defined data types) will be filtered out.
> > > > +      Possible values are as below -
> > > > +      0x1e - YUV4228B
> > > > +      0x1f - YUV42210B
> > > > +      0x20 - RGB444
> > > > +      0x21 - RGB555
> > > > +      0x22 - RGB565
> > > > +      0x23 - RGB666
> > > > +      0x24 - RGB888
> > > > +      0x28 - RAW6
> > > > +      0x29 - RAW7
> > > > +      0x2a - RAW8
> > > > +      0x2b - RAW10
> > > > +      0x2c - RAW12
> > > > +      0x2d - RAW14
> > > > +      0x2e - RAW16
> > > > +      0x2f - RAW20
> > > > +    allOf:
> > > > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > > > +      - anyOf:
> > > > +        - minimum: 0x1e
> > > > +        - maximum: 0x24
> > > > +        - minimum: 0x28
> > > > +        - maximum: 0x2f
> > > > +
> > > > +  xlnx,vfb:
> > > > +    type: boolean
> > > > +    description: Present when Video Format Bridge is enabled in
> > > > + IP configuration
> > > > +
> > > > +  xlnx,en-csi-v2-0:
> > > > +    type: boolean
> > > > +    description: Present if CSI v2 is enabled in IP configuration.
> > > > +
> > > > +  xlnx,en-vcx:
> > > > +    type: boolean
> > > > +    description: |
> > > > +      When present, there are maximum 16 virtual channels, else only 4.
> > > > +
> > > > +  xlnx,en-active-lanes:
> > > > +    type: boolean
> > > > +    description: |
> > > > +      Present if the number of active lanes can be re-configured at
> > > > +      runtime in the Protocol Configuration Register. Otherwise all lanes,
> > > > +      as set in IP configuration, are always active.
> > > > +
> > > > +  video-reset-gpios:
> > > > +    description: Optional specifier for a GPIO that asserts video_aresetn.
> > > > +    maxItems: 1
> > > > +
> > > > +  ports:
> > > > +    type: object
> > > > +
> > > > +    properties:
> > > > +      port@0:
> > > > +        type: object
> > > > +        description: |
> > > > +          Input / sink port node, single endpoint describing the
> > > > +          CSI-2 transmitter.
> > > > +
> > > > +        properties:
> > > > +          reg:
> > > > +            const: 0
> > > > +
> > > > +          endpoint:
> > > > +            type: object
> > > > +
> > > > +            properties:
> > > > +
> > > > +              data-lanes:
> > > > +                description: |
> > > > +                  This is required only in the sink port 0 endpoint which
> > > > +                  connects to MIPI CSI-2 source like sensor.
> > > > +                  The possible values are -
> > > > +                  1       - For 1 lane enabled in IP.
> > > > +                  1 2     - For 2 lanes enabled in IP.
> > > > +                  1 2 3   - For 3 lanes enabled in IP.
> > > > +                  1 2 3 4 - For 4 lanes enabled in IP.
> > > > +                items:
> > > > +                  - const: 1
> > > > +                  - const: 2
> > > > +                  - const: 3
> > > > +                  - const: 4
> > > > +
> > > > +              remote-endpoint: true
> > > > +
> > > > +            required:
> > > > +              - data-lanes
> > > > +              - remote-endpoint
> > > > +
> > > > +            additionalProperties: false
> > > > +
> > > > +        additionalProperties: false
> > > > +
> > > > +      port@1:
> > > > +        type: object
> > > > +        description: |
> > > > +          Output / source port node, endpoint describing modules
> > > > +          connected the CSI-2 receiver.
> > > > +
> > > > +        properties:
> > > > +
> > > > +          reg:
> > > > +            const: 1
> > > > +
> > > > +          endpoint:
> > > > +            type: object
> > > > +
> > > > +            properties:
> > > > +
> > > > +              remote-endpoint: true
> > > > +
> > > > +            required:
> > > > +              - remote-endpoint
> > > > +
> > > > +            additionalProperties: false
> > > > +
> > > > +        additionalProperties: false
> > > > +
> > > > +required:
> > > > +  - compatible
> > > > +  - reg
> > > > +  - interrupts
> > > > +  - clocks
> > > > +  - clock-names
> > > > +  - xlnx,csi-pxl-format
> > > > +  - ports
> > > > +
> > > > +if:
> > > > +  not:
> > > > +    required:
> > > > +      - xlnx,en-csi-v2-0
> > > > +then:
> > > > +  properties:
> > > > +    xlnx,en-vcx: false
> > >
> > > As I've just commented on v12, I think we should condition the
> > > xlnx,csi-pxl- format property to xlnx,vfb being set.
> > > xlnx,csi-pxl-format should be removed from the required properties above,
> and the following conditions added:
> > >
> > > allOf:
> > >   - if:
> > >       required:
> > >         - xlnx,vfb
> > >     then:
> > >       required:
> > >         - xlnx,csi-pxl-format
> > >     else:
> > >       properties:
> > >         xlnx,csi-pxl-format: false
> > >
> > >   - if:
> > >       not:
> > >         required:
> > >           - xlnx,en-csi-v2-0
> > >     then:
> > >       properties:
> > >         xlnx,en-vcx: false
> > >
> > > The 'allOf' is needed as you can't have two 'if' constructs at the top level.
> > >
> > Thanks for sharing the explanation for this.
> > Can you please share where I can get this info?
> 
> The json-schema specification is available at https://json-
> schema.org/specification.html. allOf is defined in https://json-
> schema.org/draft/2019-09/json-schema-core.html#allOf.
> 
> JSON schemas are expressed in JSON format, and YAML is a (more readable)
> superset syntax of JSON. A YAML document contains lists and objects:
> 
> - this
> - is
> - a
> - list
> 
> object:
>   can: have
>   properties:
>     that: can
>     be: other
>     objects
> 
> An object is similar to a Python dictionary, it can't have multiple entries with
> the same key. So having
> 
> if:
>   required:
>     - xlnx,vfb
> then:
>   required:
>     - xlnx,csi-pxl-format
> else:
>   properties:
>     xlnx,csi-pxl-format: false
> 
> if:
>   not:
>     required:
>       - xlnx,en-csi-v2-0
> then:
>   properties:
>     xlnx,en-vcx: false
> 
> at the top level is not valid, the same way that
> 
> properties:
>   reg:
>     maxItems: 1
>   reg:
>     maxItems: 1
> 
> wouldn't be valid. The allOf object has a value that is a list of
> schemas:
> 
> allOf:
>   - schema1
>   - schema2
>   - schema3
> 
> and in this case, we use it with a if...then...else for each of the schemas. As
> documented in the spec, "An instance validates successfully against [allOf] if it
> validates successfully against all schemas defined by [allOf]'s value".
> 
> allOf is also used to include sub-schemas, as explained in
> Documentation/devicetree/bindings/example-schema.yaml.
> 
>   vendor,int-property:
>     description: Vendor specific properties must have a description
>     # 'allOf' is the json-schema way of subclassing a schema. Here the base
>     # type schema is referenced and then additional constraints on the values
>     # are added.
>     allOf:
>       - $ref: /schemas/types.yaml#/definitions/uint32
>       - enum: [2, 4, 6, 8, 10]
> 
> If this was written
> 
>   vendor,int-property:
>     $ref: /schemas/types.yaml#/definitions/uint32
>     enum: [2, 4, 6, 8, 10]
> 
> we would have an issue (among other problems) if
> /schemas/types.yaml#/definitions/uint32 contained an enum, as there would
> be two enum properties for vendor,int-property.
> 

Thanks for the detailed explanation Laurent! 

> > > Please however let me know if my understanding is wrong and
> > > xlnx,csi-pxl- format is needed even when xlnx,vfb is not set. In
> > > that case please ignore this change (but please add the ... below).
> >
> > Ok. I will add ... in the end.
> >
> > > > +
> > > > +additionalProperties: false
> > > > +
> > > > +examples:
> > > > +  - |
> > > > +    #include <dt-bindings/gpio/gpio.h>
> > > > +    xcsi2rxss_1: csi2rx@a0020000 {
> > > > +        compatible = "xlnx,mipi-csi2-rx-subsystem-5.0";
> > > > +        reg = <0x0 0xa0020000 0x0 0x10000>;
> > > > +        interrupt-parent = <&gic>;
> > > > +        interrupts = <0 95 4>;
> > > > +        xlnx,csi-pxl-format = <0x2a>;
> > > > +        xlnx,vfb;
> > > > +        xlnx,en-active-lanes;
> > > > +        xlnx,en-csi-v2-0;
> > > > +        xlnx,en-vcx;
> > > > +        clock-names = "lite_aclk", "video_aclk";
> > > > +        clocks = <&misc_clk_0>, <&misc_clk_1>;
> > > > +        video-reset-gpios = <&gpio 86 GPIO_ACTIVE_LOW>;
> > > > +
> > > > +        ports {
> > > > +            #address-cells = <1>;
> > > > +            #size-cells = <0>;
> > > > +
> > > > +            port@0 {
> > > > +                /* Sink port */
> > > > +                reg = <0>;
> > > > +                csiss_in: endpoint {
> > > > +                    data-lanes = <1 2 3 4>;
> > > > +                    /* MIPI CSI-2 Camera handle */
> > > > +                    remote-endpoint = <&camera_out>;
> > > > +                };
> > > > +            };
> > > > +            port@1 {
> > > > +                /* Source port */
> > > > +                reg = <1>;
> > > > +                csiss_out: endpoint {
> > > > +                    remote-endpoint = <&vproc_in>;
> > > > +                };
> > > > +            };
> > > > +        };
> > > > +    };
> > >
> > > YAML files usually end with
> > >
> > > ...
> > >
> > > on the last line to mark the end of file.
> > >
> >
> > Ok I will add this to the end of the file.
> >
> > > Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> --
> Regards,
> 
> Laurent Pinchart

Regards
Vishal Sagar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
