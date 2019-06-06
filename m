Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B40537C24
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 20:22:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nZZdy4X8Y3++64zAgoU4J3i5Mv8Qje+EQOeT1Uo8ZU8=; b=lYROT57eiT3J58
	0vkqMFhrxPPmC2+01vkA5Jl0L2+OX4Hq6CPysi6aDjpfbVAShLLne0LPL48IwS4i/LsOGc6FShxf4
	lDtNCl+/qJ4zDut3yM8TuDWh4/YrRqk1Beo/NGwCi8PHWGJwioAO/DfvXmNUgfcXTjxpTtoOaJFGM
	4PO/wZsmv7dLyyjxEiLlkW0F5cYCmpbzLoFlY4UiEdqS7l+RcU5YWXPnfCs5I45CvYCr0vZFx3saX
	GxJZvdYDeTx7xvgpwZqY0ekvV//OYej59v1EgPPEO/7EfwWDhHRD1Ae8kC5dPxv0Qjj0xMJdK+t2/
	r4sm4ucmQzPf0UEzlfIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYx1m-0005aT-Ur; Thu, 06 Jun 2019 18:22:18 +0000
Received: from mail-by2nam01on0605.outbound.protection.outlook.com
 ([2a01:111:f400:fe42::605]
 helo=NAM01-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYx1f-0005aA-8c
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 18:22:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sonYqcdLrVVZs4jxWz2LM04hL11uBXmDup0Q2BRmOQQ=;
 b=LpcH017pBJhBfHTppKchmLvpbJbhyDGDO9Q4PpexaMxtISqrRvdXMCaQVPw1Hrsa22KM4wYDoBfDBTJGa837FNP471u5pO7S5yAUTBQWorRsPJz8SU+EvlwViuqF9R7H7k+U97YAwXj34frhLpzVDBpbcTy5kq5wkLhUU1yw0qk=
Received: from CH2PR02MB6359.namprd02.prod.outlook.com (52.132.231.93) by
 CH2PR02MB6021.namprd02.prod.outlook.com (10.255.156.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Thu, 6 Jun 2019 18:22:08 +0000
Received: from CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::b9dd:11e0:7fca:ba55]) by CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::b9dd:11e0:7fca:ba55%5]) with mapi id 15.20.1943.018; Thu, 6 Jun 2019
 18:22:07 +0000
From: Dragan Cvetic <draganc@xilinx.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: RE: [PATCH V4 04/12] misc: xilinx_sdfec: Add open, close and ioctl
Thread-Topic: [PATCH V4 04/12] misc: xilinx_sdfec: Add open, close and ioctl
Thread-Index: AQHVEu5GErREaULonk+tvtDvF1CkjaaOsacAgABQ8tA=
Date: Thu, 6 Jun 2019 18:22:07 +0000
Message-ID: <CH2PR02MB63591C650DB8C7E15D9D3CCDCB170@CH2PR02MB6359.namprd02.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: b334be30-de8b-4607-eec9-08d6eaabe27c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:CH2PR02MB6021; 
x-ms-traffictypediagnostic: CH2PR02MB6021:
x-microsoft-antispam-prvs: <CH2PR02MB60210AAA2FE44B9F6F38A457CB170@CH2PR02MB6021.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(366004)(396003)(346002)(376002)(189003)(13464003)(199004)(99286004)(26005)(52536014)(6116002)(3846002)(6436002)(66066001)(74316002)(4326008)(7696005)(14454004)(5660300002)(9686003)(55016002)(25786009)(2906002)(76176011)(478600001)(229853002)(53546011)(6506007)(102836004)(107886003)(8936002)(7736002)(6916009)(76116006)(73956011)(66946007)(486006)(14444005)(446003)(33656002)(256004)(81156014)(71190400001)(316002)(53936002)(71200400001)(66446008)(68736007)(54906003)(476003)(86362001)(6246003)(81166006)(8676002)(66556008)(186003)(305945005)(11346002)(64756008)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6021;
 H:CH2PR02MB6359.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 5MzkTd5FzxfzGWuPlrUp6S3DdKpeFq+Um9/YzIEaYsyB8dE22WKTbbpqyocHyEFQ0sH4kHTlGuQnSA/H+9PymvLd/gHPaeEr2TtpwFaQdb5f+gcIpPviltAdVqNYYYigYQG3RNKDay2xXFj+Oh5XGIOE8fglIcgz7lLCBSbz0/oeluhCjyfa1jHUjLrSVQk46T77jvwVccFUrX0ibm6rRhM3/bvKxpApPd/6PoLyToc0IM38yHhRiuhTvUqQDviav2duH5nK29fIk5RTa/pdsGFNcMU+yJ+YcAWK+2JVzf3vX+32H88vr6IFg8dL/8n0oVItNY2Qp1MM6t3nVCQRBhAI+Aoa0KKaPa5j1JHyoHcq3EOzeBDVC0b+gUoEidS0w02wc1iog6zxAl7ba6zZotFuWr8CU0k9jYe9zbxuJ5I=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b334be30-de8b-4607-eec9-08d6eaabe27c
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2019 18:22:07.7990 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: draganc@xilinx.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_112211_309801_C665F28D 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe42:0:0:0:605 listed in]
 [list.dnswl.org]
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
> Sent: Thursday 6 June 2019 14:29
> To: Dragan Cvetic <draganc@xilinx.com>
> Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> Subject: Re: [PATCH V4 04/12] misc: xilinx_sdfec: Add open, close and ioctl
> 
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

Accepted.
Will remove them.

> 
> > +
> > +static long xsdfec_dev_ioctl(struct file *fptr, unsigned int cmd,
> > +			     unsigned long data)
> > +{
> > +	struct xsdfec_dev *xsdfec;
> > +	void __user *arg = NULL;
> > +	int rval = -EINVAL;
> > +
> > +	xsdfec = container_of(fptr->private_data, struct xsdfec_dev, miscdev);
> > +	if (!xsdfec)
> > +		return rval;
> 
> It is impossible for container_of() to return NULL, unless something
> very magical and rare just happened.  It's just doing pointer math, you
> can never check the return value of it.

Accepted.
Will remove if statement.

> 
> > +
> > +	if (_IOC_TYPE(cmd) != XSDFEC_MAGIC)
> > +		return -ENOTTY;
> 
> How can this happen?

Accepted.
Will be removed.

> 
> > +
> > +	/* check if ioctl argument is present and valid */
> > +	if (_IOC_DIR(cmd) != _IOC_NONE) {
> > +		arg = (void __user *)data;
> > +		if (!arg)
> > +			return rval;
> > +	}
> > +
> > +	switch (cmd) {
> > +	default:
> > +		/* Should not get here */
> > +		dev_warn(xsdfec->dev, "Undefined SDFEC IOCTL");
> 
> Nice that userspace has a way to fill up the kernel log :(
> 
> Just return the correct error here, don't log it.

Accepted.
Will remove log.

> 
> thanks,
> 
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
