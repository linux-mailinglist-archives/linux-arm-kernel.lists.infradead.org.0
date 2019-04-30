Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 984BDFC2E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 17:06:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L+Y8WfIM+epq1dvrVEUlKbX+GQ3YrB3yqJesgIH8Sp0=; b=auipF5xbtzt18A
	+fmlXgPd4kKazEyv3liwxSlJLtTiBUXJHzdA70SolAaj8bMScTFW6okaDJSlxFiWfnGLtNzpr4SqQ
	1SNH7QQaTJ9IYOQqBaQ52/v6QhNQXxh1lBb3dgLjtgxCa45jqgre47FKT3C7p64XtKkoOuhIcPSvt
	bLAIZ3JKyEGoGkEBtBeovek6IiUSH43W5QH+gNVIJknja7xgmK1SuSkaRpZRcvtYFZHLKqoEGFhgu
	wb5AoPEahj3AgmCnOyTikxf+2IGAlwoNjatCaK1s41XmCw7P6J8ewX6zTwHm/rhFFgC6RzDQnoJNs
	afvzZFnDSau96XYsCPJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLUL4-0005Qz-7d; Tue, 30 Apr 2019 15:06:34 +0000
Received: from mail-eopbgr150045.outbound.protection.outlook.com
 ([40.107.15.45] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLUKn-0005Ju-5I
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 15:06:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CdabgUnKvTa3nd+Dd0OtMspEFZUnnaVQQtE1Cnid22Q=;
 b=LsiELIrsMfPSShEokb5nXtY36ZnGDqnRodM5fSLkvtX0rDiVDlrCem43V8M1vYnQVCScA1F5rifjG4n5nPgpZYn5BGZORntEJAyoxyCb6hDWM0czr8WYy8ryOp0W5xtiKkb0A/LFG6Hw5g3Tsykn/K9R7IP0Gd20ODW/Z5dCFyU=
Received: from AM6PR04MB6440.eurprd04.prod.outlook.com (20.179.244.217) by
 AM6PR04MB5255.eurprd04.prod.outlook.com (20.177.33.91) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Tue, 30 Apr 2019 15:06:10 +0000
Received: from AM6PR04MB6440.eurprd04.prod.outlook.com
 ([fe80::14c2:1e08:524c:6ff4]) by AM6PR04MB6440.eurprd04.prod.outlook.com
 ([fe80::14c2:1e08:524c:6ff4%2]) with mapi id 15.20.1856.008; Tue, 30 Apr 2019
 15:06:10 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Lucas Stach
 <l.stach@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v5 0/2] Allow imx6qp PU domain off in suspend
Thread-Topic: [PATCH v5 0/2] Allow imx6qp PU domain off in suspend
Thread-Index: AQHU/2Y+EE51fOgT1EWmJzyqb/2vLQ==
Date: Tue, 30 Apr 2019 15:06:10 +0000
Message-ID: <cover.1556636234.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.17.1
x-clientproxiedby: VI1PR0902CA0058.eurprd09.prod.outlook.com
 (2603:10a6:802:1::47) To AM6PR04MB6440.eurprd04.prod.outlook.com
 (2603:10a6:20b:f4::25)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 53c66ed2-5aea-4763-59fc-08d6cd7d611f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB5255; 
x-ms-traffictypediagnostic: AM6PR04MB5255:
x-ms-exchange-purlcount: 4
x-microsoft-antispam-prvs: <AM6PR04MB5255BE93AF061ED0B545CA9EEE3A0@AM6PR04MB5255.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1824;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(39860400002)(346002)(366004)(376002)(189003)(199004)(2906002)(71190400001)(71200400001)(2616005)(25786009)(5660300002)(6436002)(8676002)(7736002)(15650500001)(52116002)(4744005)(110136005)(99286004)(53936002)(26005)(97736004)(305945005)(316002)(102836004)(476003)(256004)(6486002)(478600001)(66066001)(966005)(386003)(6506007)(186003)(81156014)(81166006)(73956011)(66946007)(64756008)(66476007)(8936002)(14454004)(54906003)(66556008)(68736007)(66446008)(44832011)(86362001)(50226002)(36756003)(486006)(6306002)(6512007)(4326008)(6116002)(14444005)(3846002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB5255;
 H:AM6PR04MB6440.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: s98/metyf7DZSzLE9Dm9a9AnI9rF4OIb8YH/268Ik255nG8pVSwAV/6wVaBv91S8KBzuRH1XWxIspZYexkDTOVtwhwu8IHE2+veEHLo9cVg7zDxaHyOA5Ojp03zh9ZGX87qpFS77pZ1RimZC5juFAPpB7Dvd0PEf0L/IU/8xDgrl+J5x3B/b/U0dsXhahzQ60FEO9nOdm8BZR5UDYhJarYAhBHKy7RTvmwFDaj64m1RNrb/jQI4Ts96Ez+PsxJ6mhZsmzP/FGc+QZI7r+MWEjqUCIo38UnjSQfX9Dgdl9xIaOFSMB9EKUXKzlO4f6yNE5nb7mrqGVqMlIImZwjf1DA2IPO9Fhvi7LA/5MH5WF8VpR4zMjLCeI3PmSY13VUEyKWMTV8UexmwfE+Ot8rS0ucCbZXAOa9lhN945dtOdIo8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 53c66ed2-5aea-4763-59fc-08d6cd7d611f
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 15:06:10.5946 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5255
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_080617_209739_3A342776 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, "Rafael J.
 Wysocki" <rjw@rjwysocki.net>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On imx6qp power gating on the PU domain is disabled because of errata
ERR009619. However power gating during suspend/resume can still be
performed.

Changes since V4:
 * Rename GENPD_FLAG_NO_RUNTIME_OFF to GENPD_FLAG_RPM_ALWAYS_ON
Link to v4: https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=110829

Implemented with a new core flag because otherwise distinguishing
between "runtime off" and "suspend off" is very complicated. Link to
previous much older attempts:

v3: https://lkml.org/lkml/2018/7/6/698
v2: https://lkml.org/lkml/2018/7/5/564
v1: https://lkml.org/lkml/2018/7/2/357

Leonard Crestez (2):
  PM / Domains: Add GENPD_FLAG_RPM_ALWAYS_ON flag
  soc: imx: gpc: Use GENPD_FLAG_RPM_ALWAYS_ON for ERR009619

 drivers/base/power/domain.c |  8 ++++++--
 drivers/soc/imx/gpc.c       | 13 +++++++++++--
 include/linux/pm_domain.h   |  4 ++++
 3 files changed, 21 insertions(+), 4 deletions(-)

-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
