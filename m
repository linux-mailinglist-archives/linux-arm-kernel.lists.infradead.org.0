Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 309B04EE26
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 19:50:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IFyXRa4A9ae82418NYvBN5BKzL8GUxz3LJ+C4mjYbjY=; b=MFcNyD+86NY0CI
	BCH2Y1D44Sp8sEPE96qkazOf916IjWyFSFSjw57WmfZG2apIGQZr2dCMN/WgdbV15PzJHLHX1Tao6
	uxIHQ7NGdBGiFs9ZPoqxGc2Pj3L8edGJ5N6mX1WRUC8Q1Me1+y8g2P/5k6otBYjnUfnUSYIjvIfsU
	jHfkkJpze6TxtIAsNbHUy1xyJTMEzjsBArIxQkxEUM75q+NOV8QQwNiA3WHsu5j2J8dA0HHsxUGJZ
	1xhzK9KiPFyTMNg+KYGfGrrcuGsln1nQR/+M2FLilKmdOunOyCyDcIsXZw+nco9+MV5bGKBUbzIfj
	qQ/TnpB0HniLCga91Vqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heNfj-0006YL-Uv; Fri, 21 Jun 2019 17:49:59 +0000
Received: from mail-by2nam01on060c.outbound.protection.outlook.com
 ([2a01:111:f400:fe42::60c]
 helo=NAM01-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heNfY-0006Xw-8z
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 17:49:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dPw6yeHMLDYvjXmsiCQ6cOs0ouwkU25bVG31upgwIic=;
 b=L/GFTKifEV0NYKeY7IAOpVqCqWBoWJz8nVJGgDGEhmzMl0WxmKNytgMXFvFnec+WZXbJaLU6w693Zzt2j5xczHrrQSXXAZ82CW57o6GuSYdImaQPSfJ076KB6T+YG5J1Jsw7ncGleO3DfPbayJYoUeEXZ9ZRPmKyql0ayUDarsE=
Received: from CH2PR02MB6359.namprd02.prod.outlook.com (52.132.231.93) by
 CH2PR02MB6344.namprd02.prod.outlook.com (52.132.231.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.15; Fri, 21 Jun 2019 17:49:46 +0000
Received: from CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::b9dd:11e0:7fca:ba55]) by CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::b9dd:11e0:7fca:ba55%5]) with mapi id 15.20.1987.014; Fri, 21 Jun 2019
 17:49:45 +0000
From: Dragan Cvetic <draganc@xilinx.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: RE: [PATCH V7 00/11] misc: xilinx sd-fec drive
Thread-Topic: [PATCH V7 00/11] misc: xilinx sd-fec drive
Thread-Index: AQHVIHtLLdGbOE767U2XbDHU36aibaamNrSAgAA5XPA=
Date: Fri, 21 Jun 2019 17:49:45 +0000
Message-ID: <CH2PR02MB635999D7374378CEA096FE72CBE70@CH2PR02MB6359.namprd02.prod.outlook.com>
References: <1560274185-264438-1-git-send-email-dragan.cvetic@xilinx.com>
 <20190621141553.GA16650@kroah.com>
In-Reply-To: <20190621141553.GA16650@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=draganc@xilinx.com; 
x-originating-ip: [149.199.80.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e3b7eb22-b9a7-4d72-d7c5-08d6f670d92c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:CH2PR02MB6344; 
x-ms-traffictypediagnostic: CH2PR02MB6344:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <CH2PR02MB6344DEA04135533B6CF9995BCBE70@CH2PR02MB6344.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0075CB064E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(346002)(39860400002)(136003)(376002)(189003)(52314003)(199004)(51914003)(13464003)(53546011)(76116006)(6116002)(66066001)(25786009)(73956011)(53936002)(486006)(6246003)(52536014)(66946007)(478600001)(6506007)(71200400001)(5660300002)(9686003)(107886003)(8936002)(68736007)(14454004)(55016002)(99286004)(8676002)(81166006)(4326008)(71190400001)(7696005)(6916009)(7736002)(76176011)(33656002)(6306002)(81156014)(14444005)(11346002)(256004)(74316002)(64756008)(66446008)(66556008)(476003)(26005)(3846002)(66476007)(86362001)(316002)(966005)(305945005)(2906002)(54906003)(229853002)(102836004)(446003)(6436002)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6344;
 H:CH2PR02MB6359.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: AfVR0KQFt3r0fVp8NnJVct55M/Nicu968ob9SKLi+zN6/UUZPXLpPdqKV5UeP5Am41NhjpTZnpYbSluYY5e8m0lKV7QMV3uJHncF9JHMeU5MZW0o+wvKobuk1R0T56ZKJp9tuh5vwRMoPMhJwZEK77ZuymoRh/3p14AxjTU/yUnCh8QErX00RQDsn5YxJD3ZrHHvbBZ/gsjG3J+aapDuAojALOglzTFVMfbcXw5J6QlUbfA0Zn4uGP6EHym80GmD8ZqgVowg/GIAKzPyTqrt1HNYlFfHh7SEe1JHFlUAlM4VxfZCdZL8r/q12W/aUw0FLGOOJr62pxUgbNyFEqUBc+7oNjmx4HXvr9uiCXa1DO6oWp90B6inhNST63McP6LpA+z6Wrc1RSZw+/Rq+oxaxAOJZn2y9HGh1CthQLwt2wI=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3b7eb22-b9a7-4d72-d7c5-08d6f670d92c
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2019 17:49:45.8319 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: draganc@xilinx.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6344
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_104948_322206_28365B7B 
X-CRM114-Status: GOOD (  17.51  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe42:0:0:0:60c listed in]
 [list.dnswl.org]
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
> Sent: Friday 21 June 2019 15:16
> To: Dragan Cvetic <draganc@xilinx.com>
> Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> Subject: Re: [PATCH V7 00/11] misc: xilinx sd-fec drive
> 
> On Tue, Jun 11, 2019 at 06:29:34PM +0100, Dragan Cvetic wrote:
> > This patchset is adding the full Soft Decision Forward Error
> > Correction (SD-FEC) driver implementation, driver DT binding and
> > driver documentation.
> >
> > Forward Error Correction (FEC) codes such as Low Density Parity
> > Check (LDPC) and turbo codes provide a means to control errors in
> > data transmissions over unreliable or noisy communication
> > channels. The SD-FEC Integrated Block is an optimized block for
> > soft-decision decoding of these codes. Fixed turbo codes are
> > supported directly, whereas custom and standardized LDPC codes
> > are supported through the ability to specify the parity check
> > matrix through an AXI4-Lite bus or using the optional programmable
> > (PL)-based support logic. For the further information see
> > https://www.xilinx.com/support/documentation/ip_documentation/
> > sd_fec/v1_1/pg256-sdfec-integrated-block.pdf
> >
> > This driver is a platform device driver which supports SDFEC16
> > (16nm) IP. SD-FEC driver supports LDPC decoding and encoding and
> > Turbo code decoding. LDPC codes can be specified on
> > a codeword-by-codeword basis, also a custom LDPC code can be used.
> >
> > The SD-FEC driver exposes a char device interface and supports
> > file operations: open(), close(), poll() and ioctl(). The driver
> > allows only one usage of the device, open() limits the number of
> > driver instances. The driver also utilize Common Clock Framework
> > (CCF).
> >
> > The control and monitoring is supported over ioctl system call.
> > The features supported by ioctl():
> > - enable or disable data pipes to/from device
> > - configure the FEC algorithm parameters
> > - set the order of data
> > - provide a control of a SDFEC bypass option
> > - activates/deactivates SD-FEC
> > - collect and provide statistical data
> > - enable/disable interrupt mode
> 
> Is there any userspace tool that talks to this device using these custom
> ioctls yet?
> 
Tools no, but could be the customer who is using the driver.


> Doing a one-off ioctl api is always a risky thing, you are pretty much
> just creating brand new system calls for one piece of hardware.
> 

Why is that wrong and what is the risk?
What would you propose?
Definitely, I have to read about this.

> Anyway, I took the first 3 patches here because they looked sane.  and
> stopped when I ran into the ioctl problem...
> 


Thanks for these 3

Dragan

> thanks,
> 
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
