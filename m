Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D0B14980
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 14:24:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vIzEEU1bda7NIwi2iNht0jm0dPMyIt+vYqU1Qpj8ZNU=; b=HNH5916WMfK+zy
	8GyJSrOpqQaTFX0Ai2RRZZ6elzcKu9CpcSwUsEoY+3HOM09T7UINDDnhXkkMeokNcEZJuzy8tRgmZ
	J4CtX7tGIyckAnMKDcfekD0yj0/c5EJ3ms0etdCjcMj3iME21OYoFBKi+o54M2p9qZ/Y62VGyb1xA
	Qzqu5n/NeQCipVXBB8X+l1AODp38oL/mWDzX1QMjxeGuVophLIUgF1x+ev6dVPtZq4lpyrND4EdPr
	e/TrGjMGDIo1RaP5Km1jCaZwen0YrjCBbxeV9F731bqhMIPJF1fSqkNcmLzv7FzqZt+k7DQODg+dd
	F+kbYRdkUBwEPIyWiV0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNcfB-00020T-E2; Mon, 06 May 2019 12:24:09 +0000
Received: from mail-eopbgr780055.outbound.protection.outlook.com
 ([40.107.78.55] helo=NAM03-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNcf3-0001zJ-14
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 12:24:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8X0+P5Sm5WOvr4dReZrS3AWGzBErsCauRkQSEH/ITCw=;
 b=TCfO0CD3ahliVPvjlIo22BUxL0DqZgBqS7q6fSOhHIQz+2lVWNdDoseoKsdC5TshbulNdc6HpIKAx5hS1EQXnDQDOw7NpdoMMtotnQ8br7XZGh6M3GuVW9U6dyofzmksVrMYPNa/t48Voi/osSvVXhuzD4JLCWY+JDXs5c5AdCM=
Received: from BL0PR02MB5681.namprd02.prod.outlook.com (20.177.241.92) by
 BL0PR02MB3843.namprd02.prod.outlook.com (52.132.9.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Mon, 6 May 2019 12:23:56 +0000
Received: from BL0PR02MB5681.namprd02.prod.outlook.com
 ([fe80::6cde:f726:b36e:752d]) by BL0PR02MB5681.namprd02.prod.outlook.com
 ([fe80::6cde:f726:b36e:752d%5]) with mapi id 15.20.1856.012; Mon, 6 May 2019
 12:23:56 +0000
From: Dragan Cvetic <draganc@xilinx.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: RE: [PATCH V3 02/12] misc: xilinx-sdfec: add core driver
Thread-Topic: [PATCH V3 02/12] misc: xilinx-sdfec: add core driver
Thread-Index: AQHU/UVOyBvhwX5Hf0mi9G9IHzQgRKZYHAiAgAGBAECAAQXIAIADZtRg
Date: Mon, 6 May 2019 12:23:56 +0000
Message-ID: <BL0PR02MB56814D6EACC16938A0575D16CB300@BL0PR02MB5681.namprd02.prod.outlook.com>
References: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
 <1556402706-176271-3-git-send-email-dragan.cvetic@xilinx.com>
 <20190502172007.GA1874@kroah.com>
 <BL0PR02MB5681B0F2BC0D74D8604D4289CB350@BL0PR02MB5681.namprd02.prod.outlook.com>
 <20190504075502.GA11133@kroah.com>
In-Reply-To: <20190504075502.GA11133@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=draganc@xilinx.com; 
x-originating-ip: [149.199.80.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2849d9ec-7af0-46d7-d4b2-08d6d21db5cb
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:BL0PR02MB3843; 
x-ms-traffictypediagnostic: BL0PR02MB3843:
x-microsoft-antispam-prvs: <BL0PR02MB3843E236856AF89C9C8621A7CB300@BL0PR02MB3843.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(136003)(376002)(396003)(39860400002)(199004)(189003)(13464003)(478600001)(6246003)(54906003)(52536014)(3846002)(476003)(486006)(14454004)(2906002)(81156014)(81166006)(66446008)(4326008)(316002)(186003)(305945005)(7736002)(107886003)(6116002)(53936002)(8676002)(446003)(11346002)(74316002)(26005)(86362001)(76116006)(68736007)(99286004)(9686003)(66066001)(66556008)(6436002)(53546011)(256004)(66946007)(73956011)(64756008)(66476007)(229853002)(102836004)(14444005)(71190400001)(5660300002)(71200400001)(8936002)(25786009)(33656002)(6916009)(6506007)(76176011)(7696005)(55016002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB3843;
 H:BL0PR02MB5681.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Mmy24UGHwddgcDOPqMLT1uzi8N0o23Pxe2cgRIxSDsjubSRmpZ/qpNNdEYbPzZOWqPv1zAEq/OkpnDMx9r8w7f3Nnf21y1aLCd3leQ4qGYS79q+RHBgrsmaIG+Jw4HwKeiXF2hfiTTpPy5e6twBQSLLQx4q6Z27ePNzMyK8iSffW/LYtqKLm+V+T0km2MZf9X/8cRxGB+8epynkz+oqxjCma6uspjDjowEWnHJP+LrhW/vD6lwW9YAhUMUagvcI+82Ztc7B1mIWJ6wPqQbBu6AO9LX8ISWzAMmIrEdhsdBXenrt6wEA+GaxsTUldBz64oJQrSIjvH18Hv6/yVC//FQLAOqbqN5BqfgAZyOZ4VrCKjbT7Hpod0PfHMG0rifBE2qp+F/7ZalruEu20fwEPR0oERrLC3KRAFlRIViPE4dE=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2849d9ec-7af0-46d7-d4b2-08d6d21db5cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 12:23:56.4363 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB3843
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_052401_136336_9289C41F 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.78.55 listed in list.dnswl.org]
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
> Sent: Saturday 4 May 2019 08:55
> To: Dragan Cvetic <draganc@xilinx.com>
> Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> Subject: Re: [PATCH V3 02/12] misc: xilinx-sdfec: add core driver
> 
> On Fri, May 03, 2019 at 04:41:21PM +0000, Dragan Cvetic wrote:
> > Hi Greg,
> >
> > Please find my inline comments below,
> >
> > Regards
> > Dragan
> >
> > > -----Original Message-----
> > > From: Greg KH [mailto:gregkh@linuxfoundation.org]
> > > Sent: Thursday 2 May 2019 18:20
> > > To: Dragan Cvetic <draganc@xilinx.com>
> > > Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> > > mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> > > Subject: Re: [PATCH V3 02/12] misc: xilinx-sdfec: add core driver
> > >
> > > On Sat, Apr 27, 2019 at 11:04:56PM +0100, Dragan Cvetic wrote:
> > > > +#define DRIVER_NAME "xilinx_sdfec"
> > > > +#define DRIVER_VERSION "0.3"
> > >
> > > Version means nothing with the driver in the kernel tree, please remove
> > > it.
> >
> > Will be removed. Thank you.
> >
> > >
> > > > +#define DRIVER_MAX_DEV BIT(MINORBITS)
> > >
> > > Why this number?  Why limit yourself to any number?
> > >
> >
> > There can be max 8 devices for this driver. I'll change to 8.
> >
> > > > +
> > > > +static struct class *xsdfec_class;
> > >
> > > Do you really need your own class?
> >
> > When writing a character device driver, my goal is to create and register an instance
> > of that structure associated with a struct file_operations, exposing a set of operations
> > to the user-space. One of the steps to make this goal is Create a class for a devices,
> > visible in /sys/class/.
> 
> Why do you need a class?  Again, why not just use the misc_device api,
> that seems much more relevant here and will make the code a lot simpler.
> 

The driver can have 8 devices in SoC plus more in Programming Logic. It looked logical to group them under the same MAJOR, although they are independent of each other.
Is this argument strong enough to use class?

> thanks,
> 
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
