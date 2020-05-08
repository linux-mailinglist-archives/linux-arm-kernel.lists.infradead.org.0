Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A09F31CB101
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 15:53:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1TRRGhQZVGI9Y0BUSFlFjLpWCp5dnzpl8PW7CZO6TbM=; b=uDPSzglFBivTY5
	tQ7ChN/+K5PLN9avpBzh9lCN6eZEZ6tGvWE3eDpjrUNPfW+jm45G67JAMb5ekLSnKAWJtlb5hX+KC
	14STfYVbJSbiCN7FRUpfbI/9MQWlB3wrBA9sXkO+JYCncvoxoeeqibaFyot+Ul52GWB6GcxUdpqvy
	5+OZEwGrzNj+mP8JymWwrYcnUnw9/u+i+RDOMONMunc0DYRPl5PT0qGQGSCqyQ15yHtUvChHgYqSx
	7Z7mTJgIiUsWGm0DwL0jX4wX2WsnY9tXaZEFz4N0JNWVBCSfhlglhKYHI4BC6eYWF7iCRBxqiter6
	ifpdevPzwFQxmFrM1Etw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX3Qm-0000cD-Fz; Fri, 08 May 2020 13:52:48 +0000
Received: from mail-mw2nam10on2085.outbound.protection.outlook.com
 ([40.107.94.85] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX3Qd-0000bc-Ex
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 13:52:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=irZX97uMsKHrM4WXhfLH5pk9fsGCakYhwM0itrkwNoN3BQ4Ksh+M6pScyVOxcotvpim1d9Vw/hmpFIaIX4j3ZMKLmKCjQAOEV+SMiXQdpi0tcquDSoRJBqJuM8dJSK8LjR8m6sr/trG0khDvCZIa04f6xl7VzRbux2DlYnJ3vAvs5Q5ed/3oXLnXZz07mFxgU9z5RNdi9b2feGb9N4UPxgz9XtRFBbIB0Or1z09Zpnt1xvDjWYDTqGCPhWlSynuiaCGN7A/wH9VCn0EvnEYnIlqXf0/h/pwsDd/4WYZxwgvkh5QfabR4geZAb0UFwkHB84vp89uewnmNG8PKPZIkeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rz1hnqE7M59SJ8a8I2epNaWO3LY5RfMyOfH8rLid8NA=;
 b=a5Jnu5bD+fnwxLdxP7r7GMIY7mqG3Q+echB1vT0DiDdMzKhQuRJ7mY+N69fZyGdqllcOrd1dDHq5llxBRCIS+7KOuHnE4U983AgkBX7uX+liO7UcAfkHJl/urQFOuz8SKzQVCupcSVMLgA4SHFRcANbJMgxQsiu/3OHgDTZE6bxjj7aFV8HoXIrbEbDZaZ3YnBdfYXh2y6C7V11O1DT446wDSsBhVhYaEHFbIjE+V9Sk9otX3A/R/ImwL8TR3kkWmouAHQj0gkW8fPRlOlTrd+BsFNjxKAq1D0JFOSUMuSisn7o3VOpxSkzlsJxRyKmcl76GOf3kJtsVkBvphz9k3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rz1hnqE7M59SJ8a8I2epNaWO3LY5RfMyOfH8rLid8NA=;
 b=J7PjdpyxjZNaG4LdFmkmPZOHUSxVW37hb8EikI9/H/o9L6VMu2ssfMT0m5ZQT4nyUxT+/YBswAFSPppowN4tOWv9jyuyTPRe/0lL1Ic4byHFRkk/SK7/0+GM0mqAYWPHOuGRhvKxsMaUZoWqIZ35wvjm4VYLpfcm5b+NJbhQBR8=
Received: from BY5PR02MB6867.namprd02.prod.outlook.com (2603:10b6:a03:21c::9)
 by BY5PR02MB6402.namprd02.prod.outlook.com (2603:10b6:a03:1b4::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20; Fri, 8 May
 2020 13:52:36 +0000
Received: from BY5PR02MB6867.namprd02.prod.outlook.com
 ([fe80::3049:963a:2a0d:3bff]) by BY5PR02MB6867.namprd02.prod.outlook.com
 ([fe80::3049:963a:2a0d:3bff%5]) with mapi id 15.20.2979.033; Fri, 8 May 2020
 13:52:36 +0000
From: Vishal Sagar <vsagar@xilinx.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: RE: [PATCH v12 1/2] media: dt-bindings: media: xilinx: Add Xilinx
 MIPI CSI-2 Rx Subsystem
Thread-Topic: [PATCH v12 1/2] media: dt-bindings: media: xilinx: Add Xilinx
 MIPI CSI-2 Rx Subsystem
Thread-Index: AQHWGYQ+ncypF3BGOkK21dd27jhVxaiZnlUAgAMHReA=
Date: Fri, 8 May 2020 13:52:36 +0000
Message-ID: <BY5PR02MB68679AA1B7CDDC16293EEC12A7A20@BY5PR02MB6867.namprd02.prod.outlook.com>
References: <20200423153038.106453-1-vishal.sagar@xilinx.com>
 <20200423153038.106453-2-vishal.sagar@xilinx.com>
 <20200505142302.GA19432@pendragon.ideasonboard.com>
In-Reply-To: <20200505142302.GA19432@pendragon.ideasonboard.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: ideasonboard.com; dkim=none (message not signed)
 header.d=none;ideasonboard.com; dmarc=none action=none
 header.from=xilinx.com;
x-originating-ip: [149.199.50.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 26d0adec-4ba0-4dac-14f6-08d7f35710e9
x-ms-traffictypediagnostic: BY5PR02MB6402:|BY5PR02MB6402:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR02MB64021B0F8BAA6DE22D635051A7A20@BY5PR02MB6402.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 039735BC4E
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hcF4ftPDuAXuR2NaomU3J93QVJP6HVW5ke91rTFMhkfac4cPI0ffogjQmLaUWbA9xsDsfU/6/mukds3NikCWKVwkk5jRSLWXAIBTtpn4TE9U6snd+es/n/0rGMZj8166VWQEw38FrThhak0yLyPXe31mP/dsZOOfzKtjU+ozpSUwhAV1cTYSJvxr3ZMtyJLTHe9MQsIfWMQfOuLXYAaHHIJtS8pxLmSYtMcEKL03x1n8mH1S/tz8He7D3s0jQHOZeRQbw/XBb7ydPZ0fprZ9oUPpa+ZwD01XgGv3OtFk+c9XdRMs+UHlhSqBLbHvPQyESYQOW9EEJtmKI0MY0vsGJari873fOCHXfCCvcbzv6sCYSi72KZyVPI6U8sT5rNmLbL37VvOPRPHK84oM9guWGkTG1F8n+z2LwVrxVBrRwz+lMBZUgXoXAlg9dfrSy115927zFV0VUH5Ns8PbnGsW51NCiMj/HAkaWLATJmfR0XCTYOgyojRxLdlByb9lhNZ/8zfPekZTYGiwFf5sY9HWBUX4HLEgNqS5fsuXgEk+lBGICgSIJJuAIqr3huFR6pc++8M59ynvWU7FmytBlmufCVyNlMvwo8Cfz0aQPuYeQoU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR02MB6867.namprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(376002)(396003)(136003)(366004)(39860400002)(33430700001)(66556008)(66446008)(66476007)(71200400001)(83320400001)(83280400001)(33440700001)(83310400001)(7696005)(7416002)(6916009)(4326008)(26005)(316002)(2906002)(966005)(86362001)(186003)(478600001)(52536014)(54906003)(53546011)(64756008)(66946007)(30864003)(6506007)(76116006)(5660300002)(83300400001)(8676002)(83290400001)(33656002)(9686003)(55016002)(8936002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: QoBcdkP2gzrLyj7mHAq7RDLvs+VswEwlTsrucx9Xq5nSeyxgX6KYbHbxc4X+hI/we6HnFiR14rdJnsZCUv65Y0hWb1v2n2iWuUZzkVyBUTaOEiR8tGDpIqXodtiOjKcrNO8Majf9grclqF//xfCvrAKNph8+Ddm4lvUA5FDq1ZJi2RplPwYm5klapme3LPkyoWFiIiQRevF/hfyf9bKLoEAhkbWb5s4mDePVYyy4pbr1wXAWddN7Rwtrcs2PglwEvqiOIvHIaH7A+1WR8PK+PyDvcTTrQKrWmRqDvHEsApUi/HpAdVXpTNiMCM2tfPBzMx4Dnp+rq/sjmDZVaM7Kfl6ogj4uCySBCA1uVYF4Z7yeEVsV3ZLOo9heglk9eqa/2v9EK6PTmbuSLwEpCU71OMe7vU+EX7V1h1pLFDceA0nZJQ69O/R0pKgtZs3HCMb0wuy4lvDF/vrjH/+9xgK5H4p4ImrES8OvdWpykuzGydXb9VtH4d7Yr/Fx3KhCW1+L
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26d0adec-4ba0-4dac-14f6-08d7f35710e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2020 13:52:36.5409 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eg2VFSs416YChCfgp0Og730oepCF+PXrppsOfbBX7Cl90KFVeNWEcxlRIpakp5d9ctbskVBZcVHk33f7hMN4Gg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR02MB6402
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_065239_528202_A452E705 
X-CRM114-Status: GOOD (  27.58  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.94.85 listed in wl.mailspike.net]
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
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "hans.verkuil@cisco.com" <hans.verkuil@cisco.com>,
 Luca Ceresoli <luca@lucaceresoli.net>, Michal Simek <michals@xilinx.com>,
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
> Sent: Tuesday, May 5, 2020 7:53 PM
> To: Vishal Sagar <vsagar@xilinx.com>
> Cc: Hyun Kwon <hyunk@xilinx.com>; mchehab@kernel.org;
> robh+dt@kernel.org; mark.rutland@arm.com; hans.verkuil@cisco.com; Luca
> Ceresoli <luca@lucaceresoli.net>; Jacopo Mondi <jacopo@jmondi.org>;
> Michal Simek <michals@xilinx.com>; linux-media@vger.kernel.org;
> devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org; Dinesh Kumar <dineshk@xilinx.com>; Sandip Kothari
> <sandipk@xilinx.com>; Hyun Kwon <hyunk@xilinx.com>; Rob Herring
> <robh@kernel.org>
> Subject: Re: [PATCH v12 1/2] media: dt-bindings: media: xilinx: Add Xilinx MIPI
> CSI-2 Rx Subsystem
> 
> Hi Vishal,
> 
> Thank you for the patch.
> 
> On Thu, Apr 23, 2020 at 09:00:37PM +0530, Vishal Sagar wrote:
> > Add bindings documentation for Xilinx MIPI CSI-2 Rx Subsystem.
> >
> > The Xilinx MIPI CSI-2 Rx Subsystem consists of a CSI-2 Rx controller,
> > a D-PHY in Rx mode and a Video Format Bridge.
> >
> > Signed-off-by: Vishal Sagar <vishal.sagar@xilinx.com>
> > Reviewed-by: Hyun Kwon <hyun.kwon@xilinx.com>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Reviewed-by: Luca Ceresoli <luca@lucaceresoli.net>
> > ---
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
> > .../bindings/media/xilinx/xlnx,csi2rxss.yaml  | 215 ++++++++++++++++++
> >  1 file changed, 215 insertions(+)
> >  create mode 100644
> > Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.yaml
> >
> > diff --git
> > a/Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.yaml
> > b/Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.yaml
> > new file mode 100644
> > index 000000000000..365084e27f7e
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.yam
> > +++ l
> > @@ -0,0 +1,215 @@
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
> 
> How should the D-PHY be handled, when DPY_EN_REG_IF is set to true ?

It was suggested in v3 to have a separate D-PHY phy driver which would be initialized / configured from MIPI CSI-2 Rx driver.
Currently with the D-PHY register interface enabled, we don't have to really configure anything but the following parameters
1 - init
2 - hs_settle
3 - hs_timeout (High Speed mode timeout)  
4 - esc_timeout  (Escape mode timeout)
5 - idelay tap

The D-PHY Rx can be enabled/disabled and has a soft reset bit.
The HS and Escape mode timeout registers can be enabled with a default value via the Vivado IP GUI.

The above parameters would have to be passed to D-PHY driver as custom control via MIPI CSI-2 Rx driver
as these depend on the sensor connected.
Probably these can be a new common control in V4L2 framework for CSI Rx controllers.

> 
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
> > +      - enum: [0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x28, 0x29,
> > + 0x2a, 0x2b, 0x2c, 0x2d, 0x2e, 0x2f]
> 
> This could also be written
> 
>     allOf:
>       - $ref: /schemas/types.yaml#/definitions/uint32
>       - anyOf:
>         - minimum: 0x1e
>           maximum: 0x24
>         - minimum: 0x28
>           maximum: 0x2f
> 
> if you want to make it a bit more compact (in the number of values, not the
> number of lines obviously), up to you.
> 

Thanks for sharing this method. I will update this in next version.

> I will also quote the question (and your answer) from the previous
> version:
> 
> > > Isn't this property required only when the VFB is present ?
> >
> > This will be present irrespective of VFB being enabled.
> > With VFB, the data on the bus will be as per Xilinx UG934 which is similar to
> media bus formats.
> >
> > Without VFB, it will just be plain data as it comes in data packets.
> > Refer to the Xilinx PG 232 "Pixel Packing When Video Format Bridge is Not
> Present"
> >
> > So the driver is currently made to load only in case VFB is enabled.
> 
> I understand that the driver doesn't support the case where the VFB is
> disabled, but the DT bindings shouldn't care about that. The document of
> v4.1 of the subsystem states that the width of the video_out port is then
> selected under "CSI-2 Options TDATA width" (page 11). I however don't such
> such an option described on pages 55 or 56, but there's an
> AXIS_TDATA_WIDTH parameter on page 61.
> 
> Is the pixel format relevant when the VFB is disabled ?
> 

When the VFB is disabled, all supported data types will be allowed i.e. no filtering will occur.
But the data output will be in 32/64 bit TDATA width (no dependence on pixels per clock) and 
will adhere to the "Recommended Memory Storage" section of the CSI spec.
In this case data being sent on the bus won't compare to what media bus format documentation describes.

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
> > +      When present, there are maximum 16 virtual channels, else
> > +      only 4. This is present only if xlnx,en-csi-v2-0 is present.
> 
> The last sentence should be removed, and replaced with
> 
> if:
>   not:
>     required:
>       - xlnx,en-csi-v2-0
> then:
>   properties:
>     xlnx,en-vcx: false
> 
> (to be placed after required: and before additionalProperties:).
> 

Got it. Thanks for the tips on YAML.
I will update this in next version.

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
> > +  - xlnx,csi-pxl-format
> > +  - ports
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/gpio/gpio.h>
> > +    xcsi2rxss_1: csi2rx@a0020000 {
> > +        compatible = "xlnx,mipi-csi2-rx-subsystem-5.0";
> > +        reg = <0x0 0xa0020000 0x0 0x10000>;
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
