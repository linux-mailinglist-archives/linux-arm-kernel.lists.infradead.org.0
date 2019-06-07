Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8149038858
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 12:58:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mZqJAZJqZ9W29j0EkfqEBj6jC8f/s/ZogMqIDHNclj4=; b=aHJlbf6IjErKse
	JkeLT/QIeu2+PdHj8isNWrfJ92qCO/o0xL9mOZDzVB5yGldjBGpLb9YFukYcYnbi/Qw6mhmcQKIbP
	Iszrhy/BoHC9KlwgKK1luAYld6ojoZOWeCmR26YkReLyRgFpVdxenb4RZ5eKDQ9VPqYrWnOCaTxvR
	xTGdn9Gmj3u/qJjRBRZfTQ23PYiVGbwxbHHjivzFKC0e70C7hsrJ310u3/pF8rIibC3W/3KYQJL7P
	IvndAgiye8U3AgFd/xzagOiFmn9QdUo5D/TPpjdS1MW6VszyG+8qB8Gg5kUbmKPsBsVgxogrR73oT
	8eDjM1nm0Ozps9Fw60sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZCa6-0004Yo-8A; Fri, 07 Jun 2019 10:58:46 +0000
Received: from mail-eopbgr680055.outbound.protection.outlook.com
 ([40.107.68.55] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZCZx-0004YU-Cx
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 10:58:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vt6qoelTKHrMvuE1NywSjFEzIxJLjE+/50Vli2jX3Tk=;
 b=IV5rdcFL9DfmqcIuPodVD4DvWOZHCOIFMNgefbH4n1b4Ke0xrNZATedVODZJe7OPxB/LZQ2vAFnLnRwEgAgFLKDcBxWqIwl0JiDpctcJy1Dc8rjdwL6Ic8liW52aWQzSgSYdrEmzknGnGFzDsfmOvqAHG1421005mwb5gMTH9Io=
Received: from CH2PR02MB6359.namprd02.prod.outlook.com (52.132.231.93) by
 CH2PR02MB6071.namprd02.prod.outlook.com (52.132.228.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Fri, 7 Jun 2019 10:58:34 +0000
Received: from CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::b9dd:11e0:7fca:ba55]) by CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::b9dd:11e0:7fca:ba55%5]) with mapi id 15.20.1943.023; Fri, 7 Jun 2019
 10:58:34 +0000
From: Dragan Cvetic <draganc@xilinx.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: RE: [PATCH V4 04/12] misc: xilinx_sdfec: Add open, close and ioctl
Thread-Topic: [PATCH V4 04/12] misc: xilinx_sdfec: Add open, close and ioctl
Thread-Index: AQHVEu5GErREaULonk+tvtDvF1CkjaaOsacAgAFm4tA=
Date: Fri, 7 Jun 2019 10:58:34 +0000
Message-ID: <CH2PR02MB6359747C72220A978CCA807BCB100@CH2PR02MB6359.namprd02.prod.outlook.com>
References: <1558784245-108751-1-git-send-email-dragan.cvetic@xilinx.com>
 <1558784245-108751-5-git-send-email-dragan.cvetic@xilinx.com>
 <20190606132842.GC7943@kroah.com>
In-Reply-To: <20190606132842.GC7943@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=draganc@xilinx.com; 
x-originating-ip: [149.199.80.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d509c819-b61d-4030-ffa5-08d6eb3715ce
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:CH2PR02MB6071; 
x-ms-traffictypediagnostic: CH2PR02MB6071:
x-microsoft-antispam-prvs: <CH2PR02MB60715F8289A11E5E3EA43124CB100@CH2PR02MB6071.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0061C35778
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(366004)(396003)(346002)(39860400002)(189003)(199004)(3846002)(71200400001)(6116002)(14444005)(71190400001)(316002)(74316002)(66476007)(99286004)(14454004)(256004)(86362001)(305945005)(478600001)(6506007)(54906003)(7736002)(64756008)(73956011)(102836004)(66446008)(76116006)(66946007)(2906002)(9686003)(7696005)(76176011)(66556008)(186003)(6916009)(4326008)(8676002)(68736007)(6436002)(81156014)(81166006)(4744005)(53936002)(8936002)(229853002)(486006)(25786009)(26005)(476003)(446003)(5660300002)(11346002)(6246003)(52536014)(33656002)(66066001)(55016002)(107886003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6071;
 H:CH2PR02MB6359.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: DTCTOtaFLVMVjg/MpBGLkAR86bmZd8vSP2g23e2ggu48E+FL2cC9WKBFU9cXAApevXkck9LoFapvLgUg8PZOC19fC/uvpAAQoNjiXvbu1GvvQ00d/2e84zWNsjqJrZrQZ7pVsztpZUxsy9BftkRI1ecYWYQTQcE4N34s4H2lTWkZGHqXEIXWB07Ky9U0a2IocOkoLfIKufBjy3dj1Eh6wKcRVSCkMhuTexI/Ll7Fb1r0NVs0A24qLB+86uLXy88Fyo/x9rM9Eiep2uMezVfQC4vXeVL0KAzUeyV7ApCvE6iXL221uFgGR2UDMEZa1fWfeVFvJWhvOAV+iI76DXD2v4dy+zWUYMMugpMfu0vc0jBM+po7zjOtaUzY03F6SsuB5d5kqDIujNDD4LCtoJP++oDiPb2oDrg13bZ5iaGondw=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d509c819-b61d-4030-ffa5-08d6eb3715ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2019 10:58:34.0280 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: draganc@xilinx.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6071
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_035837_439278_B8342880 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.68.55 listed in list.dnswl.org]
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

> On Sat, May 25, 2019 at 12:37:17PM +0100, Dragan Cvetic wrote:
> > +static int xsdfec_dev_open(struct inode *iptr, struct file *fptr)
> > +{
> > +	return 0;
> > +}
> > +
> > +static int xsdfec_dev_release(struct inode *iptr, struct file *fptr)
> > +{
> > +	return 0;
> > +}
> 
> empty open/close functions are never needed, just drop them.
> 

open() is needed to allocate file descriptor eg.
fd = open(dev_name, O_RDWR);

Please, advise if you have some other idea in mind

Thanks
Dragan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
