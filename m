Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5A11E587D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 09:25:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HnWGz47l6SDmPX6Hue3/yKxhlKgokdXaDypDGYjKNYk=; b=t9zoVk86wXjxj2
	q9tvtiObz4zgzGPIKK+qFRtinacAntqzkvf73mLAD+NwqCWJvM0ElZFTj9gKgm1OuEBCYyVIdqZgi
	PC30zHK/QQjA9w4AwR5RO2OJSVtInZvhSK/ImEEE6c+mG8Nr++STWKl02FWKiEMRSI1ShkymGW4Bm
	nwmZKY/oQX6z2saX8CBpuo0qTHV8uNLDTWL4tBdtooEf+anlavMAWOSoo1OZJ0Dsnp50+vSaXXSea
	zw8Pdhy/9eV1EE8XxQDgNYf60u85mWby8q0+z0QDOewGcm35sjiIPNTJhtAie0Gp4+XepY9Ls9J1j
	cVPkO0272j4I5KQXkztw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeCuw-000394-78; Thu, 28 May 2020 07:25:30 +0000
Received: from mail-bn8nam11on2084.outbound.protection.outlook.com
 ([40.107.236.84] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeCuh-000385-Kp
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 07:25:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=my39ibxLLpXGWuCQv0HlLpVjhkK1pWCHSUb6Ya0ZN2dr64uBIelBnF71tVWrvF3YcEBiMkfAao/LvW5wUOQUPR7ShnqUpY0CedpTKB4wRJGoXMV2hi7Khqlr/hZJUG9x3Jq/54T4Z3xEKsF9DUmnOFyA5YIN/ESZFmenyYLpZQldUxH7iqamz9BbwFHmOMwSkyWy+inDl1efMp8vzvCjDbo63umnaQ8WStLpgu/AfhuxAuOvWWnHECaTpJXUaLlXTArIBDkmIjeDmBDYlN0LuHp5vpG7yQhEw6ASdaaQlSOcO92Uno84txXnyOj5rpAfZeMY0OuCoIZ2uUW0NN/gng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yTpVFWJF87WYRRgtMa/eAkGFcOWyC1ag5+t5M6WUBts=;
 b=hqp9EotXAwUiKcM3/lcVItYqEs8jHLDvJtW9twyLGj0otYW6Gn+etVZDC3ZW6+PLp4AuyluULdCiJb7jjN5KNWn+BZtDDCtycl3I4dtcMtnhi34apJ/QOEOeIvA93QtwPWFEGvzqB31Rnsd0nFq+xdo7kH5wWENdzYnQXPAAq4rrQNqMKJMhQ3dDUqTC+CJfGCdpvHGXt2BHYKSM02ZfOR11at80D4lBUQsqcEuJ/T+AeBE39LVwhjWy56tLUAE4uCmRzWE14ZB/2y3wH8rPUx5X/PU3MVLorYMNo1hEXyawfL6VWCmuqdKugRmjuEAKRamjiTvEeK7PG5HeWOgocw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yTpVFWJF87WYRRgtMa/eAkGFcOWyC1ag5+t5M6WUBts=;
 b=SCgSfzMTTLswMWAkQuARpfoeV1R70+RtdcIi2s9c9szsw1A+Mg2ZoJHSjjerZIbmx9yzsozyxoqG7pGdt2o949s4hTdQTJ4o/22m+6w16++Gejgmgjzg9lMfVXg5uDgBFBakmJQTksUHuxYiIEYChZ8h9Y+jLg62XiVhnd4maqw=
Received: from DM6PR02MB6876.namprd02.prod.outlook.com (2603:10b6:5:22c::11)
 by DM6PR02MB4396.namprd02.prod.outlook.com (2603:10b6:5:21::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Thu, 28 May
 2020 07:25:12 +0000
Received: from DM6PR02MB6876.namprd02.prod.outlook.com
 ([fe80::ad68:d392:e519:f671]) by DM6PR02MB6876.namprd02.prod.outlook.com
 ([fe80::ad68:d392:e519:f671%9]) with mapi id 15.20.3021.029; Thu, 28 May 2020
 07:25:12 +0000
From: Vishal Sagar <vsagar@xilinx.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: RE: [PATCH v14 1/2] media: dt-bindings: media: xilinx: Add Xilinx
 MIPI CSI-2 Rx Subsystem
Thread-Topic: [PATCH v14 1/2] media: dt-bindings: media: xilinx: Add Xilinx
 MIPI CSI-2 Rx Subsystem
Thread-Index: AQHWNC7SPjgdVRRG3EKpmIv0XtK+wqi8GqQAgAD9xKA=
Date: Thu, 28 May 2020 07:25:12 +0000
Message-ID: <DM6PR02MB6876427592203524D810D338A78E0@DM6PR02MB6876.namprd02.prod.outlook.com>
References: <1590587839-129558-1-git-send-email-vishal.sagar@xilinx.com>
 <1590587839-129558-2-git-send-email-vishal.sagar@xilinx.com>
 <20200527161140.GF6171@pendragon.ideasonboard.com>
In-Reply-To: <20200527161140.GF6171@pendragon.ideasonboard.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: ideasonboard.com; dkim=none (message not signed)
 header.d=none;ideasonboard.com; dmarc=none action=none
 header.from=xilinx.com;
x-originating-ip: [122.170.225.235]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 667e0551-e6d6-43e8-447a-08d802d84254
x-ms-traffictypediagnostic: DM6PR02MB4396:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR02MB43964F8E24040583F4E3D615A78E0@DM6PR02MB4396.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: F7PttgPpqiySZZIB7zWERLy8bVvddrQwK98b6eh/m/aOvahx8wFaZrqkkP8eWDtSiji65o8XrUR516tJQUcbgsHzVk9au/B+D6jAG/+coRnyDzL+LgMzlAK+cykVVmi+7bq+Uxcufkq+LV2raLCU/KBXGOMaXbwNIwCZ8XRbPwoDNcyJ+G+XfaPugqm5OFW3vOFTj7MS6OjJeimaLlFzT/fOKRAsBDkQHVnC7X/vTWEUdqPjmI4zsknI13icDDZ4X0asC0iSOY32DJWfJVq9+A4RWe0bMOqMXzPtzaYLDwgEGVVf2p732zYjWujUKGVu+xbQ7eiy70ctpCvPnBFfNe1iBJ9nsnJ8Vjw/wdIdjZ+33YIdIbmkSaf3Vs/72vzM/e9rwEXPFjEtpEn6KsCVpA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR02MB6876.namprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(39860400002)(366004)(376002)(396003)(346002)(53546011)(71200400001)(55016002)(9686003)(6506007)(4326008)(26005)(316002)(30864003)(7416002)(5660300002)(52536014)(186003)(66476007)(966005)(54906003)(76116006)(66446008)(66556008)(64756008)(55236004)(7696005)(66946007)(33656002)(6916009)(83380400001)(86362001)(8676002)(2906002)(478600001)(8936002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 0HYE2T5RzWl6JMhQXvrnwS28pdnEr/2rP8BtZ2tAMax8ruLCj6Dc8iwJneEG8c7ZelOf5inLCJ7Ss9jqIohK9czpiU4chO0Sbtuei9LIjMUu1yU2CSt4gksJUVt0MCRCYxTKTIK24XAGRvriDulcTO4DQ+bO9sOcDcAQgrL90UaRJCD2+1gqX4uefCns2uTPglX/JDSJZXRKvsWm4efsp52a/gVKslunOeAYmp1nUil1qprOqW8xTk5NqofQWQ/S1jMFnvvLuE+bOyuj5iFfYnV+W60f3rrzgKtplrAS/i3X1XBo8f5A11GUyuCeuvFS6C4P0lrG7AypyhF83S2v/xwYWxYD4vX/CKcUUWz9v0TNZIC9fqOl8j6PjPhpqUnT7tdz72KbD7l/M/9TtDUb97c5+T/y0u2BqjPTeGZSJFEUBpvX+O5wPkWoC0U8zbx38AX4M2hEsiBvZhGvR9YAN5/QCrB7lt/AM3zxdAEOGLKNtxMjVTeqfqQPfUNN252n
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 667e0551-e6d6-43e8-447a-08d802d84254
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 07:25:12.1238 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ephLQ5hgqSIONNGzIpz+UXmy5fcFBkbc7RFbqycJ7U7Qfx/ygt3LZN6CuHgOE3z5o4a89PVHNerupVmXEbPoMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4396
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_002515_756452_EB2D0B82 
X-CRM114-Status: GOOD (  25.63  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.236.84 listed in wl.mailspike.net]
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
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laurent,

> -----Original Message-----
> From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Sent: Wednesday, May 27, 2020 9:42 PM
> To: Vishal Sagar <vsagar@xilinx.com>
> Cc: Hyun Kwon <hyunk@xilinx.com>; mchehab@kernel.org;
> robh+dt@kernel.org; mark.rutland@arm.com; Michal Simek
> <michals@xilinx.com>; linux-media@vger.kernel.org;
> devicetree@vger.kernel.org; hans.verkuil@cisco.com; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org; Dinesh Kumar
> <dineshk@xilinx.com>; Sandip Kothari <sandipk@xilinx.com>; Luca Ceresoli
> <luca@lucaceresoli.net>; Jacopo Mondi <jacopo@jmondi.org>
> Subject: Re: [PATCH v14 1/2] media: dt-bindings: media: xilinx: Add Xilinx MIPI
> CSI-2 Rx Subsystem
> 
> Hi Vishal,
> 
> Thank you for the patch.
> 
> On Wed, May 27, 2020 at 07:27:18PM +0530, Vishal Sagar wrote:
> > Add bindings documentation for Xilinx MIPI CSI-2 Rx Subsystem.
> >
> > The Xilinx MIPI CSI-2 Rx Subsystem consists of a CSI-2 Rx controller,
> > a D-PHY in Rx mode and a Video Format Bridge.
> >
> > Signed-off-by: Vishal Sagar <vishal.sagar@xilinx.com>
> > Reviewed-by: Hyun Kwon <hyun.kwon@xilinx.com>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Reviewed-by: Luca Ceresoli <luca@lucaceresoli.net>
> > Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > ---
> > v14
> > - Removed xlnx,csi-pxl-format from required properties
> > - Added dependency of xlnx,csi-pxl-format on xlnx,vfb
> > - End the yaml file with ...
> > - Added Reviewed by Laurent
> >
> > v13
> > - Based on Laurent's suggestions
> > - Fixed the datatypes values as minimum and maximum
> > - condition added for en-vcx property
> >
> > v12
> > - Moved to yaml format
> > - Update CSI-2 and D-PHY
> > - Mention that bindings for D-PHY not here
> > - reset -> video-reset
> >
> > v11
> > - Modify compatible string from 4.0 to 5.0
> >
> > v10
> > - No changes
> >
> > v9
> > - Fix xlnx,vfb description.
> > - s/Optional/Required endpoint property.
> > - Move data-lanes description from Ports to endpoint property section.
> >
> > v8
> > - Added reset-gpios optional property to assert video_aresetn
> >
> > v7
> > - Removed the control name from dt bindings
> > - Updated the example dt node name to csi2rx
> >
> > v6
> > - Added "control" after V4L2_CID_XILINX_MIPICSISS_ACT_LANES as
> > suggested by Luca
> > - Added reviewed by Rob Herring
> >
> > v5
> > - Incorporated comments by Luca Cersoli
> > - Removed DPHY clock from description and example
> > - Removed bayer pattern from device tree MIPI CSI IP
> >   doesn't deal with bayer pattern.
> >
> > v4
> > - Added reviewed by Hyun Kwon
> >
> > v3
> > - removed interrupt parent as suggested by Rob
> > - removed dphy clock
> > - moved vfb to optional properties
> > - Added required and optional port properties section
> > - Added endpoint property section
> >
> > v2
> > - updated the compatible string to latest version supported
> > - removed DPHY related parameters
> > - added CSI v2.0 related property (including VCX for supporting upto 16
> >   virtual channels).
> > - modified csi-pxl-format from string to unsigned int type where the value
> >   is as per the CSI specification
> > - Defined port 0 and port 1 as sink and source ports.
> > - Removed max-lanes property as suggested by Rob and Sakari
> >
> >  .../bindings/media/xilinx/xlnx,csi2rxss.yaml       | 237
> +++++++++++++++++++++
> >  1 file changed, 237 insertions(+)
> >  create mode 100644
> > Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.yaml
> >
> > diff --git
> > a/Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.yaml
> > b/Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.yaml
> > new file mode 100644
> > index 0000000..2282231
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.yam
> > +++ l
> > @@ -0,0 +1,237 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) %YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/xilinx/xlnx,csi2rxss.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Xilinx MIPI CSI-2 Receiver Subsystem
> > +
> > +maintainers:
> > +  - Vishal Sagar <vishal.sagar@xilinx.com>
> > +
> > +description: |
> > +  The Xilinx MIPI CSI-2 Receiver Subsystem is used to capture MIPI
> > +CSI-2
> > +  traffic from compliant camera sensors and send the output as AXI4
> > +Stream
> > +  video data for image processing.
> > +  The subsystem consists of a MIPI D-PHY in slave mode which captures
> > +the
> > +  data packets. This is passed along the MIPI CSI-2 Rx IP which
> > +extracts the
> > +  packet data. The optional Video Format Bridge (VFB) converts this
> > +data to
> > +  AXI4 Stream video data.
> > +  For more details, please refer to PG232 Xilinx MIPI CSI-2 Receiver
> Subsystem.
> > +  Please note that this bindings includes only the MIPI CSI-2 Rx
> > +controller
> > +  and Video Format Bridge and not D-PHY.
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - enum:
> > +        - xlnx,mipi-csi2-rx-subsystem-5.0
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    description: List of clock specifiers
> > +    items:
> > +      - description: AXI Lite clock
> > +      - description: Video clock
> > +
> > +  clock-names:
> > +    items:
> > +      - const: lite_aclk
> > +      - const: video_aclk
> > +
> > +  xlnx,csi-pxl-format:
> > +    description: |
> > +      This denotes the CSI Data type selected in hw design.
> > +      Packets other than this data type (except for RAW8 and
> > +      User defined data types) will be filtered out.
> > +      Possible values are as below -
> > +      0x1e - YUV4228B
> > +      0x1f - YUV42210B
> > +      0x20 - RGB444
> > +      0x21 - RGB555
> > +      0x22 - RGB565
> > +      0x23 - RGB666
> > +      0x24 - RGB888
> > +      0x28 - RAW6
> > +      0x29 - RAW7
> > +      0x2a - RAW8
> > +      0x2b - RAW10
> > +      0x2c - RAW12
> > +      0x2d - RAW14
> > +      0x2e - RAW16
> > +      0x2f - RAW20
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > +      - anyOf:
> > +        - minimum: 0x1e
> > +        - maximum: 0x24
> > +        - minimum: 0x28
> > +        - maximum: 0x2f
> > +
> > +  xlnx,vfb:
> > +    type: boolean
> > +    description: Present when Video Format Bridge is enabled in IP
> > + configuration
> > +
> > +  xlnx,en-csi-v2-0:
> > +    type: boolean
> > +    description: Present if CSI v2 is enabled in IP configuration.
> > +
> > +  xlnx,en-vcx:
> > +    type: boolean
> > +    description: |
> > +      When present, there are maximum 16 virtual channels, else only 4.
> > +
> > +  xlnx,en-active-lanes:
> > +    type: boolean
> > +    description: |
> > +      Present if the number of active lanes can be re-configured at
> > +      runtime in the Protocol Configuration Register. Otherwise all lanes,
> > +      as set in IP configuration, are always active.
> > +
> > +  video-reset-gpios:
> > +    description: Optional specifier for a GPIO that asserts video_aresetn.
> > +    maxItems: 1
> > +
> > +  ports:
> > +    type: object
> > +
> > +    properties:
> > +      port@0:
> > +        type: object
> > +        description: |
> > +          Input / sink port node, single endpoint describing the
> > +          CSI-2 transmitter.
> > +
> > +        properties:
> > +          reg:
> > +            const: 0
> > +
> > +          endpoint:
> > +            type: object
> > +
> > +            properties:
> > +
> > +              data-lanes:
> > +                description: |
> > +                  This is required only in the sink port 0 endpoint which
> > +                  connects to MIPI CSI-2 source like sensor.
> > +                  The possible values are -
> > +                  1       - For 1 lane enabled in IP.
> > +                  1 2     - For 2 lanes enabled in IP.
> > +                  1 2 3   - For 3 lanes enabled in IP.
> > +                  1 2 3 4 - For 4 lanes enabled in IP.
> > +                items:
> > +                  - const: 1
> > +                  - const: 2
> > +                  - const: 3
> > +                  - const: 4
> > +
> > +              remote-endpoint: true
> > +
> > +            required:
> > +              - data-lanes
> > +              - remote-endpoint
> > +
> > +            additionalProperties: false
> > +
> > +        additionalProperties: false
> > +
> > +      port@1:
> > +        type: object
> > +        description: |
> > +          Output / source port node, endpoint describing modules
> > +          connected the CSI-2 receiver.
> > +
> > +        properties:
> > +
> > +          reg:
> > +            const: 1
> > +
> > +          endpoint:
> > +            type: object
> > +
> > +            properties:
> > +
> > +              remote-endpoint: true
> > +
> > +            required:
> > +              - remote-endpoint
> > +
> > +            additionalProperties: false
> > +
> > +        additionalProperties: false
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - clocks
> > +  - clock-names
> > +  - ports
> > +
> > +allOf:
> > +  - if:
> > +    required:
> > +      - xlnx,vfb
> > +    then:
> > +      required:
> > +        - xlnx,csi-pxl-format
> > +    else:
> > +      properties:
> > +        xlnx,csi-pxl-format: false
> > +
> > +  - if:
> > +    not:
> > +      required:
> > +        - xlnx,en-csi-v2-0
> > +    then:
> > +      properties:
> > +        xlnx,en-vcx: false
> 
> There's an indentation problem here, it should be
> 
> allOf:
>   - if:
>       required:
>         - xlnx,vfb
>     then:
>       required:
>         - xlnx,csi-pxl-format
>     else:
>       properties:
>         xlnx,csi-pxl-format: false
> 
>   - if:
>       not:
>         required:
>           - xlnx,en-csi-v2-0
>     then:
>       properties:
>         xlnx,en-vcx: false
> 
> Have you run the bindings checks ?
> 
> make
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/xilinx/xlnx,csi
> 2rxss.yaml dt_binding_check
> 
> It would have caught the issue.
> 

By mistake the incorrect patch was sent. Apologies for this.

> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/gpio/gpio.h>
> > +    xcsi2rxss_1: csi2rx@a0020000 {
> > +        compatible = "xlnx,mipi-csi2-rx-subsystem-5.0";
> > +        reg = <0x0 0xa0020000 0x0 0x10000>;
> 
> I think I mentioned in a previous review that this should be
> 
>         reg = <0xa0020000 0x10000>;
> 
> even if it doesn't match what the real values, as dt_binding_check compiles
> the examples in the context of a bus that has #address-cells = <1> and #size-
> cells = <1>.
> 
> I can fix these when applying the patches to my tree if that's OK with you, and
> send a pull request.
> 

Yes that is fine. Thanks!

> > +        interrupt-parent = <&gic>;
> > +        interrupts = <0 95 4>;
> > +        xlnx,csi-pxl-format = <0x2a>;
> > +        xlnx,vfb;
> > +        xlnx,en-active-lanes;
> > +        xlnx,en-csi-v2-0;
> > +        xlnx,en-vcx;
> > +        clock-names = "lite_aclk", "video_aclk";
> > +        clocks = <&misc_clk_0>, <&misc_clk_1>;
> > +        video-reset-gpios = <&gpio 86 GPIO_ACTIVE_LOW>;
> > +
> > +        ports {
> > +            #address-cells = <1>;
> > +            #size-cells = <0>;
> > +
> > +            port@0 {
> > +                /* Sink port */
> > +                reg = <0>;
> > +                csiss_in: endpoint {
> > +                    data-lanes = <1 2 3 4>;
> > +                    /* MIPI CSI-2 Camera handle */
> > +                    remote-endpoint = <&camera_out>;
> > +                };
> > +            };
> > +            port@1 {
> > +                /* Source port */
> > +                reg = <1>;
> > +                csiss_out: endpoint {
> > +                    remote-endpoint = <&vproc_in>;
> > +                };
> > +            };
> > +        };
> > +    };
> > +...
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
