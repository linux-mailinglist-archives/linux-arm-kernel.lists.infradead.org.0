Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2F7E2857
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 04:38:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5g9UPjwhkX2uBPb76OhkEYjEcOPHUFkIL33etA8dUMk=; b=pj0H8tmuKeoCD9
	uJ/5NLdu3dlebR+ALhPmGaGIOyAO5BSRINAdmS1ms5Oi1F+5tq6ZNDL7QR2e+DaWoDwMx9V52Y2uJ
	ltU5WSbi7z7TzC3yuAgDB3w85vlQ/yyjP+6/N/u4+QAc5hmkv9m/AohVRkkXmF8R3vlJgIUlUx8UW
	0piDtzMEq6M8XAZ9V7uxc35UNh6RO/g4hq6BeA4tneZTLmdZ+glIbi29qkccmQsIO71E/R2x9AO/B
	lL53l6rwP+p6j9OSIMWq09nHfygffo2FOCi6Qc4IQFyistRIeeKyvbXDL+xalwm+vO87fNj06DPhB
	wNBIJslgtxRn2Inkn4dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNT1B-0002km-6i; Thu, 24 Oct 2019 02:38:29 +0000
Received: from mail-eopbgr30087.outbound.protection.outlook.com ([40.107.3.87]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNT0q-0002b3-8O
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 02:38:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mats4tHcEribEfhwa3cejJIE7LnCzNLIJx0Geh9I77c3bF2S7RdsgwydLTBD1qQoUafD/qp1HhTYNYcDlmuW+2fqEphl5xug+9ZStK9w+uVgj8wOTFtusEafHKm463GSPEbQAQzROEgl3UwWOmPBxtF9Vyu88/6oWKyTy6daoqe7/bZHRvlUgieiXLxkIZHjNaDH+2Wj4SflsWOEg4vNw9Yp1KGLsj+99MVMF4fkRLd3TtzLQbRdmivJ70Gz4xpim1a37vO7vcSm8KUfRPHd1LgcgTv1axqA6dzfx0kRF/RYRCcZ1sDoN6g0xdcS8G999D4fWs5ABnDr+TJNiFWohA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZJGQLsVW14rviXsg+uMKs1LtLtkXxZwwRQhaSx9OVw4=;
 b=BZCwkTIcRfRg9QARc/h52gPz48e9zTP5BUoHsK2YyXj0YWGpzZHiJPJwTZS1S/eLwjyYNioK4GBzc959vbMjqngnyHX2ZL29/+OY/WzFWs+6qjKyvknoqDI3UtH2b63f1IbKu74J5Uvgy4tFazKqsMkptlYLh2RUEDE6Z9iKerf8ZGo2UtQ0LuauexqBgE/KmcNvFZ3qIa4P86BB/Hng3nXsWAbxPvj/MQlav+yaI2OWyhjyGJzOuxt/013T+tDEJjD+mYT3OZqvOtJbU4EoiOFpXccArtu+K9B5QTh/7GSu8BdNHGun356HR5feRRgko2lBoNHVCmn8XLASJCWRXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZJGQLsVW14rviXsg+uMKs1LtLtkXxZwwRQhaSx9OVw4=;
 b=g3vh8tnNSDftoFuNozq9mANgRfx41UTDlyp9yb/i2gFseIXD2mskiJp6yYRExxd3PFDbv0Xymkif6lcxs2l9cl/jHr7jVE39WIZiZbfLzEsiNKYsKGL0l+h5bUVXMHjC26dfiUGydJ1ltJjS1Fi1DewALLKjX8w5cNbzhQ0eJRM=
Received: from DB8PR04MB6826.eurprd04.prod.outlook.com (52.133.243.14) by
 DB8PR04MB6650.eurprd04.prod.outlook.com (20.179.251.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.18; Thu, 24 Oct 2019 02:38:04 +0000
Received: from DB8PR04MB6826.eurprd04.prod.outlook.com
 ([fe80::bcee:92dc:277f:6a78]) by DB8PR04MB6826.eurprd04.prod.outlook.com
 ([fe80::bcee:92dc:277f:6a78%7]) with mapi id 15.20.2387.021; Thu, 24 Oct 2019
 02:38:04 +0000
From: Ran Wang <ran.wang_1@nxp.com>
To: Leo Li <leoyang.li@nxp.com>
Subject: RE: [PATCH v9 3/3] soc: fsl: add RCPM driver
Thread-Topic: [PATCH v9 3/3] soc: fsl: add RCPM driver
Thread-Index: AQHViXs93WsdxAf3IEa22DXFaDvA7Kdo1N4AgAA8rOA=
Date: Thu, 24 Oct 2019 02:38:03 +0000
Message-ID: <DB8PR04MB6826B681CB2CC116D4ECA6D1F16A0@DB8PR04MB6826.eurprd04.prod.outlook.com>
References: <20191023082423.12569-1-ran.wang_1@nxp.com>
 <20191023082423.12569-3-ran.wang_1@nxp.com>
 <CADRPPNTwzz8M-Gi-371ROmYLrzXUAyxc+2_u6uUp0Fwd1dggLA@mail.gmail.com>
In-Reply-To: <CADRPPNTwzz8M-Gi-371ROmYLrzXUAyxc+2_u6uUp0Fwd1dggLA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ran.wang_1@nxp.com; 
x-originating-ip: [92.121.36.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d724f0c2-989b-4262-9780-08d7582b31ed
x-ms-traffictypediagnostic: DB8PR04MB6650:|DB8PR04MB6650:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB665013824DE0D0CF4F54BC36F16A0@DB8PR04MB6650.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1148;
x-forefront-prvs: 0200DDA8BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(136003)(346002)(366004)(396003)(199004)(189003)(66556008)(14454004)(4326008)(64756008)(476003)(71200400001)(66946007)(81166006)(74316002)(66066001)(478600001)(6636002)(8676002)(6862004)(76116006)(66446008)(7416002)(81156014)(5660300002)(71190400001)(66476007)(486006)(3846002)(86362001)(11346002)(6116002)(446003)(229853002)(305945005)(6436002)(8936002)(25786009)(53546011)(54906003)(52536014)(7696005)(5024004)(14444005)(2906002)(102836004)(76176011)(55016002)(33656002)(99286004)(9686003)(256004)(186003)(26005)(7736002)(6246003)(316002)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB6650;
 H:DB8PR04MB6826.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BJyf/fbqtELDtoZRQCdCbuFiNLEuAxxynkZsnAsN2rc3JgTxdLO8pWgS9TkuyAgpbkKJViYEDzTJSKm5KQ+AoRm7esk5jclxIAWOg8XGxoAs6rPXK8jLojEh/98dfxQSGssi/c88A7kE8g/Ef9hj0+aBgLogTFoBtzBlrHXn5srDB1lfSNdzijuAWNShYgpcy0myloBWvx1OGgf/k22iVruKlbmTEIt2hIM2xpSJz6Pa64BGjPM1GA8HCKJrZO6zjf5wkWq1NYhvZ2CNggh1aEmaswv17tSGwDZGOH6WPJlJggR+urVEZTiS5LQU1YAA8vumhn9qYziUfUpZ45W6rv8mD7+ycOeCkxVTySbjXAXaCOgCiNiFmkS25dtQZHE3Maa+QvFTiulVXu4t3gdmaqyMt/zcKGg/q2+EBxc9ElI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d724f0c2-989b-4262-9780-08d7582b31ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2019 02:38:03.9771 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CBFm3rubJMpM3mYuMAPYFUHupIMjqJT0rN4SNYDez4Auh5gCq9jdMYj0iLLi/NwFVe74xMP4U8adO8y+LijDaw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6650
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_193808_330729_A10274D5 
X-CRM114-Status: GOOD (  27.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.87 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Biwen Li <biwen.li@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, Len Brown <len.brown@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, lkml <linux-kernel@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND
 FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leo,


On Thursday, October 24, 2019 06:48, Li Yang wrote:
> 
> On Wed, Oct 23, 2019 at 3:24 AM Ran Wang <ran.wang_1@nxp.com> wrote:
> >
> > The NXP's QorIQ Processors based on ARM Core have RCPM module
> 
> Actually not just ARM based QorIQ processors are having RCPM, PowerPC based
> QorIQ SoCs also have RCPM.  Does this driver also work with the PowerPC SoCs?
> Please clarify in the commit message and Kconfig description.
> 
> > (Run Control and Power Management), which performs system level tasks
> > associated with power management such as wakeup source control.
> >
> > This driver depends on PM wakeup source framework which help to
> > collect wake information.
> >
> > Signed-off-by: Ran Wang <ran.wang_1@nxp.com>

<snip>


> > diff --git a/drivers/soc/fsl/Kconfig b/drivers/soc/fsl/Kconfig index
> > f9ad8ad..4918856 100644
> > --- a/drivers/soc/fsl/Kconfig
> > +++ b/drivers/soc/fsl/Kconfig
> > @@ -40,4 +40,12 @@ config DPAA2_CONSOLE
> >           /dev/dpaa2_mc_console and /dev/dpaa2_aiop_console,
> >           which can be used to dump the Management Complex and AIOP
> >           firmware logs.
> > +
> > +config FSL_RCPM
> > +       bool "Freescale RCPM support"
> > +       depends on PM_SLEEP
> 
> If this is only for ARM, probably add more dependency here?

OK.
 
> > +       help
> > +         The NXP QorIQ Processors based on ARM Core have RCPM module
> > +         (Run Control and Power Management), which performs all device-level
> > +         tasks associated with power management, such as wakeup source
> control.
> >  endmenu

<snip>

> > +
> > +/**
> > + * rcpm_pm_prepare - performs device-level tasks associated with
> > +power
> > + * management, such as programming related to the wakeup source control.
> > + * @dev: Device to handle.
> > + *
> > + */
> > +static int rcpm_pm_prepare(struct device *dev) {
> > +       int i, ret, idx;
> > +       void __iomem *base;
> > +       struct wakeup_source    *ws;
> > +       struct rcpm             *rcpm;
> > +       struct device_node      *np = dev->of_node;
> > +       u32 value[RCPM_WAKEUP_CELL_MAX_SIZE + 1];
> > +
> > +       rcpm = dev_get_drvdata(dev);
> > +       if (!rcpm)
> > +               return -EINVAL;
> > +
> > +       base = rcpm->ippdexpcr_base;
> > +       idx = wakeup_sources_read_lock();
> > +
> > +       /* Begin with first registered wakeup source */
> > +       for_each_wakeup_source(ws) {
> > +
> > +               /* skip object which is not attached to device */
> > +               if (!ws->dev || !ws->dev->parent)
> > +                       continue;
> > +
> > +               ret = device_property_read_u32_array(ws->dev->parent,
> > +                               "fsl,rcpm-wakeup", value,
> > +                               rcpm->wakeup_cells + 1);
> > +
> > +               /*  Wakeup source should refer to current rcpm device */
> > +               if (ret || (np->phandle != value[0])) {
> > +                       pr_debug("%s doesn't refer to this rcpm\n",
> > + ws->name);
> 
> I agree with Rafael that this looks a little bit weird.

OK, let me remove this print in next version.

> > +                       continue;
> > +               }
> > +
> > +               /* Property "#fsl,rcpm-wakeup-cells" of rcpm node defines the
> > +                * number of IPPDEXPCR register cells, and "fsl,rcpm-wakeup"
> > +                * of wakeup source IP contains an integer array: <phandle to
> > +                * RCPM node, IPPDEXPCR0 setting, IPPDEXPCR1 setting,
> > +                * IPPDEXPCR2 setting, etc>.
> > +                *
> > +                * So we will go thought them and do programming accordngly.
> > +                */
> > +               for (i = 0; i < rcpm->wakeup_cells; i++) {
> > +                       u32 tmp = value[i + 1];
> > +                       void __iomem *address = base + i * 4;
> > +
> > +                       if (!tmp)
> > +                               continue;
> > +
> > +                       /* We can only OR related bits */
> > +                       if (rcpm->little_endian) {
> > +                               tmp |= ioread32(address);
> > +                               iowrite32(tmp, address);
> > +                       } else {
> > +                               tmp |= ioread32be(address);
> > +                               iowrite32be(tmp, address);
> > +                       }
> 
> Can we do read once at the beginning and write once at the end, instead of
> doing IO read/write for every wakeup source?

Sure, but another loop might need to be added after the one of wakeup source walk
through, to program all IPPDEXPCR registers. Is that OK?

Regards,
Ran

 
> > +               }
> > +       }
> > +
> > +       wakeup_sources_read_unlock(idx);
> > +
> > +       return 0;
> > +}
> > +
> > +static const struct dev_pm_ops rcpm_pm_ops = {
> > +       .prepare =  rcpm_pm_prepare,
> > +};
> > +
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
