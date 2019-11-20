Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5A3103253
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 04:48:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2UZShgq7nbVaB6AdxGCND2c/su95P+i3nWh8G8GSp0w=; b=BXAajuU18RdKna
	xr489q1znz83kD9YgSp11a7bHdOFLLI1/onGvVYA20/nTmD5m/lVvfyDprYfZsAkk9BxlZs4p4Wnr
	wIxAt2fxcqkOL7G+dCf795RbRoeScVwscWqj+ZcrNuc2PFq+v6wSFplkNyPIbNN6K4e2SQ9krYvQE
	98bZI+Y9intNc/UQn1gsBtku+ZrzWOzChYY9bGLP/pTTykR/ylKLNaDQ3S3jATR4r51Yo+PMAgPpc
	A7iq7oo1tea/br3vkY9IJ9oBTp6cSKP84NU42PIShpvtot/jIxrzATQmRIf8Z0+7TYj+twgnz0/IZ
	djOKpg1LzuzATeMCXGqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXGz5-0001k6-Nu; Wed, 20 Nov 2019 03:48:51 +0000
Received: from mail-eopbgr10047.outbound.protection.outlook.com ([40.107.1.47]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXGwz-0008NW-EA
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 03:46:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A5nhIIXcc4LIHsGYMVKVtlm25PR8diBgF1IhXC9kK0JGOr7emJ4Je4A2MnHd/l485btMNpduYpe7XQDpGK/ZET6t/HbI/7DfZ7DDodfhxO8zvDv3sHbD9Ga5hS8G1lsrDYKGgcGpWQLEWrcXpjwB+Zg+hnOSpDZVVNCQmcA0XWhMyztTnZR5+JG+Q8P5voMtDXR2CByw0xExnh4jJxXHsn2o9OmX2Mr6Gaq/ST3+4r2hqto4HUAhiiJqbikqKcTJX+mXqep6t8m2//k6i2azGS7wJUMqtVjG7h0Tn3pQ7VJRkhG9IeTFEV1IDkK/aSESXn7v6MbveU47pV8aUqLwoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xvECcNdsNP8ZxLYSQY4khzYzlK5B0ouWjp4ZsyQVMWE=;
 b=c3SdO/X6zR3Fko1Gr3GwSeGLn5aJn/Q+eYKSH0rw/MWRTaBqTxuI9jQk18O2Q2WBlRq9wmrLCr+72XEKfIXJxoII0aJDJ5qXX9pgEhC6C6P42b5SaIE0yQqtXekXvgYaMHHF6sbxZq0xHodv3xi85zd8fPExvnfML0v5heTUB25NjeFkKfjbRJPSLfoxW6d5x/kiMZn0luGHhj0lJJi+UcFdfxUBv6Ypkj459qo+xHQR5EzJ7FatNNveq8mUxCe2/ggwCsginzeyvWzqIJFCF77RjDhMdJdZ1OHn7ZGe4PQiAl+OO310xUQqWOymAzgNQg6ZQ5+lvpjNNAbSQHzTvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xvECcNdsNP8ZxLYSQY4khzYzlK5B0ouWjp4ZsyQVMWE=;
 b=KooYPAYl6PpYVNNjld6/PNJJlf2kLBh3un8SWTTLajGealHr7KYY1sk8a492KNQU1j6aijhr+VGdSIk1MymgqfifyySr9IHBzVmIEdgfZHJQ+FzQl2vySLgD0lCsf3rutI3HqFnVnVh9THbx4Cq/oXI4mkZdXj02sQdorhYyqSo=
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com (20.179.250.159) by
 DB8PR04MB5740.eurprd04.prod.outlook.com (20.179.9.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.29; Wed, 20 Nov 2019 03:46:37 +0000
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::898f:3cd6:c225:7219]) by DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::898f:3cd6:c225:7219%7]) with mapi id 15.20.2451.029; Wed, 20 Nov 2019
 03:46:37 +0000
From: "Z.q. Hou" <zhiqiang.hou@nxp.com>
To: "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "bhelgaas@google.com" <bhelgaas@google.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "arnd@arndb.de" <arnd@arndb.de>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "l.subrahmanya@mobiveil.co.in"
 <l.subrahmanya@mobiveil.co.in>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "m.karthikeyan@mobiveil.co.in" <m.karthikeyan@mobiveil.co.in>, Leo Li
 <leoyang.li@nxp.com>, "lorenzo.pieralisi@arm.com"
 <lorenzo.pieralisi@arm.com>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will.deacon@arm.com" <will.deacon@arm.com>,
 "andrew.murray@arm.com" <andrew.murray@arm.com>
Subject: [PATCHv9 12/12] arm64: defconfig: Enable CONFIG_PCIE_LAYERSCAPE_GEN4
Thread-Topic: [PATCHv9 12/12] arm64: defconfig: Enable
 CONFIG_PCIE_LAYERSCAPE_GEN4
Thread-Index: AQHVn1Uc4M4RucFezkSHTTtL1plrKw==
Date: Wed, 20 Nov 2019 03:46:37 +0000
Message-ID: <20191120034451.30102-13-Zhiqiang.Hou@nxp.com>
References: <20191120034451.30102-1-Zhiqiang.Hou@nxp.com>
In-Reply-To: <20191120034451.30102-1-Zhiqiang.Hou@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2PR02CA0199.apcprd02.prod.outlook.com
 (2603:1096:201:20::11) To DB8PR04MB6747.eurprd04.prod.outlook.com
 (2603:10a6:10:10b::31)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=zhiqiang.hou@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5777c186-826b-4758-d6db-08d76d6c3e7a
x-ms-traffictypediagnostic: DB8PR04MB5740:|DB8PR04MB5740:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB5740FD1F6D73666FB6F571A3844F0@DB8PR04MB5740.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-forefront-prvs: 02272225C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(376002)(39860400002)(366004)(136003)(189003)(199004)(8936002)(305945005)(102836004)(71190400001)(71200400001)(76176011)(386003)(14454004)(478600001)(66946007)(66446008)(99286004)(66556008)(64756008)(446003)(2906002)(2616005)(66476007)(11346002)(36756003)(52116002)(6506007)(7416002)(6512007)(186003)(256004)(26005)(6436002)(6486002)(4326008)(110136005)(8676002)(316002)(6116002)(66066001)(2201001)(25786009)(4744005)(486006)(3846002)(1076003)(7736002)(5660300002)(81166006)(81156014)(50226002)(86362001)(476003)(2501003)(54906003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB5740;
 H:DB8PR04MB6747.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aiVbzQqlrFdyuxHzzTMiwP1AMPxeLmNYZEfJRR9YYSJRsl3Yb5YS2NtLERE+si728BlNK9js1pmozSv2z6FF4iO96t4bGMJv+yd4olMBO+h9HIa/ZfOSTT3P/wFIiXJrhKkL52GAf5u+Lv/PVnfpnn7zJl4TzeeG7xNRKf2fK+xLfva5iBch9UwJ01EQCjCJrMj8A0WOmp95V+xGB/G02Aj3WBG6BKUgbMzpJiJ3qMyEdHismk7/Wf0eXtk484RdVkkIC3BzTIINgk+6nYlHlHpP60XuMJvC7cncHv/3qPFzEjyslvWgzji3S/FWMq+qavWUnJDSHQKeqeMBt9H2Qh1JfTCjGG3zXkTcX9yBJQdCn2njOVcFkcaww0v9vYsVOpu7TIEA4dTNIsV6WLe8YVeuDswuUGMkV6YSMypU1t1kNmvx/LO4cbHj8VZu225+
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5777c186-826b-4758-d6db-08d76d6c3e7a
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2019 03:46:37.3195 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YAvMzeWFzRvOAoTeCI4EuyrEhPt8RKMYxaTxUaoGA9VvU6uPVn4hNXbSf3Q2z9ncbBAOgWP+Yg1o/esjlPGnog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB5740
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_194641_498836_E2D8C2DD 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "M.h. Lian" <minghuan.lian@nxp.com>, "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 Xiaowei Bao <xiaowei.bao@nxp.com>, Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>

Enable the PCIe Gen4 controller driver for Layerscape SoCs.

Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
---
V9:
 - No change

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 7fa92defb964..0e51207b5ed5 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -199,6 +199,7 @@ CONFIG_PCI_HOST_THUNDER_PEM=y
 CONFIG_PCI_HOST_THUNDER_ECAM=y
 CONFIG_PCIE_ROCKCHIP_HOST=m
 CONFIG_PCI_LAYERSCAPE=y
+CONFIG_PCIE_LAYERSCAPE_GEN4=y
 CONFIG_PCI_HISI=y
 CONFIG_PCIE_QCOM=y
 CONFIG_PCIE_ARMADA_8K=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
