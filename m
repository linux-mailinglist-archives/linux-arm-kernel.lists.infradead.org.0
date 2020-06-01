Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 217B51EA6A7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 17:15:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e1XgCP/Ga3BvCQ0IJW6X/JcaQIQYb8S4gbsl7V/AIVs=; b=c4KGlg14P06rPh
	r4TY+0VIWd+vbv2LVaoOszLwNTg59UZcCFfLICgq1Tslbv/z0qY7g+jBmnx1+5LW5LCubJ62rlZfq
	JCQc0tCXmCS3BZvF5sCHN2CUbHMBhsBlplbcsKuNKXQsUO8jMsvTxnBTvkwbtVVUcs3U2hgr+3zPq
	u3wx8FS8pxHZDpX7Iu7uonc/llKWmpiHO3sbaSsv4v/GM8CL1307E7xQcg7U/IBZHpy3mCdN2NHCH
	Y/9Ju4vYC4oRKN/A+AcicId0fQfG5MQFe415sdoqWFMCpjdKRBJytn+Ob9bmcu7sVQbJ/3ftrY8VR
	DM+rnAf4rah9ixcQhcvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfm9v-0002FP-6V; Mon, 01 Jun 2020 15:15:27 +0000
Received: from mail-mw2nam12on2077.outbound.protection.outlook.com
 ([40.107.244.77] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfm9Q-00027I-G1
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 15:14:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RvlYTFu6+MSSjA8t04VmcMLLeFwf6Fnfm4fmfhgdNaxyMa1xL24bkATYVqnrbLaw9iHCgkUgonriSkUGC5CP6rRYfoIdM8OLju8U2BAnx03RHaYgvbvItG4uZodW6ABpb91kE8NMRBZW6Dlbxmbu8VkneW5NOZQ6PK7S1k5tdNoz10JaEvXHdhDVC323qLv41wg9Canok6F54H+pwhNKkoTB65XSvml1lqyspcWSXTilk2d8oIC1Iv5VUJl4pnwNBPcxlOMc0TRHi6ls9WNItHGydkbx/Rd0oRaki+lQyjf/+TKzoqNU6czxn0MDdy5Gd1bZTc2XhSzIBvatFHDV5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=16IUQfyFwqwcPxuboFbcyRyafjnu+ThxKm21d1nvDyY=;
 b=gvNBOWKQIFNKb7SCo4Xl0y9lRaT7RqZkPdXKWbbmD23mBXn0y6fuL2MFxlv+KYHye4A3Cc+g+Zgf5gLG7ZvNhqKxmEh8c74y22xp1LCATpuS6ieEe5XLdrsMcwGHjGdVwPmMg9uYvCA0oUuL0zN+eUjr9qZGixS9bQnKseZvEp2lNYl0/yI9+04aRRuTFhWT3CZLYND3b5IDKcUiexcofvjk08/9IgHRlNNwwKZlH1MXtY2D3CAFITfupmRykf4AU7aGv1TKQ649NeP9mq1iY2Rpwoo9Amya2Zwr0hgy5tAqjircMGAiLViiNHNVGcnLvMIDep9xd1kHecM4/Vz01g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=16IUQfyFwqwcPxuboFbcyRyafjnu+ThxKm21d1nvDyY=;
 b=Nap1S/8WOrdojagHWJZvSDKBL5R8umoNhykjXJJttRQzcoB3U3smKklCIxYFD5hbjJB6Hmo8OaXyRD4S49CB4nlYvTS4CA2lSMukOcgroXcHk7xze9DZSMoNUxajOGZEbdG71EAGNhO04KDW5CeeOYWi0ENPedyWRQul6AVV5qo=
Received: from DM6PR02MB6876.namprd02.prod.outlook.com (2603:10b6:5:22c::11)
 by DM6PR02MB5947.namprd02.prod.outlook.com (2603:10b6:5:17c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Mon, 1 Jun
 2020 15:14:53 +0000
Received: from DM6PR02MB6876.namprd02.prod.outlook.com
 ([fe80::ad68:d392:e519:f671]) by DM6PR02MB6876.namprd02.prod.outlook.com
 ([fe80::ad68:d392:e519:f671%9]) with mapi id 15.20.3045.024; Mon, 1 Jun 2020
 15:14:52 +0000
From: Vishal Sagar <vsagar@xilinx.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: RE: [PATCH v2 1/2] media: dt-bindings: media: xilinx: Add Xilinx
 UHD-SDI Receiver Subsystem
Thread-Topic: [PATCH v2 1/2] media: dt-bindings: media: xilinx: Add Xilinx
 UHD-SDI Receiver Subsystem
Thread-Index: AQHWHjDqbGMdUbwGV0Cvu6UqAu/TlaibEMuAgCj+eYA=
Date: Mon, 1 Jun 2020 15:14:52 +0000
Message-ID: <DM6PR02MB6876116CECBA49741FF57E79A78A0@DM6PR02MB6876.namprd02.prod.outlook.com>
References: <20200429141705.18755-1-vishal.sagar@xilinx.com>
 <20200429141705.18755-2-vishal.sagar@xilinx.com>
 <20200506130225.GD5946@pendragon.ideasonboard.com>
In-Reply-To: <20200506130225.GD5946@pendragon.ideasonboard.com>
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
x-ms-office365-filtering-correlation-id: 90f43119-b26a-4963-dc9c-08d8063e88fd
x-ms-traffictypediagnostic: DM6PR02MB5947:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR02MB5947B6BC00E8DE58205844AEA78A0@DM6PR02MB5947.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0421BF7135
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9yaBUcAXVgjM8z3BVuc+2cYeyNn1iy9maASjyo7R/7HUnKm9nMmQdblOmhs7RbNvzUa4nA8fDMv6kT2xRksLhpvxcXfkHF3oeWd7p8Xbc3U0zC5AfDWmBAFaVOc5zXvGkqZcRkTU/qJNOwY1EeTDKxs21MYZEFmPzlPhA+Za2mgR9lzKlkKJoxg7Gl5ZwOL8G2O8l+iLTQ7PLxp6IjZV/NwUpT+kv4cZO/6lPMXK8QFYQ6Ifu2YmeLB6efBxswaV4D9xDSA9/8fzR9AtMQHxL8h3daRDzDXKsObDFc7pm4OH6ywrT2gmfeC0Zs13EFna08mPKoqWqcF0tvREy5E4wPXAdQXx1gxohlnW4MEogaKqRPVI2qbZnHiy23gvKY1INhHo86y98uM8GWwzzWQnSg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR02MB6876.namprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(366004)(376002)(39860400002)(396003)(346002)(55016002)(71200400001)(83380400001)(6916009)(5660300002)(4326008)(9686003)(33656002)(7416002)(52536014)(316002)(8936002)(54906003)(478600001)(966005)(64756008)(7696005)(66446008)(76116006)(26005)(53546011)(6506007)(66946007)(8676002)(66556008)(86362001)(66476007)(2906002)(186003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 3VbNmadW4NM98Bbef8aWj20KJkGHWVR+r3HCyAz904e5bs/64K38sPRrBmtdWEN48FozaT+AgIELC6A3sPY6EqW3DiKOgxxrpwkaBftbXfg4dtEFXQgMwTEjCRN397/VOaproWGowyu0slhZGIxnd6NfdK54OE1M45YTZ3TWQeH/LymiqYaX/n9sAt587+68G+NCpayq2h2fq4Wo/e0/nN8ReJaU6Mk260KeEn3Dt5y7m65GnrYtyOhSV2J8tJQ0cEdKKVUj15bJ53tuRe4p4i+n6K12hRKF64qY3bppzEJjNHVipnqMZmuMS5JNP1HkMyIvdB25+D5bVjTAB8JpeuYv6YJZ8jAANJRcXh8YNW9nz0bNG+4Ypx5zdyV/vC9zkPmL/K0zD9kczG350tvyM4C8eLmlNe0P5yc3rBZG7CK2afS95vuIUNbpnviRmC3MnyHKI5v7vAt8N9xxIVJmGW7zLuR5og2jkgPb3n4xri5nFYKK2LCDsh2A820azkaQ
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90f43119-b26a-4963-dc9c-08d8063e88fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2020 15:14:52.7021 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9DlxNN2+hG/LoDo4cpI2gcyIeyKZ36rO+30HQODYipi46TMdgdNiGCh5MsiWiB61yj8vvW26oSDPpvLSX8KvtA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB5947
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_081456_594635_5F51E07A 
X-CRM114-Status: GOOD (  28.60  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.77 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.244.77 listed in wl.mailspike.net]
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
 Dinesh Kumar <dineshk@xilinx.com>, Hyun Kwon <hyunk@xilinx.com>,
 Sandip Kothari <sandipk@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Michal Simek <michals@xilinx.com>,
 Joe Perches <joe@perches.com>,
 "hans.verkuil@cisco.com" <hans.verkuil@cisco.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laurent,

Thanks for the review.

> -----Original Message-----
> From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Sent: Wednesday, May 6, 2020 6:32 PM
> To: Vishal Sagar <vsagar@xilinx.com>
> Cc: Hyun Kwon <hyunk@xilinx.com>; mchehab@kernel.org;
> robh+dt@kernel.org; mark.rutland@arm.com; Michal Simek
> <michals@xilinx.com>; linux-media@vger.kernel.org;
> devicetree@vger.kernel.org; hans.verkuil@cisco.com; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org; Dinesh Kumar
> <dineshk@xilinx.com>; Sandip Kothari <sandipk@xilinx.com>; Joe Perches
> <joe@perches.com>
> Subject: Re: [PATCH v2 1/2] media: dt-bindings: media: xilinx: Add Xilinx UHD-
> SDI Receiver Subsystem
> 
> Hi Vishal,
> 
> Thank you for the patch.
> 
> On Wed, Apr 29, 2020 at 07:47:03PM +0530, Vishal Sagar wrote:
> > Add bindings documentation for Xilinx UHD-SDI Receiver Subsystem.
> >
> > The Xilinx UHD-SDI Receiver Subsystem consists of SMPTE UHD-SDI (RX) IP
> > core, an SDI RX to Video Bridge IP core to convert SDI video to native
> > video and a Video In to AXI4-Stream IP core to convert native video to
> > AXI4-Stream.
> >
> > Signed-off-by: Vishal Sagar <vishal.sagar@xilinx.com>
> > ---
> > v2
> > - Removed references to xlnx,video*
> > - Fixed as per Sakari Ailus and Rob Herring's comments
> > - Converted to yaml format
> >
> >  .../bindings/media/xilinx/xlnx,sdirxss.yaml   | 132 ++++++++++++++++++
> >  1 file changed, 132 insertions(+)
> >  create mode 100644
> Documentation/devicetree/bindings/media/xilinx/xlnx,sdirxss.yaml
> >
> > diff --git
> a/Documentation/devicetree/bindings/media/xilinx/xlnx,sdirxss.yaml
> b/Documentation/devicetree/bindings/media/xilinx/xlnx,sdirxss.yaml
> > new file mode 100644
> > index 000000000000..9133ad19df55
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/xilinx/xlnx,sdirxss.yaml
> > @@ -0,0 +1,132 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/xilinx/xlnx,sdirxss.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +
> > +title: Xilinx SMPTE UHD-SDI Receiver Subsystem
> > +
> > +maintainers:
> > +  - Vishal Sagar <vishal.sagar@xilinx.com>
> > +
> > +description: |
> > +  The SMPTE UHD-SDI Receiver (RX) Subsystem allows you to quickly create
> systems
> > +  based on SMPTE SDI protocols. It receives unaligned native SDI streams
> from
> > +  the SDI GT PHY and outputs an AXI4-Stream video stream, native video, or
> > +  native SDI using Xilinx transceivers as the physical layer.
> > +
> > +  The subsystem consists of
> > +  1 - SMPTE UHD-SDI Rx
> > +  2 - SDI Rx to Native Video Bridge
> > +  3 - Video In to AXI4-Stream Bridge
> > +
> > +  The subsystem can capture SDI streams in upto 12G mode 8 data streams
> and output
> 
> s/upto/up to/
> 

I will fix this in next version. 

> > +  a dual pixel per clock RGB/YUV444,422/420 10/12 bits per component
> AXI4-Stream.
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - enum:
> > +        - xlnx,v-smpte-uhdsdi-rx-ss-2.0
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
> > +      - description: AXI4-Lite clock
> > +      - description: SMPTE UHD-SDI Rx core clock
> > +      - description: Video clock
> > +
> > +  clock-names:
> > +    items:
> > +      - const: s_axi_aclk
> > +      - const: sdi_rx_clk
> > +      - const: video_out_clk
> > +
> > +  xlnx,bpp:
> > +    description: Bits per pixel supported. Can be 10 or 12 bits per pixel only.
> > +    allOf:
> > +      - $ref: "/schemas/types.yaml#/definitions/uint32"
> > +      - enum: [10, 12]
> 
> I don't see this as a design parameter in the documentation (pg290,
> v2.0). What does it correspond to ? All the BPC mentions in the
> documentation always state that 10-bit is the only supported value.
> 

The new version of IP being released will have 10 and 12 bit support. It is already in the Xilinx linux-xlnx repo.
I will rename this to "xlnx,bpc" instead of "xlnx,bpp" to refer to bits per component.

> > +
> > +  xlnx,line-rate:
> > +    description: |
> > +      The maximum mode supported by the design. Possible values are as
> below
> > +      12G_SDI_8DS - 12G mode with 8 data streams
> > +      6G_SDI      -  6G mode
> > +      3G_SDI      -  3G mode
> > +    enum:
> > +      - 12G_SDI_8DS
> > +      - 6G_SDI
> > +      - 3G_SDI
> 
> How about making this an integer property, with #define in
> include/dt-bindings/media/xilinx-sdi.h ? As far as I understand, the SDI
> TX subsystem has the same parameter, so the #define could be shared
> between the two.
> 

Yes that is ok with me. I will add this in the next version.

> > +
> > +  xlnx,include-edh:
> > +    type: boolean
> > +    description: |
> > +      This is present when the Error Detection and Handling processor is
> > +      enabled in design.
> > +
> > +  ports:
> > +    type: object
> > +    description: |
> > +      Generally the SDI port is connected to a device like SDI Broadcast
> camera
> > +      which is independently controlled. Hence port@0 is a source port which
> can be
> > +      connected to downstream IP which can work with AXI4 Stream data.
> 
> We should still have an input port. It can be connected to a DT node for
> a physical SDI connector, or any other component in the platform (I
> expect the former to be the common case). There are DT bindings for
> connectors in Documentation/devicetree/bindings/display/connector/, we
> should add one for SDI.
> 

Yes the input port is a physical SDI connector connected to an equipment like broadcast camera.
But the camera/equipment can't be controlled by the V4L2 pipeline and SDI protocol is unidirectional.

If we add another dt node, then I think another dummy v4l subdev driver will need to implemented and loaded
to complete the pipe as Xilinx Video driver will need it.

Could you please share the reason to have this input port in the SDI Rx driver?

> > +    properties:
> > +      port@0:
> > +        type: object
> > +        description: Source port
> > +        properties:
> > +          reg:
> > +            const: 0
> > +          endpoint:
> > +            type: object
> > +            properties:
> > +              remote-endpoint: true
> > +            required:
> > +              - remote-endpoint
> > +            additionalProperties: false
> > +        additionalProperties: false
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - clocks
> > +  - clock-names
> > +  - xlnx,line-rate
> > +  - xlnx,bpp
> > +  - ports
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    uhdsdirxss: v-smpte-uhdsdi-rxss@80000000 {
> > +      compatible = "xlnx,v-smpte-uhdsdi-rx-ss-2.0";
> > +      interrupt-parent = <&gic>;
> > +      interrupts = <0 89 4>;
> > +      reg = <0x0 0x80000000 0x0 0x10000>;
> > +      xlnx,include-edh;
> > +      xlnx,line-rate = "12G_SDI_8DS";
> > +      clocks = <&clk_1>, <&si570_1>, <&clk_2>;
> > +      clock-names = "s_axi_aclk", "sdi_rx_clk", "video_out_clk";
> > +      xlnx,bpp = <10>;
> > +
> > +      ports {
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +        port@0 {
> > +          reg = <0>;
> > +          sdirx_out: endpoint {
> > +            remote-endpoint = <&vcap_sdirx_in>;
> > +          };
> > +        };
> > +      };
> > +    };
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
