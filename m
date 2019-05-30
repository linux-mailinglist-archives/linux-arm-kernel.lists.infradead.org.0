Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECDB12F89C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 10:32:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/MhLO8vjqpN56LeRaVbCey9ne3hVbFitar0iJG/jfXA=; b=QBSLWTY8RWb2bG
	YNJzVhogj8U3kucYBWbOewRWFnODtbNkateb9pNRwfZwzC4l8WPffAVhSWGCvbMBHDWanr2vPWtv1
	iuA/3T1ok/12EetHe9WGdj02gd4pSA/y1z3PRdJCCG6UpYk1IYW4cfLyn/0y+Tg5BdJk0MCAfF6AB
	a1mnTNIsp5XowOtkRsAxJ3Jb5r8I7eZ7TBFy0z0328oxvuKSUlhSHiuxoMP3YW1iqbdsEh4NSI8fR
	5MA/ZFZQZrteAAwopKSDafeg2feEsCfxzsdxty1rMkTkvMVh+KodvE+LzetcrPt4O+htMro034dKZ
	ArcexQnHBFu2d8IpJbDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWGUY-0004jk-Rx; Thu, 30 May 2019 08:32:54 +0000
Received: from mail-vi1eur04on0609.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::609]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWGUR-0004iy-Vt
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 08:32:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fi54/Wsb2EELtCPVtGgRW8DWCkW3wAB0JnotLKVG+Gs=;
 b=oR8V5EBDtL7fbUySSjtUo+BZWIhQsw1Yjy1MPQf3Qip+d6FWtvSBNKbabIu5eFkb5S1vegNq8zbX51dTnIDICwbH7u78KDT42e9SUm9w4jJZTi9AmN72+H6qF6AmdarXe8E7FEAS5fo0lCvU0ZE1aFCrjCNr+OY2U1FWs3THJUo=
Received: from VI1PR04MB5214.eurprd04.prod.outlook.com (20.177.51.203) by
 VI1PR04MB3085.eurprd04.prod.outlook.com (10.170.228.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16; Thu, 30 May 2019 08:32:41 +0000
Received: from VI1PR04MB5214.eurprd04.prod.outlook.com
 ([fe80::5141:a777:e2ca:f736]) by VI1PR04MB5214.eurprd04.prod.outlook.com
 ([fe80::5141:a777:e2ca:f736%3]) with mapi id 15.20.1922.021; Thu, 30 May 2019
 08:32:41 +0000
From: Daniel Baluta <daniel.baluta@nxp.com>
To: "nicoleotsuka@gmail.com" <nicoleotsuka@gmail.com>
Subject: Re: [PATCH 0/3] Add mclk0 clock source for SAI
Thread-Topic: [PATCH 0/3] Add mclk0 clock source for SAI
Thread-Index: AQHVFVgpjX4j9HD02UiVNkRH/YGV5aaCuuaAgACe54A=
Date: Thu, 30 May 2019 08:32:41 +0000
Message-ID: <fe755bc76ac7226790a7db6ab025db04fcd6d8d5.camel@nxp.com>
References: <20190528132034.3908-1-daniel.baluta@nxp.com>
 <20190529230357.GB17556@Asurada-Nvidia.nvidia.com>
In-Reply-To: <20190529230357.GB17556@Asurada-Nvidia.nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b68ef5d0-529e-4384-ffe3-08d6e4d961d0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB3085; 
x-ms-traffictypediagnostic: VI1PR04MB3085:
x-microsoft-antispam-prvs: <VI1PR04MB30851DECD84980EA92A83E5BF9180@VI1PR04MB3085.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 00531FAC2C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(366004)(39860400002)(136003)(346002)(189003)(199004)(66066001)(71190400001)(6246003)(6506007)(118296001)(71200400001)(76176011)(25786009)(66946007)(256004)(6916009)(76116006)(102836004)(66476007)(1361003)(316002)(6512007)(99286004)(229853002)(73956011)(44832011)(1411001)(2351001)(68736007)(4744005)(53936002)(186003)(14454004)(2501003)(478600001)(54906003)(6436002)(6486002)(4326008)(2906002)(486006)(2616005)(476003)(36756003)(446003)(11346002)(66446008)(7736002)(1730700003)(5640700003)(66556008)(8676002)(3846002)(6116002)(86362001)(5660300002)(64756008)(81156014)(26005)(305945005)(81166006)(8936002)(7416002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3085;
 H:VI1PR04MB5214.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: aeMVxTvOmwFeMyJ8V5lJolWb9AmL4hwvVn6eE+NdffmxoDeDcBnsNyvdIvy3HBitSifmbkDCV5hnTSLmikTY9F4hmcoWcsaztbNjk4oEEtw9hWqNDoFVznaDHDmp/qbMpIB0J0DlIbqXDrlsFgftuKx+qi9DrA1lLqt4tYDvbtrGkQROODGnYqUChp2WLk6mt64ROZteqJ+fNQ0zcxiCPrS1iIvCKNtP1819FbLJt3NE2a975tZlzTL/iRcDyQ6eG8wy22OGPCS1ZPN3fEsLbVyUIGj13a0SWqxZrB+U/4wh//e9RN6u3i7VP2Njmo+R81CZRPESkRMLkOH6oRzxgvFH5VVh39umhB9Zrh/QxQ8XFpOXPbbkKzVj05tkb2s+j5H5KtikwrxUeeBK+cG5N3G43hGbMUvKv0s1coWborA=
Content-ID: <1F4BDF9EB712444AB8F6F83A9950F048@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b68ef5d0-529e-4384-ffe3-08d6e4d961d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2019 08:32:41.8687 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: daniel.baluta@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3085
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_013248_079583_DAD1033C 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:609 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "timur@kernel.org" <timur@kernel.org>,
 "Xiubo.Lee@gmail.com" <Xiubo.Lee@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "tiwai@suse.com" <tiwai@suse.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-05-29 at 16:03 -0700, Nicolin Chen wrote:
> On Tue, May 28, 2019 at 01:20:46PM +0000, Daniel Baluta wrote:
> 
> > 1) SAI clock source select MUX is really part of the hardware
> > 2) flexibility! We let DT tell us which is the option for MUX
> > option 0.
> 
> I think the "MUX" is plausible comparing to your previous version.
> As long as DT maintainers ack the DT binding doc, I would be okay
> to ack too. Just one comments at the dts/dtsi changes, I know the
> driver would just warn old DTs, but it does change the behavior at
> the mclk_clk[0] from previously bus_clk to NULL after this series.

Thanks for review, will fix in v2.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
