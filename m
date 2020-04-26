Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D12551B8BE2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 06:23:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HxBkrqLWzq3lcnx6IseH0UUy2wgubSxgn6cWJgkFd+Y=; b=icgwM5ZC6xvUHk
	OpAqhz20lRmCekIfcRXRyLh9Vr2Iiiyh0JF1UHLl7iDhp2Oi1Obq+yv+LGN3RaBGGZugGZTXjN75O
	exaVlGEiIwX92q/Xmh1I5mYytLd+2ly1NyRiMNE6/nWAzB5nWAUJN+oE1VU1kTDW5gjIdWfC41/o/
	Ps/S/Qy5FkfB2NjLfPm6X3EJDMF65vF0c8KdpX/AJgE4tqPj0BoTw26/LIks9nnzVBvt+8j+5XKvf
	rZeWxPTiQ9HbL35BWGk1WBB3TrcTEqz+IuKr9Ykfcin/KnbByun/mURh0PPZwaA+ceFQUIZweghEd
	rqfH2RJiJ0ZYkS1DLFjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSYpH-0001Qd-58; Sun, 26 Apr 2020 04:23:31 +0000
Received: from mail-db8eur05on2046.outbound.protection.outlook.com
 ([40.107.20.46] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSYp5-0001P8-Hk
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 04:23:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C6TVJ9nRteGO/ELx9a9Fr2KlMsmiUltun/I1h6v+kCiskCzDjY2vzCAJ9DjyJSXipQE2Xl5QUkGWEFqscW625vrp2CIG20oI5rFSav7E+2LGV2CFvlUEP/ytiPQVx+Q436XN53nG4dnC4LqflauNUAFOOZneO8WdOPaHOe4HKxAAWtSsEcJA95Gt2eqtl76/gCGy9PDlDXH7xa7WT0KRBnFVReJ4YeJo9qinaTfS5TkfJsuJkvGP3W2Qv7raox6BxFDD/cRitKER1fE6eR9kh1e6pr4wMFDDsdD8PhZ73hxq8GglPPi3pvhvdZfQpJRrv8iIVlQSXkNSSZ3JI4RnwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jF9FH9cI7MO9qemuql9OyFGpA9dZ7tWo1gU+2pSFFN0=;
 b=IwfJ3GY3A0/0OGNxhU02aLEpoBvHoXjd4zR7e3THype5RiptLMIxwXFT3B+C8wVV0MRpqy6mi+D2mnxlAJJyBAVxicw1ftKAXf2xrK5EvSqZmj5g3gst35UwEcCz1JbNdFepNhbmOmqALI8cF5kjJbW79Os7Js6cpNq1HfjFB2e97baBSw5u2g1KL8SDYLPB+VCPpnpaPs9Rrb2NvRxx7iWnZhzHYgJNYTD64RAcIwUac+JflTSDJd1CPeejfldA4BJIgrVEH3ZVd3S21cLnuk7A3XAyuG8ZaoTXgoJ/6Bis+uYEAt7W8CmBmm61AgFw5TRt9fIYR2Uh+G7DVIcL1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jF9FH9cI7MO9qemuql9OyFGpA9dZ7tWo1gU+2pSFFN0=;
 b=I3StkV4HhXwLP++UNISPDkmGFzlVHoeWYziZA8vjlMw4OUffG6n5Zhhm2gYyaDn7I688s4tYcGpHfY4sW7s2nhUEUGWx1YWUKFtrMvGCly5E/dwFJm6BSUVk1gCzLOOWbj4kipF6N947rs/Md/THT27HMILiCZi9HnLzr4+j74M=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4072.eurprd04.prod.outlook.com (2603:10a6:209:4d::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Sun, 26 Apr
 2020 04:23:13 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2937.020; Sun, 26 Apr 2020
 04:23:13 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, Leonard Crestez
 <leonard.crestez@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>, Abel Vesa
 <abel.vesa@nxp.com>
Subject: RE: [PATCH V2 03/10] clk: imx: imx8mp: fix pll mux bit
Thread-Topic: [PATCH V2 03/10] clk: imx: imx8mp: fix pll mux bit
Thread-Index: AQHV+FjAxHm8d1Y7QkOteofuF3bevqiLE+iw
Date: Sun, 26 Apr 2020 04:23:13 +0000
Message-ID: <AM6PR04MB496606675B8D3D5C8CE8995780AE0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1584008384-11578-1-git-send-email-peng.fan@nxp.com>
 <1584008384-11578-4-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1584008384-11578-4-git-send-email-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [218.82.155.143]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 751d76cd-3a03-488b-7a35-08d7e999893d
x-ms-traffictypediagnostic: AM6PR04MB4072:|AM6PR04MB4072:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB407252DC132917C507A23EA580AE0@AM6PR04MB4072.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 03853D523D
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(39860400002)(396003)(346002)(366004)(376002)(64756008)(8676002)(8936002)(44832011)(86362001)(81156014)(66476007)(54906003)(52536014)(66446008)(66556008)(2906002)(71200400001)(76116006)(66946007)(4744005)(6506007)(55016002)(6636002)(110136005)(186003)(478600001)(7416002)(9686003)(33656002)(5660300002)(316002)(4326008)(7696005)(26005)(32563001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kFkIq7mxxPPDBR6skSL0LPfAGztJ4y7bp6lAaSAaOqOD/BaCiKfGEqINX/H2KduuK5SARGH3y4oR6pp/bJPTCCxYywurW3mqZY+0fO/3S6B9cQBPR0JTdbYDzkEF4RZWSB7vZaZEZFvc+qjftiDi5ZGUDzRwHejXtE3oktmBZTO+TkTVyLD448VhvF/xr97kSZV73TIz/vZNQboaSIDehyUIlLbNuZ/76k3uNBrYOlbKFmOcgMUFIenMuQacSGhoB/g+9irbIOwcjkC/bPVfIVN+iiOD3Y94qMK4dYjFWm4tSJEokPIOLgpnEOABjfL3HUleEOvJQWXnOiw9dpdqAcQ23BMudo0jp56r9le+s0dS+Ni6on3iq9lVYf/mhVKzG9qIlG6FWt755h8pzfZCs4eZSg28IBgj+agb8mPx0T0VsEn5ZDUBobvx0NPNvVL960M0Lp9IHFSk0LWyA8GB5HXGuzqjvRmlN2tyOv7c5t4LdAOI6jZtlcC9CK2ApTxo
x-ms-exchange-antispam-messagedata: k9SWIWReqDqtLV5fCJidc23mQzL73BSGR3WqWqohRFoshZQe8vTVM0yQk7i0SNE2Un9Ca9pB5Qx+4UjJMzqiAcRWkto9X3int8JhI7aZxsQZ3eiHZXHToxk4YkaWFPJiONG0uU2alCJdLM4VkF6quBoWzqijSiwZxXktpxHHB9MZY87nr7zTifUYzOhxBykjWe8rbavXydzPZGMESCBnXb2ygrWEm8IsjfqKeO45GHZeBbBj3+zXg7ELLh9hi9mcJMizAdQY8uro4kT6CfUJR8AHZYXB9zPtujrI6vHzt6+2ta8FNzK4ZScs4bcopgN1Fgjada25rxFiJn7X/TBvM1DPTOxsHW6VkBu9KX6Wt+jRCUYknPkHNpteuKW0s3uDJAfoMPMlNWqqhmiT07GIf3ex5CQGdl+p7vok6Rk7mIWjWklluvW5tc9qGEv6tUpfkd4toyZ806qMoCCsqS2XS5sluFRN6do2NQ4IDikFkuuW1yK+xbKrXfb+87894JAVTP9Wr71niImBn7mnb76vi/19s8/o5KbfcTjZVz/hn3N8nlhq79HmU8EEv8TJBnYQ/yEw5k5xUVGn4fWf5tpJbJoHO9gaRQPYEO4TL85eunOYBfnVTv3ml5n5+51J9tKZAvFOKTu/LFlyEZb9/3NUUzCpA5cnEZ8sggeI+xUMg/aXFVxTybooUJU4UHUmeTHFrwqFMo0/iY6OeqNogfIlStHScXe9PHYMTwN0vELlz2c4Ny04NQaX+656geNdvDX+NRJSHPKhv8njdppGOz5IB+5ZIOdnXFqX7lHM5Io8HDI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 751d76cd-3a03-488b-7a35-08d7e999893d
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Apr 2020 04:23:13.7010 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4TrqpF6H6H7uXfpLrETyLRgiHYMIfmHgePZ3V1X5plbEmvCRJwfBGA3tNEF8qhTJWSGjKrca4RaiAkGyNuBPCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4072
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_212319_587968_E9A86B5F 
X-CRM114-Status: UNSURE (   7.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.46 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andy Duan <fugang.duan@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 Daniel Baluta <daniel.baluta@nxp.com>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "angus@akkea.ca" <angus@akkea.ca>, "heiko@sntech.de" <heiko@sntech.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "aford173@gmail.com" <aford173@gmail.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jun Li <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Peng Fan <peng.fan@nxp.com>
> Sent: Thursday, March 12, 2020 6:20 PM
> 
> Same to i.MX8MN/i.MX8MM, pll BYPASS bit should be kept inside pll driver for
> glitchless freq setting following spec. If exposing the bit, that means pll driver
> and clk driver has two paths to touch this bit, which is wrong.
> 
> So use EXT_BYPASS bit here.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
