Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4028A7C426
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 15:56:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ls3cF8wtCmjtuJ8OMqQWWthNhjO+7QRWA7tZz+l9VH0=; b=AWG70BytwOldW3
	v/wh6vmb+vTPgTNXAzfI94agspFlyJ/oNKPUXuVp5qo1GLsmtKOu18vJ0JagFt4uLO5WHEYdaN+Q3
	E8asHJ0c2Iytmn5fMXaKoUV1KoV/yrU2/efBq6tYnCffs2M+w9An6E9tA3Tmp2xtyq/W+UtbUrg+U
	+2Ybf1SYJNd0embFXM2F/Mf32PCLtaaK+YDi/CdPm1bajnuv9y32JfQlmeYYnHxxgT6GitDEfsolc
	LuMPzIyq7aVqZMJytBWQTNhBbnE0Csu32bJzhj2m9rqDnNOT4wHQ7uX7akdnAvsGD7tyASrR95XrQ
	f7fz71LETnei0+b1Y8dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsp5x-0006Dw-TI; Wed, 31 Jul 2019 13:56:45 +0000
Received: from mail-eopbgr730044.outbound.protection.outlook.com
 ([40.107.73.44] helo=NAM05-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsp5q-0006DH-JY
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 13:56:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BxiVYsrT++gwZuqIZU4nmeB9bcVCQPh4cKN558aXUCEv9fz3LGGBSb7AzLuCti2cvU6wBdKL0bEaI8umD021yXTLKeUbe2LWYGKfFWlF0fpuQKTQSSx4Zsazt9Z6ugTlk8NQFW0mQn0Y6CTx1KS/A5AYH7A/WnyTPG0Zotn3ag52A7Gr+WN48XQf9pPpddCzx4mg+eSNJwATXgmCuDJ6I0mhj8aJH4kd9HU7+PPr8EemLaurOa5ASsnjzE4kMzRMfqaHQiDClnsOJkbdzYKQ65WLIJ3kGSeXeh9dsy0xa5wbHSb7SelNHYa3Lqm3DhF/YmFbZjJnGjvIzIhTE9BJGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VD67OJCYb1CiXl4K7jO6AkmPodV4gkuRWNcgIiNZCio=;
 b=mqZpHyKouPFMVkRx4QyXP29fCqcNSHvYxWc07X1WQfLDBI/bx7Ozbyy0SY8N0F3U2RAdMfhLl6pIuM3iQADmZ0bnt7jyk8uN9MUqXVM04i/J5wVnzhd+PL3GPuAD32zjpKksjrNw0IvUP5wv6tBibfxNdCNvf9ZqEnO/2hPX94XhaYpaY5DMOKt/nTTmQvEbceOOTNHqCX7ZtOkeDNM21/HioAbrdssotFX5n68nn4y9BEJb01FOXdJJTI6RPQu9sHw4VuArbG5zh2F+jp5epiEVVupNsEXCu6tOCKofV2XwKha/1F0d0lSiJHqOk8+Gvlpa7Mx1llZNycDpeg9uKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=xilinx.com;dmarc=pass action=none
 header.from=xilinx.com;dkim=pass header.d=xilinx.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VD67OJCYb1CiXl4K7jO6AkmPodV4gkuRWNcgIiNZCio=;
 b=jJLdKtzIqvP3WgEDuIBGkFYwxztOaMB2WuRA47/Dh9+dYMR0drSkGFTiqS3NDGSu0aF9MzJzqMdOgoynKZm/gGAI3H+sa13MuGEQ496fYrgOxVu+0qjBIFBoNvcQCaS9b7Bb1JhZJjqdKlgGyJOA1SlnYQGppAUR2P6EZwlNNPA=
Received: from CH2PR02MB6359.namprd02.prod.outlook.com (52.132.231.93) by
 CH2PR02MB6037.namprd02.prod.outlook.com (10.255.156.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Wed, 31 Jul 2019 13:56:33 +0000
Received: from CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::5c58:16c0:d226:4c96]) by CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::5c58:16c0:d226:4c96%2]) with mapi id 15.20.2136.010; Wed, 31 Jul 2019
 13:56:33 +0000
From: Dragan Cvetic <draganc@xilinx.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: RE: [PATCH V7 00/11] misc: xilinx sd-fec drive
Thread-Topic: [PATCH V7 00/11] misc: xilinx sd-fec drive
Thread-Index: AQHVIHtLLdGbOE767U2XbDHU36aibaamNrSAgAA5XPCAAM7egIAAuPAAgD0DyYCAAAih8A==
Date: Wed, 31 Jul 2019 13:56:33 +0000
Message-ID: <CH2PR02MB6359408E8F94AFB745DC273ACBDF0@CH2PR02MB6359.namprd02.prod.outlook.com>
References: <1560274185-264438-1-git-send-email-dragan.cvetic@xilinx.com>
 <20190621141553.GA16650@kroah.com>
 <CH2PR02MB635999D7374378CEA096FE72CBE70@CH2PR02MB6359.namprd02.prod.outlook.com>
 <20190622060135.GB26200@kroah.com>
 <CH2PR02MB6359A32E03E920AE5EEB7324CBE60@CH2PR02MB6359.namprd02.prod.outlook.com>
 <20190731124853.GA4905@kroah.com>
In-Reply-To: <20190731124853.GA4905@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=draganc@xilinx.com; 
x-originating-ip: [149.199.80.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4a9fc310-f55b-4dce-fd0f-08d715bee5a7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:CH2PR02MB6037; 
x-ms-traffictypediagnostic: CH2PR02MB6037:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <CH2PR02MB603793FF989CABE88DC1C2BDCBDF0@CH2PR02MB6037.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(199004)(189003)(13464003)(8936002)(446003)(229853002)(86362001)(55016002)(52536014)(6506007)(25786009)(14454004)(53936002)(11346002)(256004)(186003)(26005)(53546011)(6436002)(486006)(4326008)(476003)(2906002)(14444005)(5660300002)(66066001)(81166006)(8676002)(81156014)(7736002)(7696005)(66946007)(66476007)(9686003)(54906003)(71200400001)(966005)(3846002)(107886003)(99286004)(498600001)(305945005)(6916009)(64756008)(6246003)(71190400001)(68736007)(74316002)(6306002)(76116006)(66556008)(66446008)(6116002)(76176011)(33656002)(102836004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6037;
 H:CH2PR02MB6359.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: N1M1yXFvG/seXH0zU/E4TXnZsx9RYKun19gPHTn5YwiI/B375847EgxZ3OlH/wxwW95GQoQWvWu652CzLhtJYX9jTPZ0q2wQyHW+dYUISsi/maNttH8w1fcElh0yTFCICNw39Av0Hk2iUZ22Etgcc0xXgV4ivFQ73cggrBapMnZcyX+zN9JQFuA+/AugEKI96O5TsSglMFlIwRaPB3kKYHCnjB+QKimdicQBYibK1vYYkSKusqMFw/tu00q3G14wyq+l47ZSvzg8tP7LhquTwQNvsMmCrQELy1BnTRJnCS5Xuldd+mN67K7FUh2h2I1ni95w6DB0yACQrkP2ry32OLkZDhg638j0qsqwb0ZvAXHFvBwVp0KbPE+MCyn0PH6LiVqcsZ1d7fZPsabkZmahmPcL75Gwf+JjPypUA+ioSVk=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a9fc310-f55b-4dce-fd0f-08d715bee5a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 13:56:33.5127 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: draganc@xilinx.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_065638_652056_B12A5C84 
X-CRM114-Status: GOOD (  34.47  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.73.44 listed in list.dnswl.org]
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
> Sent: Wednesday 31 July 2019 13:49
> To: Dragan Cvetic <draganc@xilinx.com>
> Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> Subject: Re: [PATCH V7 00/11] misc: xilinx sd-fec drive
> 
> On Sat, Jun 22, 2019 at 05:54:04PM +0000, Dragan Cvetic wrote:
> >
> >
> > > -----Original Message-----
> > > From: Greg KH [mailto:gregkh@linuxfoundation.org]
> > > Sent: Saturday 22 June 2019 07:02
> > > To: Dragan Cvetic <draganc@xilinx.com>
> > > Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> > > mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> > > Subject: Re: [PATCH V7 00/11] misc: xilinx sd-fec drive
> > >
> > > On Fri, Jun 21, 2019 at 05:49:45PM +0000, Dragan Cvetic wrote:
> > > >
> > > >
> > > > > -----Original Message-----
> > > > > From: Greg KH [mailto:gregkh@linuxfoundation.org]
> > > > > Sent: Friday 21 June 2019 15:16
> > > > > To: Dragan Cvetic <draganc@xilinx.com>
> > > > > Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> > > > > mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> > > > > Subject: Re: [PATCH V7 00/11] misc: xilinx sd-fec drive
> > > > >
> > > > > On Tue, Jun 11, 2019 at 06:29:34PM +0100, Dragan Cvetic wrote:
> > > > > > This patchset is adding the full Soft Decision Forward Error
> > > > > > Correction (SD-FEC) driver implementation, driver DT binding and
> > > > > > driver documentation.
> > > > > >
> > > > > > Forward Error Correction (FEC) codes such as Low Density Parity
> > > > > > Check (LDPC) and turbo codes provide a means to control errors in
> > > > > > data transmissions over unreliable or noisy communication
> > > > > > channels. The SD-FEC Integrated Block is an optimized block for
> > > > > > soft-decision decoding of these codes. Fixed turbo codes are
> > > > > > supported directly, whereas custom and standardized LDPC codes
> > > > > > are supported through the ability to specify the parity check
> > > > > > matrix through an AXI4-Lite bus or using the optional programmable
> > > > > > (PL)-based support logic. For the further information see
> > > > > > https://www.xilinx.com/support/documentation/ip_documentation/
> > > > > > sd_fec/v1_1/pg256-sdfec-integrated-block.pdf
> > > > > >
> > > > > > This driver is a platform device driver which supports SDFEC16
> > > > > > (16nm) IP. SD-FEC driver supports LDPC decoding and encoding and
> > > > > > Turbo code decoding. LDPC codes can be specified on
> > > > > > a codeword-by-codeword basis, also a custom LDPC code can be used.
> > > > > >
> > > > > > The SD-FEC driver exposes a char device interface and supports
> > > > > > file operations: open(), close(), poll() and ioctl(). The driver
> > > > > > allows only one usage of the device, open() limits the number of
> > > > > > driver instances. The driver also utilize Common Clock Framework
> > > > > > (CCF).
> > > > > >
> > > > > > The control and monitoring is supported over ioctl system call.
> > > > > > The features supported by ioctl():
> > > > > > - enable or disable data pipes to/from device
> > > > > > - configure the FEC algorithm parameters
> > > > > > - set the order of data
> > > > > > - provide a control of a SDFEC bypass option
> > > > > > - activates/deactivates SD-FEC
> > > > > > - collect and provide statistical data
> > > > > > - enable/disable interrupt mode
> > > > >
> > > > > Is there any userspace tool that talks to this device using these custom
> > > > > ioctls yet?
> > > > >
> > > > Tools no, but could be the customer who is using the driver.
> > >
> > > I don't understand this.  Who has written code to talk to these
> > > special ioctls from userspace?  Is there a pointer to that code
> > > anywhere?
> > >
> >
> > The code which use this driver are written by the driver maintainers
> > they are examples APP and test code which are not public.
> 
> So, no open code is talking to this one specific driver?  And you have
> run this past your lawyers?  Please go talk to them about this and see
> what they say (hint, creating a custom ioctl that only you use is a
> "fun" legal area...)


Greg,
this driver and all example code APP will be public and open source 
fully. In that sense this code is same as any other driver. 


> 
> > > > > Doing a one-off ioctl api is always a risky thing, you are pretty much
> > > > > just creating brand new system calls for one piece of hardware.
> > > > >
> > > >
> > > > Why is that wrong and what is the risk?
> > >
> > > You now have custom syscalls for one specfic piece of hardware that you
> > > now have to maintain working properly for the next 40+ years.  You have
> > > to make sure those calls are correct and that this is the correct api to
> > > talk to this hardware.
> >
> > This is very specific HW, it's high speed Forward Error Correction HW.
> 
> I have no idea what that actually means.
> 
> What is "Forward Error Correction"?  What does it do?  Is this a network
> device?  Video device?  Random black box that sends radio waves?
> 
> Is there no other in-kernel driver that does much the same type of
> thing?  What "class" of driver would this be?

This is the RF data communication device, type "misc" driver.

> 
> > > > What would you propose?
> > > > Definitely, I have to read about this.
> > >
> > > What is this hardware and what is it used for?  Who will be talking to
> >
> > The Soft-Decision Forward Error Correction (SD-FEC) integrated block
> > supports Low Density Parity Check (LDPC) decoding and encoding and
> > Turbo code decoding.
> 
> I still don't understand what this means.
> 
> > SD-FEC use case is in high data rate applications such as 4G, 5G and
> > DOCSIS3.1 Cable Access.  A high performance SD-FEC (i.e. >1Gbps), is a
> > block used to enable these systems to function under non-ideal
> > environments.
> 
> Nor do I understand what this is either.  Do you have a pointer to this
> hardware somewhere online that might describe it better?  Given that I
> have no clue, odds are others do not know what it is either.

https://www.xilinx.com/support/documentation/ip_documentation/sd_fec/v1_1/pg256-sdfec-integrated-block.pdf

> 
> > > it from userspace?  What userspace workload uses it?  What tools need to
> >
> > There will be APP which configures the HW for the use cases listed above.
> 
> What exactly are these use cases?
> 
> Where is the application?  Who runs it?  Is it already in a distro
> somewhere?  Who is going to distribute it?  Who is going to support it?
> Is it only for sale?  What is the license of it?

According to marketing people here there are about 72 individual programs 
spanning probably ~40 different customers. These are possible users
and APP will be created and run by them.
Driver will be supported by us, APP by customers with our technical support.
Is it for sale? Xilinx gives away all drivers and examples for free, it's up to the
Customer what they do with it and they meet open source licence legal requirements.

Greg,
I'll be out of the office from Friday for a couple of weeks, and I'll try my best to respond on your replies after that.

> 
> thanks,
> 
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
