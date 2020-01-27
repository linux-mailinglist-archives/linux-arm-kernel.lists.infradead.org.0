Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C5314A10C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 10:45:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QNpHipuyyCjxQAhF94q1rSSMwVnJ1ybXzl2Ql2uQRSc=; b=o/Ra8Q4ci4t3Gq
	eOjwK6A3vLcDEjthttraGwYkXcoDzphe1sTA3Qioy22x3KkFw3yXvLPPwX8urnx7SG2Eywd+js3pt
	AU7e9/PTiJFwIvgKj0VaSdcfsXRQUtBr3C1KLi2nwt+I3+bFVvForLj8Sblm7bc3ryyQ5cNGgejDN
	OC2cF801P3zwry1j+z5IYDwWEAo66ZkmzE8HxsE0A4NyXQnxQSut/M2xmrBZqcIp+x3cqN2PGGBi8
	Gv9el9ztkNKUk/aomKCRQEeLSirNCl45mbcfFewdxdMNtlShlhq+euuViP+UrnbSHo2+qX0v2rumG
	lLbK21MVwzipLd5TmRUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw0wv-0006tu-Vc; Mon, 27 Jan 2020 09:44:54 +0000
Received: from mail-eopbgr80071.outbound.protection.outlook.com ([40.107.8.71]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw0wj-0006tV-Ki
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 09:44:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HII1iHSAsgp8QZBHeUugRkwBR1UEbF9nvXqKj0flxgXF+Q3TDgVfNSH0UvMtgjh5Eb1JxiX60VhEeZZVq0fbi2As9NzuLpj++XqoavYiW3W2rVam0E8Xd78YRwLAEFILB+Xz4Nlv7bDNx2k2m3RYAITrlYfnlPgen0ppm4E7pj33kUXr3hbH9QJFlrj0Bc8t3kBf9WHh6/gQGz1NCem1izpvlFpZxCUFR90WGr10FpcXMqJr68ccUi4hn3xqxmnFpe+kf6BhKbX90z2sSk5Td6CqWfvp6UASixnonWel+jdpGT12pteb0b0NqQ5wWTWKOuM4uaGg8eWX+h4O6K3uCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AmyDQ1wFPTZDH0I3nXO14rYvD1nbvrWvujHq77+hdLI=;
 b=RUK1L7ZsRRt3e/51ADBsGhB98e61mAA1qr+HFsoRk7/8Y+mtxL1h8mmxzHhpbmeuF/Bzyd5OeoyNH+NHFs8m0RlIb2TMhrDi3YWpwX7toZQS+38Pl1zQlocCJGc+OGxluD0W/+pNKdaqZW7MElMSjW+N/AkwF0de0RjAGenmE1WrnlFxiY2K49r5Uh4/E9v+9H5NG/3HmXYNyvjRdVir1qyKXT218E/FwJ368yj6YFaUnbcFixMo2H305yxghuGoWWN9h6fNOvk4rAzcPAOAGDQR2UVIU8Du3+0W4kNn0C8rIhdqXJePYdehnIkPG4V3RDiI8QXUhY9yafmvzlCq2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AmyDQ1wFPTZDH0I3nXO14rYvD1nbvrWvujHq77+hdLI=;
 b=qsrEJZA6W9uv/xqzKCbndo7G+V7nBjmjArsKgIoSihYZsvr+LQhMQZD6wBKYbXGjRjJ32H9e2+HM5gOvKQiARjw532fzxXkJa72DoR8l6szeZSz5+zkj0vWGJ42ezswHEPc0ENDtU2MID8OFuWCtxZwVSNYoGRB+rHK7ngDwQn4=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB7108.eurprd04.prod.outlook.com (10.186.131.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.24; Mon, 27 Jan 2020 09:44:38 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2665.017; Mon, 27 Jan 2020
 09:44:38 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR0401CA0005.apcprd04.prod.outlook.com (2603:1096:202:2::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2665.24 via Frontend
 Transport; Mon, 27 Jan 2020 09:44:33 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "arnd@arndb.de"
 <arnd@arndb.de>
Subject: [PATCH V2 0/5] soc: imx: increase build coverage for imx8 soc driver
Thread-Topic: [PATCH V2 0/5] soc: imx: increase build coverage for imx8 soc
 driver
Thread-Index: AQHV1PZk+mGdzzCjckexq+nG+OcySg==
Date: Mon, 27 Jan 2020 09:44:38 +0000
Message-ID: <1580117979-4629-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR0401CA0005.apcprd04.prod.outlook.com
 (2603:1096:202:2::15) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a46ed305-41a8-43c6-edfc-08d7a30d864a
x-ms-traffictypediagnostic: AM0PR04MB7108:|AM0PR04MB7108:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB7108D8F9A91B2DA5CAD23F48880B0@AM0PR04MB7108.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-forefront-prvs: 02951C14DC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(136003)(39860400002)(366004)(376002)(189003)(199004)(4744005)(69590400006)(4326008)(36756003)(6512007)(16526019)(26005)(186003)(6506007)(8676002)(81156014)(52116002)(54906003)(5660300002)(6486002)(81166006)(71200400001)(8936002)(110136005)(316002)(86362001)(7416002)(66446008)(64756008)(44832011)(66476007)(66556008)(66946007)(2906002)(956004)(2616005)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB7108;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OiBMllz2ahsOWPBrrjCxktaVG0FItfHCFR6OEvpKw/MfRcq+yGL/qDc6pR3xKO+RyEZ+BcOlP72TAqX2HxRpNQeTNbiaTJ5UV+CQ4m7wtpb0+Sf7X62a1vdp81qEEBZiWsB5mgu3jo4OjdQldc8XQtnfRZk9Ri3trzBdfCPLJg1XHMahfTzV2jZV2vkeegEjBtWn0XyPr3dquBsPhwR+RGYUZ4w7sfWNPa1K0TTVNE5vdsOaeYuIeAotz066WmjLEl3rDI7mapFldida40tgd+4pzOgTULtd0KuMzRfCGePU29zpS08ByZxbg+qj6Rj/goGhh0bLv3DoMUrpuuKyfyZ59QDVW9t4WbDP/eBH4Fz9Ghwm5w0uVDtCKxbdSxLPATzW3AXnhO3sxvVLNoDLj7JzLW4oqGiXiSG1IafW8ww7wklX4qad6XlzwJzsoB8O1A4eSXZ1PS4g4ZQfiHan5RbUfq+B06qjwpMpQBFEfPXJcTgJWUACMyn+n6+8sLbG
x-ms-exchange-antispam-messagedata: y8/BoRCKZbtrFq4eGiZqGsbIjRdkG/b7IDh1dyz5/eOgBv+iW9+Tor6ygOmtlECcacKx6M3xhqJYlteVlqtAytaL4E1rCOfJ4tovl1ZidXd8d0y5B+tvulvmBJ76RPZSe+xODT8gU4FyZHgI8XBw4Q==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a46ed305-41a8-43c6-edfc-08d7a30d864a
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2020 09:44:38.3112 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jo82YoizbKADP+NUIlTA1ogarq6NcQ+5e3uUWDxdqhGfUQGx4uZDHr3x4KnqXzKTqB67t+QpIQPTlaqMuR/+cQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7108
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_014441_745783_C37D074E 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.71 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "krzk@kernel.org" <krzk@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>


V2:
 Include Leonard's patch to fix build break after enable compile test
 Add Leonard's R-b tag

Rename soc-imx8.c to soc-imx8m.c which is for i.MX8M family
Add SOC_IMX8M for build gate soc-imx8m.c
Increase build coverage for i.MX SoC driver

Leonard Crestez (1):
  soc: imx: gpcv2: include linux/sizes.h

Peng Fan (4):
  soc: imx: Kconfig: add SOC_IMX8M entry
  arm64: defconfig: Enable CONFIG_SOC_IMX8M by default
  soc: Makefile: increase build coverage for i.MX
  soc: imx: Use CONFIG_SOC_IMX8M as build gate

 arch/arm64/configs/defconfig                | 1 +
 drivers/soc/Makefile                        | 2 +-
 drivers/soc/imx/Kconfig                     | 8 ++++++++
 drivers/soc/imx/Makefile                    | 2 +-
 drivers/soc/imx/gpcv2.c                     | 1 +
 drivers/soc/imx/{soc-imx8.c => soc-imx8m.c} | 0
 6 files changed, 12 insertions(+), 2 deletions(-)
 rename drivers/soc/imx/{soc-imx8.c => soc-imx8m.c} (100%)

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
