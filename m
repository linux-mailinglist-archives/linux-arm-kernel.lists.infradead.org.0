Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D06CEB244A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 18:44:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zssu7DzVafGHZxj3L/QJ8U0FIq5TqTQDn2qZm/0vWxo=; b=utXu/ArYKUmCLR
	or9NcAgttqJbjwZjIadfPAkpnaUFMF+JZCsEqAAPWjt8w/1kPvA3TSxQEVRTJ8M63uC028U4KZ7uc
	2Ff4Hvslk/RH4xIO0hBdsUqaTh5Xj/C5KzpfnYF+RH4wciTllcgAILsaplxGwUqaYrHyM7W7ZSqNN
	FDPFQo7KPEsfJxbGOV/B8EkWkEQi4hQFi2LqFvRGsCK1KpKcMqHPBelxMiWBieiKPMffJrlPVsU5x
	24TDQ4N/VUuWskKlWRtHdY56wYJXZnA9L9TLm0X4Um+ub/UAY/6VX3QvxzQC/mfDkwbS2UeF0OSb9
	OjsprypBvh43DDzY7IHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8ofu-0000e6-7w; Fri, 13 Sep 2019 16:43:58 +0000
Received: from mail-eopbgr50069.outbound.protection.outlook.com ([40.107.5.69]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8ofh-0000cw-4E
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 16:43:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RCJ0XxoAuDKZsGCH4d8Ui+0vATILCTg2ho2l/SqXodxxBu0crDPEXhFVdX5cA5tSHtEKd3XjgOGSx27p6e1L5XFwI89KTF+3zUlzmeJmHM0dx8BQ6tYHUvaubktCvR65rsvEVQdkg0a3DehA+Xif7z1z4ajH7XLdP+of53ig2ZfwVk7GfEQyKVVcJh3iW8C+lIYSiu9NvPx4+LMhbL6NmP8nL7gI9+rnAZi9x93DrTgH+n2aTsakf8SI2l/db0x28U6ef7lzm2ShALa3FcOgKl76gHqabrz52OKVwcGoOBwU5YP7lkl5enQZkZqtM0Fo7f83IyejgCuoMs8rX3NBAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y94NUq3+pXhhVAFZQB3GhRduKnenwZemOn3W6V36pIs=;
 b=TEdwlx+qwUAAFtXILtGzqbJL4v1c3HZoMz2aPPERIkYxzCnisnw8GvhRCaP3MPTv3+N4MijdP9n8SEIWYbuO6XHijF8c7a6K46a1l093vZFbvQHx+7kabRZnvryQOmyohb1u4SExIJ2xrk5nsKyjOrrgveeN4nsFAYL3blm/0iCpFgfdT6mP67rvva3CVWyaOQ8nUfqy2NQHqVku6lC6dTrg7EuH36iZ6/mLmv6uhKDG8+KFcXizGan8FzkPsRlScKyMYhdJxK0tLAoOp1TCnvLa50im3l0hrzCUYVfoZZlToJJaq3dEuRfhqNb2sGjeOJ7FZOYffZXl2RG1fXAhyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y94NUq3+pXhhVAFZQB3GhRduKnenwZemOn3W6V36pIs=;
 b=dVw/238Qei6xoPkC2S1YczktmmTBxa5mzNQmACBTOMDmSdBJw856DnRA7lFbgJqpWhn6JwxtWiTDm2dVFJz/byzJHHBYYcgsDNYIfro/9QgJ5IERu7OOr7O7K4GL1prOZq264ZmJD46UaiG8gyAYXeivXXOEoaO2jhfbneVA0cU=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB4372.eurprd04.prod.outlook.com (52.135.149.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.18; Fri, 13 Sep 2019 16:43:38 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::44b4:2932:8e73:d707]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::44b4:2932:8e73:d707%7]) with mapi id 15.20.2263.021; Fri, 13 Sep 2019
 16:43:38 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Oliver Graute <oliver.graute@gmail.com>
Subject: RE: [PATCH V3 00/15] arm64: dts: imx8: architecture improvement and
 adding imx8qm support
Thread-Topic: [PATCH V3 00/15] arm64: dts: imx8: architecture improvement and
 adding imx8qm support
Thread-Index: AQHVaX89Q12GIVUt40ahO+NXfkEyIKcphw0AgABIqUA=
Date: Fri, 13 Sep 2019 16:43:38 +0000
Message-ID: <AM0PR04MB42117BD6A60E4FEA1456954080B30@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1568302252-28066-1-git-send-email-aisheng.dong@nxp.com>
 <20190913121608.GD16292@optiplex>
In-Reply-To: <20190913121608.GD16292@optiplex>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [180.172.160.231]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 89aa38b6-5617-4ac5-0cdf-08d738698730
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4372; 
x-ms-traffictypediagnostic: AM0PR04MB4372:|AM0PR04MB4372:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4372FCC02589F14FD90C952780B30@AM0PR04MB4372.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:935;
x-forefront-prvs: 0159AC2B97
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(396003)(346002)(366004)(136003)(189003)(199004)(476003)(55016002)(2906002)(316002)(11346002)(66446008)(64756008)(486006)(6306002)(66556008)(66476007)(4326008)(8936002)(446003)(102836004)(66946007)(7696005)(9686003)(54906003)(76116006)(6246003)(81156014)(8676002)(81166006)(6436002)(44832011)(53546011)(6506007)(71190400001)(76176011)(71200400001)(7736002)(25786009)(26005)(33656002)(53936002)(99286004)(186003)(305945005)(52536014)(966005)(86362001)(74316002)(256004)(14444005)(5024004)(6116002)(3846002)(229853002)(66066001)(14454004)(5660300002)(6916009)(478600001)(45080400002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4372;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pCkqUa6DrAMEUe135bP0OQlpqTqjm6UrW9/r5zb0hlb9WsUDX9XkJ/epjOiiUkE7CBCkBB20bwnR9fw2G0Vr+A1ZKsQmPEMc6D6phj23uQlEGoZnk3U9zg6jXjY2joRMmCyZtkfMK/QHT/8ddvqRTW0q6A5+WvkzPXTKb6RGANjxJWnz4LS70V4+c+ui/xB0/Gnhtjfutt5UY1wXMS3yDghq3swAvXtZx0DZqjXK7p8cEM37YeohagMZIUDTz8w8f3ilvmVjVB+5+Vf/xGx+riOL9I/zvfK8PYW5YgY6RFImlzSD5jd71eCu1ipM+GxydTEPct3CT6o0MJ1NHWK21jar79d89L1GLSjWBC3PmG+qJiHIp16JcqguNbYdyOpU1GnJXDfGVyLruNzaxrvVdDrVCn/sWfv767Vng13krWc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89aa38b6-5617-4ac5-0cdf-08d738698730
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2019 16:43:38.5879 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t+G0YzPfOiPBqDYN2f1CVYr3ihfkxl7IVqasoRsM1uavwphnY5wUf9gIIFB8m3wrYH/cGY59YboJ9drsryQ1+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4372
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_094345_251049_454548AE 
X-CRM114-Status: GOOD (  26.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.69 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "dongas86@gmail.com" <dongas86@gmail.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Oliver Graute <oliver.graute@gmail.com>
> Sent: Friday, September 13, 2019 8:16 PM
> 
> On 12/09/19, Dong Aisheng wrote:
> > IMX SCU based platforms (e.g. MX8QM/MX8QXP) are comprised of a
> number
> > of SS (Subsystems), those SS may be shared between different SoCs
> > while most of them can be reused like Devices Resources, Clocks, Power
> domains and etc.
> >
> > This patch series aims to improve the MX8 architecture to comply with
> > the HW design to save a lot of duplicated codes and benefits us a
> > better maintainability and scalability in the future.
> >
> > This patch series depends on another clk new binding series:
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatc
> >
> hwork.kernel.org%2Fcover%2F11046287%2F&amp;data=02%7C01%7Caishen
> g.dong
> > %40nxp.com%7C2dffe4b2a0734c5a031408d738447876%7C686ea1d3bc2b
> 4c6fa92cd9
> >
> 9c5c301635%7C0%7C1%7C637039739035971290&amp;sdata=JsAy8vUkkCp
> n5HYh79oC
> > vekH3SJAICg7VQnLMP01O3c%3D&amp;reserved=0
> 
> Thx for your update of this patch series. I'am running into the issue that my
> linux next-20190904 unfortunately is not booting with it on my imx8QM
> board. Kernel is just stuck during boot see below.
> 
> I applied your v5 of your clock binding patches series and applied this series in
> v3. Your former two patch series worked well with next-20190716.
> 
> The last messages from the kernel are:
> 
> [    1.019208] imx-scu scu: mbox_request_channel_byname() could not
> locate channel named "gip3"
> [    1.027316] imx-scu scu: failed to request mbox chan gip3, ret -22
> [    1.033480] imx-scu scu: failed to enable general irq channel: -22
> [    1.039646] imx-scu scu: NXP i.MX SCU Initialized
> [    1.047414] a35_clk: failed to get clock rate -22
> [    1.058682]  lcd0-pwm0: failed to power up resource 188 ret -22
> [    1.064314] imx-scu-clk: probe of pwm_clk failed with error -22
> [    1.070538]  lcd0: failed to power up resource 187 ret -22
> [    1.075690] imx-scu-clk: probe of lcd_clk failed with error -22
> [    1.085965] mipi_csi0_core_clk: failed to attached the power domain -2
> [    1.092359] mipi_csi0_esc_clk: failed to attached the power domain -2
> [    1.098777] mipi_csi0_i2c0_clk: failed to attached the power domain -2
> [    1.105278] mipi_csi0_pwm0_clk: failed to attached the power domain -2
> [    1.115744] imx8qm-pinctrl scu:pinctrl: initialized IMX pinctrl driver
> [    1.123923] gpio-mxc 5d080000.gpio: IRQ index 1 not found
> [    1.130276] gpio-mxc 5d090000.gpio: IRQ index 1 not found
> 
> I see similar messages also with your older working patches, only the last two
> lines are new errors.
> 

Those warnings are because we are still missing some domains added into the
pd driver support, it does not block the booting.

But I did miss to send another power domain patch to avoid gate of console domain
which may result in the console hang.

Please try below patch:
From 4685f604938b2a8d91d9b14081c15cb554c5711f Mon Sep 17 00:00:00 2001
From: Dong Aisheng <aisheng.dong@nxp.com>
Date: Sun, 7 Jul 2019 19:37:33 +0800
Subject: [PATCH 1/1] firmware: imx: scu-pd: do not power off console domain

Do not power off console domain in runtime pm.

Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
 drivers/firmware/imx/scu-pd.c | 28 +++++++++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/imx/scu-pd.c b/drivers/firmware/imx/scu-pd.c
index b556612..770e368 100644
--- a/drivers/firmware/imx/scu-pd.c
+++ b/drivers/firmware/imx/scu-pd.c
@@ -85,6 +85,8 @@ struct imx_sc_pd_soc {
 	u8 num_ranges;
 };
 
+int imx_con_rsrc;
+
 static const struct imx_sc_pd_range imx8qxp_scu_pd_ranges[] = {
 	/* LSIO SS */
 	{ "pwm", IMX_SC_R_PWM_0, 8, true, 0 },
@@ -173,6 +175,23 @@ to_imx_sc_pd(struct generic_pm_domain *genpd)
 	return container_of(genpd, struct imx_sc_pm_domain, pd);
 }
 
+static void imx_sc_pd_get_console_rsrc(void)
+{
+	struct of_phandle_args specs;
+	int ret;
+
+	if (!of_stdout)
+		return;
+
+	ret = of_parse_phandle_with_args(of_stdout, "power-domains",
+					 "#power-domain-cells",
+					 0, &specs);
+	if (ret)
+		return;
+
+	imx_con_rsrc = specs.args[0];
+}
+
 static int imx_sc_pd_power(struct generic_pm_domain *domain, bool power_on)
 {
 	struct imx_sc_msg_req_set_resource_power_mode msg;
@@ -233,6 +252,7 @@ imx_scu_add_pm_domain(struct device *dev, int idx,
 		      const struct imx_sc_pd_range *pd_ranges)
 {
 	struct imx_sc_pm_domain *sc_pd;
+	bool is_off = true;
 	int ret;
 
 	sc_pd = devm_kzalloc(dev, sizeof(*sc_pd), GFP_KERNEL);
@@ -251,6 +271,10 @@ imx_scu_add_pm_domain(struct device *dev, int idx,
 			 "%s", pd_ranges->name);
 
 	sc_pd->pd.name = sc_pd->name;
+	if (imx_con_rsrc == sc_pd->rsrc) {
+		sc_pd->pd.flags = GENPD_FLAG_RPM_ALWAYS_ON;
+		is_off = false;
+	}
 
 	if (sc_pd->rsrc >= IMX_SC_R_LAST) {
 		dev_warn(dev, "invalid pd %s rsrc id %d found",
@@ -260,7 +284,7 @@ imx_scu_add_pm_domain(struct device *dev, int idx,
 		return NULL;
 	}
 
-	ret = pm_genpd_init(&sc_pd->pd, NULL, true);
+	ret = pm_genpd_init(&sc_pd->pd, NULL, is_off);
 	if (ret) {
 		dev_warn(dev, "failed to init pd %s rsrc id %d",
 			 sc_pd->name, sc_pd->rsrc);
@@ -326,6 +350,8 @@ static int imx_sc_pd_probe(struct platform_device *pdev)
 	if (!pd_soc)
 		return -ENODEV;
 
+	imx_sc_pd_get_console_rsrc();
+
 	return imx_scu_init_pm_domains(&pdev->dev, pd_soc);
 }
 
-- 
2.7.4


Regards
Aisheng

> Best regards,
> 
> Oliver
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
