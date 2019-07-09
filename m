Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A7463273
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 09:54:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l4A3Btpf5eGUCwlVBWHw4juQAEha8v9SdlBehJNbjD0=; b=mQPlosOJqSsuo2
	p/X05qQVAV3o2vm3BVthsvEi4XpOu0+s4ieSfW6JK2/Tz0I3KV919m+6c37SqV6ktTIw2ojgRVJsq
	RiMEMu9RB0+M+W8PMVZIykb+LmKIJaiQI5PSQqNSIXC68g77GMwRN7EJa8eCieiRq+L4i/4hnnFkm
	Bm9kj3vxIXyufqjL9QyBgvioHic+yCLHFb4IQgWquCuB/5Lic4rImS6/q30PwNqi/Zzl2+8Ismuxv
	9bVpXceEmwi2A77h8pdq5/yA8cWDVP48+OW/GK4FdO8GDK3IbSLvj7NWxednS7wKtZGZS4tNmFKZ0
	AiNQkLyHopeVx3Z/xZ5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkkxK-0001bN-Pg; Tue, 09 Jul 2019 07:54:30 +0000
Received: from mail-eopbgr50047.outbound.protection.outlook.com ([40.107.5.47]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkkx7-0001al-Ph
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 07:54:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=11+mE3LekTYOs6mgEEZcV/Nsgm9Uc/puEf/EYqi1M1Q=;
 b=eBa+8nqgWv3hyQzSQPvEvE6v8Igkl4FAABq02zmdldMb6PIprEgg/ARUrIayl2psUyJaf5rutyGsHtnOs+yww3tWOISzyMRq8eMbDJRojGu8geMgPjDNQho8b5jHu+e/wOzYv5HjX3+RZuFSuSIZAEbGgQ716R9Vh0g7apKP+pU=
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com (52.133.30.10) by
 AM6PR0402MB3829.eurprd04.prod.outlook.com (52.133.29.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18; Tue, 9 Jul 2019 07:54:12 +0000
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::d5e6:6a87:7e6:95a]) by AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::d5e6:6a87:7e6:95a%5]) with mapi id 15.20.2052.020; Tue, 9 Jul 2019
 07:54:12 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: RE: [PATCH 1/3] opp: of: Support multiple suspend OPPs defined in DT
Thread-Topic: [PATCH 1/3] opp: of: Support multiple suspend OPPs defined in DT
Thread-Index: AQHVNibFv2pnbMa9dEaxk1dFwsj7f6bB6eKAgAAAi1A=
Date: Tue, 9 Jul 2019 07:54:12 +0000
Message-ID: <AM6PR0402MB3911CB4D54A71EB69E8E7544F5F10@AM6PR0402MB3911.eurprd04.prod.outlook.com>
References: <20190709071056.26361-1-Anson.Huang@nxp.com>
 <20190709075119.rg6ktsg7nwdadsmd@vireshk-i7>
In-Reply-To: <20190709075119.rg6ktsg7nwdadsmd@vireshk-i7>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ac5f6b97-4a1b-420e-c6b5-08d70442a20c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM6PR0402MB3829; 
x-ms-traffictypediagnostic: AM6PR0402MB3829:
x-microsoft-antispam-prvs: <AM6PR0402MB3829838EB6426CA5BE249A20F5F10@AM6PR0402MB3829.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0093C80C01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(376002)(396003)(346002)(39860400002)(189003)(199004)(14444005)(14454004)(25786009)(4326008)(15650500001)(229853002)(81166006)(102836004)(6436002)(74316002)(446003)(11346002)(305945005)(486006)(476003)(53936002)(81156014)(8676002)(7736002)(3846002)(6116002)(8936002)(68736007)(54906003)(99286004)(478600001)(76176011)(6246003)(7696005)(53546011)(6506007)(256004)(2906002)(26005)(186003)(73956011)(66066001)(52536014)(86362001)(76116006)(33656002)(66946007)(66476007)(66556008)(64756008)(66446008)(71190400001)(71200400001)(9686003)(6916009)(316002)(5660300002)(55016002)(44832011)(7416002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR0402MB3829;
 H:AM6PR0402MB3911.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: fdQdyEtUMHL7YTLMHNCIqtjqzMf5ksmmS86p4mE66X+k2ZGjNgpdHM+QvCs/mJIIO3UY2qAKCVrjs6XGcF1dAAYKtEurWbPhkYkxo6RemPQvf2VLJSiUh1WOfzAfODR+rjGZ0JCjD1MV9hgukpTHHeZoKPdHw0P/ksc02qNKo/Chlr38Bd8BATt0EwSlYCb3zIn+SLnpMTA0WSXirW9kuZVQHULze78VHGj1+Xma/NKdm7j4e8uRbozsPaU93hmm9TeWpS9CC0wAjPra5pyXQLi2W0nG/Ns0AvZXtj+oE7E0E6oBobQJ4OE3wilibLF6/B6Qyqurj923liUOY7LWV+h2B1OkDVOAX3n3DgtEVwVzSgmlwFgtIRW9iBr1KYE4ZTN3Y/sO63YUmh8WRdLylKK0q7qVO20KvQOEh0eqLz8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac5f6b97-4a1b-420e-c6b5-08d70442a20c
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2019 07:54:12.8154 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3829
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_005417_842115_B433434E 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, "nm@ti.com" <nm@ti.com>,
 Jacky Bai <ping.bai@nxp.com>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "agx@sigxcpu.org" <agx@sigxcpu.org>, "angus@akkea.ca" <angus@akkea.ca>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "vireshk@kernel.org" <vireshk@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Viresh

> On 09-07-19, 15:10, Anson.Huang@nxp.com wrote:
> > From: Anson Huang <Anson.Huang@nxp.com>
> >
> > With property "opp-supported-hw" introduced, the OPP table in DT could
> > be a large OPP table and ONLY a subset of OPPs are available, based on
> > the version of the hardware running on. That introduces restriction of
> > using "opp-suspend"
> > property to define the suspend OPP, as we are NOT sure if the OPP
> > containing "opp-suspend" property is available for the hardware
> > running on, and the of opp core does NOT allow multiple suspend OPPs
> > defined in DT OPP table.
> >
> > To eliminate this restrition, make of opp core allow multiple suspend
> > OPPs defined in DT, and pick the OPP with highest rate and with
> > "opp-suspend" property present to be suspend OPP, it can speed up the
> > suspend/resume process.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  drivers/opp/of.c | 9 ++++++---
> >  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> Please update the DT bindings first.

OK, will send a V2 containing DT binding changes.

> 
> FWIW, all three patches look fine otherwise.

Thank you!

Anson.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
