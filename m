Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5697437C03
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 20:17:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ATquO1xEVc/PppFneFgzvSTGEtJJm9PJ1tRECuWvQ7o=; b=Ixe0MJe6ghCNgi
	pMd9+DyG13g/xk6/2sXd99PqGZDm8SstTDZIyAVL1qpaNWoP0xsEhKaWNZRIx7cx8qcCudWCyXGNS
	lSbNoC+8kd7XFm/mHuGc/G0iujb4lnUBiEgGpdxMLcgvB40XxhUxAIkRtXSOd3I7kZhJIiqWM5WHN
	0D3kF8V8FmQ/g/S7mmHbfzzVNypWJ3UkhGRpOZL7B9ctRX2Ec94XEqLnZxULfknabB/Xyo9U2LHxe
	3/JA+aVBXDdRBRmW80EMOvxD9iEalfm6iUHljqh3i50xP9/zzeJcRUWennOrt7wdIwTHuAbrn70/o
	jVrDpfsFD795pGO4BXwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYwwf-0003mP-NI; Thu, 06 Jun 2019 18:17:01 +0000
Received: from mail-eopbgr740049.outbound.protection.outlook.com
 ([40.107.74.49] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYwwX-0003lV-Hk
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 18:16:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FcYCNsK+eejFMgC9MFQdygyTv+U33BxtrkZjTx/ZtXQ=;
 b=HmRiIgGq5AvaDo6O48aBlddm5cON1JTmW4YFv6aEE2lpRdH4pVSpiGn308w0OLiBDRSCtiNAyiEL4IG6gOhTS0++IbWR9xwaUxqNf7IzwGXZzNn87HOR2uImk8hU8r6QXYsYQVUKLpFFSN/nhyFX2UmKHDEbR5OPy+PFXO6n/p8=
Received: from CH2PR02MB6359.namprd02.prod.outlook.com (52.132.231.93) by
 CH2PR02MB6215.namprd02.prod.outlook.com (52.132.230.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Thu, 6 Jun 2019 18:16:49 +0000
Received: from CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::b9dd:11e0:7fca:ba55]) by CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::b9dd:11e0:7fca:ba55%5]) with mapi id 15.20.1943.018; Thu, 6 Jun 2019
 18:16:48 +0000
From: Dragan Cvetic <draganc@xilinx.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: RE: [PATCH V4 02/12] misc: xilinx-sdfec: add core driver
Thread-Topic: [PATCH V4 02/12] misc: xilinx-sdfec: add core driver
Thread-Index: AQHVEu5Hth14rCW+30CzmHclOjYOcqaOsLOAgAAgAxA=
Date: Thu, 6 Jun 2019 18:16:48 +0000
Message-ID: <CH2PR02MB63592DAB5E23A35C86F81D09CB170@CH2PR02MB6359.namprd02.prod.outlook.com>
References: <1558784245-108751-1-git-send-email-dragan.cvetic@xilinx.com>
 <1558784245-108751-3-git-send-email-dragan.cvetic@xilinx.com>
 <20190606132517.GA7943@kroah.com>
In-Reply-To: <20190606132517.GA7943@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=draganc@xilinx.com; 
x-originating-ip: [149.199.80.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dde448df-020f-4252-a8db-08d6eaab2454
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:CH2PR02MB6215; 
x-ms-traffictypediagnostic: CH2PR02MB6215:
x-microsoft-antispam-prvs: <CH2PR02MB6215996A633AAACDF27EF9A4CB170@CH2PR02MB6215.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:595;
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(136003)(346002)(396003)(39860400002)(13464003)(189003)(199004)(52314003)(74316002)(7736002)(66066001)(305945005)(102836004)(55016002)(5660300002)(33656002)(8936002)(66556008)(73956011)(6436002)(64756008)(68736007)(9686003)(81166006)(25786009)(76116006)(66476007)(66446008)(52536014)(8676002)(66946007)(81156014)(71190400001)(71200400001)(229853002)(14454004)(26005)(476003)(99286004)(7696005)(14444005)(4326008)(6916009)(6116002)(3846002)(76176011)(53546011)(316002)(6506007)(486006)(86362001)(2906002)(53936002)(6246003)(107886003)(11346002)(478600001)(54906003)(30864003)(446003)(256004)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6215;
 H:CH2PR02MB6359.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: qUaFiv/ZFbCZN20chcaq2FRRcp4FyuK4OqxLO7CvcKZsLl4eJUo3xxjOgx2kuVtX8rLRQXdkuterFZ9FLJnTuk5J/xH2d9xn6j+VgRxozHtlieRyoicM4vLCUvpWIO/zO74GqjvGSfhKQ5nvZ4LBrzAUZsRwGw3HRMIRyPOkUZAWG7TvE8GjdccFcTj1AT25CVR5JXDRvuZGCwFmgrV5aQB+GAW9Q0TKJNb31tGyCYbFfRuN1CQ0jp2aCof9F0EgwzF8nRZiANSVdsAl27Ks8UOilF9da1Cm2Y4eYziB0s5z9uUPPFJDXgi79TdiB1CwoYNPngnXxl01LwkWThGyW4pKiMMDdovX9SXCLs46egWREoLoRYnRtP4sF6A0wLnjXLv8RVNZT/8Jf66qCKV644jXTrX8CkF82LW/bSx6MlY=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dde448df-020f-4252-a8db-08d6eaab2454
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2019 18:16:48.7650 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: draganc@xilinx.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_111653_691031_29C857B4 
X-CRM114-Status: GOOD (  38.04  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.74.49 listed in list.dnswl.org]
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
> Sent: Thursday 6 June 2019 14:25
> To: Dragan Cvetic <draganc@xilinx.com>
> Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> Subject: Re: [PATCH V4 02/12] misc: xilinx-sdfec: add core driver
> 
> On Sat, May 25, 2019 at 12:37:15PM +0100, Dragan Cvetic wrote:
> > Implements an platform driver that matches with xlnx,
> > sd-fec-1.1 device tree node and registers as a character
> > device, including:
> > - SD-FEC driver binds to sdfec DT node.
> > - creates and initialise an initial driver dev structure.
> > - add the driver in Linux build and Kconfig.
> >
> > Tested-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
> > Signed-off-by: Derek Kiernan <derek.kiernan@xilinx.com>
> > Signed-off-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
> > ---
> >  drivers/misc/Kconfig             |  12 ++++
> >  drivers/misc/Makefile            |   1 +
> >  drivers/misc/xilinx_sdfec.c      | 136 +++++++++++++++++++++++++++++++++++++++
> >  include/uapi/misc/xilinx_sdfec.h |  44 +++++++++++++
> >  4 files changed, 193 insertions(+)
> >  create mode 100644 drivers/misc/xilinx_sdfec.c
> >  create mode 100644 include/uapi/misc/xilinx_sdfec.h
> >
> > diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
> > index 6a0365b..15d93a7 100644
> > --- a/drivers/misc/Kconfig
> > +++ b/drivers/misc/Kconfig
> > @@ -480,6 +480,18 @@ config PCI_ENDPOINT_TEST
> >             Enable this configuration option to enable the host side test driver
> >             for PCI Endpoint.
> >
> > +config XILINX_SDFEC
> > +	tristate "Xilinx SDFEC 16"
> > +	help
> 
> No dependancies at all?  Nice!  Let's see what 0-day has to say about it :)

Yes, no dependencies.

> 
> > +	  This option enables support for the Xilinx SDFEC (Soft Decision
> > +	  Forward Error Correction) driver. This enables a char driver
> > +	  for the SDFEC.
> > +
> > +	  You may select this driver if your design instantiates the
> > +	  SDFEC(16nm) hardened block. To compile this as a module choose M.
> > +
> > +	  If unsure, say N.
> > +
> >  config MISC_RTSX
> >  	tristate
> >  	default MISC_RTSX_PCI || MISC_RTSX_USB
> > diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
> > index b9affcd..29fd1d7 100644
> > --- a/drivers/misc/Makefile
> > +++ b/drivers/misc/Makefile
> > @@ -49,6 +49,7 @@ obj-$(CONFIG_VMWARE_VMCI)	+= vmw_vmci/
> >  obj-$(CONFIG_LATTICE_ECP3_CONFIG)	+= lattice-ecp3-config.o
> >  obj-$(CONFIG_SRAM)		+= sram.o
> >  obj-$(CONFIG_SRAM_EXEC)		+= sram-exec.o
> > +obj-$(CONFIG_XILINX_SDFEC)	+= xilinx_sdfec.o
> >  obj-y				+= mic/
> >  obj-$(CONFIG_GENWQE)		+= genwqe/
> >  obj-$(CONFIG_ECHO)		+= echo/
> > diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
> > new file mode 100644
> > index 0000000..c437f78
> > --- /dev/null
> > +++ b/drivers/misc/xilinx_sdfec.c
> > @@ -0,0 +1,136 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Xilinx SDFEC
> > + *
> > + * Copyright (C) 2019 Xilinx, Inc.
> > + *
> > + * Description:
> > + * This driver is developed for SDFEC16 (Soft Decision FEC 16nm)
> > + * IP. It exposes a char device interface in sysfs and supports file
> > + * operations like  open(), close() and ioctl().
> 
> There are no "char device interfaces in sysfs".  What are you trying to
> say here?
> 

Accepted. 
Will rename to "char device which supports.."


> > + */
> > +
> > +#include <linux/miscdevice.h>
> > +#include <linux/io.h>
> > +#include <linux/interrupt.h>
> > +#include <linux/kernel.h>
> > +#include <linux/module.h>
> > +#include <linux/of_platform.h>
> > +#include <linux/poll.h>
> > +#include <linux/slab.h>
> > +#include <linux/clk.h>
> > +
> > +#include <uapi/misc/xilinx_sdfec.h>
> > +
> > +static atomic_t xsdfec_ndevs = ATOMIC_INIT(0);
> 
> why an atomic variable?  What are you using this for?  Why not an idr?

This variable is used to define a device ID number, "0,1,2,3..."
After all the changes it's meaningless.
Accepted.
Will be removed.

> > +
> > +/**
> > + * struct xsdfec_dev - Driver data for SDFEC
> > + * @regs: device physical base address
> > + * @dev: pointer to device struct
> > + * @config: Configuration of the SDFEC device
> > + * @open_count: Count of char device being opened
> 
> Ugh ugh ugh.  Don't try to count the number of times open is called.
> It's pointless and almost always wrong.  And it doesn't stop anyone from
> really accessing the device "twice".  If they do stupid things like
> that, they deserve the errors that it will cause...
> 

Accepted. My mistake.
Will remove this comment.

> > + * @miscdev: Misc device handle
> > + * @irq_lock: Driver spinlock
> 
> locks what?  The irq?
> 

It locks the statistical and state data related to errors in FEC.
Accepted
Will rename to "error_data_lock"

> > + *
> > + * This structure contains necessary state for SDFEC driver to operate
> > + */
> > +struct xsdfec_dev {
> > +	void __iomem *regs;
> > +	struct device *dev;
> 
> Is this the parent pointer?  Or something else?

Yes it is.

> 
> > +	struct xsdfec_config config;
> > +	atomic_t open_count;
> > +	struct miscdevice miscdev;
> > +	/* Spinlock to protect state_updated and stats_updated */
> > +	spinlock_t irq_lock;
> > +};
> > +
> > +static const struct file_operations xsdfec_fops = {
> > +	.owner = THIS_MODULE,
> > +};
> 
> empty fops?
> 

Yes, in this patch.

> > +
> > +#define NAMEBUF_SIZE ((size_t)32)
> 
> what is this for?

This is size of a char buffer used to store a device name.

> 
> > +static int xsdfec_probe(struct platform_device *pdev)
> > +{
> > +	struct xsdfec_dev *xsdfec;
> > +	struct device *dev;
> > +	struct resource *res;
> > +	int err;
> > +	char buf[NAMEBUF_SIZE];
> > +
> > +	xsdfec = devm_kzalloc(&pdev->dev, sizeof(*xsdfec), GFP_KERNEL);
> > +	if (!xsdfec)
> > +		return -ENOMEM;
> > +
> > +	xsdfec->dev = &pdev->dev;
> > +	xsdfec->config.fec_id = atomic_read(&xsdfec_ndevs);
> > +	spin_lock_init(&xsdfec->irq_lock);
> > +
> > +	dev = xsdfec->dev;
> > +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > +	xsdfec->regs = devm_ioremap_resource(dev, res);
> > +	if (IS_ERR(xsdfec->regs)) {
> > +		dev_err(dev, "Unable to map resource");
> 
> doesn't this call already print an error?

Accepted. Will be removed.

> 
> > +		err = PTR_ERR(xsdfec->regs);
> > +		goto err_xsdfec_dev;
> > +	}
> > +
> > +	/* Save driver private data */
> > +	platform_set_drvdata(pdev, xsdfec);
> > +
> > +	snprintf(buf, NAMEBUF_SIZE, "xsdfec%d", xsdfec->config.fec_id);
> > +	xsdfec->miscdev.minor = MISC_DYNAMIC_MINOR;
> > +	xsdfec->miscdev.name = buf;
> > +	xsdfec->miscdev.fops = &xsdfec_fops;
> > +	xsdfec->miscdev.parent = dev;
> > +	err = misc_register(&xsdfec->miscdev);
> > +	if (err) {
> > +		dev_err(dev, "Unable to register device");
> 
> Print the error number that was returned to you?

Accepted. 
Will print the error number.

> 
> > +		goto err_xsdfec_dev;
> > +	}
> > +
> > +	atomic_set(&xsdfec->open_count, 1);
> > +	dev_info(dev, "XSDFEC%d Probe Successful", xsdfec->config.fec_id);
> 
> No need to be noisy when things work correctly, just keep on going.

Accepted.
Will be removed.

> 
> > +	atomic_inc(&xsdfec_ndevs);
> > +	return 0;
> > +
> > +	/* Failure cleanup */
> > +err_xsdfec_dev:
> > +	return err;
> 
> You cleaned up nothing, not good at all :(

Accepted.
Will remove this and return immediately.

> 
> > +}
> > +
> > +static int xsdfec_remove(struct platform_device *pdev)
> > +{
> > +	struct xsdfec_dev *xsdfec;
> > +
> > +	xsdfec = platform_get_drvdata(pdev);
> > +	if (!xsdfec)
> > +		return -ENODEV;
> 
> How can this be null?

Accepted.
Will remove if statement.

> 
> > +
> > +	misc_deregister(&xsdfec->miscdev);
> > +	atomic_dec(&xsdfec_ndevs);
> > +	return 0;
> 
> You free nothing?
> 
> You are leaking resources like crazy here, this is not ok at all.

The managed resources are used.
Anyway, I'll test for memory leak and search for the answer.

> 
> > +}
> > +
> > +static const struct of_device_id xsdfec_of_match[] = {
> > +	{
> > +		.compatible = "xlnx,sd-fec-1.1",
> > +	},
> > +	{ /* end of table */ }
> > +};
> > +MODULE_DEVICE_TABLE(of, xsdfec_of_match);
> > +
> > +static struct platform_driver xsdfec_driver = {
> > +	.driver = {
> > +		.name = "xilinx-sdfec",
> > +		.of_match_table = xsdfec_of_match,
> > +	},
> > +	.probe = xsdfec_probe,
> > +	.remove =  xsdfec_remove,
> > +};
> > +
> > +module_platform_driver(xsdfec_driver);
> > +
> > +MODULE_AUTHOR("Xilinx, Inc");
> > +MODULE_DESCRIPTION("Xilinx SD-FEC16 Driver");
> > +MODULE_LICENSE("GPL");
> > diff --git a/include/uapi/misc/xilinx_sdfec.h b/include/uapi/misc/xilinx_sdfec.h
> > new file mode 100644
> > index 0000000..1b8a63f
> > --- /dev/null
> > +++ b/include/uapi/misc/xilinx_sdfec.h
> > @@ -0,0 +1,44 @@
> > +/* SPDX-License-Identifier: GPL-2.0+ WITH Linux-syscall-note */
> > +/*
> > + * Xilinx SD-FEC
> > + *
> > + * Copyright (C) 2016 - 2017 Xilinx, Inc.
> > + *
> > + * Description:
> > + * This driver is developed for SDFEC16 IP. It provides a char device
> > + * in sysfs and supports file operations like open(), close() and ioctl().
> > + */
> > +#ifndef __XILINX_SDFEC_H__
> > +#define __XILINX_SDFEC_H__
> > +
> > +#include <linux/types.h>
> > +
> > +/**
> > + * enum xsdfec_state - State.
> > + * @XSDFEC_INIT: Driver is initialized.
> > + * @XSDFEC_STARTED: Driver is started.
> > + * @XSDFEC_STOPPED: Driver is stopped.
> > + * @XSDFEC_NEEDS_RESET: Driver needs to be reset.
> > + * @XSDFEC_PL_RECONFIGURE: Programmable Logic needs to be recofigured.
> > + *
> > + * This enum is used to indicate the state of the driver.
> > + */
> > +enum xsdfec_state {
> > +	XSDFEC_INIT = 0,
> > +	XSDFEC_STARTED,
> > +	XSDFEC_STOPPED,
> > +	XSDFEC_NEEDS_RESET,
> > +	XSDFEC_PL_RECONFIGURE,
> > +};
> 
> This is not used in this patch, why have it?

Accepted.
Will be removed.

> 
> > +
> > +/**
> > + * struct xsdfec_config - Configuration of SD-FEC core.
> > + * @fec_id: ID of SD-FEC instance. ID is limited to the number of active
> > + *          SD-FEC's in the FPGA and is related to the driver instance
> > + *          Minor number.
> > + */
> > +struct xsdfec_config {
> > +	__s32 fec_id;
> 
> Why signed?
> 
> And you are NOT tieing this to the minor number at all, don't lie in the
> comment, that is only going to cause you major problems.
> 
> Why does userspace care about this structure?
> 

Accepted earlier.
The struct will be removed


> Do I need to really review the rest of this series?
> 
> thanks,
> 
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
