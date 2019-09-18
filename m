Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46185B5B05
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 07:46:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ONCPuvq5oW59x4ttFarJqyZPbSqzEYdhxnVc6glT4jQ=; b=FVn06kJ1ZBp0xZ
	ED6uIBEhztZHx//1tesjfvMQX04fh6h2LmWX0BMHXqTELiqkUWNW8NAt5JYIQKMU+/0c3z7WV3ZRJ
	9WOG1IXtWYnQi6jgypSuxT1qkLWK8hV+FKvsIrWlhz15s3ADu+g3biulAvisVnEE6/xu6c+Vb7pAO
	CsRBB2As+2B+i1QSESE9SLgW2Jt7wxsimNwlYbdUNfXB+1pj2ohpC6iNsxl4rdDNUvomPc7r59Ckr
	L0UwMIGYC+1OclQhonj3714a2VpEBymMOmJdVBA320CTSx2v6sVKBmDgAkwZ9aW0Hm5EULiopW8+l
	breZ5S7v7MkPPAN8Vgvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iASml-0008CP-1u; Wed, 18 Sep 2019 05:45:51 +0000
Received: from mail-ve1eur03on060a.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::60a]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iASmN-00080k-12
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 05:45:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QDMQJdPAAFovwE860XCtkjjJxj1542O53bvnJ/HSUvlQ+x1iN7wNm+HiZtdGpSaQVg0Q0xuF6ewgu6uxLzR7zJn4qcQ5m6GSMlpeMux0sNbHA4cNQ1mL3YPQVC9ayi4Hw7oK5nuSzghRhKDf6Wgv9Qb+Z/p6itW5sLRP+IUM6aijuYf5V19UI2xeuOR3Hp5SqGHGZG0z35tqAeA3MGZeE4fBQIT+8p5qkIpR89K7icJQmtEYQ93FDry8iGLuWb3w+fOVEOhQ8p2zOHzIzCH3bgTW27a0Em9lWJdl9qsOELFUbFGFEq2mYMSqpJvSCu01GTNYO/UdGlNN5ZBzzHJyzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DIYGvlAzKVwDHc+fHZrSrqnqClgmPCOC4LsZaUkcx4s=;
 b=S9V4a3DGEbFjFavw9cKlBaz3mkdrkyNC1oyNPYadbedQafOKpZcN4QpwT91aQY+oj/HCAQ5Ttq0jSIGALnIISRUH1P1DSV0beDH9xv8AIeKX6ZjRpv60aVDxLXivl1V1F08II0pq8QzGRf06TE7grZFANtEiYLpd7ykFo6U7V2VMM6/+jFu1AnCDhB46peuLPHxex+A7S6tYYmBCu7qTUlCr7iZ2uC55YpXKIihuWkxwm3aVcfzDkWWxsEfuJ/QJYueWTYEpIJl5OQqx1sIIC4qyw2dYtLW+5Lohub1afAydyT74nMoenmXA4yqHV+iBR87mv0QkAo8wt2yhAgHoUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DIYGvlAzKVwDHc+fHZrSrqnqClgmPCOC4LsZaUkcx4s=;
 b=ky5Q9L7acr10Au9+D13iZ4MjKdgBn4fWBrD2fMhAh1UZtho0wzwT8tePQdWO+Zy0LA/gcFKnbUEupekSHcNZaoLhPwj4d6vp0O9vBqpCB1/dCNNXvScRoRho8x6EOS1hm2BGRflxjVjKMXadhhioIyikKnka4QLxNwbEIGqVB5g=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5747.eurprd04.prod.outlook.com (20.178.119.212) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.15; Wed, 18 Sep 2019 05:45:20 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8%6]) with mapi id 15.20.2263.023; Wed, 18 Sep 2019
 05:45:20 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, "festevam@gmail.com"
 <festevam@gmail.com>, "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>
Subject: RE: [PATCH V3 0/4] clk: imx8m: fix glitch/mux
Thread-Topic: [PATCH V3 0/4] clk: imx8m: fix glitch/mux
Thread-Index: AQHVZsAvxNHrETdja06leIJqZC3kHacvcZcwgACqvYCAAN5xEA==
Date: Wed, 18 Sep 2019 05:45:20 +0000
Message-ID: <AM0PR04MB4481D54C4508152E458BA9BE888E0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1568043491-20680-1-git-send-email-peng.fan@nxp.com>
 <AM0PR04MB4481A31DD68C3C3409E95339888F0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20190917162820.8DC542067B@mail.kernel.org>
In-Reply-To: <20190917162820.8DC542067B@mail.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8573167e-1f44-42ba-f944-08d73bfb6484
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5747; 
x-ms-traffictypediagnostic: AM0PR04MB5747:|AM0PR04MB5747:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB574729D21E4F58425ECA13B6888E0@AM0PR04MB5747.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01644DCF4A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(39860400002)(346002)(366004)(396003)(189003)(199004)(51914003)(66476007)(64756008)(71190400001)(66446008)(66556008)(66946007)(71200400001)(7696005)(6506007)(110136005)(81166006)(305945005)(8936002)(316002)(74316002)(81156014)(76176011)(6436002)(26005)(6246003)(5660300002)(9686003)(52536014)(55016002)(6116002)(3846002)(102836004)(76116006)(256004)(86362001)(2501003)(33656002)(54906003)(8676002)(66066001)(2906002)(44832011)(486006)(4326008)(4744005)(7736002)(11346002)(2201001)(476003)(446003)(25786009)(14454004)(186003)(99286004)(478600001)(229853002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5747;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: GPIIbIENDWkfactZmmUKFpXH1vvnz4L30zi8NdPRT4pC6hWdyXUL9hamM6ZHO6NxvAC3khjJ0uCOVddRW4fteFIkry3aL+nPNnEf3qtAx9/0DwGn45dUJGE2elUEg6OpMDRVxDeWmUht6/lXGJTG6vdLgn36THs2FJoNCZUZtfqliqvd50XoOWA7yx7g7EPu8C+O4CakV4zraLuqQMXrL4n0UvAjIi/zy/h4UziKv6/ffzwki0zGB479lsxRxOpa68dBsG0OQzd3aIgSY0qHdwdNsH5gv9OvlWqfYRS1ZEh0vQvw4JvBiMfCprZ6pj7ZphAHcAk0wZt5cMvOPNQGEa/e7d2Ik/B/FDozCd+A4CwEdMJWtTRSAxLA0zWs4m6aZIut0EZrl0vP4lpJ2sGR2qU7w4B7FjnfomSxkca5Epw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8573167e-1f44-42ba-f944-08d73bfb6484
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2019 05:45:20.3162 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ugd6h1Tw4hDML8W2fv4bweoM2Nref7HT0XRYC/b3yNMWrzkpbG4nI7EUuV/U7Ev+1tywvTFBctk3IRyQlDxTvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5747
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_224527_171684_53220333 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:60a listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen,

> Subject: RE: [PATCH V3 0/4] clk: imx8m: fix glitch/mux
> 
> Quoting Peng Fan (2019-09-16 23:20:15)
> > Hi Stephen, Shawn,
> >
> > > Subject: [PATCH V3 0/4] clk: imx8m: fix glitch/mux
> >
> > Sorry to ping early. Is there a chance to land this patchset in 5.3 release?
> >
> 
> No, it won't be in 5.3 because that version is released. Shawn already sent the
> PR for 5.4 too so this will most likely be in v5.5 at the earliest.

Thanks for the info. But this patchset is bugfix, so hope this could be accepted in 5.4.

Thanks,
Peng.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
