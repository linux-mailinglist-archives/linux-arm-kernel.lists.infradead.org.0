Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 683AB16323
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 13:55:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uzqyj1+DZUihuosZA63PlPMvwz29JV8WbC5RPm0mcIg=; b=eEAgaqVHX4msEb
	PwuooakXvfJ0sWX70PcvQyc6ux0oipwlFhPnjQA5XpBJq2FUPkXXc/sy+vor51oyKF2GvKHBEcLU5
	pmRfuP1DFSds1FNIwq7E2Fo6hmvedTQ526dYDszu7CHkoWhvKkkJtbgwztXB0q4F061DeVR2I3+zr
	8FZTAqoOA2fX+GB6vgp1y1mZp/zKc6/Je+krxzrrJTxxal2astfOvpA88gsvqnC1UpKoo9Sj1ayTv
	iX/L5I7tatoBE2xAd0E+O4Yb1948qVeKFgKCj+SZKEAd/C6+gt8ajSs4orU8Pq2iTKDDUJj4hoFFr
	KrNFCgNxSDrE4vFNVkOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNyhM-0002Dg-DO; Tue, 07 May 2019 11:55:52 +0000
Received: from mail-eopbgr740073.outbound.protection.outlook.com
 ([40.107.74.73] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNyhE-0002D7-VT
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 11:55:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MlsPVL/OPJVuyO6nVATrnAtBro0uVtKXzXMTeTTQVNU=;
 b=Iir1G1R2+N6zjNLjeyGUTJKYU9t9qCkChkTchdNe8aEU0/N4DFT4J33hPP/qNZveIKr6XE++Y4fLFrOlwVOQPQ9ZX/s+A23GNw1U6pGMrdTtPisujtnjurFgCW6FnT+YJVcd3QAgLO908bgJRN6nt/Gigc4j6FdANJhwxINJItw=
Received: from BL0PR02MB5681.namprd02.prod.outlook.com (20.177.241.92) by
 BL0PR02MB4769.namprd02.prod.outlook.com (20.177.144.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.15; Tue, 7 May 2019 11:55:42 +0000
Received: from BL0PR02MB5681.namprd02.prod.outlook.com
 ([fe80::6cde:f726:b36e:752d]) by BL0PR02MB5681.namprd02.prod.outlook.com
 ([fe80::6cde:f726:b36e:752d%5]) with mapi id 15.20.1856.012; Tue, 7 May 2019
 11:55:42 +0000
From: Dragan Cvetic <draganc@xilinx.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: RE: [PATCH V3 02/12] misc: xilinx-sdfec: add core driver
Thread-Topic: [PATCH V3 02/12] misc: xilinx-sdfec: add core driver
Thread-Index: AQHU/UVOyBvhwX5Hf0mi9G9IHzQgRKZYHAiAgAGBAECAAQXIAIADZtRggAAL5YCAATcywIAAKlGAgAAWmLA=
Date: Tue, 7 May 2019 11:55:42 +0000
Message-ID: <BL0PR02MB568148AD27F3FE86D168BDF9CB310@BL0PR02MB5681.namprd02.prod.outlook.com>
References: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
 <1556402706-176271-3-git-send-email-dragan.cvetic@xilinx.com>
 <20190502172007.GA1874@kroah.com>
 <BL0PR02MB5681B0F2BC0D74D8604D4289CB350@BL0PR02MB5681.namprd02.prod.outlook.com>
 <20190504075502.GA11133@kroah.com>
 <BL0PR02MB56814D6EACC16938A0575D16CB300@BL0PR02MB5681.namprd02.prod.outlook.com>
 <20190506123425.GA26360@kroah.com>
 <BL0PR02MB568169E26DCD12498EBDFC3ACB310@BL0PR02MB5681.namprd02.prod.outlook.com>
 <20190507093941.GC20355@kroah.com>
In-Reply-To: <20190507093941.GC20355@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=draganc@xilinx.com; 
x-originating-ip: [149.199.80.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ead12c1c-cbd1-4dc0-78a9-08d6d2e2ee80
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:BL0PR02MB4769; 
x-ms-traffictypediagnostic: BL0PR02MB4769:
x-microsoft-antispam-prvs: <BL0PR02MB4769B212298792586E4C54D6CB310@BL0PR02MB4769.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(346002)(366004)(39860400002)(396003)(13464003)(189003)(199004)(53546011)(55016002)(33656002)(25786009)(14454004)(6506007)(478600001)(6916009)(54906003)(66946007)(486006)(73956011)(64756008)(66446008)(66476007)(66556008)(76116006)(4326008)(74316002)(71200400001)(7696005)(107886003)(6116002)(53936002)(6246003)(68736007)(229853002)(3846002)(6436002)(11346002)(446003)(476003)(102836004)(52536014)(5660300002)(81156014)(7736002)(76176011)(81166006)(86362001)(66066001)(2906002)(8676002)(71190400001)(305945005)(26005)(9686003)(14444005)(256004)(316002)(186003)(8936002)(99286004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB4769;
 H:BL0PR02MB5681.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6R0R17NhhOlBxVg2+b6oeGSYo+tg9mSsQFGbKYkDVuhtU8mzs6ie0WNDCYNAamqdIweHfjcg3xOiklIZQ/X5xLdVYnCK70cYHbHxYIXWOMCG8izgN32sCj+SK8qrTRY2Za5BHX0OXhYjiKhZ7YXjl4Ly21bG6klu6MWGD1Q2L6rGLMJqhfY+EihRVu4MhfI/jU8SQ8F0H85Z5yZxf6/Nn8bMKtweKxGbHjK/guiYUMfW7y+JDTf6s2ekmq6sdPkL8nL5GdW4PrHBHg+XmznTtD4+bTKlP3C6dcrBFk8WkYQCbAnEuCyuHMGpysNfIpYyIdcvghDZavz06jHqr88UUT1UrroxXniNLiGeMZgI2wuLTtJA8bwciu+2XPDK8dJ44Tux1F4Itt1di3YxOPcRXDXDyJjJdVoMpC5BoZ1n+R0=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ead12c1c-cbd1-4dc0-78a9-08d6d2e2ee80
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 11:55:42.3373 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB4769
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_045545_068923_28019C90 
X-CRM114-Status: GOOD (  24.33  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.74.73 listed in list.dnswl.org]
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
 "arnd@arndb.de" <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Michal Simek <michals@xilinx.com>,
 Derek Kiernan <dkiernan@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Greg KH [mailto:gregkh@linuxfoundation.org]
> Sent: Tuesday 7 May 2019 10:40
> To: Dragan Cvetic <draganc@xilinx.com>
> Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> Subject: Re: [PATCH V3 02/12] misc: xilinx-sdfec: add core driver
> 
> On Tue, May 07, 2019 at 08:48:41AM +0000, Dragan Cvetic wrote:
> >
> >
> > > -----Original Message-----
> > > From: Greg KH [mailto:gregkh@linuxfoundation.org]
> > > Sent: Monday 6 May 2019 13:34
> > > To: Dragan Cvetic <draganc@xilinx.com>
> > > Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> > > mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> > > Subject: Re: [PATCH V3 02/12] misc: xilinx-sdfec: add core driver
> > >
> > > On Mon, May 06, 2019 at 12:23:56PM +0000, Dragan Cvetic wrote:
> > > >
> > > >
> > > > > -----Original Message-----
> > > > > From: Greg KH [mailto:gregkh@linuxfoundation.org]
> > > > > Sent: Saturday 4 May 2019 08:55
> > > > > To: Dragan Cvetic <draganc@xilinx.com>
> > > > > Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> > > > > mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> > > > > Subject: Re: [PATCH V3 02/12] misc: xilinx-sdfec: add core driver
> > > > >
> > > > > On Fri, May 03, 2019 at 04:41:21PM +0000, Dragan Cvetic wrote:
> > > > > > Hi Greg,
> > > > > >
> > > > > > Please find my inline comments below,
> > > > > >
> > > > > > Regards
> > > > > > Dragan
> > > > > >
> > > > > > > -----Original Message-----
> > > > > > > From: Greg KH [mailto:gregkh@linuxfoundation.org]
> > > > > > > Sent: Thursday 2 May 2019 18:20
> > > > > > > To: Dragan Cvetic <draganc@xilinx.com>
> > > > > > > Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> > > > > > > mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> > > > > > > Subject: Re: [PATCH V3 02/12] misc: xilinx-sdfec: add core driver
> > > > > > >
> > > > > > > On Sat, Apr 27, 2019 at 11:04:56PM +0100, Dragan Cvetic wrote:
> > > > > > > > +#define DRIVER_NAME "xilinx_sdfec"
> > > > > > > > +#define DRIVER_VERSION "0.3"
> > > > > > >
> > > > > > > Version means nothing with the driver in the kernel tree, please remove
> > > > > > > it.
> > > > > >
> > > > > > Will be removed. Thank you.
> > > > > >
> > > > > > >
> > > > > > > > +#define DRIVER_MAX_DEV BIT(MINORBITS)
> > > > > > >
> > > > > > > Why this number?  Why limit yourself to any number?
> > > > > > >
> > > > > >
> > > > > > There can be max 8 devices for this driver. I'll change to 8.
> > > > > >
> > > > > > > > +
> > > > > > > > +static struct class *xsdfec_class;
> > > > > > >
> > > > > > > Do you really need your own class?
> > > > > >
> > > > > > When writing a character device driver, my goal is to create and register an instance
> > > > > > of that structure associated with a struct file_operations, exposing a set of operations
> > > > > > to the user-space. One of the steps to make this goal is Create a class for a devices,
> > > > > > visible in /sys/class/.
> > > > >
> > > > > Why do you need a class?  Again, why not just use the misc_device api,
> > > > > that seems much more relevant here and will make the code a lot simpler.
> > > > >
> > > >
> > > > The driver can have 8 devices in SoC plus more in Programming Logic.
> > > > It looked logical to group them under the same MAJOR, although they
> > > > are independent of each other.  Is this argument strong enough to use
> > > > class?
> > >
> > > Not really :)
> > >
> > > 8 devices is pretty small.  What tool will be trying to talk to all of
> > > these devices and how was it going to find out what devices were in the
> > > system?
> > >
> >
> > These devices are Forward Error Correction encoder/decoder
> > and will be part of the RF communication chain. They will be included
> > in the system through DT. Also, described in DT.
> 
> Userspace doesn't mess with DT.
> 
> I am asking what userspace tool/program is going to be interacting with
> these devices through your now-custom api you are creating.  Do you have
> a link to that software, and how is that code doing the "determine what
> device nodes are associated with what devices" logic?
> 

Example code is not public yet, sorry. The index number in the device name
is a link to device, see snippet from the example code:

#define FEC_DEC  "/dev/xsdfec0"
dec_fd = open_xsdfec(FEC_DEC);

The index number corresponds to the device order in DT.

> thanks,
> 
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
