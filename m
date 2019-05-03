Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB0D1325E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 18:41:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yS+2wQsELQU7cRmFd+nlQ+bcIai4JbQu82sm6KQEm0I=; b=nM2Oz2TuxWGnGr
	sMPZTkMDWSS9HEZfjDBEWgK8/tT/H/Se3fnB2c/MDWY1ZW4XMIR8Gc+bVsRE2pczyq37RObVbNuHf
	EvyX9P0sS33qG53Gqzrn8gUcrr/yvy+/mLFsxk5PyIISzRQPJuMiqyKz2TpdMCXDLtFkRXL285wU4
	+Ia17lFkv0idWijIfDr8DCooFin8DvBeSRaPGD+9ONs/vAhqbEMuRQ6a/4EYwG1CjwEzONkoeiqav
	RfzpkRAbBUqpqtWBiks03qIlA4mqN9zckhZ1TYnLJEvsaR8dA6d16jheAv8yh2aHq424qtsoKcnGe
	MHcMuNllSD0DbmGcp0iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMbFg-0000kM-H2; Fri, 03 May 2019 16:41:36 +0000
Received: from mail-eopbgr740059.outbound.protection.outlook.com
 ([40.107.74.59] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMbFY-0000jE-Fu
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 16:41:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/FFXXP1GaK1ON9h27xOe8RrwNYt8sjfSvo1Mwn/29ME=;
 b=4oGpEXFef2G8MaR36iL4WPPuM3Q3AudgFfsfCkfL7cx+rP8Pm02AKAtwJg4EWvWDExv3K1/ZXNiHLdGSmG4FHImR215EgQvd2tRRnduPdP6vo4VdI1XFBvC+CExJ07mq+CQplTb2XTH5Kjs9tniNXAsW1FS47XKN8ixbZdb+xIQ=
Received: from BL0PR02MB5681.namprd02.prod.outlook.com (20.177.241.92) by
 BL0PR02MB3764.namprd02.prod.outlook.com (52.132.8.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Fri, 3 May 2019 16:41:22 +0000
Received: from BL0PR02MB5681.namprd02.prod.outlook.com
 ([fe80::6cde:f726:b36e:752d]) by BL0PR02MB5681.namprd02.prod.outlook.com
 ([fe80::6cde:f726:b36e:752d%5]) with mapi id 15.20.1856.012; Fri, 3 May 2019
 16:41:22 +0000
From: Dragan Cvetic <draganc@xilinx.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: RE: [PATCH V3 02/12] misc: xilinx-sdfec: add core driver
Thread-Topic: [PATCH V3 02/12] misc: xilinx-sdfec: add core driver
Thread-Index: AQHU/UVOyBvhwX5Hf0mi9G9IHzQgRKZYHAiAgAGBAEA=
Date: Fri, 3 May 2019 16:41:21 +0000
Message-ID: <BL0PR02MB5681B0F2BC0D74D8604D4289CB350@BL0PR02MB5681.namprd02.prod.outlook.com>
References: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
 <1556402706-176271-3-git-send-email-dragan.cvetic@xilinx.com>
 <20190502172007.GA1874@kroah.com>
In-Reply-To: <20190502172007.GA1874@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=draganc@xilinx.com; 
x-originating-ip: [149.199.80.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 20ecc15a-232a-480b-d330-08d6cfe62cc5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:BL0PR02MB3764; 
x-ms-traffictypediagnostic: BL0PR02MB3764:
x-microsoft-antispam-prvs: <BL0PR02MB376404865825B146C29A02E5CB350@BL0PR02MB3764.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0026334A56
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39860400002)(136003)(376002)(366004)(346002)(199004)(189003)(13464003)(54906003)(107886003)(4326008)(25786009)(66556008)(66446008)(316002)(7736002)(52536014)(76116006)(73956011)(6246003)(66946007)(186003)(6436002)(9686003)(71200400001)(71190400001)(26005)(3846002)(6116002)(55016002)(53936002)(14454004)(68736007)(478600001)(14444005)(256004)(229853002)(5660300002)(11346002)(2906002)(305945005)(66476007)(86362001)(6506007)(53546011)(64756008)(446003)(486006)(99286004)(74316002)(102836004)(6916009)(8936002)(8676002)(476003)(33656002)(7696005)(76176011)(81166006)(81156014)(66066001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB3764;
 H:BL0PR02MB5681.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: V4esCaVumuYM+hZPb1IuVRCBY7Ao+W9KKk+9xuXJnw4KnbNgaBYLF3IzdthqP0VOTgjtaY0LKQsxZihVasBlbn3oOSVhnXUVAY1rlZONgskikrlhgMdr5cucfJ042g0T/8rGSfFLCFgv7bl163T7gpMArgAP23YILwCjc6WuOUYGATXXfUdRXK9xZuZu3tZ1jSAqwmvcOowxXk62LJfyW0pWXfn7whihitZgYkhMrCah/OJ9GcjVz6qQ991w4JsfDISW2K/30dd03k/Q9kwkum37M/sd2xuY7vXmoGoWUYOXBjt8HQqNz7ezGu6jQlIY4EAWyJNYM1l+MpGeb77QXFhhhfV6JCpQA1tKMRCfy/KqsM5Dow3JLZTPuG6FM/jgnAm7fcNUYgL1DDubjXVrfbQ3w1427ffKestg055HitU=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20ecc15a-232a-480b-d330-08d6cfe62cc5
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2019 16:41:21.8774 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB3764
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_094128_586496_2DBDA19E 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.74.59 listed in list.dnswl.org]
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

Please find my inline comments below,

Regards
Dragan

> -----Original Message-----
> From: Greg KH [mailto:gregkh@linuxfoundation.org]
> Sent: Thursday 2 May 2019 18:20
> To: Dragan Cvetic <draganc@xilinx.com>
> Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> Subject: Re: [PATCH V3 02/12] misc: xilinx-sdfec: add core driver
> 
> On Sat, Apr 27, 2019 at 11:04:56PM +0100, Dragan Cvetic wrote:
> > +#define DRIVER_NAME "xilinx_sdfec"
> > +#define DRIVER_VERSION "0.3"
> 
> Version means nothing with the driver in the kernel tree, please remove
> it.

Will be removed. Thank you.

> 
> > +#define DRIVER_MAX_DEV BIT(MINORBITS)
> 
> Why this number?  Why limit yourself to any number?
> 

There can be max 8 devices for this driver. I'll change to 8.

> > +
> > +static struct class *xsdfec_class;
> 
> Do you really need your own class?

When writing a character device driver, my goal is to create and register an instance
of that structure associated with a struct file_operations, exposing a set of operations
to the user-space. One of the steps to make this goal is Create a class for a devices,
visible in /sys/class/.

> 
> > +static atomic_t xsdfec_ndevs = ATOMIC_INIT(0);
> 
> Why?

At the end this become a minor number. 
It is not needed, will be removed. Thanks.

> 
> > +static dev_t xsdfec_devt;
> 
> Why?
> 
> Why not use misc_device for this?  Why do you need your own major with a
> bunch of minor devices reserved ahead of time?  Why not just create a
> new misc device for every individual device that happens to be found in
> the system?  That will make the code a lot simpler and smaller and
> easier.
>
> 
> 
> > +
> > +/**
> > + * struct xsdfec_dev - Driver data for SDFEC
> > + * @regs: device physical base address
> > + * @dev: pointer to device struct
> > + * @config: Configuration of the SDFEC device
> > + * @open_count: Count of char device being opened
> > + * @xsdfec_cdev: Character device handle
> > + * @irq_lock: Driver spinlock
> > + *
> > + * This structure contains necessary state for SDFEC driver to operate
> > + */
> > +struct xsdfec_dev {
> > +	void __iomem *regs;
> > +	struct device *dev;
> > +	struct xsdfec_config config;
> > +	atomic_t open_count;
> > +	struct cdev xsdfec_cdev;
> > +	/* Spinlock to protect state_updated and stats_updated */
> > +	spinlock_t irq_lock;
> > +};
> > +
> > +static const struct file_operations xsdfec_fops = {
> > +	.owner = THIS_MODULE,
> > +};
> 
> No operations at all?  That's an easy driver :)


The operations are implemented in the later patches.


> 
> thanks,
> 
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
