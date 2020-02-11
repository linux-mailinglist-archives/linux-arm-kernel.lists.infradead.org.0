Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A18C1587EC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 02:24:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2bluKxiRwF5/w6846i/fTkuCQ5RD510iDQ1WPQ+yDH0=; b=j3cgOsbDuMM8iL
	vuSU5lE5V5MR1mS9DUByibEs2uJhqawFNSo6cHoKYIK4/kTJf9yHXK5MIbJfjagdhwCmV2FQRLyGH
	ruLoJ1C1l1QNAa3e/DOBwRX1CkNib38Pk2Dfcj5yaeDWvU24hxQ/lmheKGUP6lAxPXySzCMzd++uq
	+HyNQ8X+0DHlBGo8rJcQ/X6P+WtJPMwlG1tORDV0zsR00BuCIGpNm6SmonBUr0RFAZiGkAZ5+ZbQM
	RijguSo1E+TQgQiWdwTXx2CuK+m+Zjt7jQYbCjUPpvDAE8xiy0joWHpi4EF8SIkemWr/cleS+YZKD
	VyQ4wiU6y1gl92Z46oAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1KHn-0000pw-T6; Tue, 11 Feb 2020 01:24:23 +0000
Received: from mail-ve1eur01on0626.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::626]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1KHf-0000pA-49
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 01:24:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LdGxvdJbEySz04slxKoNQePXtUwhIsNTjzwzg6d0w8rWzHnHc4+5vTWQ9f/BsecvuOXO6IT/2FFzY7/+vPPBGjPArb69CuLHPeM60BmuYy8JPnXc/IZnWbII6HyGgyQdGQ9pveHOQPdh8c7YdNPpdBEPbFXPn50RyVQqNgyZkmRZW15f7SjIHBe7I+BFj9LimaM6mnM7ZXnHkptwLp/cebY20vflxksCnnoElxI+ngMowY9753PEsNECJbWuKVlYNn0dSKSwwVfDvzr/xsL7HxzEDs6EAp8Bl3j3q00UIcGcEexxycj5Xbjo7RzEU+JEZfmkIEjvBv/RBUNB80duSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CvxNdjn4Jpa6VgPvhcQLnshzTnBwTz0mLeDVww1P4vk=;
 b=nPBqizkXVBYvB4v43pPvF+Fa15EgAhXWuT/uHkiRb8wgZic7MXidug406Kr4tYx+MTZ/I/FWRcQUh7VEn2x310gurJHvwdbhdlzBSRX+AWVpWp1idGhMAPjMzXxmThldDKIS+mrn4721WgSohMCUI6gOHPd0cZtmbNCLdz31TJSBvsIm9PAEMbiwBeBf/jaaQOkjZgGXvDd/nU3kLrM9zKdHOWSmPjo2mxHat8ds7liuSK90Us+U/pv/TbcDQiOhl7aW9U4mIK/ibLXHC37NbIID5rYUpK+ETzQK1LU7QW5wmNvunA3xTis2M4k+O3gYyV04TqZZGc/cxM1ClHrFag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CvxNdjn4Jpa6VgPvhcQLnshzTnBwTz0mLeDVww1P4vk=;
 b=jrEeJ3CWemcI3q+Yl5m/5RpKG1ndA/EauwoVt/ehKiiPhpBUtgi3f7kKIn6aMndrxQHYa2qiMLCrvmVzrD5So/nsB4blBkmj6bbKeCy+qoOSQW9SJ9qV43FimNhTESJkqZGU8jXAZUuGqk2d2yFv/+NmeNFumw8bw7EOjZSbfKU=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5507.eurprd04.prod.outlook.com (20.178.112.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.23; Tue, 11 Feb 2020 01:24:08 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2707.030; Tue, 11 Feb 2020
 01:24:08 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, Abel Vesa <abel.vesa@nxp.com>, Aisheng
 Dong <aisheng.dong@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>
Subject: RE: [PATCH 4/7] clk: imx: add imx_hw_clk_cpuv2 for i.MX7ULP
Thread-Topic: [PATCH 4/7] clk: imx: add imx_hw_clk_cpuv2 for i.MX7ULP
Thread-Index: AQHV22DMfuNfrztGkEGJ4CGkxeeucqgVDumAgAApfcA=
Date: Tue, 11 Feb 2020 01:24:08 +0000
Message-ID: <AM0PR04MB4481C105FCE5DFD4615C8BC588180@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1580823277-13644-1-git-send-email-peng.fan@nxp.com>
 <1580823277-13644-5-git-send-email-peng.fan@nxp.com>
 <158137431730.121156.17920534869042984062@swboyd.mtv.corp.google.com>
In-Reply-To: <158137431730.121156.17920534869042984062@swboyd.mtv.corp.google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 21597be9-8f2d-42e4-c834-08d7ae91179b
x-ms-traffictypediagnostic: AM0PR04MB5507:|AM0PR04MB5507:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB55070FC1AA92E899EDD66D0E88180@AM0PR04MB5507.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0310C78181
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(346002)(39860400002)(376002)(136003)(199004)(189003)(8936002)(81166006)(478600001)(81156014)(52536014)(76116006)(71200400001)(966005)(186003)(9686003)(6506007)(26005)(66556008)(55016002)(66476007)(66446008)(66946007)(64756008)(8676002)(316002)(5660300002)(44832011)(7696005)(110136005)(54906003)(2906002)(33656002)(4326008)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5507;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ShI/50u45pL4zPblfqkRC53XwNWfBBdHrYaJLdrBF3WX1mEfDBzK1/kn2BhiE3FpksaOLiaTaX3/sVJfcF1blZps3E2LtzJAC35g+Tct1IiWiOMNO1GXNJikKMqFk0OiUan5RzmVnqI/GF2qehOTt5Kw8J3/ceKZwhaoCmMeADqEpIDL6CpTrjwgqd35FpPUuGwQdw6MBW7u/GI0aO6QR2c9gYz83aoCRL1lOabexP4Gfv2Cotfns9JjVhpeAe88Yrkg3STuNHk6H1L6PKH21LN7AOqDvxVzqTPpaXiNPqbsK/9vXyX3jsER8uilydvFNPDhL0+ohsw3IGgi7hJGnoBnaTo8sqWEvfMwTUYJtyhVOFG57eVw7DifYpDSKgtXBZuLI7sXwzVLUdaoFo2oWCIRHLhON8opMBONNp313VgeWWXBa0BHHHlaLsdsSsjBIUNRaubpx+NYIMciHfGVu//wAISXAY/Jojc1KBxYfOPfPXbLhZC6AnbjJ1yugjmRpPb+arpTETMAtbe2GvgQIw==
x-ms-exchange-antispam-messagedata: gUXrMaA5JS1tGoxnK+E5vJw7DKWp8sPEFzWt+JQek+V1QhqvJDjYtlwvKNDNJRq7XD0nZ1FoMDpL7enmeWQoe8cnfJaHYIUYQgbUeTTlyS6zfCORSzFws1128WD26ebEsvPhBm61LDE9PW+3bfv4YA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21597be9-8f2d-42e4-c834-08d7ae91179b
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2020 01:24:08.4771 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GGdxZ+yHZoCLxXjATrTCTTGGk7GDx1H5oxxgdzL+EX0EvnjDrWcwTaGxfYzUBtt10YAB1coirPdcGZlwVvnZ9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5507
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_172415_427015_81258572 
X-CRM114-Status: GOOD (  29.43  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:626 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 1.0 FORGED_SPF_HELO        No description available.
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
Cc: Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH 4/7] clk: imx: add imx_hw_clk_cpuv2 for i.MX7ULP

+ Viresh

Hi Stephen,

> 
> Quoting peng.fan@nxp.com (2020-02-04 05:34:34)
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > Add a clk api for i.MX7ULP ARM core clk usage.
> > imx_hw_clk_cpu could not be reused, because i.MX7ULP ARM core clk has
> > totally different design. To simplify ARM core clk change logic, add a
> > new clk api.
> >
> > A draft picture to show the ARM core clock.
> >                                                       |-sirc
> >      |->   run(500MHz)    ->  div -> mux -------------|-firc
> >   ARM|                                                |
> >      |->   hsrun(720MHz)  ->  hs div -> hs mux -------|-spll pfd
> >                                                       |-....
> >
> > Need to configure PMC when ARM core runs in HSRUN or RUN mode.
> >
> > RUN and HSRUN related registers are not same, but their mux has same
> > clocks as input.
> >
> > The API takes arm core, div, hs div, mux, hs mux, mux parent, pfd,
> > step as params for switch clk freq.
> >
> > When set rate, need to switch mux to take firc as input, then set spll
> > pfd freq, then switch back mux to spll pfd as parent.
> >
> > Per i.MX7ULP requirement, when clk runs in HSRUN mode, it could only
> > support arm core wfi idle, so add pm qos to support it.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  drivers/clk/imx/Makefile    |   1 +
> >  drivers/clk/imx/clk-cpuv2.c | 137
> ++++++++++++++++++++++++++++++++++++++++++++
> >  drivers/clk/imx/clk.h       |   9 +++
> >  3 files changed, 147 insertions(+)
> >  create mode 100644 drivers/clk/imx/clk-cpuv2.c
> >
> > diff --git a/drivers/clk/imx/Makefile b/drivers/clk/imx/Makefile index
> > 928f874c73d2..9707fef8da98 100644
> > --- a/drivers/clk/imx/Makefile
> > +++ b/drivers/clk/imx/Makefile
> > @@ -5,6 +5,7 @@ obj-$(CONFIG_MXC_CLK) += \
> >         clk-busy.o \
> >         clk-composite-8m.o \
> >         clk-cpu.o \
> > +       clk-cpuv2.o \
> >         clk-composite-7ulp.o \
> >         clk-divider-gate.o \
> >         clk-fixup-div.o \
> > diff --git a/drivers/clk/imx/clk-cpuv2.c b/drivers/clk/imx/clk-cpuv2.c
> > new file mode 100644 index 000000000000..a73d97a782aa
> > --- /dev/null
> > +++ b/drivers/clk/imx/clk-cpuv2.c
> > @@ -0,0 +1,137 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Copyright 2020 NXP
> > + *
> > + * Peng Fan <peng.fan@nxp.com>
> > + */
> > +
> > +#include <linux/clk.h>
> > +#include <linux/clk-provider.h>
> > +#include <linux/slab.h>
> > +#include <linux/pm_qos.h>
> > +#include "clk.h"
> > +
> > +static struct pm_qos_request pm_qos_hsrun;
> > +
> > +#define MAX_NORMAL_RUN_FREQ    528000000
> > +
> > +struct clk_cpu {
> > +       struct clk_hw   hw;
> > +       struct clk_hw   *core;
> > +       struct clk_hw   *div_nor;
> > +       struct clk_hw   *div_hs;
> > +       struct clk_hw   *mux_nor;
> > +       struct clk_hw   *mux_hs;
> > +       struct clk_hw   *mux_parent;
> > +       struct clk_hw   *pfd;
> > +       struct clk_hw   *step;
> > +};
> > +
> > +static inline struct clk_cpu *to_clk_cpu(struct clk_hw *hw) {
> > +       return container_of(hw, struct clk_cpu, hw); }
> > +
> > +static unsigned long clk_cpu_recalc_rate(struct clk_hw *hw,
> > +                                        unsigned long
> parent_rate) {
> > +       struct clk_cpu *cpu = to_clk_cpu(hw);
> > +
> > +       return clk_hw_get_rate(cpu->core); }
> > +
> > +static long clk_cpu_round_rate(struct clk_hw *hw, unsigned long rate,
> > +                              unsigned long *prate) {
> > +       return rate;
> > +}
> > +
> > +static int clk_cpu_set_rate(struct clk_hw *hw, unsigned long rate,
> > +                           unsigned long parent_rate) {
> > +       struct clk_cpu *cpu = to_clk_cpu(hw);
> > +       int ret;
> > +       struct clk_hw *div, *mux_now;
> > +       unsigned long old_rate = clk_hw_get_rate(cpu->core);
> > +
> > +       div = clk_hw_get_parent(cpu->core);
> > +
> > +       if (div == cpu->div_nor)
> > +               mux_now = cpu->mux_nor;
> > +       else
> > +               mux_now = cpu->mux_hs;
> > +
> > +       ret = clk_hw_set_parent(mux_now, cpu->step);
> > +       if (ret)
> > +               return ret;
> > +
> > +       ret = clk_set_rate(cpu->pfd->clk, rate);
> > +       if (ret) {
> > +               clk_hw_set_parent(mux_now, cpu->mux_parent);
> > +               return ret;
> > +       }
> > +
> > +       if (rate > MAX_NORMAL_RUN_FREQ) {
> > +               pm_qos_add_request(&pm_qos_hsrun,
> PM_QOS_CPU_DMA_LATENCY, 0);
> > +               clk_hw_set_parent(cpu->mux_hs, cpu->mux_parent);
> > +               clk_hw_set_parent(cpu->core, cpu->div_hs);
> > +       } else {
> > +               clk_hw_set_parent(cpu->mux_nor, cpu->mux_parent);
> > +               clk_hw_set_parent(cpu->core, cpu->div_nor);
> > +               if (old_rate > MAX_NORMAL_RUN_FREQ)
> > +                       pm_qos_remove_request(&pm_qos_hsrun);
> > +       }
> > +
> 
> This is a cpufreq driver. Please write a cpufreq driver instead of trying to make
> "clk_set_rate()" conform to the requirements that cpufreq-dt mandates,
> which is that one clk exists and that clk rate change changes the frequency of
> the CPU.

There was an old thread, https://lkml.org/lkml/2017/9/20/931

Aisheng proposed a opp->set_clk implemented, but rejected by Viresh.
Viresh suggested resolve this issue in clk driver to let clk driver handle
the cpu clk freq change.

> 
> If cpufreq-dt can work with the clk framework is up to the implementation of
> the hardware and the software. From what I see here, the clk framework is
> being subverted through the use of
> clk_hw_set_parent() and clk_set_rate() calls from within the framework to
> make the cpufreq-dt driver happy. Don't do that.

ok

 Either write a proper clk
> driver for the clks that are there and have that manage the clk tree when
> clk_set_rate() is called, 

Do you have any suggestions if put the cpu clk freq change in clk driver?
i.MX7ULP has some special requirements, it has RUN and HSRUN registers
which match 500MHz and 720MHz, to run at 500MHz, need configure RUN
related registers; to run at 720MHz, need configure HSRUN related registers.
So the cpu clk is mux marked with CLK_IS_CRITICAL. However in its parent
tree, pll and pfd needs CLK_SET_RATE_GATE. So after pll/pfd prepared,
its freq could not be changed, because of protected.


or write a cpufreq driver that controls various clks and
> adjusts their frequencies.
> 
> I assume there is a mux or something that eventually clks the CPU, so that can
> certainly be modeled as a clk with the parents set some way.
> That will make clk_set_rate() mostly work as long as you can hardcode a
> min/max value to change the parents, etc. Should work!

As described above, the pll/pfd flag has CLK_SET_RATE_GATE, the mux
has flag CLK_IS_CRITICAL. So the pll/pfd freq could not be changed because
clk framework marked pll/pfd protected.

Anyway I'll try to find more to see any new solutions.

> 
> The use of pm_qos_add_request() is also pretty horrifying. We're deep in the
> clk framework implementation here and we're calling out to pm_qos.
> That shouldn't need to happen. If anything, we should do that from the core
> framework, but I don't know why we would. It's probably some sort of
> cpufreq thing.

When run at 720MHz, cpu are only allowed cpu core wfi. So I add pm qos
to block low power idle.

Thanks,
Peng.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
