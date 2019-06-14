Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB4EF45CA7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 14:21:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pzjcUrzedclzhrBtUuznUFiBZdQ4Zy45QzK5xwAN05Y=; b=isWr7LZW6grsXO
	TGp3CkGbjBgRWNGVPUjhLKp5A6z+qwz+Iqwo03pSDZBP+aN/+It1x0BNEtjzeGTW1NFV8pqmKWIS7
	n6d7kkiwqpkKpB8v3BvqxudTwO596yYpEwoxed8duB3gZ8hPURbIjolMq7q/b2hnK3EkhiayLWXn8
	9U4bWyZMLvpoC2WTE4QiUYd16BFktEat+4n4dlT/rtVek9asAQWaiAbX86PJtqdOSkknxMI/ar2uS
	uarXBfYlvMDdGoecahB651g7g0CTG0JZ1S4wskeAOMObu+rqBYrBKRiVz9FCUJeUcSl7n4hOIEuTU
	D50H/f3xhROmQUiW8X6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hblCw-0004wA-G4; Fri, 14 Jun 2019 12:21:26 +0000
Received: from mail-eopbgr690053.outbound.protection.outlook.com
 ([40.107.69.53] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbl7A-0006pA-Vv
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 12:15:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B1qLZHAxoIPgDaN0R9PTRMroJWY9G3IFTnpk5jMBBas=;
 b=dan6Bv2yT0KCPeE+EgLoZff6n8zX+573P9vMhDaS6MJYQShPC2wU99lDcYiUQX46rZo3qklQgotZWHsOEw4PeFOLxQGWrmQHACoNAVGQlia7M9eiAwhDsRUmLycx3gnG2aNNTCs8BJ039eiklO08ZGphqHBiBtOk8DsL2q5vQxE=
Received: from CH2PR02MB6088.namprd02.prod.outlook.com (52.132.228.94) by
 CH2PR02MB6104.namprd02.prod.outlook.com (52.132.228.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.12; Fri, 14 Jun 2019 12:15:25 +0000
Received: from CH2PR02MB6088.namprd02.prod.outlook.com
 ([fe80::d109:38a2:f2d5:b351]) by CH2PR02MB6088.namprd02.prod.outlook.com
 ([fe80::d109:38a2:f2d5:b351%7]) with mapi id 15.20.1965.017; Fri, 14 Jun 2019
 12:15:25 +0000
From: Vishal Sagar <vsagar@xilinx.com>
To: Joe Perches <joe@perches.com>, Hyun Kwon <hyunk@xilinx.com>, Vishal Sagar
 <vishal.sagar@xilinx.com>
Subject: RE: [PATCH 2/2] media: v4l: xilinx: Add Xilinx UHD-SDI Rx Subsystem
 driver
Thread-Topic: [PATCH 2/2] media: v4l: xilinx: Add Xilinx UHD-SDI Rx Subsystem
 driver
Thread-Index: AQHVGt1y9b6kdvITzkGymcoGfLMXzqaaMmUAgAAHbgCAAOVkwA==
Date: Fri, 14 Jun 2019 12:15:24 +0000
Message-ID: <CH2PR02MB60885E9B81D89073BC451FC9A7EE0@CH2PR02MB6088.namprd02.prod.outlook.com>
References: <1559656556-79174-1-git-send-email-vishal.sagar@xilinx.com>
 <1559656556-79174-3-git-send-email-vishal.sagar@xilinx.com>
 <20190613220507.GA2473@smtp.xilinx.com>
 <39e6c0f7d7529da9906a17450a8bcdf416297520.camel@perches.com>
In-Reply-To: <39e6c0f7d7529da9906a17450a8bcdf416297520.camel@perches.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vsagar@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 04d08cf7-2b67-406c-a44c-08d6f0c1fb0b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:CH2PR02MB6104; 
x-ms-traffictypediagnostic: CH2PR02MB6104:
x-microsoft-antispam-prvs: <CH2PR02MB6104E6109DA90640F102DBB6A7EE0@CH2PR02MB6104.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0068C7E410
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(396003)(366004)(39860400002)(346002)(376002)(199004)(189003)(13464003)(64756008)(316002)(53936002)(68736007)(14454004)(486006)(55016002)(76176011)(74316002)(256004)(476003)(6436002)(229853002)(81156014)(66556008)(66476007)(66946007)(3846002)(6116002)(8676002)(76116006)(9686003)(446003)(81166006)(11346002)(73956011)(107886003)(8936002)(66066001)(86362001)(4326008)(102836004)(66446008)(478600001)(6506007)(7736002)(25786009)(186003)(52536014)(6246003)(7696005)(33656002)(5660300002)(110136005)(26005)(2906002)(54906003)(71190400001)(71200400001)(305945005)(99286004)(6636002)(53546011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6104;
 H:CH2PR02MB6088.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Bhfp81peb5f47bl+Plj3rbPscpOjVDgBBv+dyqFPkfnSWwxwj34BqxtnkY+q+Rnmn3lrWlad2oj/cBgt1Y53QGZQ+7HiSfx2iefiuO8y9uru4Eev54QQ/S5y0TYCwbpa0TxA3cMSHDTh+c/9MVyO4WUR68bnyHRqVSxf4KixqgE82J86MpK4yL458V4WR/a4gWBXlHlCvh71DoRGc/gv6G/SlkKP16kXEwXE5tEyj2K1DlFzz+JKH6W5cW1HFV0PuvlJN36KAavlFHU3svu3ZmQyOO794uFc9XwM0PVBhyGjGDbQBDIfKzAuEguP97YEAedOBjmmFQK8eW6RGDBpP+dObJYKTwUSmz69Fp+hUJBVHCmG1ZZQ0yrBcqbZiw+P83nV+L8Ux7GEyT6QiILrCgJGvVOB753SGRyGH9Kuh6E=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04d08cf7-2b67-406c-a44c-08d6f0c1fb0b
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2019 12:15:24.8683 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vsagar@xilinx.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_051529_154750_8F0AC9E1 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.53 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.69.53 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Dinesh Kumar <dineshk@xilinx.com>, Hyun Kwon <hyunk@xilinx.com>,
 Sandip Kothari <sandipk@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Michal Simek <michals@xilinx.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Joe,

Thanks for reviewing. 

> -----Original Message-----
> From: linux-media-owner@vger.kernel.org [mailto:linux-media-
> owner@vger.kernel.org] On Behalf Of Joe Perches
> Sent: Friday, June 14, 2019 4:02 AM
> To: Hyun Kwon <hyunk@xilinx.com>; Vishal Sagar <vishal.sagar@xilinx.com>
> Cc: Hyun Kwon <hyunk@xilinx.com>; Laurent Pinchart
> <laurent.pinchart@ideasonboard.com>; Mauro Carvalho Chehab
> <mchehab@kernel.org>; Michal Simek <michals@xilinx.com>; Rob Herring
> <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>; linux-
> kernel@vger.kernel.org; linux-media@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; devicetree@vger.kernel.org; Dinesh Kumar
> <dineshk@xilinx.com>; Sandip Kothari <sandipk@xilinx.com>
> Subject: Re: [PATCH 2/2] media: v4l: xilinx: Add Xilinx UHD-SDI Rx Subsystem
> driver
> 
> EXTERNAL EMAIL
> 
> On Thu, 2019-06-13 at 15:05 -0700, Hyun Kwon wrote:
> > On Tue, 2019-06-04 at 06:55:56 -0700, Vishal Sagar wrote:
> 
> trivia:
> 
> > > diff --git a/drivers/media/platform/xilinx/xilinx-sdirxss.c
> b/drivers/media/platform/xilinx/xilinx-sdirxss.c
> []
> > > +static int xsdirx_get_stream_properties(struct xsdirxss_state *state)
> > > +{
> []
> > > +   if (valid & XSDIRX_ST352_VALID_DS1_MASK) {
> > > +           payload = xsdirxss_read(core, XSDIRX_ST352_DS1_REG);
> > > +           byte1 = (payload >> XST352_PAYLOAD_BYTE1_SHIFT) &
> > > +                           XST352_PAYLOAD_BYTE_MASK;
> 
> Is XST352_PAYLOAD_BYTE_MASK correct ?
> Should it be XST352_PAYLOAD_BYTE1_MASK ?
> 

I had thought of it to be a generic mask to extract a byte out of 4 bytes in a ST352 packet.
Hence named it as XST352_PAYLOAD_BYTE_MASK

> > > +           active_luma = (payload &
> XST352_BYTE3_ACT_LUMA_COUNT_MASK) >>
> > > +                           XST352_BYTE3_ACT_LUMA_COUNT_OFFSET;
> > > +           pic_type = (payload & XST352_BYTE2_PIC_TYPE_MASK) >>
> > > +                           XST352_BYTE2_PIC_TYPE_OFFSET;
> > > +           framerate = (payload >> XST352_BYTE2_FPS_SHIFT) &
> > > +                           XST352_BYTE2_FPS_MASK;
> > > +           tscan = (payload & XST352_BYTE2_TS_TYPE_MASK) >>
> > > +                           XST352_BYTE2_TS_TYPE_OFFSET;
> >
> > Please align consistently throughout the patch. I believe the checkpatch
> > --strict warns on these.
> 
> I believe not.
> 
> Another possibility would be to use a macro like:
> 
> #define mask_and_shift(val, type)       \
>         ((val) & (XST352_ ## type ## _MASK)) >> (XST352_ ## type ## _OFFSET))
> 
> > > +           sampling = (payload & XST352_BYTE3_COLOR_FORMAT_MASK) >>
> > > +                      XST352_BYTE3_COLOR_FORMAT_OFFSET;
> 
> So these could be something like:
> 
>                 sampling = mask_and_shift(payload, BYTE3_COLOR_FORMAT);
> 

This looks like a good way. I will modify this in v2. 
I will also modify the XST352_PAYLOAD_BYTE_MASK to 
XST352_PAYLOAD_BYTE1_MASK so that this aligns with the macro.

Regards
Vishal Sagar


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
