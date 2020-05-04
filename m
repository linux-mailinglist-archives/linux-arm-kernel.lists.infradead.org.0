Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F79C1C38BA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 13:59:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=xVxUG03A1f/NrduCZNN/N55xw/pw7e371u78M+DTQ5Q=; b=Zbh7K/VqX3chOu
	Zn31vi8BXAla8Y3vmz7kKWxQLB9hpKDMIDUzOuv+xNf0yRhXdMPlJin7JNAElyHqJoFLs56zq+/Dh
	6vLApP24p3iBar/t9VZ8WqTBpxfr4paPmIF/gSwpe76R5VU5yfrbZZyXUzoBwzhvUxxD1MWj/gf7y
	BMFzRLJcpE9FuCoraSXLGmj+ZoLa3RfyjjYr9dzvDGHV457x1mB7SrHpvOG+8iQ7hrbODNVT3VxVM
	YPg2OQeuIeNkYWIMXD/aHlf91KdOtiE6+KjuZhKW0IYTcuuaC2S4qGhV0ImkCnMtlwW1bPmvfm/9N
	zhd1z+shCPKAWugsEKcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVZkM-00045l-1e; Mon, 04 May 2020 11:58:54 +0000
Received: from mail-eopbgr760047.outbound.protection.outlook.com
 ([40.107.76.47] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVZkE-00044F-Ph
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 11:58:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M8gjV/5mGL36riMudRcEO6h+9EfVFWEcinLakyjRLzz34bk4ExaEpxNMA2i0NWC7tuGZfQ6ttxJcggBENRP4YPlamalg8vcpHpPIRTITRCnPKZUs/j33au8YcSV5wSxLIFxFIW19XdutWjQt68I7+C6StC6OPbt6sKwcnIRar3HTAqgHA9OoDyQSbiX9ak0TkR2/2ETEc4pWTg2S8OzPu7QPt1EBYHr+ngZGBGH3fE9VvGIXwmbDNRYa0nHxrZw957vhgWP0M9AjRlLFPaNZyo0UD9xana+N4MwV6scL8FZoP/7tWTjah9zNCaL6lCGG+M/9iwqDHZf031/z4qwPHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DZE9REMMtVRGQopnD/5bQrknlr1lc6GGeMuLtw+hXRs=;
 b=bsM+Xtjo0s7X4pGQ9j4vPQHacHROg3RHVjfrHpSwYQjYZ7qyfiCJx6c8Kge4TjgIS5eDjd/8/ihf3/rdixFpRnS9KqusNiIZrMvWBR+sCj1+KJmqfkYZ7KyA3dwEtf3l6cDV4ruU9qMFbfMC9QPdhf9Nogwd48hB/t282EIC/XXiMk93wdJ6ugYEPgMisFn8JTP1j4Spk6lnGmMaLnoevaTS1Ushr8GMz0wbgqJwZKUyZtwYc4Fci6URLM7aFP7h/1iZ2Eg1Fs+zk4XOfXNJ0BuCzq0VKRoQRtdvklynFGFFr2M9jM6K+RoKbKgbKNV6KuSpvG3VLkTkAlVFc8WRdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DZE9REMMtVRGQopnD/5bQrknlr1lc6GGeMuLtw+hXRs=;
 b=hw1eKTx5EN+IdOZ6QAxNPO0ABWPFuE7t0AzZark3JacDZ/IFjgqOJ34i4hR7J4uagek/Rxz9Vampl0Z6DUq4Oucr6XZ/u0iJqn8egKSm0kKxOO2e2k2UoZhS58HhVqCY4xsOXjWbp+2HffPbqhnY8RSLzIJzt0lZCWyl7R9fNZc=
Received: from DM6PR02MB5386.namprd02.prod.outlook.com (2603:10b6:5:75::25) by
 DM6PR02MB4154.namprd02.prod.outlook.com (2603:10b6:5:a3::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.21; Mon, 4 May 2020 11:58:42 +0000
Received: from DM6PR02MB5386.namprd02.prod.outlook.com
 ([fe80::2cd7:4680:9cd4:f51b]) by DM6PR02MB5386.namprd02.prod.outlook.com
 ([fe80::2cd7:4680:9cd4:f51b%7]) with mapi id 15.20.2958.027; Mon, 4 May 2020
 11:58:42 +0000
From: Nava kishore Manne <navam@xilinx.com>
To: Moritz Fischer <mdf@kernel.org>
Subject: RE: [PATCH 2/2] fpga: zynq: Add AFI config driver
Thread-Topic: [PATCH 2/2] fpga: zynq: Add AFI config driver
Thread-Index: AQHWExAhzZUocH0/3EuatlmWIllh3KiGGIAAgBHUQYCAAAORYA==
Date: Mon, 4 May 2020 11:58:41 +0000
Message-ID: <DM6PR02MB5386B2BC995622312F8D241DC2A60@DM6PR02MB5386.namprd02.prod.outlook.com>
References: <1586946290-7280-1-git-send-email-nava.manne@xilinx.com>
 <1586946290-7280-2-git-send-email-nava.manne@xilinx.com>
 <20200423032854.GB2430@epycbox.lan> 
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=xilinx.com;
x-originating-ip: [149.199.50.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: df0e3366-e182-48f0-2dbb-08d7f0227d92
x-ms-traffictypediagnostic: DM6PR02MB4154:|DM6PR02MB4154:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR02MB41546EB8540383008F1270BDC2A60@DM6PR02MB4154.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:335;
x-forefront-prvs: 03932714EB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: z96ZMmwqXck16HUVBf6tgV+SUnjTFKf2So9bUW6dlpwllNtaqlIjIsPqYwfYjnywe4N85B2o+SB1ywi6MBRh110W4rXLUPO8LliKWcgVJmMd+IRYxrFOWhev58a0LBUzQGzndBCCu/zO47EFSngGRy7OM+DqjF5kXAD8vfhZlL6kv3CSheN9DwIYWuaUgZD1LKi+hcA444IOAmHNU7dA5vbu+nYfJf5slgJN+5A7KKnH590+GVQgIKl6HMAxrRjK8KorQ5i7sbkzLNuFSR0SDPp2tyI+rQ4OE9uR/v3vFz0wyu1C+LAgixdX/sTRwIvo7ocNzqP6m9aldl3r5cUJJ7wnKAP9isuhrvupQWVt/LLtiDVRLhv69EIPd3bnOJT80TjKBzyNukLkMLMJJLgWg1xnRBAumCVx5WjgOBDRkR7NDmHEMZaB93bRjvXWbN32
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR02MB5386.namprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(346002)(376002)(39860400002)(366004)(396003)(5660300002)(316002)(8936002)(64756008)(66476007)(66446008)(66556008)(54906003)(2906002)(8676002)(76116006)(66946007)(53546011)(6506007)(9686003)(186003)(26005)(7696005)(71200400001)(86362001)(52536014)(478600001)(6916009)(33656002)(55016002)(4326008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 3gMknyFxnVMkhLvzLFzLe/IggQaKQwACrdyxb7IiUboIaMU12HB6oHPsgsoyL9emY3mG0/Cieow0Ir1/Rh4WjMgn/FjSKw5zlL0H3B5JqeD6ngLfgiOU0Efi3U9BEZzp8/ZSTh6KRGuMWCZX61af18R5KsR8tYJ2NfS7vsx8/eSchqvpWR4BbANLv+dbL/f2J2zQQhib6yACL0dGo55F3y2agqY9gqCbQm7Q2HS9lbH1to7ASRgzVqVzSTv+d602Ir97dIzoGR7nqKDOfmpxe3gUI2r25WhbUDWGU+vqfpjrPL7drjNnFjtPZQZjbJbbDZ6RaWMgt1Uvrcq8xDZJ0Yt6J3jUuuH/lhZqBDaTv5dP1CRwAbVccwSztjT9v/2EYROXxhcM6kUmW8z4e+bEnSr95a2ao2qFzkoDSCBL95mrfMxGipbY7yF6Mead1mB1dPPpz+C/hSHufXpNZQ9yJHUN3Qi+8zW1fs3SjzLkNH2dxs37UShGjno+y0bJa6KcMy+h16jwuaA4703JbJ5qOzQJQy5gWDhdQSJ8AwhtzjZKc7InYwql9Qm4i96eB+jj7s6WtbLBlwZ0Mw0FzvV8CkgGs2UPlhBr9yumAP7dIDvzy7y16a18GyEnFLpqOrScRnseqDhak4gITwLYYJWqMw6Z3NQMo8o6xLfP+2e9n55o0ek2rHykuzG8vUT1pFuO/5+AqlHmrN3RSL0uJuNmNybHCBRc1oHLzBFV0TTmmWcH6Sj5Crd9e2+ilE25TSDe5gG5+7hcKMpXbufFTpuw975JUr2ynlPZLbN/jpowmaY=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df0e3366-e182-48f0-2dbb-08d7f0227d92
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2020 11:58:41.8353 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: r1YisssLTe8RhveCqQqjQcAAa68pj5Qtka1zJyisfpTHHaAczd4cC94o2tQOrf1+QZeZTymSKijjXPZJG4D7KQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4154
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_045846_837361_9EF6D9B1 
X-CRM114-Status: GOOD (  29.93  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.47 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.76.47 listed in wl.mailspike.net]
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
Cc: "linux-fpga@vger.kernel.org" <linux-fpga@vger.kernel.org>,
 Michal Simek <michals@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "chinnikishore369@gmail.com" <chinnikishore369@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Corrected typo

> -----Original Message-----
> From: Nava kishore Manne
> Sent: Monday, May 4, 2020 5:25 PM
> To: 'Moritz Fischer' <mdf@kernel.org>
> Cc: Michal Simek <michals@xilinx.com>; linux-fpga@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org;
> chinnikishore369@gmail.com
> Subject: RE: [PATCH 2/2] fpga: zynq: Add AFI config driver
> 
> Hi Moritz,
> 
> Thanks for proving the comments.
> Please find my response inline.
> 
> > -----Original Message-----
> > From: Moritz Fischer [mailto:mdf@kernel.org]
> > Sent: Thursday, April 23, 2020 8:59 AM
> > To: Nava kishore Manne <navam@xilinx.com>
> > Cc: mdf@kernel.org; Michal Simek <michals@xilinx.com>; linux-
> > fpga@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> > kernel@vger.kernel.org; chinnikishore369@gmail.com
> > Subject: Re: [PATCH 2/2] fpga: zynq: Add AFI config driver
> >
> > Hi Nava,
> >
> > On Wed, Apr 15, 2020 at 03:54:50PM +0530, Nava kishore Manne wrote:
> > > This patch Adds AFI config driver. This is useful for the PS to PL
> > > configuration for the fpga manager On zynq platform.
> > >
> > > Signed-off-by: Nava kishore Manne <nava.manne@xilinx.com>
> > > ---
> > >  drivers/fpga/Kconfig    |  8 +++++
> > >  drivers/fpga/Makefile   |  1 +
> > >  drivers/fpga/zynq-afi.c | 81
> > > +++++++++++++++++++++++++++++++++++++++++++++++++
> > >  3 files changed, 90 insertions(+)
> > >  create mode 100644 drivers/fpga/zynq-afi.c
> > >
> > > diff --git a/drivers/fpga/Kconfig b/drivers/fpga/Kconfig index
> > > 474f304e..60982a0 100644
> > > --- a/drivers/fpga/Kconfig
> > > +++ b/drivers/fpga/Kconfig
> > > @@ -214,4 +214,12 @@ config FPGA_MGR_ZYNQMP_FPGA
> > >  	  to configure the programmable logic(PL) through PS
> > >  	  on ZynqMP SoC.
> > >
> > > +config FPGA_MGR_ZYNQ_AFI_FPGA
> > > +	bool "Xilinx AFI FPGA"
> > > +	depends on FPGA_MGR_ZYNQ_FPGA
> > Curious. How does this dependency play in here?
> > > +	help
> > > +	  Zynq AFI driver support for writing to the AFI registers
> > > +	  for configuring the PS_PL interface. For some of the bitstream
> > > +	  or designs to work the PS to PL interfaces need to be configured
> > > +	  like the data bus-width etc.
> > >  endif # FPGA
> > > diff --git a/drivers/fpga/Makefile b/drivers/fpga/Makefile index
> > > 312b937..d115e29 100644
> > > --- a/drivers/fpga/Makefile
> > > +++ b/drivers/fpga/Makefile
> > > @@ -26,6 +26,7 @@ obj-$(CONFIG_FPGA_BRIDGE)		+= fpga-
> > bridge.o
> > >  obj-$(CONFIG_SOCFPGA_FPGA_BRIDGE)	+= altera-hps2fpga.o altera-
> > fpga2sdram.o
> > >  obj-$(CONFIG_ALTERA_FREEZE_BRIDGE)	+= altera-freeze-bridge.o
> > >  obj-$(CONFIG_XILINX_PR_DECOUPLER)	+= xilinx-pr-decoupler.o
> > > +obj-$(CONFIG_FPGA_MGR_ZYNQ_AFI_FPGA)	+= zynq-afi.o
> > >
> > >  # High Level Interfaces
> > >  obj-$(CONFIG_FPGA_REGION)		+= fpga-region.o
> > > diff --git a/drivers/fpga/zynq-afi.c b/drivers/fpga/zynq-afi.c new
> > > file mode 100644 index 0000000..7ce0d08
> > > --- /dev/null
> > > +++ b/drivers/fpga/zynq-afi.c
> > > @@ -0,0 +1,81 @@
> > > +// SPDX-License-Identifier: GPL-2.0
> > > +/*
> > > + * Xilinx FPGA AFI driver.
> > > + * Copyright (c) 2018 Xilinx Inc.
> > > + */
> > > +
> > > +#include <linux/err.h>
> > > +#include <linux/io.h>
> > > +#include <linux/module.h>
> > > +#include <linux/of.h>
> > > +#include <linux/platform_device.h>
> > > +
> > > +/* Registers and special values for doing register-based operations */
> > > +#define AFI_RDCHAN_CTRL_OFFSET	0x00
> > > +#define AFI_WRCHAN_CTRL_OFFSET	0x14
> > > +
> > > +#define AFI_BUSWIDTH_MASK	0x01
> > > +
> > > +/**
> > > + * struct afi_fpga - AFI register description
> > > + * @membase:	pointer to register struct
> > > + * @afi_width:	AFI bus width to be written
> > > + */
> > > +struct zynq_afi_fpga {
> > > +	void __iomem	*membase;
> > > +	u32		afi_width;
> > > +};
> > > +
> > > +static int zynq_afi_fpga_probe(struct platform_device *pdev) {
> > > +	struct zynq_afi_fpga *afi_fpga;
> > > +	struct resource *res;
> > > +	u32 reg_val;
> > > +	u32 val;
> > > +
> > > +	afi_fpga = devm_kzalloc(&pdev->dev, sizeof(*afi_fpga), GFP_KERNEL);
> > > +	if (!afi_fpga)
> > > +		return -ENOMEM;
> > > +
> > > +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > > +	afi_fpga->membase = devm_ioremap_resource(&pdev->dev, res);
> > > +	if (IS_ERR(afi_fpga->membase))
> > > +		return PTR_ERR(afi_fpga->membase);
> > > +
> > > +	val = device_property_read_u32(&pdev->dev, "xlnx,afi-width",
> > > +				       &afi_fpga->afi_width);
> > > +	if (val) {
> > > +		dev_err(&pdev->dev, "Fail to get the afi bus width\n");
> > > +		return -EINVAL;
> > > +	}
> > > +
> > > +	reg_val = readl(afi_fpga->membase + AFI_RDCHAN_CTRL_OFFSET);
> > > +	reg_val &= ~AFI_BUSWIDTH_MASK;
> > > +	writel(reg_val | afi_fpga->afi_width,
> > > +	       afi_fpga->membase + AFI_RDCHAN_CTRL_OFFSET);
> > > +	reg_val = readl(afi_fpga->membase + AFI_WRCHAN_CTRL_OFFSET);
> > > +	reg_val &= ~AFI_BUSWIDTH_MASK;
> > > +	writel(reg_val | afi_fpga->afi_width,
> > > +	       afi_fpga->membase + AFI_WRCHAN_CTRL_OFFSET);
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static const struct of_device_id zynq_afi_fpga_ids[] = {
> > > +	{ .compatible = "xlnx,zynq-afi-fpga" },
> > > +	{ },
> > > +};
> > > +MODULE_DEVICE_TABLE(of, zynq_afi_fpga_ids);
> > > +
> > > +static struct platform_driver zynq_afi_fpga_driver = {
> > > +	.driver = {
> > > +		.name = "zynq-afi-fpga",
> > > +		.of_match_table = zynq_afi_fpga_ids,
> > > +	},
> > > +	.probe = zynq_afi_fpga_probe,
> > > +};
> > > +module_platform_driver(zynq_afi_fpga_driver);
> > > +
> > > +MODULE_DESCRIPTION("ZYNQ FPGA AFI module");
> > MODULE_AUTHOR("Nava
> > > +kishore Manne <nava.manne@xilinx.com>"); MODULE_LICENSE("GPL v2");
> > > --
> > > 2.7.4
> > >
> >
> > It looks like all the driver does is writing two registers? How does
> > that fit into FPGA Manager as a framework. Should this maybe be eithe
> > for Zynq architecture or a Misc driver instead?
> >
> To establish the proper communication channel between PS and PL, The AXI
> Interface Bus Width should be configured properly.
> For a design to design this AXI Interface Bus Width settings are vary. So for Zynq
> just loading the Bitstream into the PL is not sufficient to establish a proper
> communication channel between PS and PL we have to do AXI Interface Bus
> Width settings as per the design after loading the Bit file into the PL. I feel this is
> more relevant to the FPGA settings so I have placed this driver here.
> 
> Please suggest the best place to put this driver.
> 
> > Is the idea here to create the device via an overlay?
> Yes, this driver loading/removal is triggered by the overlay after loading the bit
> file into the PL.
> 
> Regards,
> Navakishore.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
