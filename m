Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7171326A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 18:45:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P+Dj/Wkxdt0VgL9B3t3JN8fmt26hhJQSxox35BIUAKc=; b=kmKLD8o06u+UnO
	y5DLxRAPP1BPcXM9ape1yLr5cR1RyHOF6L+QnJ9KVCw8U8zYMRuSzGjf8S+ZXUo71cZdnpuFf9xJ3
	BDw34mepZwXqNcIwuD/olUQgkx1zUf0TICIcf/t6nr2yzUqtgPj+Bo8V6LMUhNwlmEexXUQvh5HMJ
	w7VkYyZ85J8Pt8qWkhxhpRDV4EKkrl22+NUmWF7/TGnHiM2wYAIggt/ZKGXaYXf6Ldlv2PRTzYMkJ
	5DpUE4Ah7UHW2rF3k31em/4kt/AIkR3cluOCLw/VjqCGXH6pSebXfEjKMPwdxPBYwmrMx71HsyT9X
	2c+nQdpB1ExRYCuEXl8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMbJA-0001ka-4S; Fri, 03 May 2019 16:45:12 +0000
Received: from mail-eopbgr750053.outbound.protection.outlook.com
 ([40.107.75.53] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMbIz-0001Mr-Sj
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 16:45:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wPNPcia7JRiDDMria1iugL65PCpz/9TyQMbacfRar+c=;
 b=cVC26QUAKv6BSzhST4zvSFboojkEbkbeXQRzmDsWFBaYF5Si+kMxNnlNSyXwVND8FbQ4NNMm8XVEX6Khqzx1dgqQdStumjSni1M+Af5tx9KCKC3f2VqRd2FG9307PDuRosNximb54GUUwupTM6OnxLP40NzOScGTmV3w0jcB7aU=
Received: from BL0PR02MB5681.namprd02.prod.outlook.com (20.177.241.92) by
 BL0PR02MB5554.namprd02.prod.outlook.com (20.177.241.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.15; Fri, 3 May 2019 16:44:58 +0000
Received: from BL0PR02MB5681.namprd02.prod.outlook.com
 ([fe80::6cde:f726:b36e:752d]) by BL0PR02MB5681.namprd02.prod.outlook.com
 ([fe80::6cde:f726:b36e:752d%5]) with mapi id 15.20.1856.012; Fri, 3 May 2019
 16:44:57 +0000
From: Dragan Cvetic <draganc@xilinx.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: RE: [PATCH V3 04/12] misc: xilinx_sdfec: Add open, close and ioctl
Thread-Topic: [PATCH V3 04/12] misc: xilinx_sdfec: Add open, close and ioctl
Thread-Index: AQHU/UVLGOE4w/2X+U+k4o4ho4ebiKZYHNsAgAGGyAA=
Date: Fri, 3 May 2019 16:44:57 +0000
Message-ID: <BL0PR02MB5681F4C4AF4786AC6241DDA1CB350@BL0PR02MB5681.namprd02.prod.outlook.com>
References: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
 <1556402706-176271-5-git-send-email-dragan.cvetic@xilinx.com>
 <20190502172304.GB1874@kroah.com>
In-Reply-To: <20190502172304.GB1874@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=draganc@xilinx.com; 
x-originating-ip: [149.199.80.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fe5c256c-2bfb-416d-5948-08d6cfe6ad83
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:BL0PR02MB5554; 
x-ms-traffictypediagnostic: BL0PR02MB5554:
x-microsoft-antispam-prvs: <BL0PR02MB555400EA7A982D25C7443892CB350@BL0PR02MB5554.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0026334A56
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(39860400002)(136003)(346002)(396003)(189003)(199004)(13464003)(6916009)(7736002)(6506007)(53546011)(316002)(9686003)(76116006)(76176011)(66946007)(186003)(6246003)(66066001)(73956011)(102836004)(26005)(256004)(7696005)(14444005)(55016002)(4326008)(99286004)(66476007)(5660300002)(305945005)(478600001)(8936002)(71190400001)(54906003)(476003)(74316002)(486006)(33656002)(53936002)(8676002)(68736007)(11346002)(86362001)(71200400001)(107886003)(229853002)(52536014)(14454004)(81156014)(6436002)(81166006)(66556008)(2906002)(3846002)(6116002)(64756008)(25786009)(66446008)(446003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB5554;
 H:BL0PR02MB5681.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: hTa1sVTUp1b18TOjIBp0m1acYre0j64hoU2FQB8hIjs9aDq1wXS5Ze9KXShScwLpfxEiW+bnb2xbJgPhMri0SHJPc3IHpLbTOXjpDrugkqIjBxmhN2gbqx90xAGairvwuoz9Hh2TgHfM8sRV2pi6TU/eKV+wilQnIJNIFVFEZweWU3EGwm6/Jd4WHnXv0csYQzy184ck+4G0SxkB12RXrLwzBxNV08lSSkfP2+bKUvpkfsEnxocbaX+c2PbkL/M8LAIQ5c0DKECIkDIJFZLgDjiq+0ZisTf4s1EUJBSvNrJHxeUXccDYfeS9hyKU7N1054YkCzugG4WkxtTbYipOmgU6WF7ulOotZodlVzsrjaIcI8PQ9kW8rZrX4oU5tkaihOJCIURprzAgl9rb0J3TqtSaGa5mvgcxLOx4TFgVhgM=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe5c256c-2bfb-416d-5948-08d6cfe6ad83
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2019 16:44:57.8538 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB5554
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_094501_931361_580F021C 
X-CRM114-Status: GOOD (  18.74  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Hi Greg,

Please find inline comments below.

Regards
Dragan

> -----Original Message-----
> From: Greg KH [mailto:gregkh@linuxfoundation.org]
> Sent: Thursday 2 May 2019 18:23
> To: Dragan Cvetic <draganc@xilinx.com>
> Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> Subject: Re: [PATCH V3 04/12] misc: xilinx_sdfec: Add open, close and ioctl
> 
> On Sat, Apr 27, 2019 at 11:04:58PM +0100, Dragan Cvetic wrote:
> > +static int xsdfec_dev_open(struct inode *iptr, struct file *fptr)
> > +{
> > +	struct xsdfec_dev *xsdfec;
> > +
> > +	xsdfec = container_of(iptr->i_cdev, struct xsdfec_dev, xsdfec_cdev);
> > +
> > +	if (!atomic_dec_and_test(&xsdfec->open_count)) {
> 
> Why do you care about this?
> 
> And do you really think it matters?  What are you trying to protect from
> here?

There is a request to increase the driver security. 
It is acceptable for us for now, even with non-perfections (will not be protected if opened twice with dup() or fork()).
This is covered in the documentation.
> 
> > +		atomic_inc(&xsdfec->open_count);
> > +		return -EBUSY;
> > +	}
> > +
> > +	fptr->private_data = xsdfec;
> > +	return 0;
> > +}
> > +
> > +static int xsdfec_dev_release(struct inode *iptr, struct file *fptr)
> > +{
> > +	struct xsdfec_dev *xsdfec;
> > +
> > +	xsdfec = container_of(iptr->i_cdev, struct xsdfec_dev, xsdfec_cdev);
> > +
> > +	atomic_inc(&xsdfec->open_count);
> 
> You increment a number when the device is closed?
> 
> You are trying to make it hard to maintain this code over time :)
> 
> 
> > +	return 0;
> > +}
> > +
> > +static long xsdfec_dev_ioctl(struct file *fptr, unsigned int cmd,
> > +			     unsigned long data)
> > +{
> > +	struct xsdfec_dev *xsdfec = fptr->private_data;
> > +	void __user *arg = NULL;
> > +	int rval = -EINVAL;
> > +	int err = 0;
> > +
> > +	if (!xsdfec)
> > +		return rval;
> > +
> > +	if (_IOC_TYPE(cmd) != XSDFEC_MAGIC)
> > +		return -ENOTTY;
> > +
> > +	/* check if ioctl argument is present and valid */
> > +	if (_IOC_DIR(cmd) != _IOC_NONE) {
> > +		arg = (void __user *)data;
> > +		if (!arg) {
> > +			dev_err(xsdfec->dev,
> > +				"xilinx sdfec ioctl argument is NULL Pointer");
> 
> You just created a way for userspace to spam the kernel log, please do
> not do that :(

Will be removed.

> 
> 
> 
> > +			return rval;
> > +		}
> > +	}
> > +
> > +	if (err) {
> > +		dev_err(xsdfec->dev, "Invalid xilinx sdfec ioctl argument");
> > +		return -EFAULT;
> 
> Wrong error, you did not have a memory fault.

Absolutely useless code. Will be removed. Thanks.

> 
> Again, you just created a way to spam the kernel log by a user :(
> 
> thanks,
> 
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
