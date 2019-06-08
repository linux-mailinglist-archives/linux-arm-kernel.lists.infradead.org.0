Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7A13A18C
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 21:41:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pR4JHd5IwBQjAI4ydpQhRILjaRaLIKn/u4nNrdYdgLg=; b=gYrNu/cpX82Wtr
	j84lEZC2xkR39rRfYy2s+0wfJYRDvQmnUKNNyMUKGLq5437GHfNcB0QDEzjAJh/FeDmaYyJuZhLY5
	5ouzcwV6CU7V2chHYHIdFNPWul1WEoRLIEOFZREePXrNJmfyA1BSOwDTqBirDKDWxNuW1+icONuub
	qGRudMK2dbxYNtwMWcQ5MH+HmZpxE3ztbdIxNm+IbTdeZ4fCwjCLCQkoOwWVngQ9m4vVnenzFzM1H
	A2kvsYOf8co73415k4Yqt1QyYa0eqHosh+Y4aOFZ/8xEmW1kZVyV2nYyEuHcKZ1U48GboYPLT9jfy
	UYddQxQahg4Llql3tR9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZhDH-0003QP-W5; Sat, 08 Jun 2019 19:41:16 +0000
Received: from mail-eopbgr680074.outbound.protection.outlook.com
 ([40.107.68.74] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZhD4-0003OW-15
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 19:41:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dduBsOtI3AySDNvyRkfFyB0uZnLrh6bMbc/SM/4UcEI=;
 b=QlrQv8w57SOibc3keKogeSe5IO2EBQvtvaJwSr0qNX6P2ahX46KcfKsseui39wYwJfPG2haCk+wEJm0Xp1IAT4FmCSV7jeRGX67itUn3N/S5lmcOqjUJocq7fX3KUtf4SYfALukLW4sXcBPx2k93vqlZYW9w2LaYbiR3GJihjwQ=
Received: from CH2PR02MB6359.namprd02.prod.outlook.com (52.132.231.93) by
 CH2PR02MB6231.namprd02.prod.outlook.com (52.132.230.89) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.15; Sat, 8 Jun 2019 19:40:58 +0000
Received: from CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::b9dd:11e0:7fca:ba55]) by CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::b9dd:11e0:7fca:ba55%5]) with mapi id 15.20.1965.017; Sat, 8 Jun 2019
 19:40:57 +0000
From: Dragan Cvetic <draganc@xilinx.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: RE: [PATCH V4 04/12] misc: xilinx_sdfec: Add open, close and ioctl
Thread-Topic: [PATCH V4 04/12] misc: xilinx_sdfec: Add open, close and ioctl
Thread-Index: AQHVEu5GErREaULonk+tvtDvF1CkjaaOsacAgAFm4tCAAFUHgIABzWHQ
Date: Sat, 8 Jun 2019 19:40:57 +0000
Message-ID: <CH2PR02MB6359406779BEEC45AAB41A98CB110@CH2PR02MB6359.namprd02.prod.outlook.com>
References: <1558784245-108751-1-git-send-email-dragan.cvetic@xilinx.com>
 <1558784245-108751-5-git-send-email-dragan.cvetic@xilinx.com>
 <20190606132842.GC7943@kroah.com>
 <CH2PR02MB6359747C72220A978CCA807BCB100@CH2PR02MB6359.namprd02.prod.outlook.com>
 <20190607155731.GB8752@kroah.com>
In-Reply-To: <20190607155731.GB8752@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=draganc@xilinx.com; 
x-originating-ip: [149.199.80.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7e2369b1-4268-41a8-fa02-08d6ec493a9e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:CH2PR02MB6231; 
x-ms-traffictypediagnostic: CH2PR02MB6231:
x-microsoft-antispam-prvs: <CH2PR02MB62315EC2FB84405614DEA5DFCB110@CH2PR02MB6231.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:350;
x-forefront-prvs: 0062BDD52C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(346002)(396003)(376002)(39850400004)(199004)(189003)(13464003)(33656002)(52536014)(81156014)(68736007)(229853002)(14454004)(8936002)(81166006)(99286004)(478600001)(7736002)(8676002)(74316002)(73956011)(66556008)(76116006)(64756008)(66946007)(2906002)(66446008)(66476007)(305945005)(55016002)(53936002)(66066001)(6916009)(6436002)(4326008)(6506007)(53546011)(14444005)(256004)(9686003)(476003)(76176011)(186003)(486006)(102836004)(54906003)(7696005)(6116002)(71190400001)(86362001)(26005)(71200400001)(3846002)(5660300002)(6246003)(25786009)(316002)(107886003)(446003)(11346002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6231;
 H:CH2PR02MB6359.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mDd9gNhw6PgbDZhHoPAel8CyA8tgln6Sku2zPy0/5jbT8SgMZKeblZHYRqC2NL+4+gbMifS+hJyugXyA3mX1CVMa1wodqgjLeACMwWEMm49ODrvuJH+clyUwYFh4lICS8MB7y2t32mt4RH4Rw5Zra0RrZ10DTHpsR/BBQShVTGyRrjl70jO6Zr7Od2gzkhoS5tA+TDOushlaRp58rdm/iqiDXsZ3ui48i+oplmfraLD9bDMfKaz6obDHXTlSyLUyKBry/w+T97w0HHApD+INqiapEnog590xXkNxq4zG+ALmQtv4M9BMxRi2Gf6SMiMIJAv6NU04bWvuP01EFUWAjlP0y8W/DRr3R3pOJrB5gCTJ1D+AsD7lRj8UnPUQIW1zLibBDZ4T155Tw+sdgPFKsYhvkntnnxgqmOny1BlnQzE=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e2369b1-4268-41a8-fa02-08d6ec493a9e
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2019 19:40:57.4671 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: draganc@xilinx.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6231
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_124102_069878_9E9EA2F0 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.68.74 listed in list.dnswl.org]
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
> Sent: Friday 7 June 2019 16:58
> To: Dragan Cvetic <draganc@xilinx.com>
> Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> Subject: Re: [PATCH V4 04/12] misc: xilinx_sdfec: Add open, close and ioctl
> 
> On Fri, Jun 07, 2019 at 10:58:34AM +0000, Dragan Cvetic wrote:
> > > On Sat, May 25, 2019 at 12:37:17PM +0100, Dragan Cvetic wrote:
> > > > +static int xsdfec_dev_open(struct inode *iptr, struct file *fptr)
> > > > +{
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +static int xsdfec_dev_release(struct inode *iptr, struct file *fptr)
> > > > +{
> > > > +	return 0;
> > > > +}
> > >
> > > empty open/close functions are never needed, just drop them.
> > >
> >
> > open() is needed to allocate file descriptor eg.
> > fd = open(dev_name, O_RDWR);
> 
> But you do nothing in those open/release callbacks.  Remove them and see
> that the code works just fine :)
> 

Accepted.
I will squash this commit with the first next which needs open/close, ioctal.

> thanks,
> 
> greg k-h

Thanks
Dragan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
