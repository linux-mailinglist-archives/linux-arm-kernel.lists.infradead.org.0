Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DEC3B703
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 16:13:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oVmKN+tF1SPpbPr98pQmva/7B/WCodgO6oSLJfQNwbw=; b=nwea2hfALk1l5+
	WtpDRMocT4J9sLyydFB8R/+stvqwfTJMJxwsHnXalFNA4OJGohjfBoA4uZo1I84N16s+U+6FBAmqt
	asD/tV8HekYaZ7SQUFjxz+hpOp6fxShwXQJAZwrUAcb+AjjF5D1qGfDsdj9QO4l1i3koVTRPY2GMM
	vweYiJ475ShoywknDhJcFxNXnAieLO712CoQiUZk+PK6QSVfLVQofMNgGQkxCrARq7fSwm65/0F6t
	j27zOzC3Dc7PIrHCaTJm2XqwwHVqVnVQnGYdqDy4tLFkyU4wCpcfN6rntEiaH4CLDOn+58GGH7iZ1
	Gxo7zzasEwqfv81p0CSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haL2n-0002Mb-8A; Mon, 10 Jun 2019 14:13:05 +0000
Received: from mail-eopbgr10081.outbound.protection.outlook.com ([40.107.1.81]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haL2a-0002Ll-Gw
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 14:12:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y5diPCoGcjom8Fxt7OC6pc8Ij06PD43MB8wygyvnuAM=;
 b=j7m2+PCcXFyzoIE6y8A3GCUpy2pCm15Y38YJ8kQtKogc20uFAjyxZjA0D+ssJkooA/wUC/IqB+KE2/DZuCCRH9hJIlNzPEhXBFI3QibRa6RFsHAO19gd50o/Qw6W8t100gcjtA+LiSrSBNodROeaSIvQeK51LMWPIBquvo3mfPw=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB6082.eurprd04.prod.outlook.com (20.179.32.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.13; Mon, 10 Jun 2019 14:12:48 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::5c91:9215:bcd9:49cc]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::5c91:9215:bcd9:49cc%5]) with mapi id 15.20.1943.023; Mon, 10 Jun 2019
 14:12:48 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [RFC 1/2] irqchip: irq-imx-gpcv2: Add workaround for i.MX8MQ
 ERR11171
Thread-Topic: [RFC 1/2] irqchip: irq-imx-gpcv2: Add workaround for i.MX8MQ
 ERR11171
Thread-Index: AQHVH4ZAW46XDQp9mUe0tlHtyAAUk6aU4IeAgAAEAACAAAO4AIAABdsA
Date: Mon, 10 Jun 2019 14:12:48 +0000
Message-ID: <20190610141246.2xyod7zq3txm76o6@fsr-ub1664-175>
References: <20190610121346.15779-1-abel.vesa@nxp.com>
 <20190610121346.15779-2-abel.vesa@nxp.com>
 <7d8a537d-7883-196a-bcb3-7ee36117074a@arm.com>
 <20190610133830.iruld46dgb2gvnx5@fsr-ub1664-175>
 <44ce3775-29d2-8f17-9410-1896d6385e4d@arm.com>
In-Reply-To: <44ce3775-29d2-8f17-9410-1896d6385e4d@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b54e9100-becd-4cfd-5dfc-08d6edadb7a4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6082; 
x-ms-traffictypediagnostic: AM0PR04MB6082:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB6082B31FB6FF2D70D496EC1AF6130@AM0PR04MB6082.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0064B3273C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(39860400002)(366004)(346002)(396003)(136003)(376002)(43544003)(189003)(199004)(4326008)(6512007)(316002)(53936002)(229853002)(9686003)(6486002)(6246003)(6436002)(6306002)(33716001)(14454004)(66946007)(91956017)(76116006)(11346002)(66066001)(73956011)(66556008)(64756008)(66446008)(66476007)(7416002)(53546011)(76176011)(102836004)(6506007)(476003)(486006)(305945005)(7736002)(446003)(44832011)(45080400002)(966005)(81156014)(186003)(54906003)(25786009)(6916009)(81166006)(478600001)(8936002)(68736007)(99286004)(26005)(8676002)(5660300002)(71190400001)(71200400001)(6116002)(3846002)(86362001)(1076003)(2906002)(14444005)(256004)(2004002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6082;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Ve47TEOYViZMKLCuz2FFzEFRK6a/ffDR0KfFdSmH2i83VIgcBzJUCd3MsBhiweoPfB53qfTgqXmpn4BZVH/uJdaP8lDkVKINGmxrN+jzoeo66KoMA/7UVt0eXr5OUCuJV5+U9i9hqVGTap9C1leQ/gS1Lm1mB5LRhdnj090W54yPcoYAOfQX1TB4R9RbVvuKTqgxgvh5vDwmuIZ+FexJ2NY+DQSKXWWA/wB7oxiifedoInwc3Ecf5k32LIJP8hpGn2JtFmaOmAYQ96emjonFIizPiiZxAUC0/2aOK/yZwclEVxoP/ZCZ+ATxLCnpRk6yfXEHt8Ze3nw/qN4/In/SOZm5u8s8g3UdOlPQhSBagSkV4AQ9T13YzhT7Q283sep/4SSwa5kvmA0IC5bLWI5nB6mKyM1Da1ABKdYF7d5uZX0=
Content-ID: <61CE8B7E28F12E4086911DFD1B8CFF03@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b54e9100-becd-4cfd-5dfc-08d6edadb7a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2019 14:12:48.3882 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abel.vesa@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_071252_562435_F9216FD6 
X-CRM114-Status: GOOD (  41.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.81 listed in list.dnswl.org]
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

On 19-06-10 14:51:48, Marc Zyngier wrote:
> On 10/06/2019 14:38, Abel Vesa wrote:
> > On 19-06-10 14:24:11, Marc Zyngier wrote:
> >> Abel,
> >>
> >> On 10/06/2019 13:13, Abel Vesa wrote:
> >>> i.MX8MQ is missing the wake_request signals from GIC to GPCv2. This indirectly
> >>> breaks cpuidle support due to inability to wake target cores on IPIs.
> >>>
> >>> Here is the link to the errata (see e11171):
> >>>
> >>> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.nxp.com%2Fdocs%2Fen%2Ferrata%2FIMX8MDQLQ_0N14W.pdf&amp;data=02%7C01%7Cabel.vesa%40nxp.com%7Cf74b196c8beb46599f8408d6edaace09%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C636957715230445874&amp;sdata=ruP3qm1NTLTdoLC5XDu0uN5yNKLb4%2F2iP9kF5vdr1OI%3D&amp;reserved=0
> >>>
> >>> Now, in order to fix this, we can trigger IRQ 32 (hwirq 0) to all the cores by
> >>> setting 12th bit in IOMUX_GPR1 register. In order to control the target cores
> >>> only, that is, not waking up all the cores every time, we can unmask/mask the
> >>> IRQ 32 in the first GPC IMR register. So basically we can leave the IOMUX_GPR1
> >>> 12th bit always set and just play with the masking and unmasking the IRO 32 for
> >>> each independent core.
> >>>
> >>> Since EL3 is the one that deals with powering down/up the cores, and since the
> >>> cores wake up in EL3, EL3 should be the one to control the IMRs in this case.
> >>> This implies we need to get into EL3 on every IPI to do the unmasking, leaving
> >>> the masking to be done on the power-up sequence by the core itself.
> >>>
> >>> In order to be able to get into EL3 on each IPI, we 'hijack' the registered smp
> >>> cross call handler, in this case the gic_raise_softirq which is registered by
> >>> the irq-gic-v3 driver and register our own handler instead. This new handler is
> >>> basically a wrapper over the hijacked handler plus the call into EL3.
> >>>
> >>> To get into EL3, we use a custom vendor SIP id added just for this purpose.
> >>>
> >>> All of this is conditional for i.MX8MQ only.
> >>>
> >>> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> >>> ---
> >>>  drivers/irqchip/irq-imx-gpcv2.c | 42 +++++++++++++++++++++++++++++++++++++++++
> >>>  1 file changed, 42 insertions(+)
> >>>
> >>> diff --git a/drivers/irqchip/irq-imx-gpcv2.c b/drivers/irqchip/irq-imx-gpcv2.c
> >>> index 66501ea..b921105 100644
> >>> --- a/drivers/irqchip/irq-imx-gpcv2.c
> >>> +++ b/drivers/irqchip/irq-imx-gpcv2.c
> >>> @@ -6,11 +6,19 @@
> >>>   * published by the Free Software Foundation.
> >>>   */
> >>>  
> >>> +#include <linux/arm-smccc.h>
> >>> +#include <linux/mfd/syscon/imx6q-iomuxc-gpr.h>
> >>> +#include <linux/mfd/syscon.h>
> >>>  #include <linux/of_address.h>
> >>>  #include <linux/of_irq.h>
> >>> +#include <linux/regmap.h>
> >>>  #include <linux/slab.h>
> >>>  #include <linux/irqchip.h>
> >>>  #include <linux/syscore_ops.h>
> >>> +#include <linux/smp.h>
> >>> +
> >>> +#define IMX_SIP_GPC		0xC2000004
> >>> +#define IMX_SIP_GPC_CORE_WAKE	0x00
> >>>  
> >>>  #define IMR_NUM			4
> >>>  #define GPC_MAX_IRQS            (IMR_NUM * 32)
> >>> @@ -73,6 +81,37 @@ static struct syscore_ops imx_gpcv2_syscore_ops = {
> >>>  	.resume		= gpcv2_wakeup_source_restore,
> >>>  };
> >>>  
> >>> +static void (*__gic_v3_smp_cross_call)(const struct cpumask *, unsigned int);
> >>> +
> >>> +static void imx_gpcv2_raise_softirq(const struct cpumask *mask,
> >>> +					  unsigned int irq)
> >>> +{
> >>> +	struct arm_smccc_res res;
> >>> +
> >>> +	/* call the hijacked smp cross call handler */
> >>> +	__gic_v3_smp_cross_call(mask, irq);
> >>
> >> I'm feeling a bit sick... :-(
> >>
> >>> +
> >>> +	/* now call into EL3 and take care of the wakeup */
> >>> +	arm_smccc_smc(IMX_SIP_GPC, IMX_SIP_GPC_CORE_WAKE,
> >>> +			*cpumask_bits(mask), 0, 0, 0, 0, 0, &res);
> >>
> >> There is a number of things that look wrong here:
> >>
> >> - What guarantees that this SMC call actually exists? The DT itself just
> >> says that this is broken, and not much about EL3.
> > 
> > OK, that's easy to fix.
> 
> Sure. How?
> 

If the SMC_UNK is returned, then we keep the IOMUX_GPR1 bit 12 set and the IMR1 bit 0
for that core unset. That would always wake up the cores and therefore no the
cpuidle will not have any effect.

> > 
> >>
> >> - What guarantees that the cpumask matches the physical layout? I could
> >> have booted via kexec, and logical CPU0 is now physical CPU3.
> >>
> > 
> > Fair point. I didn't think of that. Will have to put some thought into it.
> > 
> >> - What if you have more than 64 CPUs? Probably not a big deal for this
> >> particular instance, but I fully expect people to get it wrong again on
> >> the next iteration if we "fix" it for them.
> > 
> > That will never be the case. This is done in the irq-imx-gpcv2, so it
> > won't be used by any other platform. It's just a workaround for the 
> > gpcv2.
> 
> "never"? That's a pretty strong statement. Given that the same IP has
> been carried across a number of implementations, I fully expect imx9 (or
> whatever the next generation is labeled) to use the same stuff.
> 

Again, this workaround will only apply to i.MX8MQ. IIRC, the gic500 was the
one that added the wake_request signals, gic400 didn't gave them.
And i.MX8MQ is the first NXP SoC to use the gic500. All the newer i.MX SoC
which use GPCv2 don't have this issue. So it's obviously related to
the switch from gic400 to gic500 when interfacing with GPCv2.

> > 
> >>
> >> - How does it work on a 32bit kernel, when firmware advertises a SMC64 call?
> >>
> > 
> > This is also easy to fix.
> > 
> >> And also:
> >>
> >> - IMX_SIP_GMC doesn't strike me as a very distinctive name. It certainly
> >> doesn't say *which* SiP is responsible for this wonderful thing. I
> >> understand that they would like to stay anonymous, but still...
> >>
> > 
> > Fair point. The idea is to have a class of SIPs just for the GPC needed actions.
> 
> I don't know what meaning you give to the "SIP" acronym, but the SMCCC
> documentation clearly has a different definition:
> 
> "SiP	: Silicon Partner. In this document, the silicon manufacturer."
> 
> What I'm asking for is that the silicon vendor's name to be clearly
> spoken out.

Fair point. TBH, I used the same naming I found in some other subsystems upstream.
If you grep the tree for IMX_SIP you will find IMX_SIP_TIMER, IMX_SIP_SRTC and
IMX_SIP_CPUFREQ.

So I only followed the pattern here.

> 
> > One thing that will come in the near future is the move of all the IMR 
> > (Interrupt Mask Register) control (which is part of the GPC) to TF-A.
> > This IMX_SIP_GPC will be extended then to every action required by the IMR
> > and so on. Remember, GPC is more than a power controller. It's an irqchip
> > too.
> > 
> >> - It isn't clear what you gain from relying on the kernel to send the
> >> SGI, while you could do the whole thing at EL3.
> > 
> > OK, how would you suggest to wake a core on an IPI from EL3 ?
> 
> Erm... By writing to the ICC_SGI1R_EL1 system register, directly from
> EL3, just before you apply your workaround?

Right, but how will you know in EL3 that an IPI has been raised ?

> 
> 	M.
> -- 
> Jazz is not dead. It just smells funny...
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
