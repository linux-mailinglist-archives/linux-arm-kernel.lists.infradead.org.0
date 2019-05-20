Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D3B22C48
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 08:48:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zb3VGAhi9Ywedf32nlcdyuOdw/IQR1FPZviWtVQrDEw=; b=eo6wxY0H+9n0K0
	MLUUWPLImdrKX3ycGLEeZ7oN0adLQDaehosZfOGaooU0rG3th56vosTdfXJw8qdiFn4tMr9EGDVrq
	VbVuOaL0Wpd6EXDxLeRoBMMbVuLmToNe5dz+H0jWSZ8kv8nzDes8QpEwqAakhRZpkL97E3mB/9a65
	mSwv6/+7wcG60yuN2WHxppqmotWvDc5clhGNRP/S6Ea6BFbX+RMqdYPcYX38uCzDNplHvb25DsUX4
	+6krMTQRPGK6jT46FMRjSkM1VemOYzL4AqvEJuk9jmJnwWNEznYL7wAjjbA6K9IiavOMgxD0EhzWe
	n9AgccD4ADGCW0ZV9PDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSc5w-00033c-Ez; Mon, 20 May 2019 06:48:24 +0000
Received: from mail-eopbgr60085.outbound.protection.outlook.com ([40.107.6.85]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSc5o-000332-Bg
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 06:48:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=33YX5R8PmkzdWm+eur9703rXCTwKjIvAQ3tNLBN8u/4=;
 b=MmgHf+Kaqd89N/aQ6IBnsC6tiI03CZ1Le1UtCRiNngxVaPXyOLphIK4O8rn56XDBx1weH2LOR2INPD6rG0z7woLOP/gswxphwskq61TIWn3mStDH87UYPsNit8j6iVTDVx5uFvYzhphT4Q6tfrLPCaAngNissvbpEQvD4UeYEas=
Received: from AM5PR0402MB2865.eurprd04.prod.outlook.com (10.175.44.16) by
 AM5PR0402MB2689.eurprd04.prod.outlook.com (10.175.46.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Mon, 20 May 2019 06:48:13 +0000
Received: from AM5PR0402MB2865.eurprd04.prod.outlook.com
 ([fe80::d8ed:b418:4ee9:a51]) by AM5PR0402MB2865.eurprd04.prod.outlook.com
 ([fe80::d8ed:b418:4ee9:a51%9]) with mapi id 15.20.1900.020; Mon, 20 May 2019
 06:48:13 +0000
From: Ran Wang <ran.wang_1@nxp.com>
To: Pavel Machek <pavel@denx.de>
Subject: RE: [PATCH V2 3/3] soc: fsl: add RCPM driver
Thread-Topic: [PATCH V2 3/3] soc: fsl: add RCPM driver
Thread-Index: AQHVDGHzIQrvIPzRX0ytn5pxhdLuLqZy/bMAgACX+4A=
Date: Mon, 20 May 2019 06:48:13 +0000
Message-ID: <AM5PR0402MB2865EC5E1EF12C6C1D3C5566F1060@AM5PR0402MB2865.eurprd04.prod.outlook.com>
References: <20190517033946.30763-1-ran.wang_1@nxp.com>
 <20190517033946.30763-3-ran.wang_1@nxp.com> <20190519213844.GH31403@amd>
In-Reply-To: <20190519213844.GH31403@amd>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ran.wang_1@nxp.com; 
x-originating-ip: [92.121.36.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5d0f9db8-930c-42dc-005c-08d6dcef215a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM5PR0402MB2689; 
x-ms-traffictypediagnostic: AM5PR0402MB2689:
x-microsoft-antispam-prvs: <AM5PR0402MB26891593F97955049CBE6E5AF1060@AM5PR0402MB2689.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(39860400002)(136003)(396003)(346002)(366004)(189003)(199004)(26005)(186003)(305945005)(9686003)(7736002)(55016002)(2906002)(3846002)(99286004)(7416002)(6116002)(76176011)(33656002)(316002)(25786009)(5660300002)(53546011)(6506007)(74316002)(68736007)(7696005)(52536014)(446003)(11346002)(476003)(486006)(4326008)(6916009)(6436002)(14444005)(256004)(102836004)(229853002)(53936002)(86362001)(64756008)(66946007)(66556008)(66476007)(73956011)(76116006)(66446008)(8936002)(71200400001)(71190400001)(54906003)(81156014)(6246003)(8676002)(66066001)(478600001)(14454004)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR0402MB2689;
 H:AM5PR0402MB2865.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: GPFJe1rRXtwMD0DZ7BXyf/zcy3pI4o6DSiAVXZwVRIaHUfSDmfyJ50ibcznwpXuQmiY6vshHb+xb4IRfKSuoxgu9NQghvNA9dFQIK1mzUKz+MG+q5QEKvKPJRLY29FqHIPdh4n+0ajP6Y+G8YMwJOZGeHfTQ/gN4f6OSAqTb7VurEZVH16m+Pg76+zXNyXp77SRPpdfcvPU82nsR6WeislODehwvMnM2I5QJwpTynQFKohDYsqu66FO57Dxzs9a1guHAMuFB7oJP0HUJesiYO0J4yP6EQDLIzY/yyO81B0gGFlNwaMNMsiDblrSqRSQgZwgtZDhlZovVI+X3rsphlFHG5UElZHmk4J83zH2LCOD/UINnXlSGsHjXPymWc+YyeTlfjF2B3h1iqfn0wjB2PrhIO3bJiJb002x7X7dTE54=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d0f9db8-930c-42dc-005c-08d6dcef215a
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 06:48:13.3584 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0402MB2689
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_234816_398929_A316520A 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Len Brown <len.brown@intel.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

On Monday, May 20, 2019 05:39, Pavel Machek wrote:
> 
> Hi!
> 
> 
> > +
> > +struct rcpm {
> > +	unsigned int wakeup_cells;
> > +	void __iomem *ippdexpcr_base;
> > +	bool	little_endian;
> > +};
> 
> Inconsistent whitespace

OK, will make them aligned.

> 
> > +static int rcpm_pm_prepare(struct device *dev) {
> > +	struct device_node *np = dev->of_node;
> > +	struct wakeup_source *ws;
> > +	struct rcpm *rcpm;
> > +	u32 value[RCPM_WAKEUP_CELL_MAX_SIZE + 1], tmp;
> > +	int i, ret;
> > +
> > +	rcpm = dev_get_drvdata(dev);
> > +	if (!rcpm)
> > +		return -EINVAL;
> > +
> > +	/* Begin with first registered wakeup source */
> > +	ws = wakeup_source_get_next(NULL);
> > +	while (ws) {
> 
> while (ws = wakeup_source_get_next(NULL)) ?

Actually, we only pass NULL to wakeup_source_get_next() at very first
call to get 1st wakeup source. Then in the while loop, we will fetch
next source but not 1st, that's different. I am afraid your suggestion
is not quite correct.

> 
> > +static int rcpm_probe(struct platform_device *pdev) {
> > +	struct device	*dev = &pdev->dev;
> > +	struct resource *r;
> > +	struct rcpm		*rcpm;
> > +	int ret;
> 
> Whitespace.

OK, will update, thanks for your review.

Regards,
Ran

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
