Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E3F13A216
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 08:27:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Dk5uS99YMR2fv1VqmQJFbd+QSpGG2+yrzJXzqpeS+Co=; b=uO8QI3KNn6qevN
	/sKrunwqhMQg0VJqDqxyRTM4r4fXFzetotQ1/Ik4S67am4uG5VA75YWLQyK9QuIFywDGd84o0ygOe
	BbbH9AkFC1ag1vYy1ZMs/ZGCd20AdGlb9v9SD9KG3iYw0ySKO1jv5m+HsmLlx2rpVTyPw6VfCiQBw
	7qtKdqHq9CIC1OXZ5DUNTo0BWzrICq/iYCh0ILS88vpDSfXebLOtXUBcbNwqXCwUcF280XM5yaHZA
	pWZn4MmYNpMkgDfoL2PPLYP0ssi14hnS+rQkjSurI23ZFP+CDuqQyPkU9BmrTO0PnFF2MdisRpM/2
	EyY+cD5c3MCtT9qnxiuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irGbs-0002Yi-H0; Tue, 14 Jan 2020 07:27:32 +0000
Received: from mail-vi1eur04on0610.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::610]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irGbc-0002X1-O4
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 07:27:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bmDzc7m7+BZBAB5bPXo7Xx12rBryiD2KcJEDSh+DJG/PDr++CPz4njcWw7nV9NsMnPbRVjwwJosXYJKWqJMVAuPkOp5CmdpgYq6ydXpEBdyMOVi8fMWusWwtwgrfkEJmZFLzqlC98GGzdvqaJupnrk3sfEhXy59VSfnS8WWIQZixkqCtEzsIxDW1cdHBcwekPv202AafWpPD3Fd1cnr1Z0EMV9aXu/jRweLUmBSpnYQ6QmGUL4AIBhWkpn8/CaKHVVj/w4p3Zv80PlBk1r8TwQMJeuJF5B2PxGVIxQ+UaXdnFCg48hYIDePYbkuWfOCJF4MhFWNS7eYdvnN6wrNgTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vTfFJDq15ddji1P+Ws6ZW93IiCXDYAJ9Pv/q7a7AeGw=;
 b=Am25Rit9az5cNGO3C2DyF7x1Pwjcm5bVGPXHj8MJzZOzyT+6hmSEtID2EMPfOOOdQKjgEbKFBS+/XDCeF7YvJzV2viSEZcXg++BbDr9ve+M+TM56+FL1taeu4V6V8ZHzxD1SGSgunzRA+0JcsHqwZX5QXqWF69EFS0ZxYr+IyCKtaBy5EOTtCsNM05Moc/HBjny+Ru+Qp7MHO4vBWlUjt62eSqV2WEAP9YK5t4w+Mr8y9GZxzMKUBX1RQxCx/v9jQG2IDdZVp+b6obeLjzdIKg33okXw5fJQVpff8Nn7987bTEfY0Y9J6KYvd5Vgm1YE+aDsd711rb+Zn76dDcYx6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vTfFJDq15ddji1P+Ws6ZW93IiCXDYAJ9Pv/q7a7AeGw=;
 b=Q5UBVus+eHAyRpiOrFtt/xoEj55XFNcI+UfOFKy81+iN4HtQQDOKoc6rYQX0KECqaRw1jeeDRxDgO42epErnrcV+NT2yYg2i9QMytFkEMDG23q09VloJZIHZ8PjzRPgmByeBt2Ds1huZ8j6yXBJR0Y2nU8wgjPzDCzni3AvqEeU=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5490.eurprd04.prod.outlook.com (20.178.115.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.10; Tue, 14 Jan 2020 07:27:11 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2623.015; Tue, 14 Jan 2020
 07:27:10 +0000
Received: from localhost.localdomain (119.31.174.66) by
 SGXP274CA0009.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b8::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2623.9 via Frontend Transport; Tue, 14 Jan 2020 07:27:05 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [PATCH V2 0/4] clk: imx: imx8m: fix a53 cpu clock
Thread-Topic: [PATCH V2 0/4] clk: imx: imx8m: fix a53 cpu clock
Thread-Index: AQHVyqwI/Q11JwojXU6mQ7Vn6Yy0zw==
Date: Tue, 14 Jan 2020 07:27:10 +0000
Message-ID: <1578986576-6168-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: SGXP274CA0009.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b8::21)
 To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 99af563f-b85e-47ec-e132-08d798c32b09
x-ms-traffictypediagnostic: AM0PR04MB5490:|AM0PR04MB5490:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5490D5B0CAFD83F1ADEF3D8588340@AM0PR04MB5490.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 028256169F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(136003)(396003)(376002)(346002)(189003)(199004)(66476007)(478600001)(66946007)(2906002)(66446008)(66556008)(6506007)(64756008)(52116002)(186003)(2616005)(26005)(44832011)(16526019)(8936002)(71200400001)(69590400006)(956004)(81166006)(8676002)(36756003)(81156014)(86362001)(6666004)(5660300002)(4326008)(6486002)(6636002)(110136005)(6512007)(316002)(54906003)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5490;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OzsB0fofNzIXkl338jyPAL+NEGYAkwy6Xc39YGC/s2FGFXi7GywZPINCT63byqbuXj+fr7aAOLyOLpBT+6GRA5NqkyJMOJPTwYVshrlVK474SFr9kA7a79eR4hmqBpo8rAECDArZu/dssiL4d5yeJcMomrz+Ao2aldg0H8lMnC56phm/FdLnkIfpDM1abnQ/Plg6tMMsDoFTo2TXT9HjH/0dJZbFcBTsA+HITOWlH6RTlC+BxS7f++/A7LyzFqyt5SCFS09JkxFRBJC9Kr6+HwXxQ76qm3hz5vehVyZicpFBz9kA0iJXFdoxlv+2lJiPjzFri/i3fY4hsFOPAq51PSFHCOSAoGMW0HQNpGssXh6GB11IiqaClT39oGgpAmqksTrCuzDFy93LqgjjqvPnCwkeGjaqzxe2V36nOEo1RsWly0P1TkF2+kxUstEX12rB8qB0zqypreTOxtdY0mQVAG6HNK+juHtAvO6TFO5b118dofmUpn2k2MPugm1lixbbUARHAqyjQpKRzzBodVLmNg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99af563f-b85e-47ec-e132-08d798c32b09
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2020 07:27:10.7525 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TY2mpqbr15y832BgDyIsJh7Ut+aUHcb+ujIxAZ9hKzWGXWRaAUYJK1SpceQeo5Ng37PZ/TSBHXDeug0nPJ5NmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5490
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_232716_787863_FE715CD1 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:610 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

V2:
 Fix i.MX8MP build
 Update cover letter, i.MX7D not have this issue 

The A53 CCM clk root only accepts input up to 1GHz, CCM A53 root
signoff timing is 1Ghz, however the A53 core which sources from CCM
root could run above 1GHz which voilates the CCM.

There is a CORE_SEL slice before A53 core, we need configure the
CORE_SEL slice source from ARM PLL, not A53 CCM clk root.

The A53 CCM clk root should only be used when need to change ARM PLL
frequency.

Peng Fan (4):
  clk: imx: imx8mq: fix a53 cpu clock
  clk: imx: imx8mm: fix a53 cpu clock
  clk: imx: imx8mn: fix a53 cpu clock
  clk: imx: imx8mp: fix a53 cpu clock

 drivers/clk/imx/clk-imx8mm.c             | 16 ++++++++++++----
 drivers/clk/imx/clk-imx8mn.c             | 16 ++++++++++++----
 drivers/clk/imx/clk-imx8mp.c             | 16 ++++++++++++----
 drivers/clk/imx/clk-imx8mq.c             | 16 ++++++++++++----
 include/dt-bindings/clock/imx8mm-clock.h |  4 +++-
 include/dt-bindings/clock/imx8mn-clock.h |  4 +++-
 include/dt-bindings/clock/imx8mp-clock.h |  3 ++-
 include/dt-bindings/clock/imx8mq-clock.h |  4 +++-
 8 files changed, 59 insertions(+), 20 deletions(-)

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
