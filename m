Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 470911645C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 15:16:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9HcJraXksppQwT1DOzveJfc0hB8IJ/ekBPc8gUwPBWE=; b=ZAvKfWyKwgM1Z3
	3GxuuZGkmHcs5KxNM296syRYh8KzpSomt7A5wAtc4v3GTfwOAzvM6bKqu/YdzAZUL45bI5e60wGjT
	fM64eAFfnS47pjIoxwH5rvfYGCWm0UqPHt2kZXVxLUuLnCymIL76K1GBb1US1jN1Qv92Rh/ix3SuC
	sdfPD52xQ0ZVL4LyFK4buEYgFWcuAUpSfVxYUKl9nqoKSmfjMaPlT0VK+KxY+Dl+q4mrgu2Aezlfj
	X/YHXekYS7yoCumtHOdCu5GNFD1qBqE1eI7psBzQtWUvOCUfxzzsp3u2cZB9nDr2ulbfvrwg6WJWM
	jQVROHXnUF07ZL9TpwNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNzx6-00052a-3m; Tue, 07 May 2019 13:16:12 +0000
Received: from mail-eopbgr690042.outbound.protection.outlook.com
 ([40.107.69.42] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNzwy-000528-Ik
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 13:16:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Sh91UyZ5CG3oKqllnpLHPUVnPM/iwog42gkqfmdoJAY=;
 b=U54jBjVDOwo5ETdeOJyp91vnOe16hy09MOrUsqoocSMHvZwyCwfCGH5vhfKOK6Rde/i81Vq2GvIZKeTkVztuUS6k3fYEODYHOT67TbDQK2+KE9ajsNynG66+TGp2jppuoUKyYdlblnSuW5HBMO+DYEimaojg2PR4B0sWxs68auY=
Received: from BL0PR02MB5681.namprd02.prod.outlook.com (20.177.241.92) by
 BL0PR02MB4449.namprd02.prod.outlook.com (10.167.179.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.15; Tue, 7 May 2019 13:15:58 +0000
Received: from BL0PR02MB5681.namprd02.prod.outlook.com
 ([fe80::6cde:f726:b36e:752d]) by BL0PR02MB5681.namprd02.prod.outlook.com
 ([fe80::6cde:f726:b36e:752d%5]) with mapi id 15.20.1856.012; Tue, 7 May 2019
 13:15:58 +0000
From: Dragan Cvetic <draganc@xilinx.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: RE: [PATCH V3 02/12] misc: xilinx-sdfec: add core driver
Thread-Topic: [PATCH V3 02/12] misc: xilinx-sdfec: add core driver
Thread-Index: AQHU/UVOyBvhwX5Hf0mi9G9IHzQgRKZYHAiAgAGBAECAAQXIAIADZtRggAAL5YCAATcywIAAKlGAgAAWmLCAABaBAIAABssg
Date: Tue, 7 May 2019 13:15:58 +0000
Message-ID: <BL0PR02MB5681A7C4F93F33F1C1E05114CB310@BL0PR02MB5681.namprd02.prod.outlook.com>
References: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
 <1556402706-176271-3-git-send-email-dragan.cvetic@xilinx.com>
 <20190502172007.GA1874@kroah.com>
 <BL0PR02MB5681B0F2BC0D74D8604D4289CB350@BL0PR02MB5681.namprd02.prod.outlook.com>
 <20190504075502.GA11133@kroah.com>
 <BL0PR02MB56814D6EACC16938A0575D16CB300@BL0PR02MB5681.namprd02.prod.outlook.com>
 <20190506123425.GA26360@kroah.com>
 <BL0PR02MB568169E26DCD12498EBDFC3ACB310@BL0PR02MB5681.namprd02.prod.outlook.com>
 <20190507093941.GC20355@kroah.com>
 <BL0PR02MB568148AD27F3FE86D168BDF9CB310@BL0PR02MB5681.namprd02.prod.outlook.com>
 <20190507122106.GA7873@kroah.com>
In-Reply-To: <20190507122106.GA7873@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=draganc@xilinx.com; 
x-originating-ip: [149.199.80.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a44ea838-bc48-48ab-8bc9-08d6d2ee24fa
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:BL0PR02MB4449; 
x-ms-traffictypediagnostic: BL0PR02MB4449:
x-microsoft-antispam-prvs: <BL0PR02MB4449368B670A883EFF8B7E4DCB310@BL0PR02MB4449.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(39860400002)(376002)(346002)(396003)(13464003)(189003)(199004)(68736007)(6916009)(81156014)(8676002)(8936002)(6246003)(6436002)(486006)(52536014)(229853002)(86362001)(76116006)(305945005)(7736002)(14444005)(256004)(74316002)(476003)(446003)(55016002)(73956011)(66946007)(11346002)(66476007)(66556008)(64756008)(66446008)(66066001)(316002)(26005)(53546011)(25786009)(6506007)(5660300002)(186003)(81166006)(33656002)(4326008)(102836004)(71200400001)(71190400001)(107886003)(9686003)(53936002)(3846002)(2906002)(54906003)(76176011)(14454004)(99286004)(7696005)(478600001)(6116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB4449;
 H:BL0PR02MB5681.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: WvjX/UzY63sYA97KvWt0dRXKA4FeKYLw2bwV6ZfUOGbbqe1qMdGY2pd3x0CLIsqi8foN9xeFviaAhEqHr0l6HHNbUmmaeLjr7sCPjlSXTjKLToOoqjzQIUu8xpKSyZepucheydDin44l1/svNCJfCH1R6xpCVmOPqgbR3k/+6ytp5+bR4LP4jMXHVi4NDoH3Qdy500WYaP7bUkX6r9wm0s9VON76d3kvta4ViDuUYVo+0KjCnXARsyM8Hevkg41K1Qs4xVRk83GKHCREvgTs8oBTacq4RdAmnEYOoXnTqs5pHTWX0FBdDHC8jySDurnaGzB9vdELBZ2laIHwhTZDaniVP8RG13mHM16mCAeV/v38nK1KoUFrDvpSsLy+IyoYtUfgsp0o5L9nh9NQ65cnBe5etZ3nI6L8VOM3qI4rkbs=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a44ea838-bc48-48ab-8bc9-08d6d2ee24fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 13:15:58.1684 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB4449
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_061604_662071_32256A4A 
X-CRM114-Status: GOOD (  26.60  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.42 listed in list.dnswl.org]
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
> Sent: Tuesday 7 May 2019 13:21
> To: Dragan Cvetic <draganc@xilinx.com>
> Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> Subject: Re: [PATCH V3 02/12] misc: xilinx-sdfec: add core driver
> 
> On Tue, May 07, 2019 at 11:55:42AM +0000, Dragan Cvetic wrote:
> >
> >
> > > -----Original Message-----
> > > From: Greg KH [mailto:gregkh@linuxfoundation.org]
> > > Sent: Tuesday 7 May 2019 10:40
> > > To: Dragan Cvetic <draganc@xilinx.com>
> > > Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> > > mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> > > Subject: Re: [PATCH V3 02/12] misc: xilinx-sdfec: add core driver
> > >
> > > On Tue, May 07, 2019 at 08:48:41AM +0000, Dragan Cvetic wrote:
> > > >
> > > >
> > > > > -----Original Message-----
> > > > > From: Greg KH [mailto:gregkh@linuxfoundation.org]
> > > > > Sent: Monday 6 May 2019 13:34
> > > > > To: Dragan Cvetic <draganc@xilinx.com>
> > > > > Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> > > > > mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> > > > > Subject: Re: [PATCH V3 02/12] misc: xilinx-sdfec: add core driver
> > > > >
> > > > > On Mon, May 06, 2019 at 12:23:56PM +0000, Dragan Cvetic wrote:
> > > > > >
> > > > > >
> > > > > > > -----Original Message-----
> > > > > > > From: Greg KH [mailto:gregkh@linuxfoundation.org]
> > > > > > > Sent: Saturday 4 May 2019 08:55
> > > > > > > To: Dragan Cvetic <draganc@xilinx.com>
> > > > > > > Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> > > > > > > mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> > > > > > > Subject: Re: [PATCH V3 02/12] misc: xilinx-sdfec: add core driver
> > > > > > >
> > > > > > > On Fri, May 03, 2019 at 04:41:21PM +0000, Dragan Cvetic wrote:
> > > > > > > > Hi Greg,
> > > > > > > >
> > > > > > > > Please find my inline comments below,
> > > > > > > >
> > > > > > > > Regards
> > > > > > > > Dragan
> > > > > > > >
> > > > > > > > > -----Original Message-----
> > > > > > > > > From: Greg KH [mailto:gregkh@linuxfoundation.org]
> > > > > > > > > Sent: Thursday 2 May 2019 18:20
> > > > > > > > > To: Dragan Cvetic <draganc@xilinx.com>
> > > > > > > > > Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> > > > > > > > > mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan
> <dkiernan@xilinx.com>
> > > > > > > > > Subject: Re: [PATCH V3 02/12] misc: xilinx-sdfec: add core driver
> > > > > > > > >
> > > > > > > > > On Sat, Apr 27, 2019 at 11:04:56PM +0100, Dragan Cvetic wrote:
> > > > > > > > > > +#define DRIVER_NAME "xilinx_sdfec"
> > > > > > > > > > +#define DRIVER_VERSION "0.3"
> > > > > > > > >
> > > > > > > > > Version means nothing with the driver in the kernel tree, please remove
> > > > > > > > > it.
> > > > > > > >
> > > > > > > > Will be removed. Thank you.
> > > > > > > >
> > > > > > > > >
> > > > > > > > > > +#define DRIVER_MAX_DEV BIT(MINORBITS)
> > > > > > > > >
> > > > > > > > > Why this number?  Why limit yourself to any number?
> > > > > > > > >
> > > > > > > >
> > > > > > > > There can be max 8 devices for this driver. I'll change to 8.
> > > > > > > >
> > > > > > > > > > +
> > > > > > > > > > +static struct class *xsdfec_class;
> > > > > > > > >
> > > > > > > > > Do you really need your own class?
> > > > > > > >
> > > > > > > > When writing a character device driver, my goal is to create and register an instance
> > > > > > > > of that structure associated with a struct file_operations, exposing a set of operations
> > > > > > > > to the user-space. One of the steps to make this goal is Create a class for a devices,
> > > > > > > > visible in /sys/class/.
> > > > > > >
> > > > > > > Why do you need a class?  Again, why not just use the misc_device api,
> > > > > > > that seems much more relevant here and will make the code a lot simpler.
> > > > > > >
> > > > > >
> > > > > > The driver can have 8 devices in SoC plus more in Programming Logic.
> > > > > > It looked logical to group them under the same MAJOR, although they
> > > > > > are independent of each other.  Is this argument strong enough to use
> > > > > > class?
> > > > >
> > > > > Not really :)
> > > > >
> > > > > 8 devices is pretty small.  What tool will be trying to talk to all of
> > > > > these devices and how was it going to find out what devices were in the
> > > > > system?
> > > > >
> > > >
> > > > These devices are Forward Error Correction encoder/decoder
> > > > and will be part of the RF communication chain. They will be included
> > > > in the system through DT. Also, described in DT.
> > >
> > > Userspace doesn't mess with DT.
> > >
> > > I am asking what userspace tool/program is going to be interacting with
> > > these devices through your now-custom api you are creating.  Do you have
> > > a link to that software, and how is that code doing the "determine what
> > > device nodes are associated with what devices" logic?
> > >
> >
> > Example code is not public yet, sorry.
> 
> Ok, then I think we need to wait for that to get this merged at the
> minimum, don't you agree?  Otherwise how do we even know that any of
> these codepaths are tested?
> 
> > The index number in the device name
> > is a link to device, see snippet from the example code:
> >
> > #define FEC_DEC  "/dev/xsdfec0"
> > dec_fd = open_xsdfec(FEC_DEC);
> >
> > The index number corresponds to the device order in DT.
> 
> So that implies you don't need a class at all, right?
> 

Greg, you won:(
Thanks for patience, I appreciate it very much.
Dragan

> thanks,
> 
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
