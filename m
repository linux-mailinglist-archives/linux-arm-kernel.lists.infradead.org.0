Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C01F34A113
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 14:47:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P367z+G1NbuytSFhPyfoBHtpUXIcf8LWGpi9AvwyXu8=; b=L9EiPZeRlvmHtb
	EfYlhfSNlpPhcIdPLvxv9ZBocU7vjo/Cq6daVetLsKg8rH/91wy4LySPmnMuwAvHUR6blLcY7hJkq
	fY+NHpvkRjn+RZ5V0QUufelzbWcIfxV6Kd9rvLgGA03LnpSAnnc7nDq/uYfmJOuSY/lmosJfm+yzJ
	D2CF6SGDXFOuNgrbEzRB8XITidhA9LprJtpjyLc8bRLwqRQ9lBTv8Sw5gI2kZJHYVvWLkWSL32cT7
	D7E/MHkSVaC+IJbOR01TWb9Qyt76Sl4n8ecz3gHpYY3lXUAA9FysnAqhbrsXYScGnKylaLlmyu+nk
	ULrt6D7KaSj909Y9TfiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdDVp-0005wo-Nn; Tue, 18 Jun 2019 12:46:57 +0000
Received: from mail-eopbgr680076.outbound.protection.outlook.com
 ([40.107.68.76] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdDUB-0005FR-9e
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 12:45:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m6zFuCnXsIu/nus1C1h68F6z9l7LUygCSVFp+zRLoMQ=;
 b=kAwQw0TY4ggc68FXeQ8HJ8Iu1z6a195ph6DdmIWo2WQFXDAbJnX7xdreFuElW2PPzza2MCIrZc5ty8XInYrmBcERF1TEFhCXPploiorig0AG4nY7YjkxeQ+4Ugkk6p2ml+pvwMc6iggmgQmx/hUdOsDZ/Ylz7ntvT2yZviggluI=
Received: from CH2PR02MB6088.namprd02.prod.outlook.com (52.132.228.94) by
 CH2PR02MB6087.namprd02.prod.outlook.com (52.132.228.93) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.15; Tue, 18 Jun 2019 12:45:09 +0000
Received: from CH2PR02MB6088.namprd02.prod.outlook.com
 ([fe80::d109:38a2:f2d5:b351]) by CH2PR02MB6088.namprd02.prod.outlook.com
 ([fe80::d109:38a2:f2d5:b351%7]) with mapi id 15.20.1987.014; Tue, 18 Jun 2019
 12:45:09 +0000
From: Vishal Sagar <vsagar@xilinx.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: RE: [PATCH 2/2] media: v4l: xilinx: Add Xilinx UHD-SDI Rx Subsystem
 driver
Thread-Topic: [PATCH 2/2] media: v4l: xilinx: Add Xilinx UHD-SDI Rx Subsystem
 driver
Thread-Index: AQHVGt1y9b6kdvITzkGymcoGfLMXzqaNBsMAgA4EhgCAAV5HgIAE6GdggAAVQ4CAAACRwA==
Date: Tue, 18 Jun 2019 12:45:08 +0000
Message-ID: <CH2PR02MB6088841314C0F2C0279746BCA7EA0@CH2PR02MB6088.namprd02.prod.outlook.com>
References: <1559656556-79174-1-git-send-email-vishal.sagar@xilinx.com>
 <1559656556-79174-3-git-send-email-vishal.sagar@xilinx.com>
 <023cf8a6-6fbc-6425-8bca-798045d39e02@xs4all.nl>
 <CH2PR02MB608838E59840F73F00534198A7EE0@CH2PR02MB6088.namprd02.prod.outlook.com>
 <740f44cb-24af-72c4-f227-5323efcee8ac@xs4all.nl>
 <CH2PR02MB60883EDB9B3B2AED8A2555CBA7EA0@CH2PR02MB6088.namprd02.prod.outlook.com>
 <3403eea5-e00e-b813-2db1-1ac6ad71b9ff@xs4all.nl>
In-Reply-To: <3403eea5-e00e-b813-2db1-1ac6ad71b9ff@xs4all.nl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vsagar@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6467cb10-90cb-41a1-b5da-08d6f3eacc25
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:CH2PR02MB6087; 
x-ms-traffictypediagnostic: CH2PR02MB6087:
x-microsoft-antispam-prvs: <CH2PR02MB608717F5D775E5D54F228674A7EA0@CH2PR02MB6087.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 007271867D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(39860400002)(366004)(376002)(346002)(396003)(51914003)(199004)(189003)(13464003)(52536014)(102836004)(86362001)(25786009)(99286004)(26005)(7696005)(6506007)(76176011)(7416002)(6436002)(6916009)(53546011)(54906003)(478600001)(55016002)(186003)(9686003)(229853002)(74316002)(305945005)(8676002)(81166006)(53936002)(81156014)(316002)(7736002)(486006)(446003)(11346002)(3846002)(14454004)(8936002)(66066001)(6246003)(14444005)(256004)(6116002)(66556008)(66446008)(64756008)(73956011)(66476007)(4326008)(68736007)(71200400001)(5660300002)(76116006)(2906002)(66946007)(71190400001)(476003)(33656002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6087;
 H:CH2PR02MB6088.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: QD8yhde7yJW7z5CFlYST5lhXCRTzbSKuOHjjs8Q+1HsGKMl1QQqT2Dw+D9V22bicv860nSjT0htgNAsF/qDeAVJJ0owd022/onK1A5orkD3ra/qQgPNueSbqRsuLOX0JfW+UoolwcoIjjPCYAv/+IyZlcHc2GeuOfG03Xq7g1og9m2yZL34jlQtfkewo5X1WgBA9s9elu3K2Bipdkme2zr9ne9fp/bPgyt/2aIVqvi6m322Vncq6Ghl7u9csCLdwFmknsY0pCnCfhb4JZPyjqBfRDkNtgDIgJkI0ioIf7lSrkJGSCySEnqiZgOPUqR3vERQm7rNTyNLNfAzTqdqtaMQqduPzEmr+rjHGagq/IrkxMuLqLGkM1NbXCe8/XBywD66RsjE5OteMVrU70CBRTX9X2sHFkIAkG0H09/TmT7s=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6467cb10-90cb-41a1-b5da-08d6f3eacc25
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2019 12:45:09.1564 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vsagar@xilinx.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6087
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_054517_996068_C68136A1 
X-CRM114-Status: GOOD (  27.96  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.68.76 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Sandip Kothari <sandipk@xilinx.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Hyun Kwon <hyunk@xilinx.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Michal Simek <michals@xilinx.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Vishal Sagar <vishal.sagar@xilinx.com>, Dinesh Kumar <dineshk@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi Hans,

> -----Original Message-----
> From: Hans Verkuil [mailto:hverkuil@xs4all.nl]
> Sent: Tuesday, June 18, 2019 5:38 PM
> To: Vishal Sagar <vsagar@xilinx.com>
> Cc: linux-kernel@vger.kernel.org; linux-media@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; devicetree@vger.kernel.org; Dinesh Kumar
> <dineshk@xilinx.com>; Sandip Kothari <sandipk@xilinx.com>; Vishal Sagar
> <vishal.sagar@xilinx.com>; Hyun Kwon <hyunk@xilinx.com>; Laurent Pinchart
> <laurent.pinchart@ideasonboard.com>; Mauro Carvalho Chehab
> <mchehab@kernel.org>; Michal Simek <michals@xilinx.com>; Rob Herring
> <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>; Sakari Ailus
> <sakari.ailus@linux.intel.com>
> Subject: Re: [PATCH 2/2] media: v4l: xilinx: Add Xilinx UHD-SDI Rx Subsystem
> driver
> 
> On 6/18/19 1:51 PM, Vishal Sagar wrote:
> > Hi Hans,
> >
> >> -----Original Message-----
> >> From: Hans Verkuil [mailto:hverkuil@xs4all.nl]
> >> Sent: Saturday, June 15, 2019 1:25 PM
> >> To: Vishal Sagar <vsagar@xilinx.com>
> >> Cc: linux-kernel@vger.kernel.org; linux-media@vger.kernel.org; linux-arm-
> >> kernel@lists.infradead.org; devicetree@vger.kernel.org; Dinesh Kumar
> >> <dineshk@xilinx.com>; Sandip Kothari <sandipk@xilinx.com>; Vishal Sagar
> >> <vishal.sagar@xilinx.com>; Hyun Kwon <hyunk@xilinx.com>; Laurent
> Pinchart
> >> <laurent.pinchart@ideasonboard.com>; Mauro Carvalho Chehab
> >> <mchehab@kernel.org>; Michal Simek <michals@xilinx.com>; Rob Herring
> >> <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>; Sakari
> Ailus
> >> <sakari.ailus@linux.intel.com>
> >> Subject: Re: [PATCH 2/2] media: v4l: xilinx: Add Xilinx UHD-SDI Rx Subsystem
> >> driver
> >>
> >> On 6/14/19 1:44 PM, Vishal Sagar wrote:
> >>> Hi Hans,
> >>>
> >>> Thanks for reviewing this patch.
> >>>
> >>>> -----Original Message-----
> >>>> From: Hans Verkuil [mailto:hverkuil@xs4all.nl]
> >>>> Sent: Wednesday, June 05, 2019 6:28 PM
> >>>> To: Vishal Sagar <vishal.sagar@xilinx.com>; Hyun Kwon
> >> <hyunk@xilinx.com>;
> >>>> Laurent Pinchart <laurent.pinchart@ideasonboard.com>; Mauro Carvalho
> >>>> Chehab <mchehab@kernel.org>; Michal Simek <michals@xilinx.com>;
> Rob
> >>>> Herring <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>
> >>>> Cc: linux-kernel@vger.kernel.org; linux-media@vger.kernel.org; linux-arm-
> >>>> kernel@lists.infradead.org; devicetree@vger.kernel.org; Dinesh Kumar
> >>>> <dineshk@xilinx.com>; Sandip Kothari <sandipk@xilinx.com>
> >>>> Subject: Re: [PATCH 2/2] media: v4l: xilinx: Add Xilinx UHD-SDI Rx
> Subsystem
> >>>> driver
> >>>>
> >>>> EXTERNAL EMAIL
> >>>>
> >>>> On 6/4/19 3:55 PM, Vishal Sagar wrote:
> >>>>> The Xilinx UHD-SDI Rx subsystem soft IP is used to capture native SDI
> >>>>> streams from SDI sources like SDI broadcast equipment like cameras and
> >>>>> mixers. This block outputs either native SDI, native video or
> >>>>> AXI4-Stream compliant data stream for further processing. Please refer
> >>>>> to PG290 for details.
> >>>>>
> >>>>> The driver is used to configure the IP to add framer, search for
> >>>>> specific modes, get the detected mode, stream parameters, errors, etc.
> >>>>> It also generates events for video lock/unlock, bridge over/under flow.
> >>>>>
> >>>>> The driver supports only 10 bpc YUV 422 media bus format. It also
> >>>>> decodes the stream parameters based on the ST352 packet embedded in
> >> the
> >>>>> stream. In case the ST352 packet isn't present in the stream, the core's
> >>>>> detected properties are used to set stream properties.
> >>>>>
> >>>>> The driver currently supports only the AXI4-Stream configuration.
> >>>>>
> >>>>> Signed-off-by: Vishal Sagar <vishal.sagar@xilinx.com>
> >>>>> ---
> >>>>>  drivers/media/platform/xilinx/Kconfig          |   11 +
> >>>>>  drivers/media/platform/xilinx/Makefile         |    1 +
> >>>>>  drivers/media/platform/xilinx/xilinx-sdirxss.c | 1846
> >>>> ++++++++++++++++++++++++
> >>>>>  include/uapi/linux/xilinx-sdirxss.h            |   63 +
> >>>>>  include/uapi/linux/xilinx-v4l2-controls.h      |   30 +
> >>>>>  include/uapi/linux/xilinx-v4l2-events.h        |    9 +
> >>
> >> <snip>
> >>
> >>>> I am concerned about this driver: I see that none of the *_dv_timings
> >> callbacks
> >>>> are implemented. I would expect to see that for a video receiver. There is
> >> also
> >>>> no g_input_status implemented.
> >>>>
> >>>> Take a look at another SDI driver: drivers/media/spi/gs1662.c
> >>>>
> >>>
> >>> I had a look at the gs1662 driver for the dv_timings callbacks. The gs1662
> >> driver
> >>> requires the timings because it is a SDI Transmitter.
> >>>
> >>> Here the timings are not required as the IP block generates a AXI4 Stream.
> >>> I think it may be required only in case of native / parallel video being
> >> outputted
> >>> as the output stream needs timing information to be decoded.
> >>>
> >>> Please feel free to correct my understanding if wrong.
> >>>
> >>> In the current driver, the input stream properties like width, height, frame
> >> rate,
> >>> progressive/interlaced  are determined from the ST352 packet payload or
> >> from the
> >>> properties detected by the core.
> >>>
> >>> See the xsdirx_get_stream_properties() for details.
> >>
> >> You're wrong. In xsdirx_get_stream_properties() you set the format
> >> information.
> >> But you can't just change that: if the video resolution changes, then that
> means
> >> that userspace needs to be informed that it has changed at the source, it has
> to
> >> find and set the new timings, update the formats, possibly reallocate
> memory
> >> for
> >> the buffers, update other parts of the video pipeline with the new resolution
> >> etc.
> >>
> >> The one thing you cannot do is just pass on the new resolution and hope
> that
> >> the
> >> video pipeline can handle it all.
> >>
> >> The right sequence of events is:
> >>
> >> 1) When a change is detected at the source the driver sends the
> >> SOURCE_CHANGE
> >> event and either stops transmitting to the video pipeline or keeps sending
> the
> >> old resolution (some devices have a freewheeling mode where they can do
> >> that).
> >>
> >> 2) Userspace sees the event, calls QUERY_DV_TIMINGS to find a new timings
> (if
> >> any), usually stops streaming, and calls S_DV_TIMINGS to set the detected
> >> timings:
> >> at that point the driver can configure the output towards the video pipeline
> >> with
> >> the new timings. Userspace reallocates buffers and resumes streaming with
> the
> >> new
> >> resolution.
> >>
> >
> > Thanks for the explanation!
> >
> > I will remove the extraneous video unlock event and stop the streaming when
> video lock / unlock interrupt occurs.
> > I will also implement the g_input_status() to return V4L2_IN_ST_NO_SYNC |
> V4L2_IN_ST_NO_SIGNAL in case video is unlocked.
> >
> > My assumption is that on SOURCE_CHANGE event, application can stop the
> pipeline and then
> > call the G_FORMAT and G_FRAME_INTERVAL to get new frame size, type
> (progressive / interlaced) and frame rate.
> > Is this assumption correct?
> 
> No :-)
> 

Good to have that cleared. :-D

> After SOURCE_CHANGE is received an application calls QUERY_DV_TIMINGS. If
> that
> returns valid timings, then the application calls S_DV_TIMINGS with the
> detected timings. The driver will now update the format, frame interval, etc.
> according to the new timings. And the application can use that to reconfigure
> the video pipeline.
> 
> >
> > Is it mandatory to implement QUERY_DV_TIMINGS with SOURCE_CHANGE
> event?
> 
> Yes.
> 

Thanks again for clarifying this. 

> >
> > I also don't see any V4L2 framework supported events for overflow and
> underflow.
> > Is it ok to keep these or should they be removed too?
> 
> under/overflow of what? Internal fifos? You can keep the custom events for
> that.
>

Yep these are custom events for internal fifos. I will keep them.

Regards
Vishal Sagar

> Regards,
> 
> 	Hans
> 
> >
> > Regards
> >
> > Vishal Sagar
> >
> >> Note that G_DV_TIMINGS returns the last configured timings, not the
> detected
> >> timings: only QUERY_DV_TIMINGS does that.
> >>
> >> In other words: userspace has to retain control of the full pipeline.
> >>
> >> Regards,
> >>
> >> 	Hans
> >>
> >>>
> >>>> Some of the controls you add in this driver can likely be dropped.
> Especially
> >>>> those controls that are not specific to the Xilinx implementation but are
> >>>> generic for any SDI receiver, should be looked at closely: those are
> >>>> candidates for becoming standard controls.
> >>>
> >>> I don't know how other SDI Receiver devices function.
> >>> So I am assuming all these controls are Xilinx specific implementations.
> >>>
> >>>>
> >>>> But the documentation above is simply insufficient for me to tell what is
> >>>> SDI specific and what is implementation specific.
> >>>>
> >>>
> >>> I will add more documentation for these controls.
> >>>
> >>>> Also, I'm no SDI expert, certainly not for the UHD-SDI.
> >>>>
> >>>> Regards,
> >>>>
> >>>>         Hans
> >>>
> >>> Regards
> >>> Vishal Sagar
> >>>
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
