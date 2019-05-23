Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20956275C0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 07:51:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jN1cyGR97ZLcadG2A8+T/EKxMDdmsMc/o291GQP8JME=; b=onIPUw+C7mmOJz
	NqlZtU2+1Yr0JORGs16FKXXA8LrjiVpYEJsV+BmZofCMvy2wtzKOhnS3jCk+tm8rJOWttZp0gbGB/
	Kw7YBu3nb/mL2AJhQ7QHNNMdGc6PjvbTq7dTZgnTDxt+C1gOPpuwB85oNOsih9VYQEDHSrl0VfkfE
	iGKVNa+nOSlwRJAwtisoufMU9F1ygSC1uWKxIx+CQEa1za3ik5dsy7m7JeJ+W9GEerMhGD7dtN3+j
	u1VsTA0N0M5ZxROYgQLXX2yFUAw7vwe5nbqbuxJuPnCJHqSP7UyqQpqGN7duKPPq2v/Geups6G/RG
	bhAN503qsd3gfF6QDfEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTgdB-00071I-Eh; Thu, 23 May 2019 05:51:09 +0000
Received: from mail-eopbgr10086.outbound.protection.outlook.com ([40.107.1.86]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTgd2-00070E-Mw
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 05:51:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zginAZIZPWKy8MR98wFqzlqik8S2uYqoxxLxkzhju7c=;
 b=HRJP35P9cKsBBoL0wQmZ6oqtkAsYfTLB3MjgT5/wtahfkG25DoJgX+XiqX0ecTM1hNZEBWE+nGaxYcqahUST2sgWCHIYML9sJquP8DTJe2SjdvBV8xXOyK/+OyAPJ+yl9jurw55Lc3IdFzgYZ4/04mV8DRWw+01/OQ2V/8g1DjE=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB3956.eurprd04.prod.outlook.com (52.134.93.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Thu, 23 May 2019 05:50:53 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378%6]) with mapi id 15.20.1900.020; Thu, 23 May 2019
 05:50:53 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "sudeep.holla@arm.com" <sudeep.holla@arm.com>
Subject: [PATCH 0/2] mailbox: arm: introduce smc triggered mailbox
Thread-Topic: [PATCH 0/2] mailbox: arm: introduce smc triggered mailbox
Thread-Index: AQHVESt7O8zUR8j7k0mzGFqyu7YBgw==
Date: Thu, 23 May 2019 05:50:53 +0000
Message-ID: <20190523060437.11059-1-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.16.4
x-clientproxiedby: HK0P153CA0040.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:17::28) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a390a697-eca7-475c-ef6d-08d6df429e26
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB3956; 
x-ms-traffictypediagnostic: AM0PR04MB3956:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <AM0PR04MB395604D264F63B651B23996388010@AM0PR04MB3956.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 00462943DE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(39860400002)(376002)(346002)(396003)(366004)(199004)(189003)(2201001)(86362001)(6512007)(256004)(6436002)(6306002)(44832011)(486006)(2501003)(14444005)(2906002)(2616005)(476003)(6116002)(3846002)(81166006)(8676002)(25786009)(6486002)(305945005)(81156014)(8936002)(50226002)(4326008)(53936002)(15650500001)(7736002)(316002)(186003)(26005)(14454004)(66066001)(68736007)(1076003)(36756003)(71200400001)(71190400001)(102836004)(5660300002)(966005)(386003)(54906003)(110136005)(6506007)(99286004)(66556008)(66446008)(66476007)(7416002)(66946007)(478600001)(73956011)(52116002)(64756008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB3956;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 9rIPLV+As7aP2HK12gKFHuczD85eTjQwTUOQTmCaEpF3eowb5vRHjUdZ1CZdA5/uSTj5qi14FaiNOiLW/PNKUb9bYXQSlO59hEwUNwZb3M0b+FG37XqpW1NuuiXaAJiwIkaRI1OMCCU6GTtyB+EahKlfs2Ul3vEn3b+W4+cKuuusnKBa3Kl9g8Yhx5BtvLVbYEwqYlsyvOn6MLqFiIm6C7o01rKuF4nQFnjRe6pcT3c7OqYS8ioEHR5m96a4ftr0zQgB9lFY4DG6PgryqoNS7PJV1VSjEV6h1TNqop/qPSIfyHOsoDobNXbR4G9L20VwHN2jmKjA7o45UWZyqMOFmsME/aRzXWcFVc/dfQreeZFFpg/of1ajU/oEC5Am0aNHJNj3haV/q1n6ufk6TsXuh+xSN9yCK1F/JRmB9tIUAdo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a390a697-eca7-475c-ef6d-08d6df429e26
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2019 05:50:53.8438 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB3956
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_225100_754180_842D3FB3 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.86 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a modified version from Andre Przywara's patch series
https://lore.kernel.org/patchwork/cover/812997/.
[1] is a draft implementation of i.MX8MM SCMI ATF implementation that
use smc as mailbox, power/clk is included, but only part of clk has been
implemented to work with hardware, power domain only supports get name
for now.

The traditional Linux mailbox mechanism uses some kind of dedicated hardware
IP to signal a condition to some other processing unit, typically a dedicated
management processor.
This mailbox feature is used for instance by the SCMI protocol to signal a
request for some action to be taken by the management processor.
However some SoCs does not have a dedicated management core to provide
those services. In order to service TEE and to avoid linux shutdown
power and clock that used by TEE, need let firmware to handle power
and clock, the firmware here is ARM Trusted Firmware that could also
run SCMI service.

The existing SCMI implementation uses a rather flexible shared memory
region to communicate commands and their parameters, it still requires a
mailbox to actually trigger the action.

This patch series provides a Linux mailbox compatible service which uses
smc calls to invoke firmware code, for instance taking care of SCMI requests.
The actual requests are still communicated using the standard SCMI way of
shared memory regions, but a dedicated mailbox hardware IP can be replaced via
this new driver.

This simple driver uses the architected SMC calling convention to trigger
firmware services, also allows for using "HVC" calls to call into hypervisors
or firmware layers running in the EL2 exception level.

Patch 1 contains the device tree binding documentation, patch 2 introduces
the actual mailbox driver.

Please note that this driver just provides a generic mailbox mechanism,
though this is synchronous and one-way only (triggered by the OS only,
without providing an asynchronous way of triggering request from the
firmware).
And while providing SCMI services was the reason for this exercise, this
driver is in no way bound to this use case, but can be used generically
where the OS wants to signal a mailbox condition to firmware or a
hypervisor.
Also the driver is in no way meant to replace any existing firmware
interface, but actually to complement existing interfaces.

[1] https://github.com/MrVan/arm-trusted-firmware/tree/scmi

Peng Fan (2):
  DT: mailbox: add binding doc for the ARM SMC mailbox
  mailbox: introduce ARM SMC based mailbox

 .../devicetree/bindings/mailbox/arm-smc.txt        |  96 +++++++++++++
 drivers/mailbox/Kconfig                            |   7 +
 drivers/mailbox/Makefile                           |   2 +
 drivers/mailbox/arm-smc-mailbox.c                  | 154 +++++++++++++++++++++
 include/linux/mailbox/arm-smc-mailbox.h            |  10 ++
 5 files changed, 269 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/arm-smc.txt
 create mode 100644 drivers/mailbox/arm-smc-mailbox.c
 create mode 100644 include/linux/mailbox/arm-smc-mailbox.h

-- 
2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
