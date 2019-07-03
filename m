Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE895E27E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 13:05:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYmfyNWzHjEa/6+jWtB3WmezPAZL3bZXTRtLo8JcvXc=; b=Aooh2Ninjy1MeM
	NHqW5pvBYV96kIwDN9AjfoUX9Y0lFRpyZ+V40scZYGGJqai6QZP/TSGiLK5BN8PtaCYUq8ddmh7MU
	EWXAmF1LgObfWdZNAIbn85rdcKLrFn7osbG2NoPJGf6BzL9WiPFBTnd1YxE6nxpdynTFeV6DCflmp
	dpAaMTRZU93sgr9Ix0zqdSE4xUyKntsHfhQ92wuJj5BNYxveiRnImJzKyY0eR05klpwdOj1eL/dTM
	CYiVjYa1+BM4SLApiTgsaiedLJMvVxUUmEZuxVGU0RUaYpSZVfDWSiGzVWPydvoMoAU8anwipTJZi
	ebAjtx120r9Zbje3670g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hid4K-00030E-0F; Wed, 03 Jul 2019 11:04:56 +0000
Received: from mail-eopbgr740075.outbound.protection.outlook.com
 ([40.107.74.75] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hid3u-0002yY-1l
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 11:04:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vp0rqdLuu4DONvE4ea8TBMWjUjorJbwMs3yqZs4UmJI=;
 b=mugXz/nnTV/7nKB2TVSN+5nOeGqdUBNRuNsRujAyOLwM5LOjzXuOA/y0sXgToWwwz1JwUjq2xKOQxlc6z6FUcE3BKKos6ll+9sXB+kDo6pUzNjL5KY4LEGPQTKLgws2gG0kT6DxWZ83fJMJpjr/PL5mkn9EyMKS9mDnytI9YNxo=
Received: from MN2PR02MB6368.namprd02.prod.outlook.com (52.132.175.153) by
 MN2PR02MB5823.namprd02.prod.outlook.com (20.179.87.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Wed, 3 Jul 2019 11:04:22 +0000
Received: from MN2PR02MB6368.namprd02.prod.outlook.com
 ([fe80::eddc:227e:27cc:d2bc]) by MN2PR02MB6368.namprd02.prod.outlook.com
 ([fe80::eddc:227e:27cc:d2bc%5]) with mapi id 15.20.2032.019; Wed, 3 Jul 2019
 11:04:22 +0000
From: Dragan Cvetic <draganc@xilinx.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: RE: [PATCH V7 00/11] misc: xilinx sd-fec drive
Thread-Topic: [PATCH V7 00/11] misc: xilinx sd-fec drive
Thread-Index: AQHVIHtLLdGbOE767U2XbDHU36aibaamNrSAgAA5XPCAAM7egIARm4rg
Date: Wed, 3 Jul 2019 11:04:22 +0000
Message-ID: <MN2PR02MB63682925A8D89F3B69001744CBFB0@MN2PR02MB6368.namprd02.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: bee70e3e-e6f8-440f-45f1-08d6ffa6340a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR02MB5823; 
x-ms-traffictypediagnostic: MN2PR02MB5823:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MN2PR02MB5823AFC90AF569B7BE3B9C20CBFB0@MN2PR02MB5823.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 00872B689F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(39860400002)(376002)(396003)(346002)(199004)(13464003)(189003)(71190400001)(102836004)(53546011)(68736007)(7696005)(99286004)(81156014)(8676002)(8936002)(66946007)(25786009)(71200400001)(6506007)(26005)(305945005)(7736002)(74316002)(76176011)(76116006)(14454004)(5660300002)(476003)(52536014)(486006)(66446008)(66476007)(64756008)(14444005)(6916009)(66556008)(73956011)(81166006)(966005)(33656002)(9686003)(6306002)(4326008)(446003)(53936002)(86362001)(186003)(11346002)(316002)(6436002)(256004)(54906003)(66066001)(229853002)(107886003)(3846002)(55016002)(6116002)(6246003)(2906002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB5823;
 H:MN2PR02MB6368.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: PAvRYdPVc5KlEHo3KT3Mhcru3iD0F7fLTVkYFoZWK7MbH9JQY3z+9ODb4qeGPu9Ou9KWdsvXx/1WiKUNDQP9hplmelTYF9+KRYdF1AHU3Hkl8yLYC6pCjYhG3AhxYiAwFhp+e/P/l1r3rigACfQ1gl0hCwBrOg53K9tVaPmiJTfzk5+ltjA2GNS2RkL4fJALS6GP0nvS5QBeMGAGmiIPi8DvPFZymTG5T/MDdm0K6iYY/MtVFQBiq52WGq84RUJY7K+G2hSHPHeTizCGKMBeXaBb4w+sPHm+IacwGvNWF9gkY9mRhJFcHlhwCGKzADJ3/O7QI4RjwAZdtkEeaNV+gNAbhSxjCMjFSzmRBrGkM3vqrryG0D6cPdJS5IESLJKl5ffYK5nlrcmsvlRBJhikkNVXZNc3hlZL4U826t5xAHQ=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bee70e3e-e6f8-440f-45f1-08d6ffa6340a
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2019 11:04:22.0937 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: draganc@xilinx.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB5823
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_040430_131015_98C28C46 
X-CRM114-Status: GOOD (  25.34  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.74.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
> 


The only idea I have got from the comments are to do more abstraction
eg. have a few ioctls with the abstraction done through the passing arguments?




> > What would you propose?
> > Definitely, I have to read about this.
> 
> What is this hardware and what is it used for?  Who will be talking to
> it from userspace?  What userspace workload uses it?  What tools need to
> talk to it?  Where is the code that uses these new apis?
> 
> thanks,
> 
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
