Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6D74F790
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 19:54:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AnK1f8qhnu8NsjND3fTNgZvP831haEvMOEXHKOSrk74=; b=YjkXhBdmkXzeLc
	H4/9DFCYRpvIun6yj6aU6kU/Vj1Tgl2oAPHccaNfNhLshX32S5/2IUYTL4rZo8tDDEgwxbv7e4zIH
	jTJh/DTZyxNUVGkZwsbQ1fbVqMgcufTmZCPw5nn3wQNUaUbX2KGsqrODPIz/3sxhtddi3twof5EZc
	D4oSoWvHLoW1PUskIfo3M0h8XnjgeZZldLWMkzDmXpAWGHV5kHAuqU+rNIHnx8kubA08U/RDDIDS+
	j6fEYwG/+JzveiyyCe0KYXs5N1udv87JVzLotC6rWwi2tgr3EF1KP0rx4DGv+dbyrRaTCB6vc4IWE
	xEZSeAohwkz2YsGBQogA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hekDR-0005j6-V4; Sat, 22 Jun 2019 17:54:17 +0000
Received: from mail-eopbgr770053.outbound.protection.outlook.com
 ([40.107.77.53] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hekDI-0005d6-W1
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Jun 2019 17:54:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GYzbyHoAuBmjV95TFYTDwtofOHutYXa+ylQ7C5vfp0E=;
 b=hmrKop4CF+Pn0uVGeYdG3xoGwiuRjwkeKhfVMqZBUhPtVZ1jUDSfQGYZEZftsPK7e5rOUpXorwuCeOgZDHq9h5t0GPTN1vEfrIK1hX3TV/cwIbkIBUTBvR4kj53ipG3U98o5t3XsB+E7mmtcvCItdrSTr8RIgxgRQLUj0xkz0jo=
Received: from CH2PR02MB6359.namprd02.prod.outlook.com (52.132.231.93) by
 CH2PR02MB6055.namprd02.prod.outlook.com (10.255.156.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Sat, 22 Jun 2019 17:54:04 +0000
Received: from CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::b9dd:11e0:7fca:ba55]) by CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::b9dd:11e0:7fca:ba55%5]) with mapi id 15.20.2008.014; Sat, 22 Jun 2019
 17:54:04 +0000
From: Dragan Cvetic <draganc@xilinx.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: RE: [PATCH V7 00/11] misc: xilinx sd-fec drive
Thread-Topic: [PATCH V7 00/11] misc: xilinx sd-fec drive
Thread-Index: AQHVIHtLLdGbOE767U2XbDHU36aibaamNrSAgAA5XPCAAM7egIAAuPAA
Date: Sat, 22 Jun 2019 17:54:04 +0000
Message-ID: <CH2PR02MB6359A32E03E920AE5EEB7324CBE60@CH2PR02MB6359.namprd02.prod.outlook.com>
References: <1560274185-264438-1-git-send-email-dragan.cvetic@xilinx.com>
 <20190621141553.GA16650@kroah.com>
 <CH2PR02MB635999D7374378CEA096FE72CBE70@CH2PR02MB6359.namprd02.prod.outlook.com>
 <20190622060135.GB26200@kroah.com>
In-Reply-To: <20190622060135.GB26200@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=draganc@xilinx.com; 
x-originating-ip: [149.199.80.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c60bf531-5d8b-4bc6-4493-08d6f73a9dbc
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:CH2PR02MB6055; 
x-ms-traffictypediagnostic: CH2PR02MB6055:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <CH2PR02MB6055133DBC84AA7C5F1EDFD7CBE60@CH2PR02MB6055.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0076F48C8A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(39860400002)(366004)(396003)(346002)(13464003)(189003)(199004)(86362001)(486006)(66946007)(73956011)(66066001)(256004)(14444005)(66476007)(66556008)(64756008)(66446008)(33656002)(476003)(71200400001)(53546011)(11346002)(52536014)(71190400001)(966005)(53936002)(8676002)(102836004)(6306002)(9686003)(316002)(229853002)(99286004)(81156014)(81166006)(8936002)(54906003)(7696005)(446003)(6506007)(76176011)(14454004)(305945005)(186003)(26005)(55016002)(7736002)(478600001)(25786009)(6436002)(4326008)(6246003)(107886003)(2906002)(3846002)(6116002)(74316002)(5660300002)(76116006)(68736007)(6916009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6055;
 H:CH2PR02MB6359.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: O5g8DQHuPOnDN4jEYSxiM1V71kzm0L/kAj2AAP5FPH9V9Gcd8h2APrC8J/LeKXpfVEUFK2Dmcr//0i4rlGMGhQWWX4jopRDwttB1+ughbIygC4NHjTmOd3oC9cl/V4Qvn7dIC3D9r4/lli2Y+g11ya4g8xToq2xmf2utLt/FcJ30v9HwxKpVceWFX3U5nUfvptFrVmiqrbx4/KYH3zX6K82ArFyFAdkoeNtTAUbDbAdSPTG4th/FrSqFzorWY9neWmkDsH0aN0C2e4kv/vf5XL293bWO+b0td0n0SEmWtVPyFmyacwBOIg8n1RzmEAzcEL63htBFayWwP8S5x5hiZJIkNVUGBmhzWPoKTSpjWUqIkc74nnDmemJcXnMz72FXmPb8ZPgfGm8N6fbc4yaeEm9o3QGL0rWe5v4zCYQT5Bg=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c60bf531-5d8b-4bc6-4493-08d6f73a9dbc
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2019 17:54:04.4269 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: draganc@xilinx.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6055
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_105409_088324_5A406F55 
X-CRM114-Status: GOOD (  26.88  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.53 listed in list.dnswl.org]
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
> Sent: Saturday 22 June 2019 07:02
> To: Dragan Cvetic <draganc@xilinx.com>
> Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> Subject: Re: [PATCH V7 00/11] misc: xilinx sd-fec drive
> 
> On Fri, Jun 21, 2019 at 05:49:45PM +0000, Dragan Cvetic wrote:
> >
> >
> > > -----Original Message-----
> > > From: Greg KH [mailto:gregkh@linuxfoundation.org]
> > > Sent: Friday 21 June 2019 15:16
> > > To: Dragan Cvetic <draganc@xilinx.com>
> > > Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> > > mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> > > Subject: Re: [PATCH V7 00/11] misc: xilinx sd-fec drive
> > >
> > > On Tue, Jun 11, 2019 at 06:29:34PM +0100, Dragan Cvetic wrote:
> > > > This patchset is adding the full Soft Decision Forward Error
> > > > Correction (SD-FEC) driver implementation, driver DT binding and
> > > > driver documentation.
> > > >
> > > > Forward Error Correction (FEC) codes such as Low Density Parity
> > > > Check (LDPC) and turbo codes provide a means to control errors in
> > > > data transmissions over unreliable or noisy communication
> > > > channels. The SD-FEC Integrated Block is an optimized block for
> > > > soft-decision decoding of these codes. Fixed turbo codes are
> > > > supported directly, whereas custom and standardized LDPC codes
> > > > are supported through the ability to specify the parity check
> > > > matrix through an AXI4-Lite bus or using the optional programmable
> > > > (PL)-based support logic. For the further information see
> > > > https://www.xilinx.com/support/documentation/ip_documentation/
> > > > sd_fec/v1_1/pg256-sdfec-integrated-block.pdf
> > > >
> > > > This driver is a platform device driver which supports SDFEC16
> > > > (16nm) IP. SD-FEC driver supports LDPC decoding and encoding and
> > > > Turbo code decoding. LDPC codes can be specified on
> > > > a codeword-by-codeword basis, also a custom LDPC code can be used.
> > > >
> > > > The SD-FEC driver exposes a char device interface and supports
> > > > file operations: open(), close(), poll() and ioctl(). The driver
> > > > allows only one usage of the device, open() limits the number of
> > > > driver instances. The driver also utilize Common Clock Framework
> > > > (CCF).
> > > >
> > > > The control and monitoring is supported over ioctl system call.
> > > > The features supported by ioctl():
> > > > - enable or disable data pipes to/from device
> > > > - configure the FEC algorithm parameters
> > > > - set the order of data
> > > > - provide a control of a SDFEC bypass option
> > > > - activates/deactivates SD-FEC
> > > > - collect and provide statistical data
> > > > - enable/disable interrupt mode
> > >
> > > Is there any userspace tool that talks to this device using these custom
> > > ioctls yet?
> > >
> > Tools no, but could be the customer who is using the driver.
> 
> I don't understand this.  Who has written code to talk to these
> special ioctls from userspace?  Is there a pointer to that code
> anywhere?
> 

The code which use this driver are written by the driver maintainers they are examples APP and test code which are not public.


> > > Doing a one-off ioctl api is always a risky thing, you are pretty much
> > > just creating brand new system calls for one piece of hardware.
> > >
> >
> > Why is that wrong and what is the risk?
> 
> You now have custom syscalls for one specfic piece of hardware that you
> now have to maintain working properly for the next 40+ years.  You have
> to make sure those calls are correct and that this is the correct api to
> talk to this hardware.

This is very specific HW, it's high speed Forward Error Correction HW.
I'll be happy if I maintain this for the next 40+ years.

Actually, forgive me asking, what architecture would make me not maintain this driver next 40+ years?
 

> 
> > What would you propose?
> > Definitely, I have to read about this.
> 
> What is this hardware and what is it used for?  Who will be talking to

The Soft-Decision Forward Error Correction (SD-FEC) integrated block supports Low Density Parity Check (LDPC) decoding and encoding and Turbo code decoding.
SD-FEC use case is in high data rate applications such as 4G, 5G and DOCSIS3.1 Cable Access.
A high performance SD-FEC (i.e. >1Gbps), is a block used to enable these systems to function under non-ideal environments.

> it from userspace?  What userspace workload uses it?  What tools need to

There will be APP which configures the HW for the use cases listed above.

Thanks

Dragan

> talk to it?  Where is the code that uses these new apis?
> 
> thanks,
> 
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
