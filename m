Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3EDE1B21F5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 10:45:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6tdwEKu7QCpj3XySpba9TmRAEJYEbvDUotG0dTM5/6E=; b=QOiG2UUMT8jqY9
	tGfbnsWVDeo+f0hYBkqeP+61VMO3XYgWQKpNuO4WSC37a/Qb0vEbVC4rzWikcQwAmyOzcyrFYwHOx
	RrP8oeEB28UjBhHP0rTiRwNBFzent3XXvwNRxhh+zZe/wsiIWVi/YiRmOPRT68Z5+DnJ6j3cNSzQD
	rvZ58Pd0iwFQv50Gc3FdYycLSKYg/fEGf4CGer+xG0Y06u+jsVtwgToQ+xctO1iod/KelwIFCYD1B
	E5E/YcYxU2yVsmPTz6S5acUrUw1d+Tqd6UaCmO6s9LtY9iXFS0k4vN1AW67s/8l71fPH2PGi5muwn
	9Qo44MryGs/wh1a5TChw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQoWz-0005qZ-9m; Tue, 21 Apr 2020 08:45:25 +0000
Received: from mail-bn8nam11on2074.outbound.protection.outlook.com
 ([40.107.236.74] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQoWl-0005T6-2r
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 08:45:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zt54bysQmI1NtuNZ0q7MUybRvcTHQ16iD/q8X2ysoEdiWof+q3tlQTT+bR0rJxKd0zG8Klr5qupGsUzFS0IFUWIwpbBetdYeH8RAmvIggeCrzMIKnOj7SjNfyx5ZEn/1IfB7rLwvKxPdnTXEElRo4NLSMgBWzLL8fNHlnRLdAeoxAplyzll7F7u2qMF9KrdHR02S3SNJWEClRhBN/r69Prau7AO3xMH0u/607+VOwyqg9pgPeavYk1aKf4ZCDZYpizcDBnYjAqVvQqf2KkI1jy+kmi4xzTe+/UyAOb38bZ66F6wM6TwLUu9B/J0JWuHeXzxNGqxjxV84kcmtyEbUyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L2VkeOcEZTJh9HImazIkFf7RW7kyhDkrMJc1sOwrhf4=;
 b=ExZcBQqA/Dk+UM8ytu9McVVdMnuqZ5cXVsmNL90tL2vSYJCsOzRu/7diE1Ctd7uBCsZ/SjpDJ0AiTAGBn3mIyX8txxaEVrK8RUDn5z2FSOZYqQql0kwsYtU5h5Ww0b2bcfasK+DtRgqVmQ2Rpdwo5lkERE+usfI4+2fYB/fu9XrtYqILj07qlBROD7r9vLKzOXvgt/oSYT2piOQubaIBtyv87vkf9a+xrhLbRvMJiAktGmiUzfeVQIouoCO2/6BnIwRl/aJlbNu/+0uRq5+RJepNyjys3kzmmr7rCZi0aqi1QfXpCFWT2CUMfxBqgy45Vtg9RgZCovZnfKBKH4w76Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L2VkeOcEZTJh9HImazIkFf7RW7kyhDkrMJc1sOwrhf4=;
 b=bFUwqNVrH4xNsAzAFUgra4riuJwGv7tnOwYfrOuftdg9ugNuxxEQCMj7wcaKmCmx/JvGqvm/eh6IkeA7OsA4x9mbEPpmHZ9qkzucIIXOia9Geo01lVmX1JAu2EPev40sAMLvyUGAWOTT0/Zzq09rirAy9UBukQ45nQlWGHcNYRM=
Received: from DM6PR02MB6876.namprd02.prod.outlook.com (2603:10b6:5:22c::11)
 by DM6PR02MB5275.namprd02.prod.outlook.com (2603:10b6:5:49::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Tue, 21 Apr
 2020 08:45:07 +0000
Received: from DM6PR02MB6876.namprd02.prod.outlook.com
 ([fe80::ad68:d392:e519:f671]) by DM6PR02MB6876.namprd02.prod.outlook.com
 ([fe80::ad68:d392:e519:f671%8]) with mapi id 15.20.2921.030; Tue, 21 Apr 2020
 08:45:06 +0000
From: Vishal Sagar <vsagar@xilinx.com>
To: Luca Ceresoli <luca@lucaceresoli.net>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>
Subject: RE: [PATCH v11 2/2] media: v4l: xilinx: Add Xilinx MIPI CSI-2 Rx
 Subsystem driver
Thread-Topic: [PATCH v11 2/2] media: v4l: xilinx: Add Xilinx MIPI CSI-2 Rx
 Subsystem driver
Thread-Index: AQHWDqdoYfHJZJ7yyEOpsMzdPA1DraiAzAoAgAGpQYCAAAkrAIAAxgMAgAAMMXA=
Date: Tue, 21 Apr 2020 08:45:06 +0000
Message-ID: <DM6PR02MB6876D34CB0F57DAAD2E57D27A7D50@DM6PR02MB6876.namprd02.prod.outlook.com>
References: <20200409194424.45555-1-vishal.sagar@xilinx.com>
 <20200409194424.45555-3-vishal.sagar@xilinx.com>
 <20200419180222.GB8117@pendragon.ideasonboard.com>
 <860c27da-eba0-ddcb-719b-52b2725bd9bf@lucaceresoli.net>
 <20200420195714.GB8195@pendragon.ideasonboard.com>
 <0a3ea86b-cb4c-a1db-664e-cfa555d8ccf8@lucaceresoli.net>
In-Reply-To: <0a3ea86b-cb4c-a1db-664e-cfa555d8ccf8@lucaceresoli.net>
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
x-ms-office365-filtering-correlation-id: 9b1d4d59-a0c2-4302-e12e-08d7e5d04af8
x-ms-traffictypediagnostic: DM6PR02MB5275:|DM6PR02MB5275:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR02MB527585745CD7E67DCF7C7D5DA7D50@DM6PR02MB5275.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 038002787A
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR02MB6876.namprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(366004)(39860400002)(346002)(376002)(396003)(136003)(107886003)(4326008)(71200400001)(478600001)(5660300002)(9686003)(186003)(55016002)(86362001)(6506007)(110136005)(33656002)(64756008)(66476007)(66946007)(53546011)(2906002)(316002)(52536014)(54906003)(76116006)(66446008)(7696005)(81156014)(66556008)(7416002)(8676002)(8936002)(26005);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CCk0I401H2AfyuR8GSM6BLHf/g3+k7tqOyrs/dOZR3G0SnWt0GVrl2WAAueo3ZnCIfycLhT2IkN8CXcQ5zkNCUWAuYGQ3Jtnt19x3dIgaTB4JrhUyqLuvX3L+DwIJSkueuPVfazylphZCLY6GECi84OqL5TX3WDizTNz7SX1YShwOGFXX9NMEj/gCijjYPqICc0dMq3c5g3lY6oIPY2Q8PAVlIFhXrPocuI/czYmqI5EstuyyTkAsdcri8kQKhgUVlTcRGXLzZBf2i+QTIfDAy+wAeWoE4uoEJ74B521MaGm5SaSqtdnQCphdokuPBjeYPTwTZRSjqDeNILChsIvRX9ABf8q/g+30jWMdggI9AXWK9lgY1W/7OmeLPtinCukDfSyrK2owjTDTpJ/FEzNPzvZA3dfLJsOMzOT6F3P9/CV5JLtnlonOJ/6qOkFrtSP
x-ms-exchange-antispam-messagedata: z8xXwwSA9cKj3URh1gNNRdU02gqoNUEoK2YE25DCywpoDqzGx9mtV6qXAwtmNwVMM/KLZxtJQY8NJKBtR935mEBgF/7BuNTKe9zlMtUL7RdktqreNxyT/Fd44IioB89qOW2E3Qbmn0zfajqEJmoUbg==
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b1d4d59-a0c2-4302-e12e-08d7e5d04af8
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2020 08:45:06.8752 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j4AO/3E4si5e74qh2JwnswzIFiKd6S1VUYnf9c/T3NIQ4xUbeRcod3Vd0f13ZUuKcwfQovlHVjyPeAgc4xcOmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB5275
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_014511_143683_A2C925FE 
X-CRM114-Status: GOOD (  26.01  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.74 listed in list.dnswl.org]
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
 "hans.verkuil@cisco.com" <hans.verkuil@cisco.com>,
 Kondalarao Polisetti <kpolise@xilinx.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Luca,

> -----Original Message-----
> From: Luca Ceresoli <luca@lucaceresoli.net>
> Sent: Tuesday, April 21, 2020 1:16 PM
> To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Vishal Sagar <vsagar@xilinx.com>; Hyun Kwon <hyunk@xilinx.com>;
> mchehab@kernel.org; robh+dt@kernel.org; mark.rutland@arm.com; Michal
> Simek <michals@xilinx.com>; linux-media@vger.kernel.org;
> devicetree@vger.kernel.org; hans.verkuil@cisco.com; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org; Dinesh Kumar
> <dineshk@xilinx.com>; Sandip Kothari <sandipk@xilinx.com>; Jacopo Mondi
> <jacopo@jmondi.org>; Hyun Kwon <hyunk@xilinx.com>
> Subject: Re: [PATCH v11 2/2] media: v4l: xilinx: Add Xilinx MIPI CSI-2 Rx
> Subsystem driver
> 
> Hi Laurent,
> 
> On 20/04/20 21:57, Laurent Pinchart wrote:
> > Hi Luca,
> >
> > On Mon, Apr 20, 2020 at 09:24:25PM +0200, Luca Ceresoli wrote:
> >> On 19/04/20 20:02, Laurent Pinchart wrote:
> >> [...]
> >>>> +static irqreturn_t xcsi2rxss_irq_handler(int irq, void *dev_id) {
> >>>> +	struct xcsi2rxss_state *state = (struct xcsi2rxss_state *)dev_id;
> >>>> +	struct xcsi2rxss_core *core = &state->core;
> >>>> +	u32 status;
> >>>> +
> >>>> +	status = xcsi2rxss_read(core, XCSI_ISR_OFFSET) &
> XCSI_ISR_ALLINTR_MASK;
> >>>> +	dev_dbg_ratelimited(core->dev, "interrupt status = 0x%08x\n",
> >>>> +status);
> >>>
> >>> As this is expected to occur for every frame, I would drop the
> >>> message, even if rate-limited.
> >>>
> >>>> +
> >>>> +	if (!status)
> >>>> +		return IRQ_NONE;
> >>>> +
> >>>> +	/* Received a short packet */
> >>>> +	if (status & XCSI_ISR_SPFIFONE) {
> >>>> +		dev_dbg_ratelimited(core->dev, "Short packet = 0x%08x\n",
> >>>> +				    xcsi2rxss_read(core, XCSI_SPKTR_OFFSET));
> >>>> +	}
> >>>
> >>> Same here, this will occur all the time, I'd remove this message.
> >>> You need to read XCSI_SPKTR_OFFSET though, and you should do so in a
> >>> loop until the XCSI_CSR_SPFIFONE in XCSI_CSR_OFFSET is cleared in
> >>> case multiple short packets are received before the interrupt
> >>> handler executes.
> >>>
> >>> I also wonder if it would make sense to extract the frame number
> >>> from the FS short packet, and make it available through the subdev
> >>> API. I think it should be reported through a V4L2_EVENT_FRAME_SYNC
> >>> event. This can be implemented later.
> >>>
> >>>> +
> >>>> +	/* Short packet FIFO overflow */
> >>>> +	if (status & XCSI_ISR_SPFIFOF)
> >>>> +		dev_dbg_ratelimited(core->dev, "Short packet FIFO
> >>>> +overflowed\n");
> >>>> +
> >>>> +	/*
> >>>> +	 * Stream line buffer full
> >>>> +	 * This means there is a backpressure from downstream IP
> >>>> +	 */
> >>>> +	if (status & XCSI_ISR_SLBF) {
> >>>> +		dev_alert_ratelimited(core->dev, "Stream Line Buffer
> Full!\n");
> >>>> +		xcsi2rxss_stop_stream(state);
> >>>> +		if (core->rst_gpio) {
> >>>> +			gpiod_set_value(core->rst_gpio, 1);
> >>>> +			/* minimum 40 dphy_clk_200M cycles */
> >>>> +			ndelay(250);
> >>>> +			gpiod_set_value(core->rst_gpio, 0);
> >>>> +		}
> >>>
> >>> I don't think you should stop the core here. xcsi2rxss_stop_stream()
> >>> calls the source .s_stream(0) operation, which usually involves I2C
> >>> writes that will sleep.
> >>>
> >>> You should instead report an event to userspace (it looks like we
> >>> have no error event defined in V4L2, one should be added), and rely
> >>> on the normal stop procedure.
> >>
> >> FWIW, since a long time I've been using a modified version of this
> >> routine, where after a Stream Line Buffer Full condition I just stop
> >> and restart the csi2rx core and the stream continues after a minimal
> glitch.
> >> Other subdev are unaware that anything has happened and keep on
> streaming.
> >>
> >> Not sure this is the correct thing to do, but it's working for me.
> >> Also I proposed this topic in one of the previous iterations of this
> >> patch, but the situation was different because the stream on/off was
> >> not propagated back at that time.
> >
> > Thanks for the feedback. How often does this occur in practice ?
> 
> Quite often indeed in my case, as the MIPI stream comes from a remote
> sensor via a video serdes chipset, and both the cable and the remote sensor
> module are subject to heavy EMI. Depending on the setup I observed SLBF
> happening up to 5~10 times per hour.
> 
> --
> Luca

Thanks for sharing your observation.
Getting a stream line buffer full condition indicates a design issue.
Stopping, resetting using video_aresetn and starting is valid way to start MIPI CSI-2 Rx SS but masks the issue.
Hence the current implementation is to warn and stop streaming.

Regards
Vishal Sagar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
