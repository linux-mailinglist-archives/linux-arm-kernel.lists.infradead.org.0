Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6431EDCA7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 11:35:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VcbQgu7LIpZEKxBQd/AIzipOD03NnA8GRXOxU0eoKgk=; b=MP3lFfO44b4KQT
	owakR1czu9EyIiH5tpNK8PZFDnlF/+uSac6aS/0hnWlP3foZXviMTkGc5Iz84W5k7L2GcLKKUkhIu
	3uYR7cFCIAXb/CZEXVM3RVvXvcJxjiNkt/SI5PFhMGfM0nYCpRCtEMQXtX5q44QZfFf3qPTkW3d7A
	P/FxAW4crhJ9gk3t8MStleOqqlndFHC6XHQN6jIMGc5Jx4vc5tXFSufxHMa31xUmTIOFu0rnPTItQ
	q/3Vbky5iCKEQABCGcLCRzP2FCgxasMQM9bZ2qbDdx08CYT7CIOb4X9AdGygJief0R9T3+zJn19I0
	aDqGMe97cb1Vk+IdFZ7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRZi4-000699-T2; Mon, 04 Nov 2019 10:35:44 +0000
Received: from mail-eopbgr40078.outbound.protection.outlook.com ([40.107.4.78]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRZhw-00067s-Cc
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 10:35:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D4X7FLPtgp1I2MR3roCb3FKWpYB0hrx89cVKSGt61cxU6UgW/gZYskLxHpoiXW/m253wJimKy0oavWZMv1xCpqnJs0WgqHuOadXZxuwf2SAQ4CLwO6s8S18oiGm8uefAKyefOGgstFeLDTumPd8QmhTnGLvjT8u+qvBb3ZDUePqOSmCDNiUJnD4WGHjVCY0DMcHgufvTTDjecbQRB/TMaC+1Mwfp++RhH8CyI26rlLonIbthYlQPWBmTxZ5KkXKVN0Qyd2i8qBQyvZj/OFTUYXB0QzOiuqk6SWX8lEAxNlEGgKlXEvVGVRDsHz3Y9KO6X5QZFT8PcByTskpHR0vhlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6EkcKijxih7llZz1xl0uJnh04TxQEb8WwmH8rq57f3E=;
 b=ER7IZWxfA3kd06glAQ0D2hBXl5E7C13yaurdsc93xOstpcMylyeFtPRXIlmIU//UmfPB+iCBofQdFPYgWeF2Im+46Dilv1JKxZ6Yip0RtT0w4KljaYJqYsfOwbOwqWzncatAMz50AUAVKqALqnlNtGLrgIsO1MxgbMIkkH/neS+ITpkmrRSB4+ti4E47mWcGab8Q8iW8TSxUBm3ZgBTnDLoF/i5Xevpl65SWsgveiNN1QPD3noo2S7+Ttvoj6Eb1Z0NDOxILUa6r8zbufTH2MjPQl9FdyjSZS2e5nDPs5p0dODsBISBIvXnUpO+iCViHj6V3eZo+Qapq5eu2mQPkUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6EkcKijxih7llZz1xl0uJnh04TxQEb8WwmH8rq57f3E=;
 b=as9JVrPnpcG3SGMVHzTF20fwyD73LuXScxSC1SUDVK6vxn2oNsqdPwq3TvMwxC7wGFtwiJmntW1jwDxK/Fj6e4KqYCnOVe2SAlzrqP2r5xnS5Ai6N4lk0BBW7SWvzcFEUEuXNnpkMEx5RO3m7s1eL9oVQSKDICSAHONakB1gJHM=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB6466.eurprd04.prod.outlook.com (20.179.254.88) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Mon, 4 Nov 2019 10:35:27 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde%7]) with mapi id 15.20.2408.024; Mon, 4 Nov 2019
 10:35:27 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Martin Kepplinger <martink@posteo.de>
Subject: Re: [RFC 0/2] Add workaround for core wake-up on IPI for i.MX8MQ
Thread-Topic: [RFC 0/2] Add workaround for core wake-up on IPI for i.MX8MQ
Thread-Index: AQHVH4Y/3naZJOmQTkOgrNdQmlNuA6apM84AgMpe64CAACCggIAH5xcAgAAdpoA=
Date: Mon, 4 Nov 2019 10:35:27 +0000
Message-ID: <20191104103525.qjkxh2zhhgaaectk@fsr-ub1664-175>
References: <20190610121346.15779-1-abel.vesa@nxp.com>
 <d217a9d2-fc60-e057-6775-116542e39e8d@posteo.de>
 <7d3a868a-768c-3cb1-c6d8-bf5fcd1ddd1c@posteo.de>
 <20191030080727.7pcvhd4466dproy4@fsr-ub1664-175>
 <523f92bd-7e89-b48a-afd0-0a9a8bca8344@posteo.de>
In-Reply-To: <523f92bd-7e89-b48a-afd0-0a9a8bca8344@posteo.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM5PR0701CA0053.eurprd07.prod.outlook.com
 (2603:10a6:203:2::15) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5dec73d4-8a2d-477e-a4dd-08d76112b4fa
x-ms-traffictypediagnostic: AM0PR04MB6466:|AM0PR04MB6466:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6466476A3A253897A316D18EF67F0@AM0PR04MB6466.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0211965D06
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(346002)(396003)(366004)(376002)(136003)(39860400002)(54014002)(43544003)(189003)(199004)(7736002)(7416002)(186003)(966005)(14444005)(6116002)(3846002)(1076003)(86362001)(25786009)(6512007)(256004)(81166006)(9686003)(305945005)(486006)(476003)(64756008)(561944003)(8936002)(66946007)(66446008)(66556008)(66476007)(44832011)(4326008)(99286004)(5660300002)(8676002)(81156014)(11346002)(33716001)(446003)(6246003)(6506007)(478600001)(6916009)(52116002)(6306002)(26005)(2906002)(66066001)(6486002)(76176011)(316002)(14454004)(54906003)(71200400001)(71190400001)(229853002)(45080400002)(102836004)(6436002)(386003)(53546011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6466;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vfwMnAOXAI+ozFIFS3pcRbVa5MG2fsF8yAQW1znNNrhOP4YIYq0RvdPzGTAeE3Cp5F+1JIUB02sQ1cuOwn19V+5hlgaOjw1jF0kVneaaddCRpYNoI+9KwCjVAzm9YfEcgM36pVJ09iZocM4PO75Ymwb/8S6NYMt41S1aT3zd819u9iLOr+4IdMN4LFA/hx/v9WAldcxSz5lFtzBBr/N4XFD/nXauo4m0kWNUliUutKllY1NX9y18QxNHdX/1OxkcVqjTrtSIvZttACFIJga3XyUjduYK0tNeTKyOYXLNtZ1kAkDnD1p2M5c/Fa0kk0n7bwPTA1PtF2beORy4WMLiEPWmu0Uj65fqxVDGRtYJ4avIr0iinqgvtj4x0SP9VIgtTAx0Y9U2GzBLefkrcYro96PTtZk9PPCcs9Fv2NmCrS7aoNYS4v8JFjedsPc26Ajmyq9hNSdpCh9BdOnZ8LwvQ0a6CyYhHA8Klo+mtYd01PU=
Content-ID: <B202A75CE9D8CA44B71BF48AC8D7FA51@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5dec73d4-8a2d-477e-a4dd-08d76112b4fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2019 10:35:27.2183 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N8merFn7eKN9BI+A8POT25j6aG+B/9cALxNPUCP8TmGMXwI7k/HXYys5A8fPNJNvs375IIZRUeqiyidq9fbOqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6466
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_023536_432346_18935348 
X-CRM114-Status: GOOD (  34.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Carlo Caione <ccaione@baylibre.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
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

On 19-11-04 09:49:18, Martin Kepplinger wrote:
> On 30.10.19 09:08, Abel Vesa wrote:
> > On 19-10-30 07:11:37, Martin Kepplinger wrote:
> >> On 23.06.19 13:47, Martin Kepplinger wrote:
> >>> On 10.06.19 14:13, Abel Vesa wrote:
> >>>> This is another alternative for the RFC:
> >>>> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flkml.org%2Flkml%2F2019%2F3%2F27%2F545&amp;data=02%7C01%7Cabel.vesa%40nxp.com%7C50f2d9cf92ae4c41db1308d76103e468%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637084541652623937&amp;sdata=eY8TR3bpvYBWGZ7Xd58%2BK8Ig0qJ3ZqTWO8fNS5X0tj8%3D&amp;reserved=0
> >>>>
> >>>> This new workaround proposal is a little bit more hacky but more contained
> >>>> since everything is done within the irq-imx-gpcv2 driver.
> >>>>
> >>>> Basically, it 'hijacks' the registered gic_raise_softirq __smp_cross_call
> >>>> handler and registers instead a wrapper which calls in the 'hijacked' 
> >>>> handler, after that calling into EL3 which will take care of the actual
> >>>> wake up. This time, instead of expanding the PSCI ABI, we use a new vendor SIP.
> >>>>
> >>>> I also have the patches ready for TF-A but I'll hold on to them until I see if
> >>>> this has a chance of getting in.
> >>>
> >>
> >> Hi Abel,
> >>
> >> Running this workaround doesn't seem to work anymore on 5.4-rcX. Linux
> >> doesn't boot, with ATF unchanged (includes your workaround changes). I
> >> can try to add more details to this...
> >>
> > 
> > This is happening because the system counter is now enabled on 8mq.
> > And since the irq-imx-gpcv2 is using as irq_set_affinity the 
> > irq_chip_set_affinity_parent. This is because the actual implementation
> > of the driver relies on GIC to set the right affinity. On a SoC
> > that has the wake_request signales linked to the power controller this
> > works fine. Since the system counter is actually the tick broadcast
> > device and the set affinity relies only on GIC, the cores can't be
> > woken up by the broadcast interrupt.
> > 
> >> Have you tested this for 5.4? Could you update this workaround? Please
> >> let me know if I missed any earlier update on this (having a cpu-sleep
> >> idle state).
> >>
> > 
> > The solution is to implement the set affinity in the irq-imx-gpcv2 driver
> > which would allow the gpc to wake up the target core when the broadcast
> > irq arrives.
> > 
> > I have a patch for this. I just need to clean it up a little bit.
> > Unfortunately, it won't go upstream since everuone thinks the gic
> > should be the one to control the affinity. This obviously doesn't work
> > on 8mq.
> > 
> > Currently, I'm at ELCE in Lyon. Will get back at the office tomorrow
> > and sned you what I have.
> > 
> 
> Hi Abel,
> 
> Do you have any news on said patch for testing? That'd be great for my
> plannings.
> 

Sorry for the late answer.

I'm dropping here the diff.

Please keep in mind that this is _not_ an official solution.

---
 drivers/irqchip/irq-imx-gpcv2.c | 42 ++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 41 insertions(+), 1 deletion(-)

diff --git a/drivers/irqchip/irq-imx-gpcv2.c b/drivers/irqchip/irq-imx-gpcv2.c
index 01ce6f4..3150588 100644
--- a/drivers/irqchip/irq-imx-gpcv2.c
+++ b/drivers/irqchip/irq-imx-gpcv2.c
@@ -41,6 +41,24 @@ static void __iomem *gpcv2_idx_to_reg(struct gpcv2_irqchip_data *cd, int i)
 	return cd->gpc_base + cd->cpu2wakeup + i * 4;
 }
 
+static void __iomem *gpcv2_idx_to_reg_cpu(struct gpcv2_irqchip_data *cd,
+					int i, int cpu)
+{
+	u32 offset =  GPC_IMR1_CORE0;
+	switch(cpu) {
+	case 1:
+		offset = GPC_IMR1_CORE1;
+		break;
+	case 2:
+		offset = GPC_IMR1_CORE2;
+		break;
+	case 3:
+		offset = GPC_IMR1_CORE3;
+		break;
+	}
+	return cd->gpc_base + offset + i * 4;
+}
+
 static int gpcv2_wakeup_source_save(void)
 {
 	struct gpcv2_irqchip_data *cd;
@@ -163,6 +181,28 @@ static void imx_gpcv2_irq_mask(struct irq_data *d)
 	irq_chip_mask_parent(d);
 }
 
+static int imx_gpcv2_irq_set_affinity(struct irq_data *d,
+				 const struct cpumask *dest, bool force)
+{
+	struct gpcv2_irqchip_data *cd = d->chip_data;
+	void __iomem *reg;
+	u32 val;
+	int cpu;
+
+	for_each_possible_cpu(cpu) {
+		raw_spin_lock(&cd->rlock);
+		reg = gpcv2_idx_to_reg_cpu(cd, d->hwirq / 32, cpu);
+		val = readl_relaxed(reg);
+		val |= BIT(d->hwirq % 32);
+		if (cpumask_test_cpu(cpu, dest))
+			val &= ~BIT(d->hwirq % 32);
+		writel_relaxed(val, reg);
+		raw_spin_unlock(&cd->rlock);
+	}
+
+	return irq_chip_set_affinity_parent(d, dest, force);
+}
+
 static struct irq_chip gpcv2_irqchip_data_chip = {
 	.name			= "GPCv2",
 	.irq_eoi		= irq_chip_eoi_parent,
@@ -172,7 +212,7 @@ static struct irq_chip gpcv2_irqchip_data_chip = {
 	.irq_retrigger		= irq_chip_retrigger_hierarchy,
 	.irq_set_type		= irq_chip_set_type_parent,
 #ifdef CONFIG_SMP
-	.irq_set_affinity	= irq_chip_set_affinity_parent,
+	.irq_set_affinity	= imx_gpcv2_irq_set_affinity,
 #endif
 };
 
-- 


> thanks a lot,
> 
>                                  martin
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
