Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E36A2CFA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 04:50:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J9Cu+pKfsXCmpN43JHwZE3JTgLLz/y69VSWqkQA+CBM=; b=bBCv8sUttEy5TU
	+kzC0BojtZzLuH2CskCu/9hxp+UTTQVgxj9UQJnv3LN3QYouBU6DEzPuRgY1C31p4NryYXm6qj7m4
	Umyuqvj+P0XKzNtQRK/imc6OW+T23ApbqWaTXBS8X33f1rlwqChlB2nbZivIgN/hcgGYWwVr/oVvH
	JNqrm9kW4sgZPEvb4B+3qu2DQzlOkD1aKSpXlQ/JNjxPTN5nvt7GzdNp8tVazVynLrRCZfG/834Ur
	QloEuPbn163MvmPsPoz5vysOEmPVU01KJyIwsLvbJBZU1IgJMv5yDF353zmdWgvuUyGBLTmNBIji/
	OnUsX7A3wBYXc850HeKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Wza-0008Vk-FY; Fri, 30 Aug 2019 02:50:26 +0000
Received: from mail-ve1eur03on0601.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::601]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3WzJ-0008NB-E9
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 02:50:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DPN3hhKwC12xAj1vHz6GUYcksENeOc08YCsCav1PB2LqlE8G/x9pjsYmtMSEQBNbwHImSME3F8a2Y2KrD5mM/iEZ9K42a8L9WVNdoVgcqCE/VyXZc8nBS3HqmwulpuLa440mwkDANmqMHjHhL83Sn0ZZkN7va5V13gyGkOzurYf00SzeN0WKWFicnW0pnqMNfUmfM36DGMkcAL3PKrQQJIzm+t11G0s4LTNxfy+8svaxxdCRWCvcC5+EBUttiQ9Kd8NdlxEDy2j1E46tcj3tfAV3ietpFvuwIDvqpQ9v/QmmT19ehilTnjLRZ1gXHQ/e6+ls58j3uGN6iXAShEZAGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eM4eMRC1pihVgxOPeLGh00LxTRusVk0fhPpoVJ2JvOs=;
 b=MzmDj4rC3G85kL9ha/yBTe47PkI20TSTJcYIOzrHkS/SdfiHspFyB8IDg2GMUmETh36c0QZCvTg1ptF2H0nblAHRg3IKv5+WoTof3nDa1/zQpIUZtVyJ4LPl75kQFjLgsL+LiFeCLqpHmCEur4JgCDE+CkstaBGeA+VtuUqnQ/UgmawTG28C1yprBb0K4Xh7XK2/QMA560cNbYfwxmLlTl8JUTHtUxnT6FLgiiOmvEqT/RsgoZ0Nlo+AMFR0/F2CH9bJwfiLntYKm2OAXfKijZkUYl8RP2GaqQOBZhuGhZHL/3P/L17h5Yxh61ZHWP6m1sA2beZJPMfjIeHNsiwuhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eM4eMRC1pihVgxOPeLGh00LxTRusVk0fhPpoVJ2JvOs=;
 b=PSO0qk7f0unEJbRCV4D9tDQU/3MtPKug5O/EVO8A504m1WlaJhQxyMJ8hIQGCw9Ey5xozl/xxrwOszmLZwzetDvzTjg77WpGK7mOPtm905Q4JM14/so6y25S33nmOUnonBkE3Loxp0UR6CQdIl9SNHlzB+/Povx8c1TjmfWuCh8=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5794.eurprd04.prod.outlook.com (20.178.117.96) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.19; Fri, 30 Aug 2019 02:50:05 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4%4]) with mapi id 15.20.2178.023; Fri, 30 Aug 2019
 02:50:05 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: RE: [PATCH v5 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Topic: [PATCH v5 2/2] mailbox: introduce ARM SMC based mailbox
Thread-Index: AQHVXU0ae8K1wuPrRECT1HUVPDQ2yacQl8yAgAJoF4A=
Date: Fri, 30 Aug 2019 02:50:05 +0000
Message-ID: <AM0PR04MB4481944FA435E252C786B73888BD0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1567004515-3567-1-git-send-email-peng.fan@nxp.com>
 <1567004515-3567-3-git-send-email-peng.fan@nxp.com>
 <20190828140217.GC21614@e107155-lin>
In-Reply-To: <20190828140217.GC21614@e107155-lin>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3ef33731-de4a-473c-d052-08d72cf4c36d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5794; 
x-ms-traffictypediagnostic: AM0PR04MB5794:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5794779080671792B965533F88BD0@AM0PR04MB5794.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1201;
x-forefront-prvs: 0145758B1D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(366004)(346002)(376002)(39860400002)(189003)(199004)(45080400002)(4326008)(478600001)(71200400001)(14454004)(71190400001)(966005)(53936002)(5660300002)(9686003)(55016002)(52536014)(6306002)(25786009)(6246003)(256004)(2906002)(33656002)(54906003)(15650500001)(8936002)(81166006)(81156014)(8676002)(316002)(66066001)(6116002)(3846002)(7696005)(102836004)(486006)(11346002)(446003)(86362001)(476003)(44832011)(76176011)(229853002)(6916009)(6506007)(26005)(99286004)(74316002)(6436002)(66446008)(64756008)(66556008)(66476007)(76116006)(305945005)(66946007)(7736002)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5794;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6vUiDhrJ1JuWX5PjFQa3RSYSwXX8UdKbEqj/6SgJfXCGEWRazN1ZkD+u2siozVAdlULHstszX4cElShKAcBoGM2+XwilCw6BNjmLxeOW7uwr2R07JdE2X/+yKTu+M1y0H6yxgG3ycLYcgTaqyV+skNYeLP5oXFY+czFFvHojNGrzTXk5nyBwP6R+8cKBwD1fEcTfD1JZw6EOxYCLBwwolZYDNVog8Ff5ci6Q8EJ/QWW1bqPZ0vIiehKXLbb2hKrzpWmrO4uM/1jCJO/Muu1DCm+DKcPkDIofokLLxfGRS6TcuFLkdDGGdbAO2WRoLyrJyD5j9joCiLBfZlaDSRWP378/085TFxw6wSo1sRNhv1LEI6ugndr1kzGgiWGioFnpdi4wieuC4dsrveoIW5a4YtkK1aVTLuCLkdeTLML6/So=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ef33731-de4a-473c-d052-08d72cf4c36d
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2019 02:50:05.7561 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dN7yG6ehuzJE/VUvxXcurrvY6TI+c0zxZkar9tXmMndOY1cUIpbAdeDXMNdHrhUar6mhJUMMURpxB0pz6q8IFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5794
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_195009_484962_C6D6FB39 
X-CRM114-Status: GOOD (  21.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:601 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH v5 2/2] mailbox: introduce ARM SMC based mailbox
> 
> On Wed, Aug 28, 2019 at 03:03:02AM +0000, Peng Fan wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > This mailbox driver implements a mailbox which signals transmitted
> > data via an ARM smc (secure monitor call) instruction. The mailbox
> > receiver is implemented in firmware and can synchronously return data
> > when it returns execution to the non-secure world again.
> > An asynchronous receive path is not implemented.
> > This allows the usage of a mailbox to trigger firmware actions on SoCs
> > which either don't have a separate management processor or on which
> > such a core is not available. A user of this mailbox could be the SCP
> > interface.
> >
> > Modified from Andre Przywara's v2 patch
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore
> > .kernel.org%2Fpatchwork%2Fpatch%2F812999%2F&amp;data=02%7C01%7
> Cpeng.fa
> >
> n%40nxp.com%7Ca1e96c6b782d43b2cfb208d72bc05898%7C686ea1d3bc2b
> 4c6fa92cd
> >
> 99c5c301635%7C0%7C0%7C637025977487779923&amp;sdata=rzC%2B4Y1c
> q9Y3tSDFR
> > %2Fsvf5ktk7INP2rwXN%2BXdWCVjNs%3D&amp;reserved=0
> >
> > Cc: Andre Przywara <andre.przywara@arm.com>
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  drivers/mailbox/Kconfig           |   7 ++
> >  drivers/mailbox/Makefile          |   2 +
> >  drivers/mailbox/arm-smc-mailbox.c | 215
> > ++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 224 insertions(+)
> >  create mode 100644 drivers/mailbox/arm-smc-mailbox.c
> >
> 
> [...]
> 
> > +static int arm_smc_mbox_probe(struct platform_device *pdev) {
> > +	struct device *dev = &pdev->dev;
> > +	struct mbox_controller *mbox;
> > +	struct arm_smc_chan_data *chan_data;
> > +	const char *method;
> > +	bool mem_trans = false;
> > +	int ret, i;
> > +	u32 val;
> > +
> > +	if (!of_property_read_u32(dev->of_node, "arm,num-chans", &val)) {
> > +		if (!val) {
> > +			dev_err(dev, "invalid arm,num-chans value %u\n", val);
> > +			return -EINVAL;
> > +		}
> > +	} else {
> > +		return -EINVAL;
> > +	}
> > +
> > +	if (!of_property_read_string(dev->of_node, "transports", &method)) {
> > +		if (!strcmp("mem", method)) {
> > +			mem_trans = true;
> > +		} else if (!strcmp("reg", method)) {
> > +			mem_trans = false;
> > +		} else {
> > +			dev_warn(dev, "invalid \"transports\" property: %s\n",
> > +				 method);
> > +
> > +			return -EINVAL;
> > +		}
> > +	} else {
> > +		return -EINVAL;
> > +	}
> > +
> > +	if (!of_property_read_string(dev->of_node, "method", &method)) {
> > +		if (!strcmp("hvc", method)) {
> > +			invoke_smc_mbox_fn = __invoke_fn_hvc;
> > +		} else if (!strcmp("smc", method)) {
> > +			invoke_smc_mbox_fn = __invoke_fn_smc;
> > +		} else {
> > +			dev_warn(dev, "invalid \"method\" property: %s\n",
> > +				 method);
> > +
> > +			return -EINVAL;
> > +		}
> > +	} else {
> > +		return -EINVAL;
> > +	}
> > +
> > +	mbox = devm_kzalloc(dev, sizeof(*mbox), GFP_KERNEL);
> > +	if (!mbox)
> > +		return -ENOMEM;
> > +
> > +	mbox->num_chans = val;
> > +	mbox->chans = devm_kcalloc(dev, mbox->num_chans,
> sizeof(*mbox->chans),
> > +				   GFP_KERNEL);
> > +	if (!mbox->chans)
> > +		return -ENOMEM;
> > +
> > +	chan_data = devm_kcalloc(dev, mbox->num_chans, sizeof(*chan_data),
> > +				 GFP_KERNEL);
> > +	if (!chan_data)
> > +		return -ENOMEM;
> > +
> > +	for (i = 0; i < mbox->num_chans; i++) {
> > +		u32 function_id;
> > +
> > +		ret = of_property_read_u32_index(dev->of_node,
> > +						 "arm,func-ids", i,
> > +						 &function_id);
> 
> I missed it in binding but I thought we agreed to make this "arm,func-ids"
> a required property and not optional ?

Not sure Jassi is fine with it being a required property, but I could convert
it to a required property in V6.

Thanks,
Peng.

> 
> --
> Regards,
> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
