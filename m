Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC1C41E404B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 13:41:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D4IkqsGmuZY6UVCjA7X3GKHGi4BvrvhHckI70UkrIF8=; b=OSOX8NqnJMjWxC
	1FYtpf2xw28DyHSeHHOBLsRsLMPorJ4bVu5TD766Ape904yyYAZS7Yf4yVZNCpLr8slsmtbJnP4gN
	PLkjxwYHAb3rPqSkBcAYvbqK3O10TJv7ywfWbknMN1+CIv0pdYS9iSY+H4gHpJ+Gw7oqeFsGuZ4B0
	47ZGXUcYnS/b930ziur3n0Uq7tEWbKcjBCoKtQCtajFoB2TzWQdPF2BMFVA0eQd5VBR5czspvdLky
	MJHUO2Yd/8EDTwsUGGgEEJ4V3QgKJ9y7UIUFaBfT+7VxMwyu7LKuf01TviIX6SYTsDNctY+RrD/ZT
	VsB/fmvAeZI8vNpTPNRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jduQj-00069z-3h; Wed, 27 May 2020 11:41:05 +0000
Received: from mail-eopbgr750050.outbound.protection.outlook.com
 ([40.107.75.50] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jduQS-00069a-QE
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 11:40:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kycKtu1ZnNkT+UbIV8pCgSEY8BZPW3SWlFClzL8M8gH+mkJRkHSMjGg9op9B4il8ljvFmmWw29lKwMlkkJrW6evdfS/zaGV8DlNkLq3EtgE3yrjrfvMFH6IgflEg6oWVtnW+ij3UW+/aiPeEShxP38/g9hRkngbnY71TZ6X12fWSiAhBWfyWM1jAPGTjksBuMnoBMsgL43AXC6rGCfOXUGI3hlWsnMZ0HJ3TDSD9vnoA1qGoGMqdqVzJU4ukWCC531bXTwnn48JCBP+QWScbkiR6j9xgH5c8k0+AZ++UOmvAAhI61ezls0CMTQFqyBdS7pyohA5Y7Njyj65nrLB7gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=shGkVHTXQ5wDcEyWIPXqjZeK9AzKCSwApOa6LPWjrkc=;
 b=fayqGTKjm5Z3Q42WtHdkhdu1Hwjt3Pydiat/FPSlyPBIHWTyZePA+eFvWhUIDgOZHp8WpMaEfIpupwKjGv2G3R6rsaGj82bMsc2DhhTMcJ1zCW8917mdR31iErflqCps8mMXk/PV6oelqFy95u5FgflVUML0XHajP29142ZAzoymZWFCIeq1eqCkGs1HZgLgvT9hLau35H6/td1clTSABXWfAMMts3n5/HXtfU0qywafHlMitVaGN4cdjyw4RkLeyDwPwix7EijsMsMt/gmt+/g/oGO7QcWbzYGInMGf5ooxeXQ5R6E6HYf39GvwggbPRY+M2z8zZMXrDu+hHY7Icg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=shGkVHTXQ5wDcEyWIPXqjZeK9AzKCSwApOa6LPWjrkc=;
 b=BWJ8/rhGTu3obdcqPX/ETFYtx5J43QlSjJ4rZNfIQjYiT2n8wOvM1KFtqO3CiUWOAn0tbx+jaAaIMaSYR8UaCMpV8rmEvWd5KkXmGS8NoUSeMdf0DdLTBwKWXBG5tRpkjyTcZ1rBTOyuFrFDP/cUf+xtodNnbHlkl2Krpn9l+Gs=
Received: from DM6PR02MB6876.namprd02.prod.outlook.com (2603:10b6:5:22c::11)
 by DM6PR02MB5817.namprd02.prod.outlook.com (2603:10b6:5:154::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.27; Wed, 27 May
 2020 11:40:45 +0000
Received: from DM6PR02MB6876.namprd02.prod.outlook.com
 ([fe80::ad68:d392:e519:f671]) by DM6PR02MB6876.namprd02.prod.outlook.com
 ([fe80::ad68:d392:e519:f671%9]) with mapi id 15.20.3021.029; Wed, 27 May 2020
 11:40:45 +0000
From: Vishal Sagar <vsagar@xilinx.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: RE: [PATCH v12 1/2] media: dt-bindings: media: xilinx: Add Xilinx
 MIPI CSI-2 Rx Subsystem
Thread-Topic: [PATCH v12 1/2] media: dt-bindings: media: xilinx: Add Xilinx
 MIPI CSI-2 Rx Subsystem
Thread-Index: AQHWGYQ+ncypF3BGOkK21dd27jhVxaiZnlUAgAMHReCAGgF1AIAFWbbA
Date: Wed, 27 May 2020 11:40:45 +0000
Message-ID: <DM6PR02MB68769FF3B5D4B77A172829F0A7B10@DM6PR02MB6876.namprd02.prod.outlook.com>
References: <20200423153038.106453-1-vishal.sagar@xilinx.com>
 <20200423153038.106453-2-vishal.sagar@xilinx.com>
 <20200505142302.GA19432@pendragon.ideasonboard.com>
 <BY5PR02MB68679AA1B7CDDC16293EEC12A7A20@BY5PR02MB6867.namprd02.prod.outlook.com>
 <20200524014548.GA6026@pendragon.ideasonboard.com>
In-Reply-To: <20200524014548.GA6026@pendragon.ideasonboard.com>
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
x-ms-office365-filtering-correlation-id: 0afdced9-29b5-4a4a-c3d0-08d80232cb64
x-ms-traffictypediagnostic: DM6PR02MB5817:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR02MB58173E835E07FBF52A531638A7B10@DM6PR02MB5817.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 04163EF38A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Vzaf4yGhZLY0h5uDnk3pTzZ91CI3lbzh4C31sAlWqMcF4t0kXYgIo5UbgCwAKPCdtMGterhN4q7J42n1WCyNIpE9erLreHW8O4ZYClI342rznJ7S63bYmu7UueBxKfa69mhlv4Q7FJpbK6XjXLpF/n+m2qB3R30+Jp/lEATn5UKf3aA738b+bU3r4iqg5ClneLa2cEy/avgQ6Y+R7vO79lqtQpAWeGXWUnMLPWmnuiQ+jdnO4Rdiw6JSZZMyBaoWyzexvxlobIJdP+vp18Qbj3DB0mu0Aey558+604EfT9aWSaL166Seb7VwLbEL9FbEQyx6hQSjyfQou9aGYyVCPcBC043wuPAUA15exbNq8z7A37UDPQfiaHkSoIz9h9THhSyJGdY/ldA+dQM3cNJ8cA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR02MB6876.namprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(136003)(346002)(376002)(396003)(366004)(6916009)(76116006)(64756008)(5660300002)(7696005)(4326008)(33656002)(2906002)(7416002)(71200400001)(53546011)(83380400001)(6506007)(966005)(316002)(478600001)(54906003)(66946007)(9686003)(66556008)(66476007)(52536014)(8936002)(55016002)(30864003)(26005)(86362001)(186003)(8676002)(66446008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 3JvQCRTzrTxR3oNrt6IjgChFf1Vs7aMD6eRVnY0C9J26uqnlz9BhexgSTRy2GuFywxz+7ipXYnVLBbPworPpPynhkefldx4PsOcszG7OiPdHbx+xSABfQvLvvs46JZ1+TvDU780Md4Lf4pqBM5T9RwmO9CrVSc2ryzqJG7b8nOEuutOtm0W3CWGUS73C0WRoOsceyqMr9mlpw7NZE6nfF5pu+CqVQ37r8wh3+1u5N0gaV/UJxGcBsLHx/8NYY+vPQfTJOW8h3nZ6AvwzI5viKdkPsWiyNX1fXEXd0JcF9lcOU8D2SKLHT/rlnvk/1PaCtlq7s8iHDwiUzwz6nZ6Gnkpx7p1RxMLo1N7qq5tHk/7M2ORlYDPvIr6+7Fc3mUnH1ElU8TAt9rgJj0GJHMwQ3vUyCuFKBGa0AqtPMGAu+zMhyRKnOe8d+OmfQZkGF7Vkqq72lsfCPfijfgsg+Sytakycdn2ADetCmiZNsNScasOChRzNCjJ5jtHHmQNCdyMf
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0afdced9-29b5-4a4a-c3d0-08d80232cb64
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2020 11:40:45.5579 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i1pM4Oq1d2IFrpTFuIA+cEqO+pygwG7hR6WSD/etLwW4Eztk/kBsqbAyvlgqjEJE66mafAZgVA7WEifmilXudA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB5817
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_044048_918074_66DFC12D 
X-CRM114-Status: GOOD (  29.33  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.50 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.75.50 listed in wl.mailspike.net]
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

> -----Original Message-----
> From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Sent: Sunday, May 24, 2020 7:16 AM
> To: Vishal Sagar <vsagar@xilinx.com>
> Cc: Hyun Kwon <hyunk@xilinx.com>; mchehab@kernel.org;
> robh+dt@kernel.org; mark.rutland@arm.com; hans.verkuil@cisco.com; Luca
> Ceresoli <luca@lucaceresoli.net>; Jacopo Mondi <jacopo@jmondi.org>;
> Michal Simek <michals@xilinx.com>; linux-media@vger.kernel.org;
> devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org; Dinesh Kumar <dineshk@xilinx.com>; Sandip Kothari
> <sandipk@xilinx.com>; Rob Herring <robh@kernel.org>
> Subject: Re: [PATCH v12 1/2] media: dt-bindings: media: xilinx: Add Xilinx MIPI
> CSI-2 Rx Subsystem
> 
> Hi Vishal,
> 
> On Fri, May 08, 2020 at 01:52:36PM +0000, Vishal Sagar wrote:
> > On Tuesday, May 5, 2020 7:53 PM, Laurent Pinchart wrote:
> > > On Thu, Apr 23, 2020 at 09:00:37PM +0530, Vishal Sagar wrote:
> > > > Add bindings documentation for Xilinx MIPI CSI-2 Rx Subsystem.
> > > >
> > > > The Xilinx MIPI CSI-2 Rx Subsystem consists of a CSI-2 Rx
> > > > controller, a D-PHY in Rx mode and a Video Format Bridge.
> > > >
> > > > Signed-off-by: Vishal Sagar <vishal.sagar@xilinx.com>
> > > > Reviewed-by: Hyun Kwon <hyun.kwon@xilinx.com>
> > > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > > Reviewed-by: Luca Ceresoli <luca@lucaceresoli.net>
> > > > ---
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
> > > > .../bindings/media/xilinx/xlnx,csi2rxss.yaml  | 215
> > > > ++++++++++++++++++
> > > >  1 file changed, 215 insertions(+)  create mode 100644
> > > > Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.yaml
> > > >
> > > > diff --git
> > > > a/Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.yam
> > > > l
> > > > b/Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.yam
> > > > l
> > > > new file mode 100644
> > > > index 000000000000..365084e27f7e
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss
> > > > +++ .yam
> > > > +++ l
> > > > @@ -0,0 +1,215 @@
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
> > > > +MIPI CSI-2
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
> > > > +  For more details, please refer to PG232 Xilinx MIPI CSI-2 Receiver
> Subsystem.
> > > > +  Please note that this bindings includes only the MIPI CSI-2 Rx
> > > > +controller
> > > > +  and Video Format Bridge and not D-PHY.
> > >
> > > How should the D-PHY be handled, when DPY_EN_REG_IF is set to true ?
> >
> > It was suggested in v3 to have a separate D-PHY phy driver which would be
> initialized / configured from MIPI CSI-2 Rx driver.
> > Currently with the D-PHY register interface enabled, we don't have to
> > really configure anything but the following parameters
> > 1 - init
> > 2 - hs_settle
> > 3 - hs_timeout (High Speed mode timeout)
> > 4 - esc_timeout  (Escape mode timeout)
> > 5 - idelay tap
> >
> > The D-PHY Rx can be enabled/disabled and has a soft reset bit.
> > The HS and Escape mode timeout registers can be enabled with a default
> value via the Vivado IP GUI.
> >
> > The above parameters would have to be passed to D-PHY driver as custom
> > control via MIPI CSI-2 Rx driver as these depend on the sensor connected.
> > Probably these can be a new common control in V4L2 framework for CSI Rx
> controllers.
> 
> It seems that in that case, regardless of whether we go for a separate PHY
> driver or not, we will be able to extend the DT bindings, either with a phys
> property, or with an additional reg entry. That should be backward-
> compatible, so I'm not concerned.
> 
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
> > > > +      - enum: [0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x28,
> > > > + 0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x2e, 0x2f]
> > >
> > > This could also be written
> > >
> > >     allOf:
> > >       - $ref: /schemas/types.yaml#/definitions/uint32
> > >       - anyOf:
> > >         - minimum: 0x1e
> > >           maximum: 0x24
> > >         - minimum: 0x28
> > >           maximum: 0x2f
> > >
> > > if you want to make it a bit more compact (in the number of values,
> > > not the number of lines obviously), up to you.
> >
> > Thanks for sharing this method. I will update this in next version.
> >
> > > I will also quote the question (and your answer) from the previous
> > > version:
> > >
> > > > > Isn't this property required only when the VFB is present ?
> > > >
> > > > This will be present irrespective of VFB being enabled.
> > > > With VFB, the data on the bus will be as per Xilinx UG934 which is similar
> to media bus formats.
> > > >
> > > > Without VFB, it will just be plain data as it comes in data packets.
> > > > Refer to the Xilinx PG 232 "Pixel Packing When Video Format Bridge is Not
> Present"
> > > >
> > > > So the driver is currently made to load only in case VFB is enabled.
> > >
> > > I understand that the driver doesn't support the case where the VFB
> > > is disabled, but the DT bindings shouldn't care about that. The
> > > document of
> > > v4.1 of the subsystem states that the width of the video_out port is
> > > then selected under "CSI-2 Options TDATA width" (page 11). I however
> > > don't such such an option described on pages 55 or 56, but there's
> > > an AXIS_TDATA_WIDTH parameter on page 61.
> > >
> > > Is the pixel format relevant when the VFB is disabled ?
> >
> > When the VFB is disabled, all supported data types will be allowed i.e. no
> filtering will occur.
> > But the data output will be in 32/64 bit TDATA width (no dependence on
> > pixels per clock) and will adhere to the "Recommended Memory Storage"
> section of the CSI spec.
> > In this case data being sent on the bus won't compare to what media bus
> format documentation describes.
> 
> My understanding is that, in the case xlnx,vfb would be absent (not supported
> in the driver yet), the xlnx,csi-pxl-format should not be set ? If that's correct, I'd
> like to capture that in the bindings already.

That is correct. xlnx,csi-pxl-format is absent when xlnx,vfb is absent.

> It could be expressed by dropping xlnx,csi-pxl-format from the required
> section, and adding
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
> As you will have two conditions defined, they should be grouped with
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

Thanks for sharing on how to add this condition in YAML.
I will update this in the next version.

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
> > > > +      When present, there are maximum 16 virtual channels, else
> > > > +      only 4. This is present only if xlnx,en-csi-v2-0 is present.
> > >
> > > The last sentence should be removed, and replaced with
> > >
> > > if:
> > >   not:
> > >     required:
> > >       - xlnx,en-csi-v2-0
> > > then:
> > >   properties:
> > >     xlnx,en-vcx: false
> > >
> > > (to be placed after required: and before additionalProperties:).
> >
> > Got it. Thanks for the tips on YAML.
> > I will update this in next version.
> >
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
