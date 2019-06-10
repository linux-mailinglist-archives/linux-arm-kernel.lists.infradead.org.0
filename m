Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 217873B627
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 15:38:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xJIyDJG5O1l6YcMq/kFUYvXZj49QK1FjO2ad3Y5SrDo=; b=ikaL2/KaH6vtEW
	DCoclFTq83hPheMolfOE9HPMSJWWucZshwTlyLnEaAzDHluzbKUS+Idcf0uIDRSKydkbKW0O4so0N
	lqetpuaq+fARY9VtPXTPa2oeuUoiTffAVCxVxHFod0UokUGbRJat7Ac55KdNLBIhJfGd4dtYE1GP1
	bs7veBJQNkNEIbqQ/5jwHbA6gDTlYDRWM6SjfOTVX2kRhoBhpRv881iuxQXmj07hoQfV5NTE7OoX/
	3QeSDvomPhjMTkXFpS1m1bAoy3RkOjtd4SkzcoKmQOT3oVjkVI+UxpgPAndW4n+tW8k6wJBXPm3nJ
	SjVMRqn7psWt5hlgH7Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haKVb-0000yv-FW; Mon, 10 Jun 2019 13:38:47 +0000
Received: from mail-eopbgr70043.outbound.protection.outlook.com ([40.107.7.43]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haKVO-0000yN-OX
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 13:38:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zUxVVoJwaB7Bk774xElsNSCjfO4Sl9auYZc/yzUnlLU=;
 b=l/O3W6AyqOJR2Y1eyTRuY6uJFflkWWTrljLzF6uYdJH8k/capz0OCeldLkLUyXWoWC0uKhsdBPni2F31mpe983IplZ8jBUGVWdWylcQ2qvRpLkNUG7eTk1MppBudEcuDLeSmoa0GE0l8gc0Tv+lNi1Cn9tt9WD7nazwGBqjq0qc=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB5811.eurprd04.prod.outlook.com (20.178.203.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Mon, 10 Jun 2019 13:38:31 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::5c91:9215:bcd9:49cc]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::5c91:9215:bcd9:49cc%5]) with mapi id 15.20.1943.023; Mon, 10 Jun 2019
 13:38:31 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [RFC 1/2] irqchip: irq-imx-gpcv2: Add workaround for i.MX8MQ
 ERR11171
Thread-Topic: [RFC 1/2] irqchip: irq-imx-gpcv2: Add workaround for i.MX8MQ
 ERR11171
Thread-Index: AQHVH4ZAW46XDQp9mUe0tlHtyAAUk6aU4IeAgAAEAAA=
Date: Mon, 10 Jun 2019 13:38:31 +0000
Message-ID: <20190610133830.iruld46dgb2gvnx5@fsr-ub1664-175>
References: <20190610121346.15779-1-abel.vesa@nxp.com>
 <20190610121346.15779-2-abel.vesa@nxp.com>
 <7d8a537d-7883-196a-bcb3-7ee36117074a@arm.com>
In-Reply-To: <7d8a537d-7883-196a-bcb3-7ee36117074a@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8916a29b-287b-4248-288d-08d6eda8ed6b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5811; 
x-ms-traffictypediagnostic: AM0PR04MB5811:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB58113F1FD512432BF3BFA400F6130@AM0PR04MB5811.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0064B3273C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(7916004)(396003)(346002)(39860400002)(136003)(376002)(366004)(43544003)(189003)(199004)(64756008)(6506007)(486006)(11346002)(86362001)(45080400002)(256004)(8936002)(446003)(53936002)(14444005)(476003)(99286004)(478600001)(1076003)(66946007)(66556008)(66476007)(66446008)(6246003)(966005)(68736007)(76116006)(91956017)(2906002)(73956011)(53546011)(14454004)(44832011)(76176011)(7416002)(54906003)(102836004)(305945005)(66066001)(6486002)(6916009)(33716001)(7736002)(6116002)(3846002)(316002)(229853002)(26005)(25786009)(5660300002)(81156014)(6306002)(81166006)(6512007)(9686003)(6436002)(186003)(8676002)(71190400001)(4326008)(71200400001)(2004002)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5811;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Z5ocL8O/XaLshsZm2Fy8yahEIhHqKUfFaLTsKCmhszHa3Sxs7uYNwuyuy23G/VomJSHXssTTmx0944/7lRVYHcB3JNi1QXozO9799ogoamYyMJ0XD8xQN6gRv4OwZlZpXIIpPCN/FZA3uZgvYv0FZaF6i3wspjMn04mVu46L8wDv5Vrah3uIiVqa/0EaijlWmITDnJB6sDRZKJ0b1u72pDeebh9MJ2V7qe9nx4DU+M5QIQoWhvHPbnB1Ubkm1Mph0xBkeWA5UlqtdkEaR3yfTDrp6yVsYVQ+o1sHjnBVSWA1wqwtyd2Drq5iTaLPPyK4+Deynj/xTTnCLG5p+d3PW85B70SBdh0P8Clggc0OO6dzt4iWrqAU87wTD59Z/y4jmZyCqdsCy9O8AkshEsa1ATLB8iCYP4iqI3U4NhwVo94=
Content-ID: <C4D767B327A84E4B86BDF4999383F0A6@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8916a29b-287b-4248-288d-08d6eda8ed6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2019 13:38:31.2365 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abel.vesa@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5811
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_063836_441960_E05B0B99 
X-CRM114-Status: GOOD (  39.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.43 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 Carlo Caione <ccaione@baylibre.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Abel Vesa <abelvesa@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-06-10 14:24:11, Marc Zyngier wrote:
> Abel,
> 
> On 10/06/2019 13:13, Abel Vesa wrote:
> > i.MX8MQ is missing the wake_request signals from GIC to GPCv2. This indirectly
> > breaks cpuidle support due to inability to wake target cores on IPIs.
> > 
> > Here is the link to the errata (see e11171):
> > 
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.nxp.com%2Fdocs%2Fen%2Ferrata%2FIMX8MDQLQ_0N14W.pdf&amp;data=02%7C01%7Cabel.vesa%40nxp.com%7Ce23f69dbe37c4e83d7ab08d6eda6f062%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C1%7C636957698629664098&amp;sdata=tAFuqTJBWiSbeoUv8gqA9vQfeWAklCv3t4qk0RLJQKM%3D&amp;reserved=0
> > 
> > Now, in order to fix this, we can trigger IRQ 32 (hwirq 0) to all the cores by
> > setting 12th bit in IOMUX_GPR1 register. In order to control the target cores
> > only, that is, not waking up all the cores every time, we can unmask/mask the
> > IRQ 32 in the first GPC IMR register. So basically we can leave the IOMUX_GPR1
> > 12th bit always set and just play with the masking and unmasking the IRO 32 for
> > each independent core.
> > 
> > Since EL3 is the one that deals with powering down/up the cores, and since the
> > cores wake up in EL3, EL3 should be the one to control the IMRs in this case.
> > This implies we need to get into EL3 on every IPI to do the unmasking, leaving
> > the masking to be done on the power-up sequence by the core itself.
> > 
> > In order to be able to get into EL3 on each IPI, we 'hijack' the registered smp
> > cross call handler, in this case the gic_raise_softirq which is registered by
> > the irq-gic-v3 driver and register our own handler instead. This new handler is
> > basically a wrapper over the hijacked handler plus the call into EL3.
> > 
> > To get into EL3, we use a custom vendor SIP id added just for this purpose.
> > 
> > All of this is conditional for i.MX8MQ only.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> > ---
> >  drivers/irqchip/irq-imx-gpcv2.c | 42 +++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 42 insertions(+)
> > 
> > diff --git a/drivers/irqchip/irq-imx-gpcv2.c b/drivers/irqchip/irq-imx-gpcv2.c
> > index 66501ea..b921105 100644
> > --- a/drivers/irqchip/irq-imx-gpcv2.c
> > +++ b/drivers/irqchip/irq-imx-gpcv2.c
> > @@ -6,11 +6,19 @@
> >   * published by the Free Software Foundation.
> >   */
> >  
> > +#include <linux/arm-smccc.h>
> > +#include <linux/mfd/syscon/imx6q-iomuxc-gpr.h>
> > +#include <linux/mfd/syscon.h>
> >  #include <linux/of_address.h>
> >  #include <linux/of_irq.h>
> > +#include <linux/regmap.h>
> >  #include <linux/slab.h>
> >  #include <linux/irqchip.h>
> >  #include <linux/syscore_ops.h>
> > +#include <linux/smp.h>
> > +
> > +#define IMX_SIP_GPC		0xC2000004
> > +#define IMX_SIP_GPC_CORE_WAKE	0x00
> >  
> >  #define IMR_NUM			4
> >  #define GPC_MAX_IRQS            (IMR_NUM * 32)
> > @@ -73,6 +81,37 @@ static struct syscore_ops imx_gpcv2_syscore_ops = {
> >  	.resume		= gpcv2_wakeup_source_restore,
> >  };
> >  
> > +static void (*__gic_v3_smp_cross_call)(const struct cpumask *, unsigned int);
> > +
> > +static void imx_gpcv2_raise_softirq(const struct cpumask *mask,
> > +					  unsigned int irq)
> > +{
> > +	struct arm_smccc_res res;
> > +
> > +	/* call the hijacked smp cross call handler */
> > +	__gic_v3_smp_cross_call(mask, irq);
> 
> I'm feeling a bit sick... :-(
> 
> > +
> > +	/* now call into EL3 and take care of the wakeup */
> > +	arm_smccc_smc(IMX_SIP_GPC, IMX_SIP_GPC_CORE_WAKE,
> > +			*cpumask_bits(mask), 0, 0, 0, 0, 0, &res);
> 
> There is a number of things that look wrong here:
> 
> - What guarantees that this SMC call actually exists? The DT itself just
> says that this is broken, and not much about EL3.

OK, that's easy to fix.

> 
> - What guarantees that the cpumask matches the physical layout? I could
> have booted via kexec, and logical CPU0 is now physical CPU3.
> 

Fair point. I didn't think of that. Will have to put some thought into it.

> - What if you have more than 64 CPUs? Probably not a big deal for this
> particular instance, but I fully expect people to get it wrong again on
> the next iteration if we "fix" it for them.

That will never be the case. This is done in the irq-imx-gpcv2, so it
won't be used by any other platform. It's just a workaround for the 
gpcv2.

> 
> - How does it work on a 32bit kernel, when firmware advertises a SMC64 call?
> 

This is also easy to fix.

> And also:
> 
> - IMX_SIP_GMC doesn't strike me as a very distinctive name. It certainly
> doesn't say *which* SiP is responsible for this wonderful thing. I
> understand that they would like to stay anonymous, but still...
> 

Fair point. The idea is to have a class of SIPs just for the GPC needed actions.
One thing that will come in the near future is the move of all the IMR 
(Interrupt Mask Register) control (which is part of the GPC) to TF-A.
This IMX_SIP_GPC will be extended then to every action required by the IMR
and so on. Remember, GPC is more than a power controller. It's an irqchip
too.

> - It isn't clear what you gain from relying on the kernel to send the
> SGI, while you could do the whole thing at EL3.

OK, how would you suggest to wake a core on an IPI from EL3 ?

> 
> > +}
> > +
> > +static void imx_gpcv2_wake_request_fixup(void)
> > +{
> > +	struct regmap *iomux_gpr;
> > +
> > +	/* hijack the already registered smp cross call handler */
> > +	__gic_v3_smp_cross_call = __smp_cross_call;
> > +
> > +	/* register our workaround handler for smp cross call */
> > +	set_smp_cross_call(imx_gpcv2_raise_softirq);
> > +
> > +	iomux_gpr = syscon_regmap_lookup_by_compatible("fsl,imx6q-iomuxc-gpr");
> > +	if (!IS_ERR(iomux_gpr))
> > +		regmap_update_bits(iomux_gpr, IOMUXC_GPR1, IMX6Q_GPR1_GINT,
> > +					IMX6Q_GPR1_GINT);
> > +}
> > +
> >  static int imx_gpcv2_irq_set_wake(struct irq_data *d, unsigned int on)
> >  {
> >  	struct gpcv2_irqchip_data *cd = d->chip_data;
> > @@ -269,6 +308,9 @@ static int __init imx_gpcv2_irqchip_init(struct device_node *node,
> >  		cd->wakeup_sources[i] = ~0;
> >  	}
> >  
> > +	if (of_property_read_bool(node, "broken-wake-request-signals"))
> > +		imx_gpcv2_wake_request_fixup();
> > +
> >  	/* Let CORE0 as the default CPU to wake up by GPC */
> >  	cd->cpu2wakeup = GPC_IMR1_CORE0;
> >  
> > 
> 
> Overall, I find this horrible, and pretty pointless:
> 
> - Supporting this in mainline is likely to be a loosing battle (let's
> get real here, nobody will get the updated firmware)
> 
> - It doesn't solve some other problems such as the lack of LPI and PPI
> wakeup, as it was outlined in the previous iteration of such workaround.
> 
> Given this, I'm drawing the same conclusion as last time: this isn't fit
> for mainline. The real mainline fix is to prevent the use of cpuidle.
> This workaround is best kept in a vendor-specific tree.
> 
> Thanks,
> 
> 	M.
> -- 
> Jazz is not dead. It just smells funny...
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
