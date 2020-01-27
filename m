Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DFE14A609
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 15:27:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qHPuWejOw9gJUUAPb0HptJLQqhPhQSRSY2CHuU13wbU=; b=G7yV+kNTrC1hlt
	EWkTrVcT+f5SEb4QZ1HA74C9gMsAdc9B8UaH+T7SIbTxUdcvjv9tSXCNJXAP+Kd7xCGLD7YxG1vz1
	dk4wZSi956ZNAja9vjxHrXK6a7o1XYUlS+KdQr6OQ/9LQcUwxYg9wngQtUpYLfKNCD0tg1Dca+Z0Y
	LSCQEbPQ3fvYMtJ85kjlRZpgkRqpeWHPo6K1w/lkbGT/K87EOtL4/2/ngOoQK/dB2QTT07xcka0Si
	lBgGx4qhNtRsa8tJgkVlWu5qFNe0ZsJ0bM3k7SzqLYNPtFe0P1+YJZLQeCYAVi+6EB0JYNSee9aQO
	ThX17ZefkOy+Pz+IUV/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw5Mi-0000Fp-PK; Mon, 27 Jan 2020 14:27:48 +0000
Received: from mail-eopbgr00048.outbound.protection.outlook.com ([40.107.0.48]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw5MW-0000E9-4X
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 14:27:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HcJ8YOsr+MgNsZulCjgj5+b5tcoLX4Jmxh/441MaPPCD8RgT7PUXRajt33h/sDMKbRdUAEGC3CnGYIrJd/iQyEFXmWjAxbwRYBMiW5R6Nmb0Id1/YYN6uFKEhTBPTUIQtCxq5hGLi8n0fYcDiD7TEtWD1uZR/olfr93bTp1ehKc0fXGo606j+xT4G0UU8W2JjxS1Lwr/6NGlinjijvge9mevS6Oo0IZblVg+KMuDcxeQpkdWyvY8Zb194ASE3fqIWqFzr+549UzGnl83Gb7YUAYHIMAjhxpCTRK/1u14OPZ6kXl5gXg/iv1iyrv6RhD/GpbjPicrX/m42nesqDZOGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/KD2Q4/h6XGP/DalqA/JxOWpEjd4ULXrLedbMET6M3w=;
 b=oAjHqq8Hwt8TkUCO9wbLw2SVbL+jZwD9A53WtrbprRwN13209vUcwQTxOkFUwUvTMUf9uEL/G69+kxw8jgJLzHUr3eebt1aE412sgoakvMKrRdjdCvBhWbPxcIRWiL/yhdnbYnpguwpo0Ipb0BqK9rY7Nwyv94DNaeQE1XugK0+KQAirRZX3v+81Yp/qgwmHY7onkNb0M/YEgGKLm4QCRb7JGiehCDVT9JCHrR9gO0hJtZWIUSe7YK4RX//xrVRhPR8yNexu9Yx+XoIDFulXN5qZD69iM/+npJjHpP/deeEKuzk87VmZNA5hwAFyZXzugKP4MPljTIU84NFEjR8HOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/KD2Q4/h6XGP/DalqA/JxOWpEjd4ULXrLedbMET6M3w=;
 b=R8g2FIVwX941V2NqbIRpg4GiLvDF315HKnkvkLAaRH2xD4c7JInXHusejBJSl0sZxnFw4ktynE3NvpNwP/eSEsRx71rxbjROI43vDvW8GVJtsE+mauySx4O3OrJq5WO/ZABzNJ5G+6K1DV8XDdBCOx3HrHGEnlQkdE01y7rNYDc=
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com (52.134.16.147) by
 VI1PR0402MB3664.eurprd04.prod.outlook.com (52.134.15.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.24; Mon, 27 Jan 2020 14:27:30 +0000
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::8881:e155:f058:c0d1]) by VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::8881:e155:f058:c0d1%4]) with mapi id 15.20.2665.017; Mon, 27 Jan 2020
 14:27:30 +0000
Received: from fsr-ub1864-103.ro-buh02.nxp.com (89.37.124.34) by
 AM3PR05CA0141.eurprd05.prod.outlook.com (2603:10a6:207:3::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.21 via Frontend Transport; Mon, 27 Jan 2020 14:27:29 +0000
From: "Daniel Baluta (OSS)" <daniel.baluta@oss.nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: [PATCH 0/2] Add more power domains
Thread-Topic: [PATCH 0/2] Add more power domains
Thread-Index: AQHV1R3oVnys6XlKE0yxPQVJPt7+1w==
Date: Mon, 27 Jan 2020 14:27:30 +0000
Message-ID: <20200127142717.27570-1-daniel.baluta@oss.nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM3PR05CA0141.eurprd05.prod.outlook.com
 (2603:10a6:207:3::19) To VI1PR0402MB3839.eurprd04.prod.outlook.com
 (2603:10a6:803:21::19)
x-mailer: git-send-email 2.17.1
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@oss.nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7b424bff-6d01-4b48-c855-08d7a3350a64
x-ms-traffictypediagnostic: VI1PR0402MB3664:|VI1PR0402MB3664:
x-ms-exchange-sharedmailbox-routingagent-processed: True
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB36649EF4EE2F20B0DA3FB16FB80B0@VI1PR0402MB3664.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 02951C14DC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(136003)(39860400002)(366004)(376002)(189003)(199004)(1076003)(8936002)(66476007)(66946007)(6916009)(66446008)(54906003)(81156014)(81166006)(2616005)(316002)(956004)(66556008)(64756008)(478600001)(52116002)(5660300002)(6506007)(2906002)(8676002)(16526019)(186003)(6666004)(86362001)(6512007)(6486002)(71200400001)(4326008)(26005)(4744005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3664;
 H:VI1PR0402MB3839.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bqR3CPGtQNW++dHR5s0aniS+/5lJg2SdWKmQlUk5sS5iEaMDoEjrj0yw9iKb+lrGt+zNPUyePYizgx77C96+J2AjBWjQv60eHdeeYQjlyp0gY8VR+iCra4jSX0TavJAK5dj9AFaPVDbwTgwAV5WVBOWrDTVW/lQdGGySm4t3GL4oZNhjIrGHn72RQ80s7JJlyoyamAa/0gsEvekocSsPw/LI3owMkzP3zoNFN/Tq4OURth7ON39ojSHFUQ8fozacw/PqQEXIiyL90xn1KhJ8fsITbQXuTQx2L4F5y5D/N/XPKv9N6emWe+/8fyYetrDYBZBF1hpU5ADMWGkONdBFUHA66/DK8l4/Go6DvDFWm9SsY21YclKvB+U3oVvht2oGvXtiate0OKMq2zv00cuu0i+o9k48nA5JX0hK5uv8L0FwlZz714CuNIcCcw0+VaHE
x-ms-exchange-antispam-messagedata: hR9pqWj94uqBS91/AzcZch7ndcH4CJUgC16+4IhbU/ozim7uNCTNDJ3enQS10YTKLI4yOBrSW1D5Y0FJmrSCo7w9TTqE7QLirtO+wKu0HfA1mbaQmKqnrrb3vTpS3KcVxM1D6zUfCDh8kgooqguuqQ==
MIME-Version: 1.0
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b424bff-6d01-4b48-c855-08d7a3350a64
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2020 14:27:30.2459 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S6GxhdEPpnHDMLdtROY8ssUC2yUjL4YdvyioVjxpB1bjztl10TrAZxHkkLJxQVlGZ3gjuUu8WfVEkriM3o69jg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3664
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_062736_327026_C5DA0C2C 
X-CRM114-Status: UNSURE (   6.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.48 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 Sebastien Fagard <sebastien.fagard@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>, "S.j. Wang" <shengjiu.wang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Daniel Baluta <daniel.baluta@nxp.com>

This patch series adds some missing audio PD domain and enlarges
the power domain range for MU side B.

Daniel Baluta (1):
  firmware: imx: scu-pd: Add missing audio PD ranges

Sebastien Fagard (1):
  firmware: imx: scu-pd: enlarge PD range for mu_b

 drivers/firmware/imx/scu-pd.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
