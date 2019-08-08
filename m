Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EAFF85B00
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 08:46:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ESZOty8v9Q7FPRyvjpVTXpQvwx61+68uok8uf3IZsPE=; b=BOByjNMOwJSXW5
	P3UnM5KlcMIqZ8slWJVprmAkgGILf0D8yVQmZ25LDQtq0dGHpdbOEs88JjnN4YMe6wSVTlQ9CUnwi
	kI2LMOqFh2OsE07qjnUdDr+h1WDzo8zxtPVUSkmEEuY6gSxsu7d7A5gN6ALk0Ueqm9LiSVk5L1nPN
	wyeNGpPZ6+Yte3ecG9eO7kS98aIa3iYyoV1TF3e8pnqY60MDLcEoQlIam3fOxBM7EZXPbgtVsa63U
	ya1mK49z+1Q3QEwCLKMGHZG3vlOubKO99XV8EEqICQFDmxoCZ+OpFgAbuX5/cSyH2fim0p0zSbkwv
	8dG9/Pf99P8TGbVB1syg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvcC2-0001hd-Be; Thu, 08 Aug 2019 06:46:34 +0000
Received: from mail-eopbgr70085.outbound.protection.outlook.com ([40.107.7.85]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvcB8-0000za-Ty
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 06:45:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gx4tOBGNkSry650VLZlzRwhOJtUic49p4lGSBonaH1UWv9k9Uv57JeqyGE7OHfOwN6URVRM6atzw6TmKKHe7TWF48eeVGXF9QZZv4WGyKbEHRV7ZnA7619rrb8XQoEMvP9GYEV5pumayywR1b2quewGHI+Y3SUcNUOBVMbB+6hEeozoe3I6lYsBy+viERyoKRp9sD/D8PzF1HM8VWSIZAvc/05gAJhGaI6smSx6pQcV2wZlReEevybf31DXZ7d8T9IDHy2ZlfTjIZGix/onYG6QjpkKg6MpNjtA3FB2GBN2WLNYo03Aaz2kWO0WyG3oW0aZJWAZonDMY0/KIJxGClw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0EVSOZH95cioY0ib6PVcmIc87sf5nlP0qhqYOp05Aew=;
 b=R6b78yz3O/UficH8m70oUtGG625mRv/4ICdeMWvagWQuu01HyE523Gb7rQHo6cD1o4RdIYWfA36QA+fp6ajcFlZtDoPPdw498FCc+C9ps1XkEi5TrEl1Y5h6v9Je8apEh6mHtOhtzH1ufu5KPEs7HGvR854d2OoJ4u+WHa4ayi2u6VHFgSfINuEOxjrF0L6NBHDBDFJw2UmB5HUvk9hqXYZEZkFJp5moOgE6iJHliHCPB/5rUOzsvxQOF+tzCRYHGzcZ1LyRVd96HdUykc7m7rVNG8jKF1Dj+1igdWE70thIvY19hnNCi6KFgtAwEX+xjf+8fuOoC81DmNXNbaojUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0EVSOZH95cioY0ib6PVcmIc87sf5nlP0qhqYOp05Aew=;
 b=Df9ezo89NjodatZUKk13qxn5Z6VxI/bKJs8j1bew87gQBaGPOiJmMNUKdikfhEQaFAw6cOC3n5jRzH6Xr0wW8yPi44TutqsCalX7raJmYLf93RvU6/2qlTKi1QsSsobqqZCp/VhC6+dI0Zocnphk4Ueu2oJxyt2lQ9D71CyVfho=
Received: from VI1PR04MB4622.eurprd04.prod.outlook.com (20.177.56.21) by
 VI1PR04MB5070.eurprd04.prod.outlook.com (20.177.50.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.16; Thu, 8 Aug 2019 06:45:35 +0000
Received: from VI1PR04MB4622.eurprd04.prod.outlook.com
 ([fe80::f1df:2dd:501c:5986]) by VI1PR04MB4622.eurprd04.prod.outlook.com
 ([fe80::f1df:2dd:501c:5986%6]) with mapi id 15.20.2157.015; Thu, 8 Aug 2019
 06:45:35 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "robin.murphy@arm.com" <robin.murphy@arm.com>, "will@kernel.org"
 <will@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>
Subject: [PATCH V5 3/3] MAINTAINERS: add imx8 ddr perf admin-guide maintainer
 information
Thread-Topic: [PATCH V5 3/3] MAINTAINERS: add imx8 ddr perf admin-guide
 maintainer information
Thread-Index: AQHVTbThl5Yjzs5vwEuBKjLNndlFrw==
Date: Thu, 8 Aug 2019 06:45:35 +0000
Message-ID: <20190808064216.6950-4-qiangqing.zhang@nxp.com>
References: <20190808064216.6950-1-qiangqing.zhang@nxp.com>
In-Reply-To: <20190808064216.6950-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR02CA0085.apcprd02.prod.outlook.com
 (2603:1096:4:90::25) To VI1PR04MB4622.eurprd04.prod.outlook.com
 (2603:10a6:803:70::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 69df93a2-a2b0-4c1d-9469-08d71bcc0414
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5070; 
x-ms-traffictypediagnostic: VI1PR04MB5070:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB50707F896D92A85D1983A487E6D70@VI1PR04MB5070.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:854;
x-forefront-prvs: 012349AD1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(376002)(396003)(366004)(346002)(54534003)(189003)(199004)(64756008)(66446008)(66556008)(110136005)(2201001)(52116002)(76176011)(66946007)(8936002)(66476007)(54906003)(26005)(25786009)(81166006)(99286004)(81156014)(316002)(8676002)(186003)(3846002)(6116002)(6436002)(66066001)(36756003)(53936002)(50226002)(256004)(2906002)(4326008)(14454004)(486006)(446003)(6486002)(386003)(476003)(6506007)(5660300002)(11346002)(4744005)(2616005)(1076003)(86362001)(6512007)(71190400001)(71200400001)(478600001)(305945005)(102836004)(7736002)(2501003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5070;
 H:VI1PR04MB4622.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: HQwlUejZTV4PAPF9OhZuOwThkpSCEDA9Nz2s55USbSt4o1SgLXsOHOp27mfomc0fjVgoHif6GxZsKPUsBOw8EO8K9k+YBU0vk5po8sr/lVvcrioPEeCl3w3mgyQLA9j8lupNm1IcjYMl09+WfE35JQArMHZor5W1Lrr3GrseoIwWxZf2dmowF85+hD2Bakltyl6Yqn77HAF5kLBMTWIsrWf4ZOvMVmsS/EI8i5KMX13bxEE1Y6cmnPaDE3bFust5CKe/5PTIyGdnu1MniUoBSybtuAHFG1p0pd5YdgCTsibhN2MHgCM/AZBHL8Vp9Vb1UvRQyQaD9TR2vKDjGYXR8QOWCr4XG2YLZ5AQh29ybKNR+Xtjl8qiaHJChrta+90y3SOzclPb2r3kSnYuu8lyX4qxVrClt5GP3Ao1fmwNjmg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69df93a2-a2b0-4c1d-9469-08d71bcc0414
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2019 06:45:35.5913 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6oUobrLSYxUfkUOwUq3Qw+JtqvkgxX65r3Kt1oyX3JEN6gJCDNsJuCVfthpFXmq+jPvkdFdyc9VkBoewAiQCZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_234539_149255_74D5FC71 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Frank Li <frank.li@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Joakim Zhang <qiangqing.zhang@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add imx8 ddr perf admin-guide maintainer information.

ChangeLog:
V1 -> V5:
	* new add in V5.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index c6fa7e88a6f0..bc4eae7eba64 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6383,6 +6383,7 @@ M:	Frank Li <Frank.li@nxp.com>
 L:	linux-arm-kernel@lists.infradead.org
 S:	Maintained
 F:	drivers/perf/fsl_imx8_ddr_perf.c
+F:	Documentation/admin-guide/perf/imx-ddr.rst
 F:	Documentation/devicetree/bindings/perf/fsl-imx-ddr.txt
 
 FREESCALE IMX LPI2C DRIVER
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
