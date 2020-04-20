Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A378A1B13D4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 20:03:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SFGaKX9fm5+IEIt8TjqUVxrk2wP2hlwG0B0EkAE1PPQ=; b=Fh6YJN1jwvuzJa
	QCnHmPqxf0Cywfme9FDlFIE1elLGjzmNKCGlmrifBk5p8uo6rmGTQ/sRV8ruUaDn0GzEXkO3Om7v1
	DYVDPVTDay+Co1XlgHr7USC0ViEIIiYGfqbYwcqdqhPgIR6koG/DKOEpOCU6SKcnjEHwhPZByHkfS
	Sv7U6Y2yydMTTJo+Hvh/uzixIBVQwdjcL+MSkVnVEy5NVIz8LyzekrnaXkGi9ZHhu6yKUxIJE2mEw
	krfDzi1idmFecSbseO0knEd6pXXVEI+mQBWjStMQ2w0K4M5vs5ixODcSa+Uvvh4uC651hIB0lzKJ4
	0gRmZSUqN/QAZaPotduA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQal6-0004wc-Tx; Mon, 20 Apr 2020 18:03:04 +0000
Received: from mail-bn8nam12on2051.outbound.protection.outlook.com
 ([40.107.237.51] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQakw-0004ki-P8
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 18:02:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gmkkaLuE3/c4dVmexlOFrXuMY/xOxUlGuOGQXAf79dgpvGUd2ltbczIdctg02i5U846IQ/ezBkdI9qwoDTaq7SHpQaD3SXNhVZkBH5B4muLAAJs7V99daFNNyEAlt9ecEgqiBPV3sG9CwTGBYnBBHTBX9l36hU7e8m5uY3KfxqxBumu0KwpsVHdqT5NIGu4LqNOpxuXHbz0jGt6Pzoow3hLji8JIC91/H3c76Gzb60R4Qu/a6h+rQ8v27lyWSe3mkoIKJ8yCVryFQQmO0wfaYvSSlXYT5wqE8acITYCdrLQxasRdN3R2lnLgNZtdE2iG80Ak2AwfMyf2mcT40DBanA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rKzmFtKI3Xuakubaz+TsAjt0Uml8tDxZ9rWcBbq2txY=;
 b=WQRnj8y1FIQEOyOaNO80gkUjAuRoo7j9oksWIGgiTb8WrG3ZXJ75pHmN1NiRXOjYax4bCXcBbX/cHA11BAMKLCBWYpWenlHm4kYVHXzI9QzAdlId5GOUGolBIQdn9wmrkV0zTRMNfaSK1UDhqksJFl7554aARm9VfJhZ3c5D2UV6QrjAaOl8xKE5CbOQC9g6TIwb8SJCNZuj/VEEn6i1/Yjchx0/d+/NwkBPqNvGSmc8wQUabSYteWFVU1vUshag43yPumBmP6MTDvJsNbUA0xgR9sFG2X/JpKhxM1eEQgptmEEy2Q01qa18tNuBKEYYO97JdGFcuTo/L988GRiJRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rKzmFtKI3Xuakubaz+TsAjt0Uml8tDxZ9rWcBbq2txY=;
 b=sh5XQLRvN79aLTZBMqj/zvEQCJbo9P3ncTSl3I9lCGdYnoeacan4J0F2U1FtKq7jqcxzz7Rjp4CaLYfW2jBB2Fru71g6UWiLfe8d9AWDULJkoin44GroMa9T8SWW/psCQpY/l6yzlXilHwpBgPISVCUisBz3CmY4ebeJFQWvvv4=
Received: from BY5PR02MB6867.namprd02.prod.outlook.com (2603:10b6:a03:21c::9)
 by BY5PR02MB6353.namprd02.prod.outlook.com (2603:10b6:a03:1fb::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.27; Mon, 20 Apr
 2020 18:02:50 +0000
Received: from BY5PR02MB6867.namprd02.prod.outlook.com
 ([fe80::3049:963a:2a0d:3bff]) by BY5PR02MB6867.namprd02.prod.outlook.com
 ([fe80::3049:963a:2a0d:3bff%4]) with mapi id 15.20.2921.027; Mon, 20 Apr 2020
 18:02:49 +0000
From: Vishal Sagar <vsagar@xilinx.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: RE: [PATCH v11 1/2] media: dt-bindings: media: xilinx: Add Xilinx
 MIPI CSI-2 Rx Subsystem
Thread-Topic: [PATCH v11 1/2] media: dt-bindings: media: xilinx: Add Xilinx
 MIPI CSI-2 Rx Subsystem
Thread-Index: AQHWDqddqHleZiymB0yNG79lRrGBHaiApR+AgAFTNZA=
Date: Mon, 20 Apr 2020 18:02:49 +0000
Message-ID: <BY5PR02MB6867E75FFA41A6A40824933CA7D40@BY5PR02MB6867.namprd02.prod.outlook.com>
References: <20200409194424.45555-1-vishal.sagar@xilinx.com>
 <20200409194424.45555-2-vishal.sagar@xilinx.com>
 <20200419154305.GA8117@pendragon.ideasonboard.com>
In-Reply-To: <20200419154305.GA8117@pendragon.ideasonboard.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vsagar@xilinx.com; 
x-originating-ip: [149.199.50.130]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a79e9471-448b-47d3-142b-08d7e5550a05
x-ms-traffictypediagnostic: BY5PR02MB6353:|BY5PR02MB6353:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR02MB6353BA5E0576843E7E8A8FEBA7D40@BY5PR02MB6353.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 03793408BA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR02MB6867.namprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(346002)(376002)(39860400002)(366004)(396003)(136003)(7416002)(81156014)(478600001)(4326008)(26005)(66446008)(86362001)(76116006)(52536014)(316002)(66556008)(966005)(64756008)(54906003)(66476007)(66946007)(8676002)(71200400001)(5660300002)(33656002)(7696005)(6506007)(9686003)(6916009)(53546011)(2906002)(55016002)(8936002)(186003);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DBeWjaWP3JXx2/TCexkA5l7KRnjlEHsfGtm380aRVufiOnX1RdDNW73zuuPBpxNsh5JPDmhf8/whH5zCZcZqajs4BlJhkgfyR4eymMOCcc6J4I0gUsV44c7ZUMcF3xaUTCbCII5FP9JFsCmNlpfXkfuxLtEH7/hhwX3DNGtPXFa6V0u2DralZYWIre3oEWmIKu6OQuDWG3eqaUmDZg7hYOqxaky6etMkcYUOcoes3BB7Odz64beJPgCsMr4BooOG756s41iHJqWX+vUTFWXH9x5EyDrDmqeIHM5/GbqPm89HTdtrqRZgRsx2oE6maffMs51/iLSIvg10GphlwzMupqo4s/YZO+FzuCGIVREJZ4RlURlqcwfAPFUTHm8eqIgmnELF9oOWCDHQgmUqumIKTYFhQs4hn68ucNhFxtwFkNuoUz/K3V/IVRQ3Ojv8TaCLG5/aTrO44ESl00fKbKUF2Jo2SL3PWEIso0FaIpAVcPCAOqRG1yERU4H03n2Mq4DoOjSkTNu34makYPiXyWkdYg==
x-ms-exchange-antispam-messagedata: 3wBLpIgsJTIxSrvmzbxHvWyV/EH2yr0bKW1VsRlFjKZfnJzg8SmTA4UHVW7pDrnI80kt3vzqMb55/4XLd5uWEcUo91nexHhPh6Ky87mNXDFnsFecZvnFiMr2/U+RRhV9qH4vLjmlIX4bf/aSgCpHYA==
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a79e9471-448b-47d3-142b-08d7e5550a05
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2020 18:02:49.7309 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i18Jp6qTJ0kqbYSD6E8lTcQtnnrIa1H8bsOl7MeMqTso9eT3YWKCFAQUDe+ehQXOO7vOVJHZSS6Ex6YMsECYeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR02MB6353
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_110254_884704_0A8C6A62 
X-CRM114-Status: GOOD (  31.75  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

Thanks for reviewing.

> -----Original Message-----
> From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Sent: Sunday, April 19, 2020 9:13 PM
> To: Vishal Sagar <vsagar@xilinx.com>
> Cc: Hyun Kwon <hyunk@xilinx.com>; mchehab@kernel.org;
> robh+dt@kernel.org; mark.rutland@arm.com; Michal Simek
> <michals@xilinx.com>; linux-media@vger.kernel.org;
> devicetree@vger.kernel.org; hans.verkuil@cisco.com; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org; Dinesh Kumar
> <dineshk@xilinx.com>; Sandip Kothari <sandipk@xilinx.com>; Luca Ceresoli
> <luca@lucaceresoli.net>; Jacopo Mondi <jacopo@jmondi.org>; Hyun Kwon
> <hyunk@xilinx.com>; Rob Herring <robh@kernel.org>
> Subject: Re: [PATCH v11 1/2] media: dt-bindings: media: xilinx: Add Xilinx
> MIPI CSI-2 Rx Subsystem
> 
> Hi Vishal,
> 
> Thank you for the patch.
> 
> On Fri, Apr 10, 2020 at 01:14:23AM +0530, Vishal Sagar wrote:
> > Add bindings documentation for Xilinx MIPI CSI-2 Rx Subsystem.
> >
> > The Xilinx MIPI CSI-2 Rx Subsystem consists of a CSI-2 Rx controller,
> > a DPHY in Rx mode, an optional I2C controller and a Video Format Bridge.
> 
> The AXI IIC was removed from the subsystem in v4.1, you could drop it from
> the commit message too.
> 

Agree. I will remove it.

> >
> > Signed-off-by: Vishal Sagar <vishal.sagar@xilinx.com>
> > Reviewed-by: Hyun Kwon <hyun.kwon@xilinx.com>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Reviewed-by: Luca Ceresoli <luca@lucaceresoli.net>
> > ---
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
> >  .../bindings/media/xilinx/xlnx,csi2rxss.txt   | 116 ++++++++++++++++++
> >  1 file changed, 116 insertions(+)
> >  create mode 100644
> > Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.txt
> >
> > diff --git
> > a/Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.txt
> > b/Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.txt
> > new file mode 100644
> > index 000000000000..9269a5c880aa
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.txt
> 
> YAML is the recommended form for new DT bindings. This wasn't a
> requirement when the first version of this series was submitted, and I
> understand it can be frustrating to chase a moving target, so I can help with
> the YAML conversion once we sort out the questions below.
> 

Sure. I will try to convert to YAML and send in next patch.

> > @@ -0,0 +1,116 @@
> > +Xilinx MIPI CSI2 Receiver Subsystem Device Tree Bindings
> 
> Nitpicking, it's CSI-2, not CSI2.
> 
> > +--------------------------------------------------------
> > +
> > +The Xilinx MIPI CSI2 Receiver Subsystem is used to capture MIPI CSI2
> > +traffic from compliant camera sensors and send the output as AXI4
> > +Stream video data for image processing.
> > +
> > +The subsystem consists of a MIPI DPHY in slave mode which captures
> > +the
> 
> And D-PHY, not DPHY :-)
>

Ok. I will update the two here and elsewhere.
 
> > +data packets. This is passed along the MIPI CSI2 Rx IP which extracts
> > +the packet data. The optional Video Format Bridge (VFB) converts this
> > +data to
> > +AXI4 Stream video data.
> > +
> > +For more details, please refer to PG232 Xilinx MIPI CSI-2 Receiver
> Subsystem.
> 
> If I understand correctly, this DT binding covers the CSI-2 RX Controller and
> the optional Video Format Bridge, but leaves the D-PHY out, right ? I think
> this should be clarified, as the "CSI-2 receiver subsystem" includes the D-PHY.
> 

Ok I will add this line.

> > +
> > +Required properties:
> > +--------------------
> > +- compatible: Must contain "xlnx,mipi-csi2-rx-subsystem-5.0".
> 
> Is PG232 v5.0 available ? The most recent version I've found was PG232 v4.1.
> 

No not yet. This is the most recent one that we are releasing.
Refer to  https://github.com/Xilinx/linux-xlnx/blob/master/drivers/media/platform/xilinx/xilinx-csi2rxss.c

> > +- reg: Physical base address and length of the registers set for the device.
> > +- interrupts: Property with a value describing the interrupt number.
> > +- clocks: List of phandles to AXI Lite and Video clocks.
> > +- clock-names: Must contain "lite_aclk" and "video_aclk" in the same
> > +order
> > +  as clocks listed in clocks property.
> 
> The subsystem documentation also mentions a dphy_clk_200M. Is that
> routed to the D-PHY only, or is it also needed for the CSI-2 RX ?
> 

The dphy_clk_200M is only for D-PHY.

> > +- xlnx,csi-pxl-format: This denotes the CSI Data type selected in hw design.
> > +  Packets other than this data type (except for RAW8 and User defined
> > +data
> > +  types) will be filtered out. Possible values are as below -
> > +  0x1E - YUV4228B
> > +  0x1F - YUV42210B
> > +  0x20 - RGB444
> > +  0x21 - RGB555
> > +  0x22 - RGB565
> > +  0x23 - RGB666
> > +  0x24 - RGB888
> > +  0x28 - RAW6
> > +  0x29 - RAW7
> > +  0x2A - RAW8
> > +  0x2B - RAW10
> > +  0x2C - RAW12
> > +  0x2D - RAW14
> > +  0x2E - RAW16
> > +  0x2F - RAW20
> 
> Isn't this property required only when the VFB is present ?

This will be present irrespective of VFB being enabled.
With VFB, the data on the bus will be as per Xilinx UG934 which is similar to media bus formats.

Without VFB, it will just be plain data as it comes in data packets. Refer to the Xilinx PG 232 
"Pixel Packing When Video Format Bridge is Not Present"

So the driver is currently made to load only in case VFB is enabled.

> 
> > +
> > +
> > +Optional properties:
> > +--------------------
> > +- xlnx,vfb: Present when Video Format Bridge is enabled in IP
> > +configuration
> > +- xlnx,en-csi-v2-0: Present if CSI v2 is enabled in IP configuration.
> 
> Unless I'm mistaken, this feature is available starting at v4 of the IP core.
> 
Correct.

> > +- xlnx,en-vcx: When present, there are maximum 16 virtual channels,
> > +else
> > +  only 4. This is present only if xlnx,en-csi-v2-0 is present.
> > +- xlnx,en-active-lanes: present if the number of active lanes can be
> > +  re-configured at runtime in the Protocol Configuration Register.
> > +  Otherwise all lanes, as set in IP configuration, are always active.
> > +- reset-gpios: Optional specifier for a GPIO that asserts video_aresetn.
> 
> Should lite_aresetn also be supported ? We can add a lite-reset-gpios
> property later, but maybe we should name this video-reset-gpios ? As the
> video_aresetn signal is the main reset I don't mind keeping the name reset-
> gpios either. It's up to you.
> 

Yes I agree. I will rename this as video-reset-gpios in next version.

> > +
> > +Ports
> > +-----
> > +The device node shall contain two 'port' child nodes as defined in
> > +Documentation/devicetree/bindings/media/video-interfaces.txt.
> > +
> > +The port@0 is a sink port and shall connect to CSI2 source like camera.
> > +
> > +The port@1 is a source port and can be connected to any video
> > +processing IP which can work with AXI4 Stream data.
> > +
> > +Required port properties:
> > +--------------------
> > +- reg: 0 - for sink port.
> > +       1 - for source port.
> 
> Don't you need a second source port for embedded non-image data ? If my
> understanding is correct that port can be enabled or disabled through the
> CSI_EMB_NON_IMG parameter, so it should be optional in DT too. We can
> possibly leave it out for now, it can be added later in a backward-compatible
> way.
> 

Correct. The extra port is present only when CSI_EMB_NON_IMG parameter is enabled.
This can be added later.

> > +
> > +Required endpoint property:
> > +---------------------------
> > +- data-lanes: specifies MIPI CSI-2 data lanes as covered in video-
> interfaces.txt.
> > +  This is required only in the sink port 0 endpoint which connects to
> > +MIPI CSI2
> > +  source like sensor. The possible values are:
> > +  1       - For 1 lane enabled in IP.
> > +  1 2     - For 2 lanes enabled in IP.
> > +  1 2 3   - For 3 lanes enabled in IP.
> > +  1 2 3 4 - For 4 lanes enabled in IP.
> > +
> > +Example:
> > +
> > +	xcsi2rxss_1: csi2rx@a0020000 {
> > +		compatible = "xlnx,mipi-csi2-rx-subsystem-5.0";
> > +		reg = <0x0 0xa0020000 0x0 0x10000>;
> > +		interrupt-parent = <&gic>;
> > +		interrupts = <0 95 4>;
> > +		xlnx,csi-pxl-format = <0x2a>;
> > +		xlnx,vfb;
> > +		xlnx,en-active-lanes;
> > +		xlnx,en-csi-v2-0;
> > +		xlnx,en-vcx;
> > +		clock-names = "lite_aclk", "video_aclk";
> > +		clocks = <&misc_clk_0>, <&misc_clk_1>;
> > +		reset-gpios = <&gpio 86 GPIO_ACTIVE_LOW>;
> > +
> > +		ports {
> > +			#address-cells = <1>;
> > +			#size-cells = <0>;
> > +
> > +			port@0 {
> > +				/* Sink port */
> > +				reg = <0>;
> > +				csiss_in: endpoint {
> > +					data-lanes = <1 2 3 4>;
> > +					/* MIPI CSI2 Camera handle */
> > +					remote-endpoint = <&camera_out>;
> > +				};
> > +			};
> > +			port@1 {
> > +				/* Source port */
> > +				reg = <1>;
> > +				csiss_out: endpoint {
> > +					remote-endpoint = <&vproc_in>;
> > +				};
> > +			};
> > +		};
> > +	};
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
