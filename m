Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 155E1384BF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 09:12:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DfCnaS4mOL/ME3ASWWmiyRkoWOcG9SJ0EeNZmojgkr0=; b=cmnqaSGMH/n6n7
	D3jegX7BvXql5pR3tgEuJH9f1FLxYAU2nZ8FsyuIkv8hBHubarAp+NvJvybAUemXy1srFPOCPvyLW
	mqtoQRbMSwARSodpHXR4KqtWx8Z3yeCwFVxuKOz00QEh3AlSReWmylnnBtx3FdvkiyeWupE7gTGHC
	/uIx44Le3+3DURsO4znWfQaSQVv4DtjCAlfboWPbtCxhL6vU8y2iJSc/Nm9aS6OEdUHbsKfkZpX/j
	HfDT0DBPIjcQdyOOckvHWUtG6OYmPDVk8mM7oz4rGyF1vFsvpepaLUTaYU8IF71wncs52rlDg4Er3
	NUgMTG3mMWqzjVFOBVJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ92r-0007kn-NY; Fri, 07 Jun 2019 07:12:13 +0000
Received: from mail-eopbgr820043.outbound.protection.outlook.com
 ([40.107.82.43] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ92Y-0007k9-FH
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 07:11:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=agUMtoU9oYK6fXbcpyiPNOILk/1EU2719CjJQJpfu40=;
 b=YzWVPyeJWIiqzX1G411gtQQ56BCpQpX0rp+LoN3/sys/PjstMS+wn5cFTdLbK7hXfEAsOP2XvRFzIUR0ezgL0YCrBVx6sa3O2SQzzaYBIAD4pAGOzwhJ8PCuV5z/dHnz1XmA95oU24tVOo9Z7xR+KXDavCvteA9yUWqROyCdtUk=
Received: from CH2PR02MB6088.namprd02.prod.outlook.com (52.132.228.94) by
 CH2PR02MB6262.namprd02.prod.outlook.com (52.132.230.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.15; Fri, 7 Jun 2019 07:11:47 +0000
Received: from CH2PR02MB6088.namprd02.prod.outlook.com
 ([fe80::3cca:e795:ebe2:b366]) by CH2PR02MB6088.namprd02.prod.outlook.com
 ([fe80::3cca:e795:ebe2:b366%6]) with mapi id 15.20.1943.018; Fri, 7 Jun 2019
 07:11:47 +0000
From: Vishal Sagar <vsagar@xilinx.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>, Vishal Sagar
 <vishal.sagar@xilinx.com>
Subject: RE: [PATCH v8 2/2] media: v4l: xilinx: Add Xilinx MIPI CSI-2 Rx
 Subsystem driver
Thread-Topic: [PATCH v8 2/2] media: v4l: xilinx: Add Xilinx MIPI CSI-2 Rx
 Subsystem driver
Thread-Index: AQHVGfMaAKfbOTEUHkuDr9l8JJ/e/6aNBicAgAKUiNA=
Date: Fri, 7 Jun 2019 07:11:47 +0000
Message-ID: <CH2PR02MB60889F3BF23FD96BF11053A2A7100@CH2PR02MB6088.namprd02.prod.outlook.com>
References: <1559555971-193235-1-git-send-email-vishal.sagar@xilinx.com>
 <1559555971-193235-3-git-send-email-vishal.sagar@xilinx.com>
 <20190605124851.xr2hmgyoe46q6xud@kekkonen.localdomain>
In-Reply-To: <20190605124851.xr2hmgyoe46q6xud@kekkonen.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vsagar@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3f045f2d-6db1-4a0b-b532-08d6eb1767bc
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:CH2PR02MB6262; 
x-ms-traffictypediagnostic: CH2PR02MB6262:
x-microsoft-antispam-prvs: <CH2PR02MB6262099F874BB96AAAC5C34DA7100@CH2PR02MB6262.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:626;
x-forefront-prvs: 0061C35778
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39860400002)(366004)(136003)(346002)(376002)(189003)(199004)(13464003)(45074003)(43544003)(561944003)(68736007)(256004)(14444005)(53936002)(53946003)(478600001)(102836004)(6506007)(53546011)(26005)(86362001)(9686003)(186003)(14454004)(55016002)(6636002)(3846002)(6116002)(2906002)(7416002)(8936002)(81166006)(81156014)(8676002)(7736002)(305945005)(74316002)(54906003)(110136005)(66476007)(64756008)(316002)(66446008)(66946007)(73956011)(66556008)(76116006)(4326008)(6246003)(66066001)(71200400001)(71190400001)(33656002)(6436002)(486006)(76176011)(7696005)(99286004)(229853002)(30864003)(25786009)(5660300002)(11346002)(476003)(446003)(52536014)(559001)(569006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6262;
 H:CH2PR02MB6088.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: jBg2S1md8f78aJEhBpEO9Y8p6UQ4tYd+KLzPlEJt9GZvaEsFbR5/9dKwco9wSHbF3Cvb9MUplIb+f4pRntLmxYXxfKbJjVMJm35pPQR6EXJmq5CRO5SCrihuNt0ebAmjHJBcD8Ehn4b/hiHIQXPhvgyjJrdGQiRw/F1FhJ9D7RuZkOb6VIebtbCJ7UzuDkTU2M2iVBQxmJq4Z62uHxkKLHkamxSvkFrDshe1L/3CUitEgXXRZ+K8eVdIdQyjlwPotZQPkn0nevj4+4gYzT7tNvQ0E95/YUgx3H7XjIvDEgvq4kDL7R7zL1gfaDpTTrGaUnek+BBPEK+E+X6M7Wr55h7dRH9kjkBcguaUPzS1YC+lWKG/MknmvYcDV8CqNZXbfgCofH/f4mekvoxAFmKqBDKOVKNlA50BO1tZTuLaszA=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f045f2d-6db1-4a0b-b532-08d6eb1767bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2019 07:11:47.4340 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vsagar@xilinx.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6262
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_001154_614158_28E918B7 
X-CRM114-Status: GOOD (  27.34  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.43 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Jacopo Mondi <jacopo@jmondi.org>, Dinesh Kumar <dineshk@xilinx.com>,
 Hyun Kwon <hyunk@xilinx.com>, Sandip Kothari <sandipk@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Michal Simek <michals@xilinx.com>,
 "laurent.pinchart@ideasonboard.com" <laurent.pinchart@ideasonboard.com>,
 Luca Ceresoli <luca@lucaceresoli.net>,
 "hans.verkuil@cisco.com" <hans.verkuil@cisco.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sakari,

Thanks for reviewing.

> -----Original Message-----
> From: Sakari Ailus [mailto:sakari.ailus@linux.intel.com]
> Sent: Wednesday, June 05, 2019 6:19 PM
> To: Vishal Sagar <vishal.sagar@xilinx.com>
> Cc: Hyun Kwon <hyunk@xilinx.com>; laurent.pinchart@ideasonboard.com;
> mchehab@kernel.org; robh+dt@kernel.org; mark.rutland@arm.com; Michal
> Simek <michals@xilinx.com>; linux-media@vger.kernel.org;
> devicetree@vger.kernel.org; hans.verkuil@cisco.com; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org; Dinesh Kumar
> <dineshk@xilinx.com>; Sandip Kothari <sandipk@xilinx.com>; Luca Ceresoli
> <luca@lucaceresoli.net>; Jacopo Mondi <jacopo@jmondi.org>
> Subject: Re: [PATCH v8 2/2] media: v4l: xilinx: Add Xilinx MIPI CSI-2 Rx
> Subsystem driver
> 
> EXTERNAL EMAIL
> 
> Hi Vishal,
> 
> On Mon, Jun 03, 2019 at 03:29:31PM +0530, Vishal Sagar wrote:
> > The Xilinx MIPI CSI-2 Rx Subsystem soft IP is used to capture images
> > from MIPI CSI-2 camera sensors and output AXI4-Stream video data ready
> > for image processing. Please refer to PG232 for details.
> >
> > The driver is used to set the number of active lanes, if enabled
> > in hardware. The CSI2 Rx controller filters out all packets except for
> > the packets with data type fixed in hardware. RAW8 packets are always
> > allowed to pass through.
> >
> > It is also used to setup and handle interrupts and enable the core. It
> > logs all the events in respective counters between streaming on and off.
> >
> > The driver supports only the video format bridge enabled configuration.
> > Some data types like YUV 422 10bpc, RAW16, RAW20 are supported when
> the
> > CSI v2.0 feature is enabled in design. When the VCX feature is enabled,
> > the maximum number of virtual channels becomes 16 from 4.
> >
> > Signed-off-by: Vishal Sagar <vishal.sagar@xilinx.com>
> > Reviewed-by: Hyun Kwon <hyun.kwon@xilinx.com>
> > ---
> > v8
> > - Use clk_bulk* APIs
> > - Add gpio reset for asserting video_aresetn when stream line buffer occurs
> > - Removed short packet related events and irq handling
> >   - V4L2_EVENT_XLNXCSIRX_SPKT and V4L2_EVENT_XLNXCSIRX_SPKT_OVF
> removed
> > - Removed frame counter control
> V4L2_CID_XILINX_MIPICSISS_FRAME_COUNTER
> >   and xcsi2rxss_g_volatile_ctrl()
> > - Minor formatting fixes
> >
> > v7
> > - No change
> >
> > v6
> > - No change
> >
> > v5
> > - Removed bayer and updated related parts like set default format based
> >   on Luca Cersoli's comments.
> > - Added correct YUV422 10bpc media bus format
> >
> > v4
> > - Removed irq member from core structure
> > - Consolidated IP config prints in xcsi2rxss_log_ipconfig()
> > - Return -EINVAL in case of invalid ioctl
> > - Code formatting
> > - Added reviewed by Hyun Kwon
> >
> > v3
> > - Fixed comments given by Hyun.
> > - Removed DPHY 200 MHz clock. This will be controlled by DPHY driver
> > - Minor code formatting
> > - en_csi_v20 and vfb members removed from struct and made local to dt
> parsing
> > - lock description updated
> > - changed to ratelimited type for all dev prints in irq handler
> > - Removed YUV 422 10bpc media format
> >
> > v2
> > - Fixed comments given by Hyun and Sakari.
> > - Made all bitmask using BIT() and GENMASK()
> > - Removed unused definitions
> > - Removed DPHY access. This will be done by separate DPHY PHY driver.
> > - Added support for CSI v2.0 for YUV 422 10bpc, RAW16, RAW20 and extra
> >   virtual channels
> > - Fixed the ports as sink and source
> > - Now use the v4l2fwnode API to get number of data-lanes
> > - Added clock framework support
> > - Removed the close() function
> > - updated the set format function
> > - support only VFB enabled configuration
> >
> >  drivers/media/platform/xilinx/Kconfig           |   10 +
> >  drivers/media/platform/xilinx/Makefile          |    1 +
> >  drivers/media/platform/xilinx/xilinx-csi2rxss.c | 1406
> +++++++++++++++++++++++
> >  include/uapi/linux/xilinx-v4l2-controls.h       |   12 +
> >  include/uapi/linux/xilinx-v4l2-events.h         |   21 +
> >  5 files changed, 1450 insertions(+)
> >  create mode 100644 drivers/media/platform/xilinx/xilinx-csi2rxss.c
> >  create mode 100644 include/uapi/linux/xilinx-v4l2-events.h
> >
> > diff --git a/drivers/media/platform/xilinx/Kconfig
> b/drivers/media/platform/xilinx/Kconfig
> > index a2773ad..cd1a0fd 100644
> > --- a/drivers/media/platform/xilinx/Kconfig
> > +++ b/drivers/media/platform/xilinx/Kconfig
> > @@ -10,6 +10,16 @@ config VIDEO_XILINX
> >
> >  if VIDEO_XILINX
> >
> > +config VIDEO_XILINX_CSI2RXSS
> > +     tristate "Xilinx CSI2 Rx Subsystem"
> 
> I think you'll need at least these dependencies:
> 
>         VIDEO_V4L2
>         VIDEO_V4L2_SUBDEV_API
> 
> And select:
>         VIDEO_V4L2_FWNODE
> 

Ok. I missed to add "depends on VIDEO_XILINX" here.
This should take care of the above dependencies.

> > +     help
> > +       Driver for Xilinx MIPI CSI2 Rx Subsystem. This is a V4L sub-device
> > +       based driver that takes input from CSI2 Tx source and converts
> > +       it into an AXI4-Stream. The subsystem comprises of a CSI2 Rx
> > +       controller, DPHY, an optional I2C controller and a Video Format
> > +       Bridge. The driver is used to set the number of active lanes and
> > +       get short packet data.
> > +
> >  config VIDEO_XILINX_TPG
> >       tristate "Xilinx Video Test Pattern Generator"
> >       depends on VIDEO_XILINX
> > diff --git a/drivers/media/platform/xilinx/Makefile
> b/drivers/media/platform/xilinx/Makefile
> > index 4cdc0b1..6119a34 100644
> > --- a/drivers/media/platform/xilinx/Makefile
> > +++ b/drivers/media/platform/xilinx/Makefile
> > @@ -3,5 +3,6 @@
> >  xilinx-video-objs += xilinx-dma.o xilinx-vip.o xilinx-vipp.o
> >
> >  obj-$(CONFIG_VIDEO_XILINX) += xilinx-video.o
> > +obj-$(CONFIG_VIDEO_XILINX_CSI2RXSS) += xilinx-csi2rxss.o
> >  obj-$(CONFIG_VIDEO_XILINX_TPG) += xilinx-tpg.o
> >  obj-$(CONFIG_VIDEO_XILINX_VTC) += xilinx-vtc.o
> > diff --git a/drivers/media/platform/xilinx/xilinx-csi2rxss.c
> b/drivers/media/platform/xilinx/xilinx-csi2rxss.c
> > new file mode 100644
> > index 0000000..51bb80c
> > --- /dev/null
> > +++ b/drivers/media/platform/xilinx/xilinx-csi2rxss.c
> > @@ -0,0 +1,1406 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * Driver for Xilinx MIPI CSI2 Rx Subsystem
> > + *
> > + * Copyright (C) 2016 - 2019 Xilinx, Inc.
> > + *
> > + * Contacts: Vishal Sagar <vishal.sagar@xilinx.com>
> > + *
> > + */
> > +#include <linux/clk.h>
> > +#include <linux/delay.h>
> > +#include <linux/gpio/consumer.h>
> > +#include <linux/interrupt.h>
> > +#include <linux/module.h>
> > +#include <linux/mutex.h>
> > +#include <linux/of.h>
> > +#include <linux/of_irq.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/v4l2-subdev.h>
> > +#include <linux/xilinx-v4l2-controls.h>
> > +#include <linux/xilinx-v4l2-events.h>
> > +#include <media/media-entity.h>
> > +#include <media/v4l2-common.h>
> > +#include <media/v4l2-ctrls.h>
> > +#include <media/v4l2-event.h>
> > +#include <media/v4l2-fwnode.h>
> > +#include <media/v4l2-subdev.h>
> > +#include "xilinx-vip.h"
> > +
> > +/* Register register map */
> > +#define XCSI_CCR_OFFSET              0x00
> > +#define XCSI_CCR_SOFTRESET   BIT(1)
> > +#define XCSI_CCR_ENABLE              BIT(0)
> > +
> > +#define XCSI_PCR_OFFSET              0x04
> > +#define XCSI_PCR_MAXLANES_MASK       GENMASK(4, 3)
> > +#define XCSI_PCR_ACTLANES_MASK       GENMASK(1, 0)
> > +
> > +#define XCSI_CSR_OFFSET              0x10
> > +#define XCSI_CSR_PKTCNT              GENMASK(31, 16)
> > +#define XCSI_CSR_SPFIFOFULL  BIT(3)
> > +#define XCSI_CSR_SPFIFONE    BIT(2)
> > +#define XCSI_CSR_SLBF                BIT(1)
> > +#define XCSI_CSR_RIPCD               BIT(0)
> > +
> > +#define XCSI_GIER_OFFSET     0x20
> > +#define XCSI_GIER_GIE                BIT(0)
> > +
> > +#define XCSI_ISR_OFFSET              0x24
> > +#define XCSI_IER_OFFSET              0x28
> > +
> > +#define XCSI_ISR_FR          BIT(31)
> > +#define XCSI_ISR_VCXFE               BIT(30)
> > +#define XCSI_ISR_WCC         BIT(22)
> > +#define XCSI_ISR_ILC         BIT(21)
> > +#define XCSI_ISR_SPFIFOF     BIT(20)
> > +#define XCSI_ISR_SPFIFONE    BIT(19)
> > +#define XCSI_ISR_SLBF                BIT(18)
> > +#define XCSI_ISR_STOP                BIT(17)
> > +#define XCSI_ISR_SOTERR              BIT(13)
> > +#define XCSI_ISR_SOTSYNCERR  BIT(12)
> > +#define XCSI_ISR_ECC2BERR    BIT(11)
> > +#define XCSI_ISR_ECC1BERR    BIT(10)
> > +#define XCSI_ISR_CRCERR              BIT(9)
> > +#define XCSI_ISR_DATAIDERR   BIT(8)
> > +#define XCSI_ISR_VC3FSYNCERR BIT(7)
> > +#define XCSI_ISR_VC3FLVLERR  BIT(6)
> > +#define XCSI_ISR_VC2FSYNCERR BIT(5)
> > +#define XCSI_ISR_VC2FLVLERR  BIT(4)
> > +#define XCSI_ISR_VC1FSYNCERR BIT(3)
> > +#define XCSI_ISR_VC1FLVLERR  BIT(2)
> > +#define XCSI_ISR_VC0FSYNCERR BIT(1)
> > +#define XCSI_ISR_VC0FLVLERR  BIT(0)
> > +
> > +#define XCSI_INTR_PROT_MASK  (XCSI_ISR_VC3FSYNCERR |
> XCSI_ISR_VC3FLVLERR |\
> > +                              XCSI_ISR_VC2FSYNCERR | XCSI_ISR_VC2FLVLERR |\
> > +                              XCSI_ISR_VC1FSYNCERR | XCSI_ISR_VC1FLVLERR |\
> > +                              XCSI_ISR_VC0FSYNCERR | XCSI_ISR_VC0FLVLERR |\
> > +                              XCSI_ISR_VCXFE)
> > +
> > +#define XCSI_INTR_PKTLVL_MASK        (XCSI_ISR_ECC2BERR |
> XCSI_ISR_ECC1BERR |\
> > +                              XCSI_ISR_CRCERR | XCSI_ISR_DATAIDERR)
> > +
> > +#define XCSI_INTR_DPHY_MASK  (XCSI_ISR_SOTERR |
> XCSI_ISR_SOTSYNCERR)
> > +
> > +#define XCSI_INTR_SPKT_MASK  (XCSI_ISR_SPFIFOF | XCSI_ISR_SPFIFONE)
> > +
> > +#define XCSI_INTR_ERR_MASK   (XCSI_ISR_WCC | XCSI_ISR_ILC |
> XCSI_ISR_SLBF |\
> > +                              XCSI_ISR_STOP)
> > +
> > +#define XCSI_INTR_FRAMERCVD_MASK     (XCSI_ISR_FR)
> > +
> > +#define XCSI_ISR_ALLINTR_MASK        (XCSI_INTR_PROT_MASK |
> XCSI_INTR_PKTLVL_MASK |\
> > +                              XCSI_INTR_DPHY_MASK | XCSI_INTR_SPKT_MASK |\
> > +                              XCSI_INTR_ERR_MASK | XCSI_INTR_FRAMERCVD_MASK)
> > +
> > +/*
> > + * Removed VCXFE mask as it doesn't exist in IER
> > + * Removed STOP state irq as this will keep driver in irq handler only
> > + */
> > +#define XCSI_IER_INTR_MASK   (XCSI_ISR_ALLINTR_MASK &\
> > +                              ~(XCSI_ISR_STOP | XCSI_ISR_VCXFE))
> > +
> > +#define XCSI_SPKTR_OFFSET    0x30
> > +#define XCSI_SPKTR_DATA              GENMASK(23, 8)
> > +#define XCSI_SPKTR_VC                GENMASK(7, 6)
> > +#define XCSI_SPKTR_DT                GENMASK(5, 0)
> > +
> > +#define XCSI_VCXR_OFFSET     0x34
> > +#define XCSI_VCXR_VCERR              GENMASK(23, 0)
> > +#define XCSI_VCXR_VCSTART    4
> > +#define XCSI_VCXR_VCEND              15
> > +#define XCSI_VCXR_FSYNCERR   BIT(1)
> > +#define XCSI_VCXR_FLVLERR    BIT(0)
> > +
> > +#define XCSI_CLKINFR_OFFSET  0x3C
> > +#define XCSI_CLKINFR_STOP    BIT(1)
> > +
> > +#define XCSI_DLXINFR_OFFSET  0x40
> > +#define XCSI_DLXINFR_STOP    BIT(5)
> > +#define XCSI_DLXINFR_SOTERR  BIT(1)
> > +#define XCSI_DLXINFR_SOTSYNCERR      BIT(0)
> > +#define XCSI_MAXDL_COUNT     0x4
> > +
> > +#define XCSI_VCXINF1R_OFFSET         0x60
> > +#define XCSI_VCXINF1R_LINECOUNT              GENMASK(31, 16)
> > +#define XCSI_VCXINF1R_LINECOUNT_SHIFT        16
> > +#define XCSI_VCXINF1R_BYTECOUNT              GENMASK(15, 0)
> > +
> > +#define XCSI_VCXINF2R_OFFSET 0x64
> > +#define XCSI_VCXINF2R_DT     GENMASK(5, 0)
> > +#define XCSI_MAXVCX_COUNT    16
> > +
> > +/*
> > + * The core takes less than 100 video clock cycles to reset.
> > + * So choosing a timeout value larger than this.
> > + */
> > +#define XCSI_TIMEOUT_VAL     1000 /* us */
> > +
> > +/* Maximum short packet events */
> > +#define XCSI_MAX_SPKT_EVENT  64
> > +
> > +/*
> > + * Sink pad connected to sensor source pad.
> > + * Source pad connected to next module like demosaic.
> > + */
> > +#define XCSI_MEDIA_PADS              2
> > +#define XCSI_DEFAULT_WIDTH   1920
> > +#define XCSI_DEFAULT_HEIGHT  1080
> > +
> > +/* Max string length for CSI Data type string */
> > +#define XCSI_PXLFMT_STRLEN_MAX       16
> > +
> > +/* MIPI CSI2 Data Types from spec */
> > +#define XCSI_DT_YUV4228B     0x1E
> > +#define XCSI_DT_YUV42210B    0x1F
> > +#define XCSI_DT_RGB444               0x20
> > +#define XCSI_DT_RGB555               0x21
> > +#define XCSI_DT_RGB565               0x22
> > +#define XCSI_DT_RGB666               0x23
> > +#define XCSI_DT_RGB888               0x24
> > +#define XCSI_DT_RAW6         0x28
> > +#define XCSI_DT_RAW7         0x29
> > +#define XCSI_DT_RAW8         0x2A
> > +#define XCSI_DT_RAW10                0x2B
> > +#define XCSI_DT_RAW12                0x2C
> > +#define XCSI_DT_RAW14                0x2D
> > +#define XCSI_DT_RAW16                0x2E
> > +#define XCSI_DT_RAW20                0x2F
> > +
> > +#define XCSI_VCX_START               4
> > +#define XCSI_MAX_VC          4
> > +#define XCSI_MAX_VCX         16
> > +
> > +#define XCSI_NEXTREG_OFFSET  4
> > +
> > +/* There are 2 events frame sync and frame level error per VC */
> > +#define XCSI_VCX_NUM_EVENTS  ((XCSI_MAX_VCX - XCSI_MAX_VC) * 2)
> > +
> > +/* Macro to return "true" or "false" string if bit is set */
> > +#define XCSI_GET_BITSET_STR(val, mask)       (val) & (mask) ? "true" : "false"
> > +
> > +/**
> > + * struct xcsi2rxss_event - Event log structure
> > + * @mask: Event mask
> > + * @name: Name of the event
> > + * @counter: Count number of events
> > + */
> > +struct xcsi2rxss_event {
> > +     u32 mask;
> > +     const char *const name;
> > +     unsigned int counter;
> > +};
> > +
> > +/*
> > + * struct xcsi2rxss_core - Core configuration CSI2 Rx Subsystem device
> structure
> > + * @dev: Platform structure
> > + * @iomem: Base address of subsystem
> > + * @enable_active_lanes: If number of active lanes can be modified
> > + * @max_num_lanes: Maximum number of lanes present
> > + * @datatype: Data type filter
> > + * @events: Structure to maintain event logs
> > + * @vcx_events: Structure to maintain VCX event logs
> > + * @en_vcx: If more than 4 VC are enabled
> > + * @clks: array of clocks
> > + * @num_clks: number of clocks
> > + * @rst_gpio: reset to video_aresetn
> > + */
> > +struct xcsi2rxss_core {
> > +     struct device *dev;
> > +     void __iomem *iomem;
> > +     bool enable_active_lanes;
> > +     u32 max_num_lanes;
> > +     u32 datatype;
> > +     struct xcsi2rxss_event *events;
> > +     struct xcsi2rxss_event *vcx_events;
> > +     bool en_vcx;
> > +     struct clk_bulk_data *clks;
> > +     int num_clks;
> > +     struct gpio_desc *rst_gpio;
> > +};
> > +
> > +/**
> > + * struct xcsi2rxss_state - CSI2 Rx Subsystem device structure
> > + * @core: Core structure for MIPI CSI2 Rx Subsystem
> > + * @subdev: The v4l2 subdev structure
> > + * @ctrl_handler: control handler
> > + * @format: Active V4L2 formats on each pad
> > + * @event: Holds the short packet event
> > + * @lock: mutex for accessing this structure
> > + * @pads: media pads
> > + * @streaming: Flag for storing streaming state
> > + *
> > + * This structure contains the device driver related parameters
> > + */
> > +struct xcsi2rxss_state {
> > +     struct xcsi2rxss_core core;
> > +     struct v4l2_subdev subdev;
> > +     struct v4l2_ctrl_handler ctrl_handler;
> > +     struct v4l2_mbus_framefmt format;
> > +     struct v4l2_event event;
> > +     /* used to protect access to this struct */
> > +     struct mutex lock;
> > +     struct media_pad pads[XCSI_MEDIA_PADS];
> > +     bool streaming;
> > +};
> > +
> > +static struct xcsi2rxss_event xcsi2rxss_events[] = {
> 
> This struct is static and not related to a single device. You'll need to
> store the count elsewhere if you want to keep it, and make this const.
> 

Good catch. I will create the counters in the struct xcsi2rxss_core structure.

> > +     { XCSI_ISR_FR, "Frame Received", 0 },
> > +     { XCSI_ISR_VCXFE, "VCX Frame Errors", 0 },
> > +     { XCSI_ISR_WCC, "Word Count Errors", 0 },
> > +     { XCSI_ISR_ILC, "Invalid Lane Count Error", 0 },
> > +     { XCSI_ISR_SPFIFOF, "Short Packet FIFO OverFlow Error", 0 },
> > +     { XCSI_ISR_SPFIFONE, "Short Packet FIFO Not Empty", 0 },
> > +     { XCSI_ISR_SLBF, "Streamline Buffer Full Error", 0 },
> > +     { XCSI_ISR_STOP, "Lane Stop State", 0 },
> > +     { XCSI_ISR_SOTERR, "SOT Error", 0 },
> > +     { XCSI_ISR_SOTSYNCERR, "SOT Sync Error", 0 },
> > +     { XCSI_ISR_ECC2BERR, "2 Bit ECC Unrecoverable Error", 0 },
> > +     { XCSI_ISR_ECC1BERR, "1 Bit ECC Recoverable Error", 0 },
> > +     { XCSI_ISR_CRCERR, "CRC Error", 0 },
> > +     { XCSI_ISR_DATAIDERR, "Data Id Error", 0 },
> > +     { XCSI_ISR_VC3FSYNCERR, "Virtual Channel 3 Frame Sync Error", 0 },
> > +     { XCSI_ISR_VC3FLVLERR, "Virtual Channel 3 Frame Level Error", 0 },
> > +     { XCSI_ISR_VC2FSYNCERR, "Virtual Channel 2 Frame Sync Error", 0 },
> > +     { XCSI_ISR_VC2FLVLERR, "Virtual Channel 2 Frame Level Error", 0 },
> > +     { XCSI_ISR_VC1FSYNCERR, "Virtual Channel 1 Frame Sync Error", 0 },
> > +     { XCSI_ISR_VC1FLVLERR, "Virtual Channel 1 Frame Level Error", 0 },
> > +     { XCSI_ISR_VC0FSYNCERR, "Virtual Channel 0 Frame Sync Error", 0 },
> > +     { XCSI_ISR_VC0FLVLERR, "Virtual Channel 0 Frame Level Error", 0 }
> > +};
> > +
> > +#define XCSI_NUM_EVENTS              ARRAY_SIZE(xcsi2rxss_events)
> > +
> > +static const struct clk_bulk_data xcsi2rxss_clks[] = {
> > +     { .id = "lite_aclk" },
> > +     { .id = "video_aclk" },
> > +};
> > +
> > +static inline struct xcsi2rxss_state *
> > +to_xcsi2rxssstate(struct v4l2_subdev *subdev)
> > +{
> > +     return container_of(subdev, struct xcsi2rxss_state, subdev);
> > +}
> > +
> > +/*
> > + * Register related operations
> > + */
> > +static inline u32 xcsi2rxss_read(struct xcsi2rxss_core *xcsi2rxss, u32 addr)
> > +{
> > +     return ioread32(xcsi2rxss->iomem + addr);
> > +}
> > +
> > +static inline void xcsi2rxss_write(struct xcsi2rxss_core *xcsi2rxss, u32 addr,
> > +                                u32 value)
> > +{
> > +     iowrite32(value, xcsi2rxss->iomem + addr);
> > +}
> > +
> > +static inline void xcsi2rxss_clr(struct xcsi2rxss_core *xcsi2rxss, u32 addr,
> > +                              u32 clr)
> > +{
> > +     xcsi2rxss_write(xcsi2rxss, addr,
> > +                     xcsi2rxss_read(xcsi2rxss, addr) & ~clr);
> > +}
> > +
> > +static inline void xcsi2rxss_set(struct xcsi2rxss_core *xcsi2rxss, u32 addr,
> > +                              u32 set)
> > +{
> > +     xcsi2rxss_write(xcsi2rxss, addr,
> > +                     xcsi2rxss_read(xcsi2rxss, addr) | set);
> > +}
> > +
> > +/**
> > + * xcsi2rxss_clr_and_set - Clear and set the register with a bitmask
> > + * @xcsi2rxss: Xilinx MIPI CSI2 Rx Subsystem subdev core struct
> > + * @addr: address of register
> > + * @clr: bitmask to be cleared
> > + * @set: bitmask to be set
> > + *
> > + * Clear a bit(s) of mask @clr in the register at address @addr, then set
> > + * a bit(s) of mask @set in the register after.
> > + */
> > +static void xcsi2rxss_clr_and_set(struct xcsi2rxss_core *xcsi2rxss,
> > +                               u32 addr, u32 clr, u32 set)
> > +{
> > +     u32 reg;
> > +
> > +     reg = xcsi2rxss_read(xcsi2rxss, addr);
> > +     reg &= ~clr;
> > +     reg |= set;
> > +     xcsi2rxss_write(xcsi2rxss, addr, reg);
> > +}
> > +
> > +static void xcsi2rxss_enable(struct xcsi2rxss_core *core)
> > +{
> > +     xcsi2rxss_set(core, XCSI_CCR_OFFSET, XCSI_CCR_ENABLE);
> > +}
> > +
> > +static void xcsi2rxss_disable(struct xcsi2rxss_core *core)
> > +{
> > +     xcsi2rxss_clr(core, XCSI_CCR_OFFSET, XCSI_CCR_ENABLE);
> > +}
> > +
> > +static void xcsi2rxss_intr_enable(struct xcsi2rxss_core *core)
> > +{
> > +     xcsi2rxss_clr(core, XCSI_GIER_OFFSET, XCSI_GIER_GIE);
> > +     xcsi2rxss_write(core, XCSI_IER_OFFSET, XCSI_IER_INTR_MASK);
> > +     xcsi2rxss_set(core, XCSI_GIER_OFFSET, XCSI_GIER_GIE);
> > +}
> > +
> > +static void xcsi2rxss_intr_disable(struct xcsi2rxss_core *core)
> > +{
> > +     xcsi2rxss_clr(core, XCSI_IER_OFFSET, XCSI_IER_INTR_MASK);
> > +     xcsi2rxss_clr(core, XCSI_GIER_OFFSET, XCSI_GIER_GIE);
> > +}
> > +
> > +/**
> > + * xcsi2rxss_reset - Does a soft reset of the MIPI CSI2 Rx Subsystem
> > + * @core: Core Xilinx CSI2 Rx Subsystem structure pointer
> > + *
> > + * Core takes less than 100 video clock cycles to reset.
> > + * So a larger timeout value is chosen for margin.
> > + *
> > + * Return: 0 - on success OR -ETIME if reset times out
> > + */
> > +static int xcsi2rxss_reset(struct xcsi2rxss_core *core)
> > +{
> > +     u32 timeout = XCSI_TIMEOUT_VAL;
> > +
> > +     xcsi2rxss_set(core, XCSI_CCR_OFFSET, XCSI_CCR_SOFTRESET);
> > +
> > +     while (xcsi2rxss_read(core, XCSI_CSR_OFFSET) & XCSI_CSR_RIPCD) {
> > +             if (timeout == 0) {
> > +                     dev_err(core->dev, "soft reset timed out!\n");
> > +                     return -ETIME;
> > +             }
> > +
> > +             timeout--;
> > +             udelay(1);
> > +     }
> > +
> > +     xcsi2rxss_clr(core, XCSI_CCR_OFFSET, XCSI_CCR_SOFTRESET);
> > +     return 0;
> > +}
> > +
> > +static void xcsi2rxss_reset_event_counters(struct xcsi2rxss_state *state)
> > +{
> > +     unsigned int i;
> > +
> > +     for (i = 0; i < XCSI_NUM_EVENTS; i++)
> > +             state->core.events[i].counter = 0;
> > +
> > +     if (state->core.en_vcx) {
> > +             for (i = 0; i < XCSI_VCX_NUM_EVENTS; i++)
> > +                     state->core.vcx_events[i].counter = 0;
> > +     }
> > +}
> > +
> > +/* Print event counters */
> > +static void xcsi2rxss_log_counters(struct xcsi2rxss_state *state)
> > +{
> > +     struct xcsi2rxss_core *core = &state->core;
> > +     int i;
> > +
> > +     for (i = 0; i < XCSI_NUM_EVENTS; i++) {
> > +             if (core->events[i].counter > 0) {
> > +                     dev_info(core->dev, "%s events: %d\n",
> > +                              core->events[i].name,
> > +                              core->events[i].counter);
> > +             }
> > +     }
> > +
> > +     if (core->en_vcx) {
> > +             for (i = 0; i < XCSI_VCX_NUM_EVENTS; i++) {
> > +                     if (core->vcx_events[i].counter > 0) {
> > +                             dev_info(core->dev,
> > +                                      "VC %d Frame %s err vcx events: %d\n",
> > +                                      (i / 2) + XCSI_VCX_START,
> > +                                      i & 1 ? "Sync" : "Level",
> > +                                      core->vcx_events[i].counter);
> > +                     }
> > +             }
> > +     }
> > +}
> > +
> > +static void xcsi2rxss_log_ipconfig(struct xcsi2rxss_state *state)
> > +{
> > +     struct xcsi2rxss_core *core = &state->core;
> > +
> > +     dev_dbg(core->dev, "****** Xilinx MIPI CSI2 Rx SS IP Config ******\n");
> > +     dev_dbg(core->dev, "vcx is %s", core->en_vcx ? "enabled" : "disabled");
> > +     dev_dbg(core->dev, "Enable active lanes property is %s\n",
> > +             core->enable_active_lanes ? "present" : "absent");
> > +     dev_dbg(core->dev, "Max lanes = %d", core->max_num_lanes);
> > +     dev_dbg(core->dev, "Pixel format set as 0x%x\n", core->datatype);
> > +     dev_dbg(core->dev,
> "**********************************************\n");
> > +}
> > +
> > +/**
> > + * xcsi2rxss_log_status - Logs the status of the CSI-2 Receiver
> > + * @sd: Pointer to V4L2 subdevice structure
> > + *
> > + * This function prints the current status of Xilinx MIPI CSI-2
> > + *
> > + * Return: 0 on success
> > + */
> > +static int xcsi2rxss_log_status(struct v4l2_subdev *sd)
> > +{
> > +     struct xcsi2rxss_state *xcsi2rxss = to_xcsi2rxssstate(sd);
> > +     struct xcsi2rxss_core *core = &xcsi2rxss->core;
> > +     unsigned int reg, data, i, max_vc;
> > +
> > +     mutex_lock(&xcsi2rxss->lock);
> > +
> > +     xcsi2rxss_log_ipconfig(xcsi2rxss);
> > +
> > +     xcsi2rxss_log_counters(xcsi2rxss);
> > +
> > +     dev_info(core->dev, "***** Core Status *****\n");
> > +     data = xcsi2rxss_read(core, XCSI_CSR_OFFSET);
> > +     dev_info(core->dev, "Short Packet FIFO Full = %s\n",
> > +              XCSI_GET_BITSET_STR(data, XCSI_CSR_SPFIFOFULL));
> > +     dev_info(core->dev, "Short Packet FIFO Not Empty = %s\n",
> > +              XCSI_GET_BITSET_STR(data, XCSI_CSR_SPFIFONE));
> > +     dev_info(core->dev, "Stream line buffer full = %s\n",
> > +              XCSI_GET_BITSET_STR(data, XCSI_CSR_SLBF));
> > +     dev_info(core->dev, "Soft reset/Core disable in progress = %s\n",
> > +              XCSI_GET_BITSET_STR(data, XCSI_CSR_RIPCD));
> > +
> > +     /* Clk & Lane Info  */
> > +     dev_info(core->dev, "******** Clock Lane Info *********\n");
> > +     data = xcsi2rxss_read(core, XCSI_CLKINFR_OFFSET);
> > +     dev_info(core->dev, "Clock Lane in Stop State = %s\n",
> > +              XCSI_GET_BITSET_STR(data, XCSI_CLKINFR_STOP));
> > +
> > +     dev_info(core->dev, "******** Data Lane Info *********\n");
> > +     dev_info(core->dev, "Lane\tSoT Error\tSoT Sync Error\tStop State\n");
> > +     reg = XCSI_DLXINFR_OFFSET;
> > +     for (i = 0; i < XCSI_MAXDL_COUNT; i++) {
> > +             data = xcsi2rxss_read(core, reg);
> > +
> > +             dev_info(core->dev, "%d\t%s\t\t%s\t\t%s\n", i,
> > +                      XCSI_GET_BITSET_STR(data, XCSI_DLXINFR_SOTERR),
> > +                      XCSI_GET_BITSET_STR(data, XCSI_DLXINFR_SOTSYNCERR),
> > +                      XCSI_GET_BITSET_STR(data, XCSI_DLXINFR_STOP));
> > +
> > +             reg += XCSI_NEXTREG_OFFSET;
> > +     }
> > +
> > +     /* Virtual Channel Image Information */
> > +     dev_info(core->dev, "********** Virtual Channel Info
> ************\n");
> > +     dev_info(core->dev, "VC\tLine Count\tByte Count\tData Type\n");
> > +     if (core->en_vcx)
> > +             max_vc = XCSI_MAX_VCX;
> > +     else
> > +             max_vc = XCSI_MAX_VC;
> > +
> > +     reg = XCSI_VCXINF1R_OFFSET;
> > +     for (i = 0; i < max_vc; i++) {
> > +             u32 line_count, byte_count, data_type;
> > +
> > +             /* Get line and byte count from VCXINFR1 Register */
> > +             data = xcsi2rxss_read(core, reg);
> > +             byte_count = data & XCSI_VCXINF1R_BYTECOUNT;
> > +             line_count = data & XCSI_VCXINF1R_LINECOUNT;
> > +             line_count >>= XCSI_VCXINF1R_LINECOUNT_SHIFT;
> > +
> > +             /* Get data type from VCXINFR2 Register */
> > +             reg += XCSI_NEXTREG_OFFSET;
> > +             data = xcsi2rxss_read(core, reg);
> > +             data_type = data & XCSI_VCXINF2R_DT;
> > +
> > +             dev_info(core->dev, "%d\t%d\t\t%d\t\t0x%x\n", i, line_count,
> > +                      byte_count, data_type);
> > +
> > +             /* Move to next pair of VC Info registers */
> > +             reg += XCSI_NEXTREG_OFFSET;
> > +     }
> > +
> > +     mutex_unlock(&xcsi2rxss->lock);
> > +
> > +     return 0;
> > +}
> > +
> > +/*
> > + * xcsi2rxss_subscribe_event - Subscribe to the custom short packet
> > + * receive event.
> > + * @sd: V4L2 Sub device
> > + * @fh: V4L2 File Handle
> > + * @sub: Subcribe event structure
> > + *
> > + * There are two types of events to be subscribed.
> > + *
> > + * First is to register for receiving a generic short packet.
> > + * The generic short packets received are queued up in a FIFO.
> > + * On reception of a generic short packet, an event will be generated
> > + * with the short packet contents copied to its data area.
> > + * Application subscribed to this event will poll for POLLPRI.
> > + * On getting the event, the app dequeues the event to get the short packet
> > + * data.
> > + *
> > + * Second is to register for Short packet FIFO overflow
> > + * In case the rate of receiving short packets is high and
> > + * the short packet FIFO overflows, this event will be triggered.
> 
> What is the effect of this?
> 
> Short packets in general tell about frame or line start or end, the packets
> themselves are not something the user space is interested as such in
> general. The frame start is useful, however, and there's an event for that:
> it's called V4L2_EVENT_FRAME_SYNC. Please implement that instead, if you'd
> like to provide information to the user space on frame start.

I had removed the short packet related events from code in v8 patch series
but didn't remove it from the comments.
I will update the comments in the next version.

Thanks for sharing info about the frame sync event.

> 
> If you have a line buffer overflow (i.e. you can't forward the data from
> the long packets fast enough), then that will effectively cause a broken
> frame. There's no API to signal that to the DMA driver currently. I wonder
> if it could be added meaningfully --- the problem is that I guess it could
> be bound to be unrelible due to the frame number not being conveyed to the
> DMA driver. Feel free to make a proposal, but this should be probably
> separate from this patch.
> 
> Either way, this is not something that the user space is interested in form
> of an event.
> 

The line buffer overflow condition occurs in Xilinx MIPI CSI2 Rx Subsystem when
the downstream IPs aren't ready to receive the data. If this occurs it usually means
there is something wrong with the system design.
By this event, we are letting the application / user know this.
As a consequence of this, the application may want to close the pipeline, notify the user and exit.

> > + *
> > + * Return: 0 on success, errors otherwise
> > + */
> > +static int xcsi2rxss_subscribe_event(struct v4l2_subdev *sd,
> > +                                  struct v4l2_fh *fh,
> > +                                  struct v4l2_event_subscription *sub)
> > +{
> > +     struct xcsi2rxss_state *xcsi2rxss = to_xcsi2rxssstate(sd);
> > +     int ret;
> > +
> > +     mutex_lock(&xcsi2rxss->lock);
> > +
> > +     switch (sub->type) {
> > +     case V4L2_EVENT_XLNXCSIRX_SLBF:
> > +             ret = v4l2_event_subscribe(fh, sub, XCSI_MAX_SPKT_EVENT, NULL);
> > +             break;
> > +     default:
> > +             ret = -EINVAL;
> > +     }
> > +
> > +     mutex_unlock(&xcsi2rxss->lock);
> > +
> > +     return ret;
> > +}
> > +
> > +/**
> > + * xcsi2rxss_unsubscribe_event - Unsubscribe from all events registered
> > + * @sd: V4L2 Sub device
> > + * @fh: V4L2 file handle
> > + * @sub: pointer to Event unsubscription structure
> > + *
> > + * Return: zero on success, else a negative error code.
> > + */
> > +static int xcsi2rxss_unsubscribe_event(struct v4l2_subdev *sd,
> > +                                    struct v4l2_fh *fh,
> > +                                    struct v4l2_event_subscription *sub)
> > +{
> > +     struct xcsi2rxss_state *xcsi2rxss = to_xcsi2rxssstate(sd);
> > +     int ret;
> > +
> > +     mutex_lock(&xcsi2rxss->lock);
> > +     ret = v4l2_event_unsubscribe(fh, sub);
> > +     mutex_unlock(&xcsi2rxss->lock);
> > +
> > +     return ret;
> > +}
> > +
> > +/**
> > + * xcsi2rxss_s_ctrl - This is used to set the Xilinx MIPI CSI-2 V4L2 controls
> > + * @ctrl: V4L2 control to be set
> > + *
> > + * This function is used to set the V4L2 controls for the Xilinx MIPI
> > + * CSI-2 Rx Subsystem. It is used to set the active lanes in the system.
> > + * The event counters can be reset.
> > + *
> > + * Return: 0 on success, errors otherwise
> > + */
> > +static int xcsi2rxss_s_ctrl(struct v4l2_ctrl *ctrl)
> > +{
> > +     struct xcsi2rxss_state *xcsi2rxss =
> > +             container_of(ctrl->handler, struct xcsi2rxss_state,
> > +                          ctrl_handler);
> > +     struct xcsi2rxss_core *core = &xcsi2rxss->core;
> > +     int ret = 0;
> > +
> > +     mutex_lock(&xcsi2rxss->lock);
> > +
> > +     switch (ctrl->id) {
> > +     case V4L2_CID_XILINX_MIPICSISS_ACT_LANES:
> > +             /*
> > +              * This will be called only when "Enable Active Lanes" parameter
> > +              * is set in design
> > +              */
> 
> You generally get the number of lanes from firmware. There's no need to add
> a control for it. 
> 

I don't understand what firmware means here. There is no other code running.
I don't see how to modify the number of lanes apart from using v4l control.

> > +             if (core->enable_active_lanes) {
> > +                     u32 active_lanes;
> > +
> > +                     xcsi2rxss_clr_and_set(core, XCSI_PCR_OFFSET,
> > +                                           XCSI_PCR_ACTLANES_MASK,
> > +                                           ctrl->val - 1);
> > +                     /*
> > +                      * This delay is to allow the value to reflect as write
> > +                      * and read paths are different.
> > +                      */
> > +                     udelay(1);
> > +                     active_lanes = xcsi2rxss_read(core, XCSI_PCR_OFFSET);
> > +                     active_lanes &= XCSI_PCR_ACTLANES_MASK;
> > +                     active_lanes++;
> > +                     if (active_lanes != ctrl->val)
> > +                             dev_info(core->dev, "RxByteClkHS absent\n");
> > +                     dev_dbg(core->dev, "active lanes = %d\n", ctrl->val);
> > +             } else {
> > +                     ret = -EINVAL;
> > +             }
> > +             break;
> > +     case V4L2_CID_XILINX_MIPICSISS_RESET_COUNTERS:
> > +             xcsi2rxss_reset_event_counters(xcsi2rxss);
> > +             break;
> > +     default:
> > +             ret = -EINVAL;
> > +             break;
> > +     }
> > +
> > +     mutex_unlock(&xcsi2rxss->lock);
> > +
> > +     return ret;
> > +}
> > +
> > +static int xcsi2rxss_start_stream(struct xcsi2rxss_state *state)
> > +{
> > +     struct xcsi2rxss_core *core = &state->core;
> > +     int ret = 0;
> > +
> > +     xcsi2rxss_enable(core);
> > +
> > +     ret = xcsi2rxss_reset(core);
> > +     if (ret < 0) {
> > +             state->streaming = false;
> > +             return ret;
> > +     }
> > +
> > +     xcsi2rxss_intr_enable(core);
> > +     state->streaming = true;
> > +
> > +     return ret;
> > +}
> > +
> > +static void xcsi2rxss_stop_stream(struct xcsi2rxss_state *state)
> > +{
> > +     struct xcsi2rxss_core *core = &state->core;
> > +
> > +     xcsi2rxss_intr_disable(core);
> > +     xcsi2rxss_disable(core);
> > +     state->streaming = false;
> > +}
> > +
> > +/**
> > + * xcsi2rxss_irq_handler - Interrupt handler for CSI-2
> > + * @irq: IRQ number
> > + * @dev_id: Pointer to device state
> > + *
> > + * In the interrupt handler, a list of event counters are updated for
> > + * corresponding interrupts. This is useful to get status / debug.
> > + * If the short packet FIFO not empty or overflow interrupt is received
> > + * capture the short packet and notify of event occurrence
> > + *
> > + * Return: IRQ_HANDLED after handling interrupts
> > + *         IRQ_NONE is no interrupts
> > + */
> > +static irqreturn_t xcsi2rxss_irq_handler(int irq, void *dev_id)
> > +{
> > +     struct xcsi2rxss_state *state = (struct xcsi2rxss_state *)dev_id;
> > +     struct xcsi2rxss_core *core = &state->core;
> > +     u32 status;
> > +
> > +     status = xcsi2rxss_read(core, XCSI_ISR_OFFSET) &
> XCSI_ISR_ALLINTR_MASK;
> > +     dev_dbg_ratelimited(core->dev, "interrupt status = 0x%08x\n", status);
> > +
> > +     if (!status)
> > +             return IRQ_NONE;
> > +
> > +     /* Received a short packet */
> > +     if (status & XCSI_ISR_SPFIFONE) {
> > +             dev_dbg_ratelimited(core->dev, "Short packet = 0x%08x\n",
> > +                                 xcsi2rxss_read(core, XCSI_SPKTR_OFFSET));
> > +     }
> > +
> > +     /* Short packet FIFO overflow */
> > +     if (status & XCSI_ISR_SPFIFOF)
> > +             dev_alert_ratelimited(core->dev, "Short packet FIFO overflowed\n");
> > +
> > +     /*
> > +      * Stream line buffer full
> > +      * This means there is a backpressure from downstream IP
> > +      */
> > +     if (status & XCSI_ISR_SLBF) {
> > +             dev_alert_ratelimited(core->dev, "Stream Line Buffer Full!\n");
> > +             if (core->rst_gpio) {
> > +                     gpiod_set_value(core->rst_gpio, 1);
> > +                     /* minimum 40 dphy_clk_200M cycles */
> > +                     ndelay(250);
> > +                     gpiod_set_value(core->rst_gpio, 0);
> > +             }
> > +             xcsi2rxss_stop_stream(state);
> > +             memset(&state->event, 0, sizeof(state->event));
> > +             state->event.type = V4L2_EVENT_XLNXCSIRX_SLBF;
> > +             v4l2_subdev_notify_event(&state->subdev, &state->event);
> > +     }
> > +
> > +     /* Increment event counters */
> > +     if (status & XCSI_ISR_ALLINTR_MASK) {
> > +             unsigned int i;
> > +
> > +             for (i = 0; i < XCSI_NUM_EVENTS; i++) {
> > +                     if (!(status & core->events[i].mask))
> > +                             continue;
> > +                     core->events[i].counter++;
> > +                     dev_dbg_ratelimited(core->dev, "%s: %d\n",
> > +                                         core->events[i].name,
> > +                                         core->events[i].counter);
> > +             }
> > +
> > +             if (status & XCSI_ISR_VCXFE && core->en_vcx) {
> > +                     u32 vcxstatus;
> > +
> > +                     vcxstatus = xcsi2rxss_read(core, XCSI_VCXR_OFFSET);
> > +                     vcxstatus &= XCSI_VCXR_VCERR;
> > +                     for (i = 0; i < XCSI_VCX_NUM_EVENTS; i++) {
> > +                             if (!(vcxstatus & core->vcx_events[i].mask))
> > +                                     continue;
> > +                             core->vcx_events[i].counter++;
> > +                     }
> > +                     xcsi2rxss_write(core, XCSI_VCXR_OFFSET, vcxstatus);
> > +             }
> > +     }
> > +
> > +     xcsi2rxss_write(core, XCSI_ISR_OFFSET, status);
> > +     return IRQ_HANDLED;
> > +}
> > +
> > +/**
> > + * xcsi2rxss_s_stream - It is used to start/stop the streaming.
> > + * @sd: V4L2 Sub device
> > + * @enable: Flag (True / False)
> > + *
> > + * This function controls the start or stop of streaming for the
> > + * Xilinx MIPI CSI-2 Rx Subsystem.
> > + *
> > + * Return: 0 on success, errors otherwise
> > + */
> > +static int xcsi2rxss_s_stream(struct v4l2_subdev *sd, int enable)
> > +{
> > +     struct xcsi2rxss_state *xcsi2rxss = to_xcsi2rxssstate(sd);
> > +     int ret = 0;
> > +
> > +     mutex_lock(&xcsi2rxss->lock);
> > +
> > +     if (enable) {
> > +             if (!xcsi2rxss->streaming) {
> > +                     /* reset the event counters */
> > +                     xcsi2rxss_reset_event_counters(xcsi2rxss);
> > +                     ret = xcsi2rxss_start_stream(xcsi2rxss);
> > +             }
> > +     } else {
> > +             if (xcsi2rxss->streaming) {
> > +                     struct gpio_desc *rst = xcsi2rxss->core.rst_gpio;
> > +
> > +                     if (rst) {
> > +                             gpiod_set_value_cansleep(rst, 1);
> > +                             usleep_range(1, 2);
> > +                             gpiod_set_value_cansleep(rst, 0);
> > +                     }
> > +                     xcsi2rxss_stop_stream(xcsi2rxss);
> > +             }
> > +     }
> > +
> > +     mutex_unlock(&xcsi2rxss->lock);
> > +     return ret;
> > +}
> > +
> > +static struct v4l2_mbus_framefmt *
> > +__xcsi2rxss_get_pad_format(struct xcsi2rxss_state *xcsi2rxss,
> > +                        struct v4l2_subdev_pad_config *cfg,
> > +                        unsigned int pad, u32 which)
> > +{
> > +     switch (which) {
> > +     case V4L2_SUBDEV_FORMAT_TRY:
> > +             return v4l2_subdev_get_try_format(&xcsi2rxss->subdev, cfg, pad);
> > +     case V4L2_SUBDEV_FORMAT_ACTIVE:
> > +             return &xcsi2rxss->format;
> > +     default:
> > +             return NULL;
> > +     }
> > +}
> > +
> > +/**
> > + * xcsi2rxss_get_format - Get the pad format
> > + * @sd: Pointer to V4L2 Sub device structure
> > + * @cfg: Pointer to sub device pad information structure
> > + * @fmt: Pointer to pad level media bus format
> > + *
> > + * This function is used to get the pad format information.
> > + *
> > + * Return: 0 on success
> > + */
> > +static int xcsi2rxss_get_format(struct v4l2_subdev *sd,
> > +                             struct v4l2_subdev_pad_config *cfg,
> > +                             struct v4l2_subdev_format *fmt)
> > +{
> > +     struct xcsi2rxss_state *xcsi2rxss = to_xcsi2rxssstate(sd);
> > +
> > +     mutex_lock(&xcsi2rxss->lock);
> > +     fmt->format = *__xcsi2rxss_get_pad_format(xcsi2rxss, cfg, fmt->pad,
> > +                                               fmt->which);
> > +     mutex_unlock(&xcsi2rxss->lock);
> > +
> > +     return 0;
> > +}
> > +
> > +/**
> > + * xcsi2rxss_set_format - This is used to set the pad format
> > + * @sd: Pointer to V4L2 Sub device structure
> > + * @cfg: Pointer to sub device pad information structure
> > + * @fmt: Pointer to pad level media bus format
> > + *
> > + * This function is used to set the pad format. Since the pad format is fixed
> > + * in hardware, it can't be modified on run time. So when a format set is
> > + * requested by application, all parameters except the format type is saved
> > + * for the pad and the original pad format is sent back to the application.
> > + *
> > + * Return: 0 on success
> > + */
> > +static int xcsi2rxss_set_format(struct v4l2_subdev *sd,
> > +                             struct v4l2_subdev_pad_config *cfg,
> > +                             struct v4l2_subdev_format *fmt)
> > +{
> > +     struct xcsi2rxss_state *xcsi2rxss = to_xcsi2rxssstate(sd);
> > +     struct xcsi2rxss_core *core = &xcsi2rxss->core;
> > +     struct v4l2_mbus_framefmt *__format;
> > +     u32 code;
> > +
> > +     /* only sink pad format can be updated */
> > +     mutex_lock(&xcsi2rxss->lock);
> > +
> > +     /*
> > +      * Only the format->code parameter matters for CSI as the
> > +      * CSI format cannot be changed at runtime.
> > +      * Ensure that format to set is copied to over to CSI pad format
> > +      */
> > +     __format = __xcsi2rxss_get_pad_format(xcsi2rxss, cfg,
> > +                                           fmt->pad, fmt->which);
> > +
> > +     /* Save the pad format code */
> > +     code = __format->code;
> > +
> > +     /*
> > +      * RAW8 is supported in all datatypes. So if requested media bus format
> > +      * is of RAW8 type, then allow to be set. In case core is configured to
> > +      * other RAW, YUV422 8/10 or RGB888, set appropriate media bus
> format.
> > +      */
> > +     if ((fmt->format.code == MEDIA_BUS_FMT_SBGGR8_1X8 ||
> > +          fmt->format.code == MEDIA_BUS_FMT_SGBRG8_1X8 ||
> > +          fmt->format.code == MEDIA_BUS_FMT_SGRBG8_1X8 ||
> > +          fmt->format.code == MEDIA_BUS_FMT_SRGGB8_1X8) ||
> > +         (core->datatype == XCSI_DT_RAW10 &&
> > +          (fmt->format.code == MEDIA_BUS_FMT_SBGGR10_1X10 ||
> > +           fmt->format.code == MEDIA_BUS_FMT_SGBRG10_1X10 ||
> > +           fmt->format.code == MEDIA_BUS_FMT_SGRBG10_1X10 ||
> > +           fmt->format.code == MEDIA_BUS_FMT_SRGGB10_1X10)) ||
> > +         (core->datatype == XCSI_DT_RAW12 &&
> > +          (fmt->format.code == MEDIA_BUS_FMT_SBGGR12_1X12 ||
> > +           fmt->format.code == MEDIA_BUS_FMT_SGBRG12_1X12 ||
> > +           fmt->format.code == MEDIA_BUS_FMT_SGRBG12_1X12 ||
> > +           fmt->format.code == MEDIA_BUS_FMT_SRGGB12_1X12)) ||
> > +         (core->datatype == XCSI_DT_RAW14 &&
> > +          (fmt->format.code == MEDIA_BUS_FMT_SBGGR14_1X14 ||
> > +           fmt->format.code == MEDIA_BUS_FMT_SGBRG14_1X14 ||
> > +           fmt->format.code == MEDIA_BUS_FMT_SGRBG14_1X14 ||
> > +           fmt->format.code == MEDIA_BUS_FMT_SRGGB14_1X14)) ||
> > +         (core->datatype == XCSI_DT_RAW16 &&
> > +          (fmt->format.code == MEDIA_BUS_FMT_SBGGR16_1X16 ||
> > +           fmt->format.code == MEDIA_BUS_FMT_SGBRG16_1X16 ||
> > +           fmt->format.code == MEDIA_BUS_FMT_SGRBG16_1X16 ||
> > +           fmt->format.code == MEDIA_BUS_FMT_SRGGB16_1X16)) ||
> > +         (core->datatype == XCSI_DT_YUV4228B &&
> > +          fmt->format.code == MEDIA_BUS_FMT_UYVY8_1X16) ||
> > +         (core->datatype == XCSI_DT_YUV42210B &&
> > +          fmt->format.code == MEDIA_BUS_FMT_UYVY10_1X20) ||
> > +         (core->datatype == XCSI_DT_RGB888 &&
> > +          fmt->format.code == MEDIA_BUS_FMT_RBG888_1X24)) {
> > +             /* Copy over the format to be set */
> > +             *__format = fmt->format;
> 
> If the hardware only supports a single media bus code, then you need to
> assign it here. Width and height should come from the user independently of
> that. I presume the format on the source pad should be equal to the format
> on the sink pad; therefore the driver should propagate the format from the
> sink to the source.

Agree. I will add code to propagate sink pad format to source pad.

> 
> You're also overwriting the rest of the fields in the __format struct here
> with what comes from the user space without validating it.
> 

The driver is concerned only with the "width", "height" and "code" members.
The "code" member is getting validated based on IP configuration.

The width and height can't be validated as there is no limit as per MIPI CSI spec AFAIK.
Please let me know otherwise. I can add check for minimum height and width.

The other members like "field", "quantization", "colorspace", "ycbcr_enc" and "xfer_func"
are not used by driver. Hence whatever is set by user application, will be stored in driver
and returned on get_format().

> > +     } else {
> > +             /* Restore the original pad format code */
> > +             fmt->format.code = code;
> > +             __format->code = code;
> > +             __format->width = fmt->format.width;
> > +             __format->height = fmt->format.height;
> > +     }
> > +
> > +     mutex_unlock(&xcsi2rxss->lock);
> > +
> > +     return 0;
> > +}
> > +
> > +/**
> > + * xcsi2rxss_open - Called on v4l2_open()
> > + * @sd: Pointer to V4L2 sub device structure
> > + * @fh: Pointer to V4L2 File handle
> > + *
> > + * This function is called on v4l2_open(). It sets the default format
> > + * for both pads.
> > + *
> > + * Return: 0 on success
> > + */
> > +static int xcsi2rxss_open(struct v4l2_subdev *sd,
> > +                       struct v4l2_subdev_fh *fh)
> > +{
> > +     struct xcsi2rxss_state *xcsi2rxss = to_xcsi2rxssstate(sd);
> > +     struct v4l2_mbus_framefmt *format;
> > +     unsigned int i;
> > +
> > +     for (i = 0; i < XCSI_MEDIA_PADS; i++) {
> > +             format = v4l2_subdev_get_try_format(sd, fh->pad, i);
> > +             *format = xcsi2rxss->format;
> 
> The default try format should reflect the hardware default, not its current
> configuration.
> 

Agreed. I will set this to default format in next version.

> > +     }
> > +
> > +     return 0;
> > +}
> > +
> > +/* -----------------------------------------------------------------------------
> > + * Media Operations
> > + */
> > +
> > +static const struct media_entity_operations xcsi2rxss_media_ops = {
> > +     .link_validate = v4l2_subdev_link_validate
> > +};
> > +
> > +static const struct v4l2_ctrl_ops xcsi2rxss_ctrl_ops = {
> > +     .s_ctrl = xcsi2rxss_s_ctrl
> > +};
> > +
> > +static struct v4l2_ctrl_config xcsi2rxss_ctrls[] = {
> 
> const
> 

We should be setting the max and default value of V4L2_CID_XILINX_MIPICSISS_ACT_LANES control
based on what is configured in IP / comes from device tree. 

This won't be possible if we make this as const. 

> > +     {
> > +             .ops    = &xcsi2rxss_ctrl_ops,
> > +             .id     = V4L2_CID_XILINX_MIPICSISS_ACT_LANES,
> > +             .name   = "Active Lanes",
> > +             .type   = V4L2_CTRL_TYPE_INTEGER,
> > +             .min    = 1,
> > +             .max    = 4,
> > +             .step   = 1,
> > +             .def    = 1,
> > +     }, {
> > +             .ops    = &xcsi2rxss_ctrl_ops,
> > +             .id     = V4L2_CID_XILINX_MIPICSISS_RESET_COUNTERS,
> > +             .name   = "Reset Counters",
> > +             .type   = V4L2_CTRL_TYPE_BUTTON,
> > +             .min    = 0,
> > +             .max    = 1,
> > +             .step   = 1,
> > +             .def    = 0,
> > +             .flags  = V4L2_CTRL_FLAG_WRITE_ONLY,
> > +     }
> > +};
> > +
> > +static const struct v4l2_subdev_core_ops xcsi2rxss_core_ops = {
> > +     .log_status = xcsi2rxss_log_status,
> > +     .subscribe_event = xcsi2rxss_subscribe_event,
> > +     .unsubscribe_event = xcsi2rxss_unsubscribe_event
> > +};
> > +
> > +static struct v4l2_subdev_video_ops xcsi2rxss_video_ops = {
> 
> const; same below.
> 

Agreed. I will make these function pointer registration structures as const.

> > +     .s_stream = xcsi2rxss_s_stream
> > +};
> > +
> > +static struct v4l2_subdev_pad_ops xcsi2rxss_pad_ops = {
> > +     .get_fmt = xcsi2rxss_get_format,
> > +     .set_fmt = xcsi2rxss_set_format,
> 
> Could you also implement the enum_mbus_code op?
> 

Ok. I will add that in the next version.

> > +};
> > +
> > +static struct v4l2_subdev_ops xcsi2rxss_ops = {
> > +     .core = &xcsi2rxss_core_ops,
> > +     .video = &xcsi2rxss_video_ops,
> > +     .pad = &xcsi2rxss_pad_ops
> > +};
> > +
> > +static const struct v4l2_subdev_internal_ops xcsi2rxss_internal_ops = {
> > +     .open = xcsi2rxss_open,
> > +};
> > +
> > +static void xcsi2rxss_set_default_format(struct xcsi2rxss_state *state)
> > +{
> > +     struct xcsi2rxss_core *core = &state->core;
> > +
> > +     memset(&state->format, 0, sizeof(state->format));
> > +
> > +     switch (core->datatype) {
> > +     case XCSI_DT_YUV4228B:
> > +             state->format.code = MEDIA_BUS_FMT_UYVY8_1X16;
> > +             break;
> > +     case XCSI_DT_RGB888:
> > +             state->format.code = MEDIA_BUS_FMT_RBG888_1X24;
> > +             break;
> > +     case XCSI_DT_YUV42210B:
> > +             state->format.code = MEDIA_BUS_FMT_UYVY10_1X20;
> > +             break;
> > +     case XCSI_DT_RAW10:
> > +             state->format.code = MEDIA_BUS_FMT_SRGGB10_1X10;
> > +             break;
> > +     case XCSI_DT_RAW12:
> > +             state->format.code = MEDIA_BUS_FMT_SRGGB12_1X12;
> > +             break;
> > +     case XCSI_DT_RAW14:
> > +             state->format.code = MEDIA_BUS_FMT_SRGGB14_1X14;
> > +             break;
> > +     case XCSI_DT_RAW16:
> > +             state->format.code = MEDIA_BUS_FMT_SRGGB16_1X16;
> > +             break;
> > +     case XCSI_DT_RAW8:
> > +     case XCSI_DT_RGB444:
> > +     case XCSI_DT_RGB555:
> > +     case XCSI_DT_RGB565:
> > +     case XCSI_DT_RGB666:
> > +             state->format.code = MEDIA_BUS_FMT_SRGGB8_1X8;
> > +             break;
> > +     }
> > +
> > +     state->format.field = V4L2_FIELD_NONE;
> > +     state->format.colorspace = V4L2_COLORSPACE_SRGB;
> > +     state->format.width = XCSI_DEFAULT_WIDTH;
> > +     state->format.height = XCSI_DEFAULT_HEIGHT;
> > +
> > +     dev_dbg(core->dev, "default mediabus format = 0x%x",
> > +             state->format.code);
> > +}
> > +
> > +static int xcsi2rxss_parse_of(struct xcsi2rxss_state *xcsi2rxss)
> > +{
> > +     struct xcsi2rxss_core *core = &xcsi2rxss->core;
> > +     struct device_node *node = xcsi2rxss->core.dev->of_node;
> > +     struct device_node *ports = NULL;
> > +     struct device_node *port = NULL;
> > +     unsigned int nports, irq;
> > +     bool en_csi_v20, vfb;
> > +     int ret;
> > +
> > +     en_csi_v20 = of_property_read_bool(node, "xlnx,en-csi-v2-0");
> > +     if (en_csi_v20)
> > +             core->en_vcx = of_property_read_bool(node, "xlnx,en-vcx");
> > +
> > +     core->enable_active_lanes =
> > +             of_property_read_bool(node, "xlnx,en-active-lanes");
> > +
> > +     ret = of_property_read_u32(node, "xlnx,csi-pxl-format",
> > +                                &core->datatype);
> > +     if (ret < 0) {
> > +             dev_err(core->dev, "missing xlnx,csi-pxl-format property\n");
> > +             return ret;
> > +     }
> > +
> > +     switch (core->datatype) {
> > +     case XCSI_DT_YUV4228B:
> > +     case XCSI_DT_RGB444:
> > +     case XCSI_DT_RGB555:
> > +     case XCSI_DT_RGB565:
> > +     case XCSI_DT_RGB666:
> > +     case XCSI_DT_RGB888:
> > +     case XCSI_DT_RAW6:
> > +     case XCSI_DT_RAW7:
> > +     case XCSI_DT_RAW8:
> > +     case XCSI_DT_RAW10:
> > +     case XCSI_DT_RAW12:
> > +     case XCSI_DT_RAW14:
> > +             break;
> > +     case XCSI_DT_YUV42210B:
> > +     case XCSI_DT_RAW16:
> > +     case XCSI_DT_RAW20:
> > +             if (!en_csi_v20) {
> > +                     ret = -EINVAL;
> > +                     dev_dbg(core->dev, "enable csi v2 for this pixel format");
> > +             }
> > +             break;
> > +     default:
> > +             ret = -EINVAL;
> > +     }
> > +     if (ret < 0) {
> > +             dev_err(core->dev, "invalid csi-pxl-format property!\n");
> > +             return ret;
> > +     }
> > +
> > +     vfb = of_property_read_bool(node, "xlnx,vfb");
> > +     if (!vfb) {
> > +             dev_err(core->dev, "failed as VFB is disabled!\n");
> > +             return -EINVAL;
> > +     }
> > +
> > +     ports = of_get_child_by_name(node, "ports");
> > +     if (!ports)
> > +             ports = node;
> > +
> > +     nports = 0;
> > +     for_each_child_of_node(ports, port) {
> > +             struct device_node *endpoint;
> > +             struct v4l2_fwnode_endpoint v4lendpoint;
> > +             int ret;
> > +
> > +             if (!port->name || of_node_cmp(port->name, "port"))
> > +                     continue;
> > +
> > +             endpoint = of_get_next_child(port, NULL);
> > +             if (!endpoint) {
> > +                     dev_err(core->dev, "No port at\n");
> > +                     return -EINVAL;
> > +             }
> > +
> > +             /*
> > +              * since first port is sink port and it contains
> > +              * all info about data-lanes and cfa-pattern,
> > +              * don't parse second port but only check if exists
> > +              */
> > +             if (nports == XVIP_PAD_SOURCE) {
> > +                     dev_dbg(core->dev, "no need to parse source port");
> > +                     nports++;
> > +                     of_node_put(endpoint);
> > +                     continue;
> > +             }
> > +
> > +             ret = v4l2_fwnode_endpoint_parse(of_fwnode_handle(endpoint),
> > +                                              &v4lendpoint);
> > +             of_node_put(endpoint);
> > +             if (ret)
> > +                     return ret;
> > +
> > +             dev_dbg(core->dev, "%s : port %d bus type = %d\n",
> > +                     __func__, nports, v4lendpoint.bus_type);
> > +
> > +             if (v4lendpoint.bus_type == V4L2_MBUS_CSI2_DPHY) {
> > +                     dev_dbg(core->dev, "%s : base.port = %d base.id = %d\n",
> > +                             __func__, v4lendpoint.base.port,
> > +                             v4lendpoint.base.id);
> > +
> > +                     dev_dbg(core->dev, "%s : mipi number lanes = %d\n",
> > +                             __func__,
> > +                             v4lendpoint.bus.mipi_csi2.num_data_lanes);
> > +
> > +                     core->max_num_lanes =
> > +                             v4lendpoint.bus.mipi_csi2.num_data_lanes;
> > +             }
> > +
> > +             /* Count the number of ports. */
> > +             nports++;
> > +     }
> > +
> > +     if (nports != XCSI_MEDIA_PADS) {
> > +             dev_err(core->dev, "invalid number of ports %u\n", nports);
> > +             return -EINVAL;
> > +     }
> > +
> > +     /* Register interrupt handler */
> > +     irq = irq_of_parse_and_map(node, 0);
> > +     ret = devm_request_irq(core->dev, irq, xcsi2rxss_irq_handler,
> > +                            IRQF_SHARED, "xilinx-csi2rxss", xcsi2rxss);
> > +     if (ret) {
> > +             dev_err(core->dev, "Err = %d Interrupt handler reg failed!\n",
> > +                     ret);
> > +             return ret;
> > +     }
> > +
> > +     xcsi2rxss_log_ipconfig(xcsi2rxss);
> > +
> > +     return 0;
> > +}
> > +
> > +static int xcsi2rxss_probe(struct platform_device *pdev)
> > +{
> > +     struct v4l2_subdev *subdev;
> > +     struct xcsi2rxss_state *xcsi2rxss;
> > +     struct xcsi2rxss_core *core;
> > +     struct resource *res;
> > +     int ret, num_ctrls, i;
> > +
> > +     xcsi2rxss = devm_kzalloc(&pdev->dev, sizeof(*xcsi2rxss), GFP_KERNEL);
> > +     if (!xcsi2rxss)
> > +             return -ENOMEM;
> > +
> > +     core = &xcsi2rxss->core;
> > +     core->dev = &pdev->dev;
> > +
> > +     core->clks = devm_kmemdup(core->dev, xcsi2rxss_clks,
> > +                               sizeof(xcsi2rxss_clks), GFP_KERNEL);
> > +     if (!core->clks)
> > +             return -ENOMEM;
> > +
> > +     /* Reset GPIO */
> > +     core->rst_gpio = devm_gpiod_get_optional(core->dev, "reset",
> > +                                              GPIOD_OUT_HIGH);
> > +     if (IS_ERR(core->rst_gpio)) {
> > +             if (PTR_ERR(core->rst_gpio) != -EPROBE_DEFER)
> > +                     dev_err(core->dev, "Video Reset GPIO not setup in DT");
> > +             return PTR_ERR(core->rst_gpio);
> > +     }
> > +
> > +     mutex_init(&xcsi2rxss->lock);
> > +
> > +     ret = xcsi2rxss_parse_of(xcsi2rxss);
> > +     if (ret < 0)
> > +             return ret;
> > +
> > +     res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > +     core->iomem = devm_ioremap_resource(core->dev, res);
> > +     if (IS_ERR(core->iomem))
> > +             return PTR_ERR(core->iomem);
> > +
> > +     core->num_clks = ARRAY_SIZE(xcsi2rxss_clks);
> > +
> > +     ret = clk_bulk_get(core->dev, core->num_clks, core->clks);
> > +     if (ret)
> > +             return ret;
> > +
> > +     ret = clk_bulk_prepare_enable(core->num_clks, core->clks);
> > +     if (ret)
> > +             goto err_clk_put;
> > +
> > +     if (xcsi2rxss->core.rst_gpio) {
> > +             gpiod_set_value_cansleep(xcsi2rxss->core.rst_gpio, 1);
> > +             /* minimum of 40 dphy_clk_200M cycles */
> > +             usleep_range(1, 2);
> > +             gpiod_set_value_cansleep(xcsi2rxss->core.rst_gpio, 0);
> > +     }
> > +
> > +     xcsi2rxss_reset(core);
> > +
> > +     core->events = (struct xcsi2rxss_event *)&xcsi2rxss_events;
> > +
> > +     if (core->en_vcx) {
> > +             u32 alloc_size;
> > +
> > +             alloc_size = sizeof(struct xcsi2rxss_event) *
> > +                          XCSI_VCX_NUM_EVENTS;
> > +             core->vcx_events = devm_kzalloc(&pdev->dev, alloc_size,
> > +                                             GFP_KERNEL);
> > +             if (!core->vcx_events) {
> > +                     mutex_destroy(&xcsi2rxss->lock);
> > +                     ret = -ENOMEM;
> > +                     goto err_clk_disable;
> > +             }
> > +
> > +             for (i = 0; i < XCSI_VCX_NUM_EVENTS; i++)
> > +                     core->vcx_events[i].mask = 1 << i;
> > +     }
> > +
> > +     /* Initialize V4L2 subdevice and media entity */
> > +     xcsi2rxss->pads[XVIP_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
> > +     xcsi2rxss->pads[XVIP_PAD_SOURCE].flags = MEDIA_PAD_FL_SOURCE;
> > +
> > +     /* Initialize the default format */
> > +     xcsi2rxss_set_default_format(xcsi2rxss);
> > +
> > +     /* Initialize V4L2 subdevice and media entity */
> > +     subdev = &xcsi2rxss->subdev;
> > +     v4l2_subdev_init(subdev, &xcsi2rxss_ops);
> > +     subdev->dev = &pdev->dev;
> > +     subdev->internal_ops = &xcsi2rxss_internal_ops;
> > +     strlcpy(subdev->name, dev_name(&pdev->dev), sizeof(subdev->name));
> > +     subdev->flags |= V4L2_SUBDEV_FL_HAS_EVENTS |
> V4L2_SUBDEV_FL_HAS_DEVNODE;
> > +     subdev->entity.ops = &xcsi2rxss_media_ops;
> > +     v4l2_set_subdevdata(subdev, xcsi2rxss);
> > +
> > +     ret = media_entity_pads_init(&subdev->entity, XCSI_MEDIA_PADS,
> > +                                  xcsi2rxss->pads);
> > +     if (ret < 0)
> > +             goto error;
> > +
> > +     /*
> > +      * In case the Enable Active Lanes config parameter is not set,
> > +      * dynamic lane reconfiguration is not allowed.
> > +      * So V4L2_CID_XILINX_MIPICSISS_ACT_LANES ctrl will not be registered.
> > +      * Accordingly allocate the number of controls
> > +      */
> > +     num_ctrls = ARRAY_SIZE(xcsi2rxss_ctrls);
> > +
> > +     if (!core->enable_active_lanes)
> > +             num_ctrls--;
> > +
> > +     v4l2_ctrl_handler_init(&xcsi2rxss->ctrl_handler, num_ctrls);
> > +     for (i = 0; i < ARRAY_SIZE(xcsi2rxss_ctrls); i++) {
> > +             struct v4l2_ctrl *ctrl;
> > +
> > +             if (xcsi2rxss_ctrls[i].id ==
> > +                     V4L2_CID_XILINX_MIPICSISS_ACT_LANES) {
> > +                     if (!core->enable_active_lanes) {
> > +                             /* Don't register control */
> > +                             dev_dbg(core->dev,
> > +                                     "Skip active lane control\n");
> > +                             continue;
> > +                     }
> > +                     xcsi2rxss_ctrls[i].max = core->max_num_lanes;
> > +                     xcsi2rxss_ctrls[i].def = core->max_num_lanes;
> > +             }
> > +
> > +             dev_dbg(core->dev, "%d ctrl = 0x%x\n", i,
> > +                     xcsi2rxss_ctrls[i].id);
> > +             ctrl = v4l2_ctrl_new_custom(&xcsi2rxss->ctrl_handler,
> > +                                         &xcsi2rxss_ctrls[i], NULL);
> > +             if (!ctrl) {
> > +                     dev_err(core->dev, "Failed for %s ctrl\n",
> > +                             xcsi2rxss_ctrls[i].name);
> > +                     goto error;
> > +             }
> > +     }
> > +
> > +     if (xcsi2rxss->ctrl_handler.error) {
> > +             dev_err(core->dev, "failed to add controls\n");
> > +             ret = xcsi2rxss->ctrl_handler.error;
> > +             goto error;
> > +     }
> > +
> > +     subdev->ctrl_handler = &xcsi2rxss->ctrl_handler;
> > +     ret = v4l2_ctrl_handler_setup(&xcsi2rxss->ctrl_handler);
> > +     if (ret < 0) {
> > +             dev_err(core->dev, "failed to set controls\n");
> > +             goto error;
> > +     }
> > +
> > +     platform_set_drvdata(pdev, xcsi2rxss);
> > +
> > +     ret = v4l2_async_register_subdev(subdev);
> > +     if (ret < 0) {
> > +             dev_err(core->dev, "failed to register subdev\n");
> > +             goto error;
> > +     }
> > +
> > +     dev_info(core->dev, "Xilinx CSI2 Rx Subsystem device found!\n");
> > +
> > +     return 0;
> > +error:
> > +     v4l2_ctrl_handler_free(&xcsi2rxss->ctrl_handler);
> > +     media_entity_cleanup(&subdev->entity);
> > +     mutex_destroy(&xcsi2rxss->lock);
> > +err_clk_disable:
> > +     clk_bulk_disable_unprepare(core->num_clks, core->clks);
> > +err_clk_put:
> > +     clk_bulk_put(core->num_clks, core->clks);
> > +     return ret;
> > +}
> > +
> > +static int xcsi2rxss_remove(struct platform_device *pdev)
> > +{
> > +     struct xcsi2rxss_state *xcsi2rxss = platform_get_drvdata(pdev);
> > +     struct xcsi2rxss_core *core = &xcsi2rxss->core;
> > +     struct v4l2_subdev *subdev = &xcsi2rxss->subdev;
> > +
> > +     v4l2_async_unregister_subdev(subdev);
> > +     v4l2_ctrl_handler_free(&xcsi2rxss->ctrl_handler);
> > +     media_entity_cleanup(&subdev->entity);
> > +     mutex_destroy(&xcsi2rxss->lock);
> > +     clk_bulk_disable_unprepare(core->num_clks, core->clks);
> > +     clk_bulk_put(core->num_clks, core->clks);
> > +
> > +     return 0;
> > +}
> > +
> > +static const struct of_device_id xcsi2rxss_of_id_table[] = {
> > +     { .compatible = "xlnx,mipi-csi2-rx-subsystem-4.0",},
> > +     { }
> > +};
> > +MODULE_DEVICE_TABLE(of, xcsi2rxss_of_id_table);
> > +
> > +static struct platform_driver xcsi2rxss_driver = {
> > +     .driver = {
> > +             .name           = "xilinx-csi2rxss",
> > +             .of_match_table = xcsi2rxss_of_id_table,
> > +     },
> > +     .probe                  = xcsi2rxss_probe,
> > +     .remove                 = xcsi2rxss_remove,
> > +};
> > +
> > +module_platform_driver(xcsi2rxss_driver);
> > +
> > +MODULE_AUTHOR("Vishal Sagar <vsagar@xilinx.com>");
> > +MODULE_DESCRIPTION("Xilinx MIPI CSI2 Rx Subsystem Driver");
> > +MODULE_LICENSE("GPL v2");
> > diff --git a/include/uapi/linux/xilinx-v4l2-controls.h
> b/include/uapi/linux/xilinx-v4l2-controls.h
> > index b6441fe..f023623 100644
> > --- a/include/uapi/linux/xilinx-v4l2-controls.h
> > +++ b/include/uapi/linux/xilinx-v4l2-controls.h
> > @@ -71,4 +71,16 @@
> >  /* Noise level */
> >  #define V4L2_CID_XILINX_TPG_NOISE_GAIN               (V4L2_CID_XILINX_TPG
> + 17)
> >
> > +/*
> > + * Xilinx MIPI CSI2 Rx Subsystem
> > + */
> > +
> > +/* Base ID */
> > +#define V4L2_CID_XILINX_MIPICSISS            (V4L2_CID_USER_BASE + 0xc080)
> > +
> > +/* Active Lanes */
> > +#define V4L2_CID_XILINX_MIPICSISS_ACT_LANES
> (V4L2_CID_XILINX_MIPICSISS + 1)
> > +/* Reset all event counters */
> > +#define V4L2_CID_XILINX_MIPICSISS_RESET_COUNTERS
> (V4L2_CID_XILINX_MIPICSISS + 2)
> > +
> >  #endif /* __UAPI_XILINX_V4L2_CONTROLS_H__ */
> > diff --git a/include/uapi/linux/xilinx-v4l2-events.h b/include/uapi/linux/xilinx-
> v4l2-events.h
> > new file mode 100644
> > index 0000000..2aa357c
> > --- /dev/null
> > +++ b/include/uapi/linux/xilinx-v4l2-events.h
> > @@ -0,0 +1,21 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * Xilinx V4L2 Events
> > + *
> > + * Copyright (C) 2019 Xilinx, Inc.
> > + *
> > + * Contacts: Vishal Sagar <vishal.sagar@xilinx.com>
> > + *
> > + */
> > +
> > +#ifndef __UAPI_XILINX_V4L2_EVENTS_H__
> > +#define __UAPI_XILINX_V4L2_EVENTS_H__
> > +
> > +#include <linux/videodev2.h>
> > +
> > +/* Xilinx CSI2 Receiver events */
> > +#define V4L2_EVENT_XLNXCSIRX_CLASS   (V4L2_EVENT_PRIVATE_START |
> 0x100)
> > +/* Stream Line Buffer full */
> > +#define V4L2_EVENT_XLNXCSIRX_SLBF    (V4L2_EVENT_XLNXCSIRX_CLASS |
> 0x1)
> > +
> > +#endif /* __UAPI_XILINX_V4L2_EVENTS_H__ */
> 
> --
> Regards,
> 
> Sakari Ailus
> sakari.ailus@linux.intel.com

Regards
Vishal Sagar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
