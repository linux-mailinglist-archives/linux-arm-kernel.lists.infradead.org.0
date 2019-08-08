Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF3485AFD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 08:45:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kAvoo5gizTjdkd57yB2XM9iXKk+MY9odHBLn6HjRams=; b=VB/q0rGGY4fVsA
	36lLygZWEeTt9WuTnyyNmAk8RhL+K3chyuYXBe/3rVGWv3SQwLlTPxhbjarHNTY954dJiE8YY/MAI
	OadaIKkovaljEIZ6+ZU5f0cTS++SB5yPWFNKTLu35k7h0FEhZd6Ell5EwkrsFkaTgU3NVvZxtHnt+
	zbPxOAiAO9AJ/FNc69zbFmsDBT1nDAja2uQjfSE+NXc7/Z/o+rm+CsKTUvPAxEDYlFfEsCSNK6Lbl
	rNVmbllq1073UMwkUrCTjQjYdslHVsTWIUG3F8CcXru2fFjFbO8PjJuASCUyNZ6QQW3JaacDZefzn
	3Rld+WTyQLbwASJmvpEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvcBF-0000wM-4h; Thu, 08 Aug 2019 06:45:45 +0000
Received: from mail-eopbgr70051.outbound.protection.outlook.com ([40.107.7.51]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvcB0-0000vm-DW
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 06:45:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LzPAAT7K8QcWjj8PLKpWH7rbpTa/t/Cdnrpf34WbrTz4IWU0yydL35LOh4x/xPkqb1kkMnsZdDE3hTJRLne2lDbyVhDMjI91YTEP3vNcPxLAOiXI8hWBOvgxwcsK9r2WVyPTlxw648UqNqpKXyq5ftXOhVjvMB1XwqDGz9xZJXS2kJwF+5bTiMrgEtDrIgkUefEXPdzsrTNGZ4GcFAXM4wUZPFk3rpM6PLsH30hF+31NF0lT8ksh3gtsnUlM1rr+oRDcLeW9bj27zY2ZfRph33GbP2O/V8WDgtYn9u9MTO0ew1ESZhurmMuQZ/9figcCdGCQ8AeOotaYV1w1oQpCOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RXM6ahDn5gmmedEZSiXK7ch2PuNBnH6fynRO5rMcbR4=;
 b=NCBnsBaURPxGRKO0LqAZbyct87mvdHMFcutTbz2EcqdV4CM5ilTOLv4zmnIoj/GAybXpDZ0gZ0rokvdPpCqBs7Cnmf0vDgy/mNLjVmiX7BtaBqDoIW/PD3WqKLfYmuWIoyuYNLwmv3FKxjxlWIbmMSefvSB2PlM/n8JBrKKh6w8e6nL/+lyai3TM7gC/C/S37YRZ8Px9pM9PrjJZ/EZGeccJ//PqKIn3WrVG+CtZMFhGp0PfRGx4InZYhAzecDq3bsx3QAFQv+gGN/vamFoNHkA08LILzv6zIrPfc56HGtoXVf4bNa/tGuAU7auIos6k5hqFry7GRLpCkQM3DE0bsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RXM6ahDn5gmmedEZSiXK7ch2PuNBnH6fynRO5rMcbR4=;
 b=h8BDBLOQnXmQo2mPeOS39t9jiKcPkpQFTh2DPIKyyHWBRsufWGYac1WnGc7tea/nkbYb8p6/uCzvO5jTBMZzTi+f6YRGbzckqMflWP4iTLiOi7t6AMPamFAJCE2YwNG4Wol5rYxcEnfOSwLpZqOTVZfSIdwsblXOjg8nocah5cg=
Received: from VI1PR04MB4622.eurprd04.prod.outlook.com (20.177.56.21) by
 VI1PR04MB5070.eurprd04.prod.outlook.com (20.177.50.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.16; Thu, 8 Aug 2019 06:45:26 +0000
Received: from VI1PR04MB4622.eurprd04.prod.outlook.com
 ([fe80::f1df:2dd:501c:5986]) by VI1PR04MB4622.eurprd04.prod.outlook.com
 ([fe80::f1df:2dd:501c:5986%6]) with mapi id 15.20.2157.015; Thu, 8 Aug 2019
 06:45:26 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "robin.murphy@arm.com" <robin.murphy@arm.com>, "will@kernel.org"
 <will@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>
Subject: [PATCH V5 0/3] perf: imx8_ddr_perf: add AXI ID filter
Thread-Topic: [PATCH V5 0/3] perf: imx8_ddr_perf: add AXI ID filter
Thread-Index: AQHVTbTc2dpn1miwlUae+nfBRVHxVw==
Date: Thu, 8 Aug 2019 06:45:26 +0000
Message-ID: <20190808064216.6950-1-qiangqing.zhang@nxp.com>
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
x-ms-office365-filtering-correlation-id: 4ba738d8-1982-4992-ec38-08d71bcbfea1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5070; 
x-ms-traffictypediagnostic: VI1PR04MB5070:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB50705F1631A14B928279F200E6D70@VI1PR04MB5070.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2000;
x-forefront-prvs: 012349AD1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(376002)(396003)(366004)(346002)(189003)(199004)(64756008)(66446008)(66556008)(110136005)(2201001)(52116002)(66946007)(8936002)(66476007)(54906003)(26005)(25786009)(81166006)(99286004)(81156014)(316002)(8676002)(186003)(3846002)(6116002)(6436002)(66066001)(36756003)(53936002)(50226002)(256004)(2906002)(4326008)(14454004)(486006)(6486002)(386003)(476003)(6506007)(5660300002)(4744005)(2616005)(1076003)(86362001)(6512007)(71190400001)(71200400001)(478600001)(305945005)(102836004)(7736002)(2501003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5070;
 H:VI1PR04MB4622.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: fLUFvdTyx2CIn8iXOAJQSSPb3y5ZhLWr4rqnpR9cVCrNYlW9Oxon6YZiDZiz4n/iWYdrnOFekuHhqo7C2RZ5l3o19OnFagCSnOimuYqAMHJ8BvpVHS011CRFIeYyMeLOoo2SsCx2/wi882dtEO/TdIsjLuclDqExcpWyhh4LUjd/a8T2f8qsThIJFnjsOl3i8GlG/Jrc6VdPcQBE0zb1OAvpdcDB+TjXVDhaIBASVMSoc6TBsh2B0PWsLtW9XZPO9wd9FeGXLdTCcXKBb0nETno7TR9ewGyQTCYV5/kHi2yY+gahWB8f3zUAa3U3cRcrjwF5m7xPa1wNeRqlbfTnjrX2dNVVNOMmTU/n7Ud2Plt7bAeor2SlKHIcD/kfrlgVWHTSxBdr8aCRgyjsZZnu+y/o6TjvnVd2xj6REYWIjXA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ba738d8-1982-4992-ec38-08d71bcbfea1
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2019 06:45:26.4442 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9LZp9+hx8dgjAyBt9W08tXcFJhfxoNdMuFipIxrtwFCs/eTanHkl665veDvkEGUe8vKDDDQOYZssIgN5APM+NA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_234530_462323_30678A63 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.51 listed in list.dnswl.org]
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

Add AXI ID filter for imx8m ddr perf.

Joakim Zhang (3):
  perf: imx8_ddr_perf: add AXI ID filter support
  Documentation: admin-guide: perf: add i.MX8 ddr pmu user doc
  MAINTAINERS: add imx8 ddr perf admin-guide maintainer information

 Documentation/admin-guide/perf/imx-ddr.rst | 30 +++++++++++
 MAINTAINERS                                |  1 +
 drivers/perf/fsl_imx8_ddr_perf.c           | 63 +++++++++++++++++++++-
 3 files changed, 92 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/admin-guide/perf/imx-ddr.rst

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
