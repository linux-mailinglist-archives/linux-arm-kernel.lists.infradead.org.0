Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2DF26187
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 12:15:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YsAIvVpz3rp+hbj1b68UQj9YuuGFh1STlRxEbP/j5DY=; b=XZMR3IqOs5oLJ5
	gghj4UHxzpDYXrHN9KTSb3g8dGtMEWtzaVU4pqQgwcVV3izmM+VTa6jP48To7o4Z9W9xUmzmhOcHQ
	MNo/rbJF2yUsKS0N/0hBEdlrlyZJX9I3+TmeOwcSqKfoVdX+pMjqW6OY1qLKL3pQaGuKbA/ICQRcX
	7FWu2UiPtVk0o2ieSbF53c5HqEAPsi+43csxX1URQmyXEik+3ldpYbyHDC8eIth2atnU0MIG+ewZN
	KwhyKN8CYtKnMdory6j51voctJYkP5tFX0l2fgETvZqJuYL0LU1ka37zQgS9pjjLOMrTtX8R7ZCYp
	mVPnx3ZV8+fwTOtwOsIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTOHU-0005he-Ln; Wed, 22 May 2019 10:15:32 +0000
Received: from mail-eopbgr10047.outbound.protection.outlook.com ([40.107.1.47]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTOHN-0005hI-L5
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 10:15:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+dqo49IE6Hyu28xDXn3CEozEsEu8BstlMk1rq9bA+oI=;
 b=P2N0wm44ZPTPW6LaMtLGQ9q5KnxNcjDv7rnqMjBT5VYl+kMbSo6RUYly/tAUDVfSNkw1CoDdjYsnELIoGbhpCIZ7tbIDmTKHexfS8P+0oUV5SB43xYFA81KROwcywU+k48XDYHp3aopEO9b5+nKjGBFKTJ1BbAQY4hc+aJo3X38=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5092.eurprd04.prod.outlook.com (20.177.40.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Wed, 22 May 2019 10:15:21 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378%6]) with mapi id 15.20.1900.020; Wed, 22 May 2019
 10:15:21 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sudeep.holla@arm.com" <sudeep.holla@arm.com>
Subject: [PATCH] firmware: arm_scmi: clock: set rate_discrete
Thread-Topic: [PATCH] firmware: arm_scmi: clock: set rate_discrete
Thread-Index: AQHVEIdDeGE/ZUAgK0KBQchFdwpL/g==
Date: Wed, 22 May 2019 10:15:21 +0000
Message-ID: <20190522102912.1032-1-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.16.4
x-clientproxiedby: HK2PR0401CA0017.apcprd04.prod.outlook.com
 (2603:1096:202:2::27) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cbb28e2f-5a90-45e0-2eb9-08d6de9e65aa
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5092; 
x-ms-traffictypediagnostic: AM0PR04MB5092:
x-microsoft-antispam-prvs: <AM0PR04MB5092F5D17FDE59DF83AE711F88000@AM0PR04MB5092.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0045236D47
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(189003)(199004)(66066001)(53936002)(14454004)(4744005)(50226002)(6512007)(1076003)(25786009)(305945005)(54906003)(6436002)(5640700003)(4326008)(7736002)(52116002)(2501003)(498600001)(5660300002)(102836004)(99286004)(386003)(6506007)(2906002)(8936002)(8676002)(81166006)(81156014)(68736007)(3846002)(6116002)(26005)(186003)(86362001)(71200400001)(71190400001)(44832011)(2351001)(2616005)(73956011)(66946007)(66446008)(64756008)(66556008)(66476007)(476003)(486006)(6916009)(256004)(6486002)(36756003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5092;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: v06QT+psWAQRWPe/zlbAD4HZ8zPuELgiEr7kcTyrINL32g7lFOgxL50T5zQCjZoUb+oJP8UPYyJ8IEAyAItRCdQONkGc/ZldGMaNAi9kNzOHBux8GZ7jjqPn0TUDTDX++HGFKrkorLMK9dVlbXuB/Ak4zb6Trc6EAJ7B6+YQEeO04mXNlf+BrCHWwhd4/CXUHibOe0f/vxsKd1UQYkmk6jo7Yvqqad3RVICcCXgV4SdCyu1W7lBOqJc0YKmgZdjpVhrvl8Yqy9hYwSv8Nxsmc082LyiXygjxw6fUGCNy/pif/2m6SZTN9LQmdN2kXrXSzK2fTg/mQUB+pMKNldCYk2mQyp1aH2fIX4EubFetC0Dei3DXswPX/uK/fCy1Jl7Kd0KabxaLMJtTYlsqHzrR+Yd97Od5FIqkQieBOaYMOqc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cbb28e2f-5a90-45e0-2eb9-08d6de9e65aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2019 10:15:21.7271 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_031525_696013_8274C1DE 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.47 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "van.freenix@gmail.com" <van.freenix@gmail.com>,
 Peng Fan <peng.fan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The rate_discrete needs to be assigned to clk->rate_discrete,
then scmi_clk_round_rate could get the value.

Fixes: 5f6c6430e904 ("firmware: arm_scmi: add initial support for clock protocol")
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/firmware/arm_scmi/clock.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/firmware/arm_scmi/clock.c b/drivers/firmware/arm_scmi/clock.c
index 30fc04e28431..0a194af92438 100644
--- a/drivers/firmware/arm_scmi/clock.c
+++ b/drivers/firmware/arm_scmi/clock.c
@@ -185,6 +185,8 @@ scmi_clock_describe_rates_get(const struct scmi_handle *handle, u32 clk_id,
 	if (rate_discrete)
 		clk->list.num_rates = tot_rate_cnt;
 
+	clk->rate_discrete = rate_discrete;
+
 err:
 	scmi_xfer_put(handle, t);
 	return ret;
-- 
2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
