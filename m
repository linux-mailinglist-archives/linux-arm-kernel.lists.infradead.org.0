Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9A2200CA1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 16:51:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KLFP4QPjcfUcQec71hyIexNcZrwfSgksWCG8s/yQGNI=; b=hoyM0TBQyq2c3p
	0oPDCVl2+93qPz3mM2QaQK2Dj3bc6vFdAXaytLORcFjRkZItTC8cUZatG8olSD+KhL1w7UskoQcJC
	STKHCn5wr2nlCmOhPrBDg8yatPb5XqbxxU5bWBnejQokPo7Vj9vemM5vO1t+qHNu+GpQjXcaiEG/2
	SCF/pQvT4UxRN1W8XUjv8Xojtq/DHZ21mAcgb/QfNimOQexCDxqcbhUYHr5ocm8cXIfK88YlkVYWg
	Fn4m/URr7COUNsmfDc/ORVFzjBkd1bwNlKLZglddogoG+j2Ury8avPIlUkz4YS8vqlci2evwUu6T2
	M1nvtVj7/2p3DKDwuhZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmIMC-0003wP-7c; Fri, 19 Jun 2020 14:51:04 +0000
Received: from mail-eopbgr80047.outbound.protection.outlook.com ([40.107.8.47]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmIM0-0003vG-NJ
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 14:50:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GeWztOaNF1F50e2rykBqIJaG1ASCLhedonWeUczioAO1POIb4QH/EeQ68Y5OGVBVtkK/vcftWpSNkplKF7mIgJ/+4+WnpcTX5YVTWbDt8t2Og+LJ1F5lVuIQHK/sB4zsi2ePvqoFLTL+q6q1aL/5dDwleirHpNrYLLCvY54eW+feUteYNIAcGU0QiEpiviMdGuFsuB0Fpg5o65CTIt3V5dGK3wUxNRcTPp7xNcGRGgdoOSs+2cG5HoMDyvDWpa/OUYGA9NP4VphM4/6Sx9Op/lINXIzDUnrFteGE4gMfYEdINVKm6fGdDkKm6fcVFiuWGo/lcWnI0eFjs4zOk+wQlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cD7Z1TrPWEIxiFK197GodhypkDUADxv5bb4wDodAwBg=;
 b=aU8UOsvonS7fBu7etIDE72MnQj/0/G8VvIylUcQ88ZRLx4XY+Jk462EUbAGFz4vAjZAQIfI/SpHm0JZS199v4aLW2v5M0/t9fmlUgnXk/kpobED3jDftAra6KnEKgGi/+6565+j+mN3Y8+rJsJ91mX4g9gA9MlZAjIfX4OAWo4J3hCuoFog2TRM1uNs3DrEw5+BYI4/syTx8uKGj5hH+cn5/NPQFt+8PJGqOE5qwemGlQZcX3fP4oSxNGHf0spv88eECcbwuioLOh2MMLW9OpNlIF9oh5Qc36viQ33LLLRinUfFJ+P0dZJWeAQRSkVcWAfO25JmYDkzFC54OJLl28g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cD7Z1TrPWEIxiFK197GodhypkDUADxv5bb4wDodAwBg=;
 b=EYeSqNs2rSSw46qZHmO2ebkK1G3IQZtF1SYvhzBNGpQ+VPhOwNdu5qjhNN+ZN09EN9tDVQnmzPupS/KCKS4AF7tMv2El1Ff5iRKcWHqO4dGmjlGLzL1EBIZtRQ/pxt/JNEi2X4BwVG20VsWSA9AJjnL3cRv1/KMjEKYP+clm9ZQ=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4662.eurprd04.prod.outlook.com (2603:10a6:20b:1b::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.22; Fri, 19 Jun
 2020 14:50:48 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3088.028; Fri, 19 Jun 2020
 14:50:48 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>
Subject: RE: [PATCH V6 03/12] clk: imx: scu: add two cells binding support
Thread-Topic: [PATCH V6 03/12] clk: imx: scu: add two cells binding support
Thread-Index: AQHV+tC64TxqK3VbT0yOF5mOJ1A2NaiZQMMAgAB2juCAIlYNAIAH+bRQgBsXmACAAQsJUA==
Date: Fri, 19 Jun 2020 14:50:47 +0000
Message-ID: <AM6PR04MB496643872DF9EB6E44789E3180980@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1584279836-29825-1-git-send-email-aisheng.dong@nxp.com>
 <1584279836-29825-4-git-send-email-aisheng.dong@nxp.com>
 <158865530267.11125.15146015607102638423@swboyd.mtv.corp.google.com>
 <AM6PR04MB4966DEABA0CC38A7FFA3CD3180A70@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <159056841061.88029.216464972820415110@swboyd.mtv.corp.google.com>
 <AM6PR04MB4966691C34454AFAB7DAFFB5808A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <159249627008.62212.17868674898739401597@swboyd.mtv.corp.google.com>
In-Reply-To: <159249627008.62212.17868674898739401597@swboyd.mtv.corp.google.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [218.82.155.143]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: eb0ff442-5a92-4c0e-7729-08d81460275a
x-ms-traffictypediagnostic: AM6PR04MB4662:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB466247339DA2C8EF561AC70D80980@AM6PR04MB4662.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0439571D1D
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3FjHa/x7EkzCjAjMgrWWNvrVb2PGpf1gXntb2jEmg330WKWR9iQ+1zvpGTZXHsIXvuj/mYzGaWeFZ1tIuFoWU7yCHxg914ktMLukqXjC6wRion3DL947ev7s1ECdcEnHK1doS8rWnJBnJeaS8lVoPCW5JfM9IowAMFqsyHogLgzdtYdhns5bbW4OThrWmHJXenwZvjemlBYAyIaPCMhTgj7nMRaM4+Ve1IIlO/WtVJ6f/zGg1PPINf4EGqbiCJNPEHBEsdxr/JZKtbihzNXuChKDt8dDaCHbbpjpUTayu1Nf2YsFJGbdDj3CRo4D4Fc2MhJxYiov44L0tG5LekigtWRbIgUVrwFuZ1x1m/ymAuCZjkeS+51MUpMP6NX4MN5lDfURh8GcF9eFBvatR6Op9Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(376002)(366004)(396003)(39860400002)(346002)(8936002)(55016002)(8676002)(9686003)(33656002)(76116006)(6506007)(2906002)(66476007)(4326008)(66556008)(66446008)(64756008)(66946007)(86362001)(54906003)(478600001)(186003)(30864003)(71200400001)(966005)(7696005)(44832011)(26005)(110136005)(316002)(52536014)(83380400001)(5660300002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: HqosUCVdwEoRBx2b5uHjkps2lGwoHumBgQc3M4nJcwCeSZ2OtXRZEKEdY/A9VGIeaI2OGoI+ehRwi68hGqDGmzrmHaGtlKXUlhTFKo242/60qJzb8XqMpJE5o6mSXGucizsc4KofU1047/NzSkZaj1OJD3hLDgesntmEgGrCNpq1k96D90f3OHqd3rzCem+Y6WVJYRMXQXBgGbamSEF8s1mESd7xTgMV3mcxaoDB6yf9aOd4OQluGKhE2s4Dxs4FzT5lLC2SV0E+2b36LBSceV82NWdR+OGGkyiIMN5oVCMtBpX/nGMlT9R9bIbg3iFjlQtijjdDl9vb19K+qjxiYAZ7EOs91APhtNGL5mtTAPmH4Cj0J4tnoWcHCFZ0gfSCmfXMHwe7otLiMM6/nyePKmtP2HTS/xPtR1kuhcSpTRJxFPakQ6Ys8t0Q+m3Jkl9rX9DxbPGMDl7mSjQMsr0h5hLUD8JkOq0/JXw/CuZpT3NwEbqLcB1LQtS0kdnR3B7D
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb0ff442-5a92-4c0e-7729-08d81460275a
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2020 14:50:48.1222 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sKfe5XrZyZmyL6mDS1vX50v0xYKmn0T72Onf65c2ZUuSYm8nUDyrcqprvrOEUSWDI4w7KlNXA93wv/4ssCyqkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4662
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_075053_004953_D5CA3D8C 
X-CRM114-Status: GOOD (  33.84  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.8.47 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.47 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mturquette@baylibre.com" <mturquette@baylibre.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Stephen Boyd <sboyd@kernel.org>
> Sent: Friday, June 19, 2020 12:05 AM
> 
> Quoting Aisheng Dong (2020-06-01 07:28:57)
> > > From: Stephen Boyd <sboyd@kernel.org>
> > > Sent: Wednesday, May 27, 2020 4:34 PM
> > >
> > > Quoting Aisheng Dong (2020-05-05 06:47:02)
> > > > Hi Stephen,
> > > >
> > > > Thanks for the review.
> > > >
> > > > > From: Stephen Boyd <sboyd@kernel.org>
> > > > > Sent: Tuesday, May 5, 2020 1:08 PM
> > > > >
> > > > > Quoting Dong Aisheng (2020-03-15 06:43:47)
> > > > > > This patch implements the new two cells binding for SCU clocks.
> > > > > > The usage is as follows:
> > > > > > clocks = <&uart0_clk IMX_SC_R_UART_0 IMX_SC_PM_CLK_PER>
> > > > > >
> > > > > > Due to each SCU clock is associated with a power domain,
> > > > > > without power on the domain, the SCU clock can't work. So we
> > > > > > create platform devices for each domain clock respectively and
> > > > > > manually attach the required domain before register the clock
> > > > > > devices, then we can register clocks in the clock platform driver
> accordingly.
> > > > >
> > > > > That's odd. See below.
> > > > >
> > > > > >
> > > > > > Note because we do not have power domain info in device tree
> > > > > > and the SCU resource ID is the same for power domain and
> > > > > > clock, so we use resource ID to find power domains.
> > > > > >
> > > > > > Later, we will also use this clock platform driver to support
> > > > > > suspend/resume and runtime pm.
> > > > > >
> > > > > > Cc: Stephen Boyd <sboyd@kernel.org>
> > > > > > Cc: Shawn Guo <shawnguo@kernel.org>
> > > > > > Cc: Sascha Hauer <kernel@pengutronix.de>
> > > > > > Cc: Michael Turquette <mturquette@baylibre.com>
> > > > > > Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> > > > > > ---
> > > > > [...]
> > > > > > diff --git a/drivers/clk/imx/clk-scu.c
> > > > > > b/drivers/clk/imx/clk-scu.c index b8b2072742a5..4fadff14d8b2
> > > > > > 100644
> > > > > > --- a/drivers/clk/imx/clk-scu.c
> > > > > > +++ b/drivers/clk/imx/clk-scu.c
> > > >
> > > > >
> > > > > > +               return -EINVAL;
> > > > > > +
> > > > > > +       if (clk_cells == 2) {
> > > > > > +               for (i = 0; i < IMX_SC_R_LAST; i++)
> > > > > > +                       INIT_LIST_HEAD(&imx_scu_clks[i]);
> > > > > > +
> > > > > > +               pd_np = of_find_compatible_node(NULL, NULL,
> > > > > "fsl,scu-pd");
> > > > > > +               pd_dev = of_find_device_by_node(pd_np);
> > > > > > +               if (!pd_dev || !device_is_bound(&pd_dev->dev))
> > > > > > + {
> > > > >
> > > > > What is device_is_bound() check for? Add a comment?
> > > >
> > > > Yes, I can add a comment in the code.
> > > > It is because SCU clock driver depends on SCU power domain to be ready
> first.
> > >
> > > Does EPROBE_DEFER not kick in automatically in that case?
> > >
> >
> > No, there're no power domains under scu clock node in dts.
> > So can't use PROBE_DEFER automatically.
> 
> Why isn't the scu clock node using power domains?
> 

We have tried this in several ways before but finally didn't go that way
due to various reasons.

e.g.
Method 1:
conn-scu-clock-controller {
        compatible = "fsl,imx8qxp-clk", "fsl,scu-clk";
        #address-cells = <1>;
        #size-cells = <0>;

        uart0_clk: clock-scu@57 {
        reg = <57>; 
                #clock-cells = <1>;
                clock-indices = <IMX_SC_PM_CLK_PER>;
                clock-output-names = "uart0_clk";
                power-domains = <&pd IMX_SC_R_UART_0>;
        };
        ...
}

Method 2:
#define IMX_SCU_CLK_ID(rsrc, type)      (type << 16 | rsrc)
scu_clk: scu-clock-controller {
        compatible = "fsl,imx8qxp-scu-clk", "fsl,scu-clk";
        #clock-cells = <1>;
        clock-indices = <IMX_SCU_CLK_ID(IMX_SC_R_ENET_0, IMX_SC_PM_CLK_PER)>,
                        <IMX_SCU_CLK_ID(IMX_SC_R_ENET_0, IMX_SC_PM_CLK_BYPASS)>,
                        <IMX_SCU_CLK_ID(IMX_SC_R_ENET_0, IMX_SC_PM_CLK_MISC0)>,
                        <IMX_SCU_CLK_ID(IMX_SC_R_UART_0, IMX_SC_PM_CLK_PER)>,
                        ...

        clock-output-names = "enet0_clk",
                             "enet0_bypass_clk",
                             "enet0_rgmii_clk",
                             "uart0_clk",
                             ...

        power-domains = <&pd IMX_SC_R_ENET_0>,
                        <&pd IMX_SC_R_ENET_0>,
                        <&pd IMX_SC_R_ENET_0>,
                        <&pd IMX_SC_R_UART_0>,
                        ...
};

See details here:
https://spinics.net/lists/devicetree/msg298642.html

> >
> > > > > > +
> > > > > > +       pdev->driver_override = "imx-scu-clk";
> > > > > > +
> > > > > > +       ret = imx_clk_scu_attach_pd(&pdev->dev, rsrc_id);
> > > > >
> > > > > Why do we have to allocate a device for each power domain?
> > > >
> > > > This is mainly for each clock runtime pm and suspend/resume
> > > > support as they're independent with each other.
> > > >
> > > > > Is this because we
> > > > > don't have support for one device being in multiple power domains?
> > > > > That is supported now as far as I recall, by basically making
> > > > > dummy platform devices like this.
> > > >
> > > > I know kernel supports multi power domains, but I didn't realize
> > > > it could be used for our case.
> > > >
> > > > > So maybe this code isn't necessary and we can have one platform
> > > > > device for the clk controller and then have it control certain
> > > > > power domains manually from runtime PM callbacks? It's possible
> > > > > the runtime PM callbacks are too simple for this case and we
> > > > > need to tell clk providers what clk is having runtime PM enabled for it.
> > > >
> > > > To make sure I understand correctly, do you mean we use only one
> > > > general clk controller
> > >
> > > Typically I see HW designers make one hardware block for a certain
> > > group of clks, like general purpose IO hardware, multimedia hardware, DSP
> hardware, etc.
> > > That isn't always true though. Sometimes I see the hardware
> > > designers decide to stamp down the same hard macro for a clk in
> > > every IP block they develop in the SoC. It gets interesting when
> > > they have to integrate with a third party core like dwc3. Usually
> > > they look to see if they can add some vendor specific register to the IP block
> or make a wrapper around the IP block with the SoC glue bits.
> > >
> > > This usually happens when the clk hard macro library is used by all
> > > the hardware designers. Instead of consolidating that library into a
> > > hardware IP block that gets delivered for the particular SoC they
> > > just spread the hardware block around the system and hope that software
> will figure it out.
> > >
> > > I suspect hardware blocks are given certain addresses on the MMIO
> > > bus because ARM's AMBA/AHB spec mandated that a "device" starts at a 1K
> aligned address.
> > > This probably forced SoC hardware engineers to split their hardware
> > > blocks up into different pieces that they could then plug into the
> > > bus and easily route CPU addresses to different slaves on the bus.
> > >
> > > What's the situation here? I thought that this was a firmware
> > > interface that logically combines all the hardware block clk
> > > controllers. The firmware interface doesn't do everything though
> > > because it seems we still have to power on power domains to use various
> clks?
> >
> > Yes, it is.
> > For MX8QM/QXP, the whole SoC is comprised of a few HW Subsystems.
> > Those HW Subsystems are independent with each other as they have
> > separate power/clock Controllers.
> > Within each subsystem, there's a DSC (distributed slave controller)
> > acting as a standard interface to System Controller (SCU) to provide
> power/clock/reset and some other misc control functions.
> 
> If it's a few then there are maybe 5 SCUs in the SoC?
> 

There's only one SCU in the SoC running on a dedicated M4 core.
SCU communicated with each Subsystem via standard DSC interface
to provide centralized clock/power/reset/pinctrl/resource management/misc services.

> >
> > >
> > > > Runtime pm callback to handle all clocks runtime pm status manually?
> > > > If doing that, how do we handle different clocks pm requirements
> > > > with only one device runtime pm status (clock controller)?
> > > > e.g.
> > > > One Clock Provider
> > > > Consumer A -> Clock A -> Clock Provider resumed -> Clock A resumed
> > > > Consumer B -> Clock B (Since Clock Provided is already resumed, no
> > > > chance to
> > > run callback to resume Clock B now).
> > > > (Note: assume all clocks need runtime pm enabled for i.MX case)
> > > >
> > > > Or you mean we simply resume all clocks? but that seems lose the
> > > > granularity and possibly have no chance to enter runtime suspend
> > > > anymore
> > > once there was one clock in use.
> > > >
> > > > Not sure if I missed something. Please help clarify a bit more.
> > > >
> > > > Right now, I'm a bit afraid this may make things a bit complicated
> > > > as we have ~150 clocks and ~150 power domains. Putting them all
> > > > under one
> > > clock controller node in DT may scare people.
> > > > And even we did not create platform devices for each clock in the
> > > > clock driver, using multi-pd will still result in creating dummy
> > > > platform devices for each clock automatically by power domain
> framework.
> > > That means we didn't save any platform devices.
> > >
> > > What software entity is providing the power domains? I wonder if
> > > things are going about all wrong and the power domains are provided
> > > by the same piece of code that's managing the clks?
> >
> > There's a separate power domain driver based on SCU protocol for only power
> control.
> > This power control is a lit complicated as it supports multi low power states.
> > When power is completely gated, the HW state will be lost and need restore
> by SW.
> > Some of those features are still not upstreamed.
> >
> > > If so, why can't we control the power domains directly from the clk
> > > code without having to go through runtime PM layer or genpd?
> >
> > It's probably hard to do that because:
> > 1. power domain supports multiple low power states for different purpose.
> > Now genpd seems a better place to handle it 2. Not all power domains
> > associated with a clock.
> >
> > > Or to flip it the other way, why do we need clk control for
> > > enable/disable in that case?
> > > Can we just expose rate control for the clks and then let genpd
> > > handle turning clks on an off if they're associated with that power
> > > domain?
> >
> > I wonder this way might also lose the granularity control capability.
> > For a simple device with only one clock, we might be able to do it at most
> times.
> > But for some complicated devices with multiple clocks and which clocks
> > to use depends on the real user cases, simply enable all clocks when PD is UP
> seems not very suitable.
> > For MX8, it's a complicated systems and some device resources may have
> > multi clocks, especially for Audio, Video IO, Display related cases.
> 
> Do they have multiple clks and multiple power domains for one device, like
> Audio or Video? Is it 1:1 between some number of clks and some power
> domain?
> 

For simple devices with only one clock, it might be 1:1.
But for complicated devices with multiple clocks, it's usually not 1:1.
e.g.
AUDIO_PLL_0     PLL     User programmable PLL
AUDIO_PLL_0     MISC0   Audio PLL div 0
AUDIO_PLL_0     MISC1   Audio rec 0

DC_0    MISC0   Display 0
DC_0    MISC1   Display 1

MIPI_0  BYPASS  Bypass
MIPI_0  SLV_BUS DSI rx escape
MIPI_0  MST_BUS DSI tx escape
MIPI_0  PHY     DPHY PLL ref
MIPI_0  PER     DPI - pixel

> >
> > >
> > > >
> > > > > Maybe we can adjust the core clk framework to introduce a
> > > > > callback for the clk that is runtime PM enabling and put the
> > > > > logic there about what to
> > > do?
> > > >
> > > > That may help. Since we still only have one device for runtime pm
> > > > state management, Still not understand how to do it as it may mix
> > > > the usage
> > > with the runtime pm framework.
> > > >
> > >
> > > Right. I'm thinking that we may need a clk_op that is called when a
> > > clk is runtime PM enabled so the device driver that provides that
> > > clk can decide what genpds to manually enable. This would only be
> > > used in the case where the clks are provided by a clk controller
> > > that exists in multiple power domains. I'm not super clear on
> > > multi-pd and how it interacts with runtime PM but I assume that it
> > > doesn't actually turn on any genpd when the consumer device is runtime
> PM active. Instead the consumer driver has to figure out what to power on by
> itself.
> > > The callback would do this similarly from the CCF so that the manual
> > > steps could be done again.
> >
> > After more thinking, I guess we probably don't need a clk_op if we
> > register the correct struct device (abstract clk provider) to clk register API. E.g.
> clk_hw_register(dev, hw).
> > That abstract struct dev could be the virtual power domain device
> > created and returned by PD framework when calling multi PD APIs. This
> > can make us be able to fully reuse all the current rumtime PM support
> > in CCF. Nothing else special need to care. (synchronization work with
> > rpm/genpd framework)
> 
> Whatever 'dev' is used to register the clk is presumed to be the device that is the
> clk provider. If 'dev' isn't the one that's matched to the device node in DT the
> CCF will become confused about what parent clks are supposed to be. That's
> one problem but it may not be a problem here because this is just one big DT
> node?
> 
> >
> > See: multi pd API will create a virtual PD device to be associated with that PD
> for later RPM usages.
> > struct device *dev_pm_domain_attach_by_name(struct device *dev,
> >                                             const char *name) {
> >         if (dev->pm_domain)
> >                 return ERR_PTR(-EEXIST);
> >
> >         return genpd_dev_pm_attach_by_name(dev, name); }
> > EXPORT_SYMBOL_GPL(dev_pm_domain_attach_by_name);
> >
> > However, I'm still a bit feeling this probably could work for a clock controller
> simply with <10 PDs.
> > But not very suitable for MX8QM/QXP as it has 150+ PDs. Defining them
> > all will make DT looks terrible and drivers slightly a bit complicated
> > to fetch those PDs efficiently from DT for each clock, also make the future
> maintain work a bit harder when adding new clocks.
> > Not sure whether it's worth to do that as compared with current
> > approach, it really does not Improve too much as multi pd also need create
> virtual devices if the virtual devices are the only concern.
> > In contrast, it might increase, probably unnecessary complexities.
> 
> Either way there are going to be 150+ devices for the 150+ power domains in
> the system.  Why are there so many power domains? That seems like the
> problem. I doubt there are 150 devices in the SoC, or even 75 of them.
> 

It's abstract power domain concept introduced by SCU firmware that each device
Is associated with a power domain.
In real HW, many devices within the same Subsystem might share one of the same HW
power domain. But SCU firmware hides those internal details completely to users.
So users are unaware of it.

Additionally, power domain are also associated with device resource management by
xRDC (Resource Domain Controller) component for security reasons.

Without enable the resource power by SCU firmware, one SW execution environment 
(e.g. OS/ATF/OPTEE/VM) can't access those resource like registers, clocks and etc.

> >
> > How would you suggest?
> > Do you think if we should continue to investigate this Or if we can
> > make the function work first as this improvement work does not affect users?
> > Currently as this patch is a very fundamental change which blocks a lot other
> drivers upstream work.
> >
> 
> If you want to go ahead with this patch I guess I will stop caring.

Thanks a lot

> Just be aware
> that needing to make virtual devices to fit this into the kernel looks wrong. I'd
> like to see one device node for the firmware interface of clks, and one struct
> device for said firmware interface that attaches to one struct driver for that
> firmware interface.
> 

So far, I'm still no sure if we can finally archive that due to complexities of
various requirements in MX8. Personally i feel a bit risky and trying it definitely need
lot more time to ensure it can meet all of our feature requirements on MX8.
But I did understand your concern. Anyway, I will continue to investigate.
However, if you do not mind too much, I'd treat it as a continued improvement work
in order to not block the whole MX8 upstream work too long.
(dt binding part of users won't change)

The current approach has been verified working well in NXP official released 5.4 kernel and
can meet various product requirements. Probably could be a good start point for the reset 
drivers upstreaming work first.

> Connecting that to genpd for proper power domain management is another
> issue. If the core clk framework needs to be multi-device power domain aware
> so that various clks can turn on along with the power domain that's needed to
> operate them then we'll need to add that in the core framework.
> 

Yes. I guess the problem for MX8 is how to co-work with the exist power domain driver.
For MX8, there're also more issues because MX8 power domain supports multiple lower power
States. And we need a genpd governer to help choose a state. That's the future work we may do
In the next step.
If we power up clock power in CCF, we need think how to do It well by co-exist with genpd framework.

> I'm amazed that the firmware interface doesn't handle the requirement that
> genpds need to be powered on to control the clks. I'd think the firmware would
> be happy to turn on power domains so that it can go poke clk registers.

I guess one reason may be SCU support multiple low power states.
It wants user to choose which one to enter.
/*
 * Defines for SC PM Power Mode
 */
#define IMX_SC_PM_PW_MODE_OFF   0       /* Power off */
#define IMX_SC_PM_PW_MODE_STBY  1       /* Power in standby */
#define IMX_SC_PM_PW_MODE_LP    2       /* Power in low-power */
#define IMX_SC_PM_PW_MODE_ON    3       /* Power on */

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
