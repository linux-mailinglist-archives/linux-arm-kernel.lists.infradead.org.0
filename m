Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E65CC1B6B7B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 04:40:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ICU1Z4/CG3k1Wk21A0bMgU3aZL7MDaRwyFVk1zwnmh8=; b=EJSA1/s+DtaYeR
	+XYf33BQZDzUVpcEdk9Gdf6nfi/Coh8C50BV+ogoKVDIRb93XS1lgAKOGQiXtHMp9WVfdvLLOlsiS
	1JUVh4CQ5rn8Fj1LhMfUUZm33EsMAXRA0yFHgc0etInaieW7Ghdc56pX4349Nx7nUMoLwSDv07b1z
	Y1LNSp3Np6zcUqc55Jj8hCLhNPRW4PEFAelZR4kYXC2L+mexVataXF6T5FUPNVQv5P8leTMFWlAnZ
	KkTM3cJPM578cxKxsMj42tayxHZYsHSuA+0gG84+O9AzkCb7S6qO5dwZyDkcCPG2puPBRrM7ste1P
	VvApBo10zdBNxCrB5k+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRoFv-0004bf-N5; Fri, 24 Apr 2020 02:39:55 +0000
Received: from mail-eopbgr70048.outbound.protection.outlook.com ([40.107.7.48]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRoFS-0004Mc-PY
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 02:39:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XKhVoB22jQh60SssVSARJ92mBwMgpAGIH4qrOYnWSASzV7y2Ko+YfXMYdjyznMBL4Z+G886uvU28GhkazJiAAVZ3u1D0M81kj0llwQjO/iI0nD9uyN5jdyHpVEjlos7W9APYnmbmvFcD4VBPBBtA3icBphCwMXw5mk71WRvTAIvQVa6lQr+4WDHvfsthJQ3Y/JgeegzImEgjZiA1W2919jNKPLqqmp33gNN3tj6kt1x6v2jQCKE1oMZ7XLfLjEx/Toznl1ddyIbw5XkniOLW0oHXIe1wR49k7mMaPynZ05x5rqRcFeo6MJzQP+flxLYPOjFtNQz78RVY3bkp9glktw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=exfXMu8i93D6vOtvPn+ylhuOHbb9H4Q8DIq+/9sl2wQ=;
 b=jPD+SdG/gD7HBZSzhHFVR3oI+v3fwuT8xeqfvzRHBldQhOOAZkcXEcPvbsNlCPAs5zONyq2QfxR9kzlTuZEFqqMx6RGZ3FMbrSFbCoOg1Ku2kXMS1Ge/l5gERP8cJ1BmduuVetl4tNazuROhPrQOhpBcNVHloTppExYhuhJBWzluseECOttMpTYj5/IOVwAtLy59Tw7CUaCgUQVslLSTtHFi9wwKTbMsj78616U2ak2lSXEjkUPALSD2yPwSFlX989DalEJ45RzenFtyNow5cXP/AK0zXsGQMIueU1El0IiliB5NhjVEzsFPwAkpSE0kghePze1cU9umeZ0GebheIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=exfXMu8i93D6vOtvPn+ylhuOHbb9H4Q8DIq+/9sl2wQ=;
 b=S/KpxMDRXQdBOcjSuna4LhENn4W07wXbWCUGhr87NqDq9768ApXpOP7Lr3q203XIl2x/Sm1kiEYxa5q748bDYv8l8PTBgXhxoroQQHGt2a6bHQkLcxqKDOF6wjn9BBpArF5JRE1t2qltGB1Z3L8YbAhWGPQxz/YePYjFzhvQdpM=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3644.eurprd04.prod.outlook.com (2603:10a6:8:c::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.27; Fri, 24 Apr
 2020 02:39:22 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2921.035; Fri, 24 Apr 2020
 02:39:22 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Fabio Estevam <festevam@gmail.com>
Subject: RE: [PATCH V3] dt-bindings: firmware: imx: Move system control into
 dt-binding headfile
Thread-Topic: [PATCH V3] dt-bindings: firmware: imx: Move system control into
 dt-binding headfile
Thread-Index: AQHWGdtpofQ5zHLd70+KBUlffVexDKiHjQmAgAACQqA=
Date: Fri, 24 Apr 2020 02:39:22 +0000
Message-ID: <DB3PR0402MB3916280C232C88A5D7E2C849F5D00@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1587692801-12149-1-git-send-email-Anson.Huang@nxp.com>
 <CAOMZO5CmgxUggzZxpmeHT8Rh_Q9XXWvsMopOzq7NfVpkCsLVQA@mail.gmail.com>
In-Reply-To: <CAOMZO5CmgxUggzZxpmeHT8Rh_Q9XXWvsMopOzq7NfVpkCsLVQA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ad9834ca-2aff-465d-bee4-08d7e7f8b251
x-ms-traffictypediagnostic: DB3PR0402MB3644:|DB3PR0402MB3644:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3644B834834FC4CC72381CC9F5D00@DB3PR0402MB3644.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1265;
x-forefront-prvs: 03838E948C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(396003)(39860400002)(136003)(366004)(346002)(376002)(8676002)(64756008)(66446008)(8936002)(44832011)(6916009)(186003)(76116006)(26005)(54906003)(52536014)(4326008)(7416002)(33656002)(478600001)(71200400001)(66946007)(4744005)(2906002)(316002)(66556008)(7696005)(66476007)(53546011)(5660300002)(55016002)(9686003)(86362001)(6506007)(81156014);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: o8/uS7mpccrtb1O2W7a05texkxIP+be07hNAOUzjVrVIX/LHlfYqBk1CMWIpYvW31EBtOa1OlWZQVpis+Q6f/pvMUgzxrj1XCMv8LGu37Lcob9SWfvrlRLQD/LkiHK9k46e0/h4k0eUj+4BPO/WWNerU5q6XnU4QAydIZQsqIsyIRIMqK8/STk/e7ctPORPRvhmYit9Zb/j5dGC9D3+WK4pBYnrFHwrNpqOURiyWXUahRFKioWDStQJQKrcA8b98a8W++atMBSKviE2a+ojCVjhS2CvaaMNNzzt0JVOg4aNCOnho/Ynnid2VfrpBQvwUPWDAXOKysgZf5XqPioPu8BhGEEPhPC5vuwQeIBY3CU49jknz98CqJBNb6ACdYo2wg/1rgXIHE0cvUDxYAvP0FgWDjQ+mwTgJpipi+ZtztNQorbaNHGs9CFDicrnrHqkA
x-ms-exchange-antispam-messagedata: rEb/vT9WB4YEQMw5Af/naQ8XFL+8garNvQ0pLDbrLmIyrjm/39N+qxa/PM+RSY/l5dA7wFj4HtgwLaNROzkqKy+1seMJ2PBe9xdg4wJDfnNh9slGRpiY5kai6RIYJ7Zxku4XTePkGGxO621f2Rt6RPw4QpEy3YZANNK9JBn3t7A0+mJjFQPiP3TAMcMlhjd9uJWV9zW7Idmip0zK8bqqZq/dmZDESBNq+73xH1PUmJAimMIZRPk5dyGV5wv22RxfJPGCxJnQDxVGYkYIN0GVQYBctxPqqXi/C8GJg68DpaXjuk09nD+h0snddp/y2UwrTcXxu08xYJAk6g5cH6g2Fh8zw0PF1+Gikg66PgS1pYVy8VpWvF9iphS90IVC4J/5iIeL8KTWme9TQi135YuaSGWeiGHL5OjHCzd82SGQjSOY3rRB9UnqMsnx3EEmIxTS3s/Lc6bprWr7ig1BK+SAD9DgbsSPJgrvVtDlUYRY05BOTfORTDcXeZWJpHPFumys64iPGUSWJbcCCZjEKcBx4DjN37MOH5zGx1i3Lk36ApieC8WlHDSe0nCPsyDHLpBG1IzTdCNUzAia6Dzn1kb1YnxA/mrH7Kk116rfcikh6ESmtw3vpDsXFVlH6W0fP4WedmJyBy4KPoWG7dgE7upPgXkA46/xRHVHZXtrTpNgpk2mtuCSFR7eDggSf2aPI7hbdJUnVRTpVLm582sorRXL+rvP9374hIZPldGZX/kKMdNrTfQ3aKmdqDX8Eqt1GagxYEz5EIdl6DWY2z/HY1Ag+28GPwedeZC3AwlsJIljhpI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad9834ca-2aff-465d-bee4-08d7e7f8b251
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2020 02:39:22.4542 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Sz1ZZ75BxNuCW7/0NcMiKsAUQjfUfOCNwIstTIHWpa/wSgEUJE2Z0dXSekDnb9QNfRY7bItF2YXPbukIPPhMrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3644
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_193926_833159_9399E79E 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.48 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Amit Kucheria <amit.kucheria@verdurent.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Peng Fan <peng.fan@nxp.com>,
 Oleksij Rempel <linux@rempel-privat.de>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 "rui.zhang" <rui.zhang@intel.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> Subject: Re: [PATCH V3] dt-bindings: firmware: imx: Move system control into
> dt-binding headfile
> 
> On Thu, Apr 23, 2020 at 10:55 PM Anson Huang <Anson.Huang@nxp.com>
> wrote:
> >
> > From: Dong Aisheng <aisheng.dong@nxp.com>
> >
> > i.MX8 SoCs DTS file needs system control macro definitions, so move
> > them into dt-binding headfile, then include/linux/firmware/imx/types.h
> > can be removed and those drivers using it should be changed accordingly.
> >
> > Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> 
> The From and Signed-off-by tags do not match.

Oops, send a V4 to fix it.

Thanks,
Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
