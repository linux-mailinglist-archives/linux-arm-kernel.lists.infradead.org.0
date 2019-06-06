Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EAA937387
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 13:54:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h+nGljQxRj4rIhZlrYz4o9+8zdrnaXj1vAVnmwnvxEM=; b=mb5dm7pf2hMzfz
	w8kNA9ox385UBKcyFYhF08Wf5dNEXStX8cYZ6U+QjAOc+uaRc3DibHR8qNHpSasXlLtxjvzEZCUsG
	afI3avfDJOL3fxyW5Mg7wfOmMlE1VJCGPAa1mzfmnELRl2Qb4TOyj+fvIwwsBZJw+SHeSM81Am3ka
	RsB2pXbvfU7E39P4a6Edd70UcnE5pui/rbejapb4Yepo/HzMQk8LWb4KhVAgZdbvuESGkcRVgdkLK
	WY1hyw1ptnoqdYtc/Z7JSC9TBx/S0iNcE7R+8W4cNImfNy6sx8h0kSnkwNgwKDb4yxTyDsuNytCKR
	ZRrcQm1J3t4q7CyIWlHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYqyX-0006Fy-HG; Thu, 06 Jun 2019 11:54:33 +0000
Received: from mail-eopbgr700063.outbound.protection.outlook.com
 ([40.107.70.63] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYqyP-0006Eo-Iq
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 11:54:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CigFtLuUQ9PMdS2H3K7Ugrp+Y6WbpJ0+5sJ2nBEWUME=;
 b=vHtfpIDYYEBkZ4oCh9Iox8aFo1mUPgmSg1oZWFToWs6L4zfuirfBrFC1njLLdJWi5fqenYUOQBJ2UT1BTQmejPnlKj8wfS3avIo9TBlRsaZ6ikfw9K9SH0y8v2WypxdQA7QY896wk0w8cNvuHnpof3Lw8HiGpZ7Bw95UqCz/MNI=
Received: from CH2PR02MB6088.namprd02.prod.outlook.com (52.132.228.94) by
 CH2PR02MB6357.namprd02.prod.outlook.com (52.132.231.91) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Thu, 6 Jun 2019 11:54:19 +0000
Received: from CH2PR02MB6088.namprd02.prod.outlook.com
 ([fe80::3cca:e795:ebe2:b366]) by CH2PR02MB6088.namprd02.prod.outlook.com
 ([fe80::3cca:e795:ebe2:b366%6]) with mapi id 15.20.1943.018; Thu, 6 Jun 2019
 11:54:19 +0000
From: Vishal Sagar <vsagar@xilinx.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>, Vishal Sagar
 <vishal.sagar@xilinx.com>
Subject: RE: [PATCH v8 1/2] media: dt-bindings: media: xilinx: Add Xilinx MIPI
 CSI-2 Rx Subsystem
Thread-Topic: [PATCH v8 1/2] media: dt-bindings: media: xilinx: Add Xilinx
 MIPI CSI-2 Rx Subsystem
Thread-Index: AQHVGfMZOW4cFen74Uu6bLLV7F3ehaaL4iYAgAKizUA=
Date: Thu, 6 Jun 2019 11:54:19 +0000
Message-ID: <CH2PR02MB60889B850DCAA810A772160DA7170@CH2PR02MB6088.namprd02.prod.outlook.com>
References: <1559555971-193235-1-git-send-email-vishal.sagar@xilinx.com>
 <1559555971-193235-2-git-send-email-vishal.sagar@xilinx.com>
 <20190604192344.7tycwffjd3yeizxh@paasikivi.fi.intel.com>
In-Reply-To: <20190604192344.7tycwffjd3yeizxh@paasikivi.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vsagar@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fa2ca81c-14e9-431b-0358-08d6ea75b54b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:CH2PR02MB6357; 
x-ms-traffictypediagnostic: CH2PR02MB6357:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <CH2PR02MB6357CDA0A231E4FF76B5F3D5A7170@CH2PR02MB6357.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(396003)(346002)(39860400002)(376002)(13464003)(199004)(189003)(86362001)(4326008)(256004)(966005)(229853002)(2906002)(7416002)(76176011)(33656002)(305945005)(6116002)(66556008)(486006)(74316002)(9686003)(71200400001)(68736007)(5660300002)(53936002)(55016002)(6306002)(478600001)(3846002)(71190400001)(316002)(52536014)(14444005)(6636002)(476003)(66946007)(73956011)(76116006)(99286004)(66446008)(6506007)(64756008)(7736002)(7696005)(66476007)(81166006)(446003)(6246003)(66066001)(186003)(11346002)(8676002)(81156014)(26005)(110136005)(54906003)(14454004)(25786009)(6436002)(53546011)(8936002)(102836004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6357;
 H:CH2PR02MB6088.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3Nnk0tja/JXCddA6qkOASzHWTu2cIrisG1jWl3Ge7HdTdboox6VE7hRcTcwwq8okrY9FOgStG1EB79pb+gWVwRJi/INTqv+hBynDFzF+lHNR8ApsATDLyAHwdlrZ5hyjYu6Qq0Rtqyhp3CTZKNcFLHAEHhMvo8xE8fgoDwRvjerhnJ3NxmD/rzo3fxRD6BaKom3N51E649tcrt5jYptzr1LdWXhIxKlU4uA28HWNtdMQcaSsetNF0i9uDXcO7fPYxDJNLe+oA/O4Mig88Zt3tieB2A1O5KRfzUSUAbLmhJaNMq17MQmX3eRsztrBqMvhVsU/SO6ThmHuSRGlPgzt2xU4UFA8J9QP+hWlWHYuM3sYAxxv7b8cVYjlFfib8OPnplV6Qcc2rdS2MWwaoacBT3v7TXhJee4JxYdQmlyptD0=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa2ca81c-14e9-431b-0358-08d6ea75b54b
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2019 11:54:19.1969 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vsagar@xilinx.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6357
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_045425_624419_8666DECA 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.63 listed in list.dnswl.org]
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
 Luca Ceresoli <luca@lucaceresoli.net>,
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
> Sent: Wednesday, June 05, 2019 12:54 AM
> To: Vishal Sagar <vishal.sagar@xilinx.com>
> Cc: Hyun Kwon <hyunk@xilinx.com>; laurent.pinchart@ideasonboard.com;
> mchehab@kernel.org; robh+dt@kernel.org; mark.rutland@arm.com; Michal
> Simek <michals@xilinx.com>; linux-media@vger.kernel.org;
> devicetree@vger.kernel.org; hans.verkuil@cisco.com; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org; Dinesh Kumar
> <dineshk@xilinx.com>; Sandip Kothari <sandipk@xilinx.com>; Luca Ceresoli
> <luca@lucaceresoli.net>; Jacopo Mondi <jacopo@jmondi.org>
> Subject: Re: [PATCH v8 1/2] media: dt-bindings: media: xilinx: Add Xilinx MIPI
> CSI-2 Rx Subsystem
> 
> EXTERNAL EMAIL
> 
> Hi Vishal,
> 
> On Mon, Jun 03, 2019 at 03:29:30PM +0530, Vishal Sagar wrote:
> 
> > +Optional properties:
> > +--------------------
> > +- xlnx,vfb: This is present when Video Format Bridge is enabled.
> > +  Without this property the driver won't be loaded as IP won't be able to
> generate
> > +  media bus format compliant stream output.
> 
> I think we previously concluded that the format will be just different in
> this case. So the description appears incorrect.
> 

Referring to your email https://lkml.org/lkml/2019/3/22/1823 in response to v6 patches,
if the video format bridge is not enabled, then the way in which pixels are transported on
the bus don't correspond to the existing media bus formats in Linux.

If not loading the driver is incorrect way, is it ok for the driver to allow same media bus format
for packed and unpacked data type on the sink pad?

Or is it ok for the driver to not validate the media bus format set on the sink pad?

> --
> Sakari Ailus
> sakari.ailus@linux.intel.com

Regards
Vishal Sagar


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
