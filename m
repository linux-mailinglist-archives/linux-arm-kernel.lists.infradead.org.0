Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88DAC9CAA0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 09:34:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yaplAT2SejmrYYToNrY1msRSZp7bOmwV5pe2pTY3/kc=; b=fjeckqjI3rlvRO
	ajfHo/q4C3UNNb6rLo1W28x9Ds+0U0vT1VsPbZXTCOdmiy6sS1Subk9hTCyFZCihU7A69NRjTMTDP
	INxn78APTHekIfTKv26UlcT1UBfJHhiKHueBSj4HIhUJGQnZdrVJ2Zn6txZ2JiEhKeOpS7YuYKviE
	BRNguc0xq24tHhAHhKRHZMIj70zz915LyVEIHbLpQPh9jxxj1kth03+W0nSyZVJwET/DOGm4/w6Dz
	RqT9ASyCNRLMV5Mlu2V8bYByUSQpI9l+66wCxjHT7eO7S6cPExrXveBBsVJSrlf93LJV/nGnEupiD
	JfS0YwGV8IyAYBMSng/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i29WH-0007Js-BZ; Mon, 26 Aug 2019 07:34:29 +0000
Received: from mail-eopbgr20073.outbound.protection.outlook.com ([40.107.2.73]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i29W3-0007JS-G6
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 07:34:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EajmMAM2qijwtBcvJfuiELnC1j42whGE183o0kbWCy2kmkKBboA/p0MAZj9uIWh/ZPhcG/2FjYzeXnyGSvlRPnBAsIWNBpYos/ZsvebFvos/VqlyhsC9E9HxFJgLntljVUxafdMOTQroLYREAtM9BI4q24lgsC6bUadVFduR5RjD8x9vVhYOxkeN1SfkUcWI0bn2lQKVt8iVkmF+CGZiC0YUVBV7D5f0jn/YrPNPIPcQc4fXbo/WDG4OadGSTHnojXRrjFJZJeh1WHTGTRi+W1bSxSaQKkR6FeLHpDc91fKFzcyEZ/vC+agaYiqQXVU3sUfKMoWk46DalR6xhMkxOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0C0WEvkIogYAftN672lrMPvfneRTujE+0GHBwYE9OLg=;
 b=PLOU0wynC8VGOZamjTBAzUiAysFBGH6WKwiw43fCUekxIEBzDmjAFn4TRLW3VtIKuYHnrEkMTJKfZzqktWwiHJfMdHY4z/qNDqSHeslSmM7jtZmj+nE76POmUQYE0W5LI9tEU8nmVTy3Wj8jYF6yDcrUEMDsFLJ7utNWRybG+WL7mxh2jhAZvnT6mJaLm9wLEVlf6D9yRk3xfuH21u1Y4UU9YxF6YUKm0bAM7hTQU9A0MGxq1dXS/4GLYk4SW/fttaCNQ/uiiwO4Qk1eStHM1AH04+X/GWDD2wggKPc5+fP/2FNBM7eeky8VFs84JOOVfKgwCT3w5SOZcGQ4SDmxdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0C0WEvkIogYAftN672lrMPvfneRTujE+0GHBwYE9OLg=;
 b=PJQsC4B6QRFZdC7n/aYhZIRvTT12j6ksArcCdCdYKsDjTEOoXfKW9hEGwHQJKAKpXh47yAJa9VT+R9jUP+vLnCOu98f7IXIK/RlejMwV0mfb3QVNGBa9WN+QHbzKu+fPeNff1SNdoSbEClAr0PKfrnHvVcOePZUzvwlHYt5mZ6I=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4122.eurprd04.prod.outlook.com (52.135.130.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Mon, 26 Aug 2019 07:34:12 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f%4]) with mapi id 15.20.2199.021; Mon, 26 Aug 2019
 07:34:12 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "robin.murphy@arm.com" <robin.murphy@arm.com>, "will@kernel.org"
 <will@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>
Subject: [PATCH V6 0/3] perf: imx8_ddr_perf: add AXI ID filter
Thread-Topic: [PATCH V6 0/3] perf: imx8_ddr_perf: add AXI ID filter
Thread-Index: AQHVW+Cox0S6ieP0AU++ZKb29EhzIQ==
Date: Mon, 26 Aug 2019 07:34:12 +0000
Message-ID: <20190826073128.10052-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR03CA0087.apcprd03.prod.outlook.com
 (2603:1096:4:7c::15) To DB7PR04MB4618.eurprd04.prod.outlook.com
 (2603:10a6:5:38::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1beb44dd-43df-4e71-44d5-08d729f7ca42
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB4122; 
x-ms-traffictypediagnostic: DB7PR04MB4122:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB41222B2A057AD8E0A1250D43E6A10@DB7PR04MB4122.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2000;
x-forefront-prvs: 01415BB535
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(366004)(39860400002)(136003)(346002)(199004)(189003)(6486002)(26005)(2501003)(6436002)(2906002)(102836004)(14454004)(6506007)(386003)(316002)(110136005)(256004)(2616005)(50226002)(2201001)(305945005)(36756003)(7736002)(66066001)(71200400001)(8676002)(86362001)(478600001)(5660300002)(4326008)(71190400001)(81156014)(81166006)(99286004)(54906003)(486006)(53936002)(3846002)(52116002)(6116002)(66446008)(66946007)(66476007)(66556008)(6512007)(186003)(4744005)(1076003)(25786009)(8936002)(64756008)(476003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4122;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: KHyPn/QucIl8B+e5McJTVySSef3FZMK3s5jfhEvINyhgT2nHnxCfHzegriQeZxTqv+QlrS9+9nM15+QNbUx0CqkT0QwKyYVErSUT5hDnjdNxPDrxtMByLgLXtfgr6lpfHa8j/UbK0a/Uyw76dm0rSezmFpamuZ4W8ASQg9eLXPaWIrmtV6yheHxQ3vRzNMOtk3W8eInSZQi2RekDeLGQ8Y0T2CCpQtrDQXcN0CxbaZjND4oH17GkkbmgI1oOucetQiWI23WrpZPmxoooDWMfCB/MCZ/ZlCS1t1tZBXd9awWbxp+hP3hEykW2M1YNNpe8lhAEQIMPvOS/nZHTRDCOkJ5oNR54pK8/r7EAdNUhLnTtAhwteIur3rS6OpHW52Omo+1rTVlsG073yEOzPqxqUaWwSz+TFtrjZTq/OiIfQFs=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1beb44dd-43df-4e71-44d5-08d729f7ca42
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2019 07:34:12.7103 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nSm2dGSJr+0ldboTokjdRavGPBTrykWHGJBkYwCfML9vsa0cwDFhRj85E/S3nd70ENgUmZUW56unDMahrQZweQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_003415_651003_36538042 
X-CRM114-Status: UNSURE (   8.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

 Documentation/admin-guide/perf/imx-ddr.rst | 30 ++++++++++
 MAINTAINERS                                |  1 +
 drivers/perf/fsl_imx8_ddr_perf.c           | 65 +++++++++++++++++++++-
 3 files changed, 94 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/admin-guide/perf/imx-ddr.rst

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
