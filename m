Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F5213A115
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 07:42:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yzgL5CcBeQN7c5nBxZ0eHa15rHo1PRH84n3NvyXvtdE=; b=U9JaBgWvdftcbP
	v7qeEnU/PAG4pkdYl5hgixRLi8mlbjdTqzEdONJsvBZsItb1y/bi6QWoyHVUV02wpexDif5NT4iBs
	cUaFMd3/mJdcjUH8rOx9INJS2pP7fZO3Qyr0Wj1H0h/eTmfy7NzcqlT/NIOFXbUUhp2F0FdKr3VF/
	cSAMqSDQwnJ7yqwJAa2k8QckbDWrsKhep9HYB403kfFIfJoZEHqqF2e+HxKhFqEF/EHE1ctMGB7Kz
	um7epMlo8bwA4QXOWKpLRMUbb/J65J/ZakMRjMAD9l+Cov/blSxnSllUrHC7D0LaHXb1kZHM807Cc
	Yrnxf39Fg/Fh90HF/kmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irFts-00009Z-M8; Tue, 14 Jan 2020 06:42:04 +0000
Received: from mail-eopbgr130048.outbound.protection.outlook.com
 ([40.107.13.48] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irFtj-00008r-Ch
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 06:41:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S7YpMePCQQCGnAZC0pMT9Rrt9SQ8rOtNcnZoEYw46ds4Yxpzk/spjH9/yUdtk0PbQkq3HfOG8B3nSG4tJot4n00rqVYNpsPxhmaRlEtxCiQbk1M45IWxAXLKtVI5iu8cM7v4KP8XmfBTWMaKt2+PlQRwQ4wDbU0BlxkwYAPOs47rmc6fuULtjJrLt10/utv46dvh9GUbloZOjBR/2YbCVJZARRYf6Egx+W/d47GZtY1Y0P97JXFVuPuCOfqXZ2OnHEZCypf/YxBY2LEew6UqmFFRzb85+5Ei+SmaGJ+0t6GRH6gGsoaY4XTeFO/repHg2jl5QSCoKhVgzt/wkI6GSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lVjCQmZghlZKNk2xiESWeIe9k1jk7X3jcT/AWY2e7js=;
 b=R8pBFdlm6T9HBH4X1zr3drAtHDjJ3Nk/f39uUlBVNRXGCpTAx+ydUT16LxKXBNKsru36Pr8OijjGl7HLC5H7zqzOALiy+D4iYbnZM913+SazLTg6L/DSK9saTAcWcLTevOaHVlfG22IExXDsVV0Ety/zNyFyOaBmIhRx+qCTm4qstOXnHH23I/Q2DAM+qdCAZF8JRm6CwBcdhrrmxnb+a9VKJQhlfCixMMjYm+UHEXvV0LGQsQlicwk+tEY81dvxnYMDEkdVdSDUmPPCqwQMGaFY7/Os8R5zvFNkh29KCdgw46XVJiPWPmJdKJYlRwD0WDns0MXwdadM5+lF5cyIgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lVjCQmZghlZKNk2xiESWeIe9k1jk7X3jcT/AWY2e7js=;
 b=CTycFTIkzAXA/vugLd6ilL3EEH0TRmIfPNXEPTxKhhZUXLjgV0A+W/jlhnPhenPecDawccur+SefOsUPTa9kFVgS1LZMGWW+AZpU5x5q56VGOTaLvZqcuVAeZsAxn5+cgQOOA7Mzpit7kfYItTakWD7jkEwr/xkXTSadC/yKFgo=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4404.eurprd04.prod.outlook.com (52.135.149.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.13; Tue, 14 Jan 2020 06:41:49 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2623.015; Tue, 14 Jan 2020
 06:41:49 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR02CA0140.apcprd02.prod.outlook.com (2603:1096:202:16::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2623.10 via Frontend Transport; Tue, 14 Jan 2020 06:41:46 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>
Subject: [PATCH] dt-bindings: arm-boards: typo fix
Thread-Topic: [PATCH] dt-bindings: arm-boards: typo fix
Thread-Index: AQHVyqWyFUR1J0wI/kyxNhwHRPBOSA==
Date: Tue, 14 Jan 2020 06:41:49 +0000
Message-ID: <1578983860-23747-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR02CA0140.apcprd02.prod.outlook.com
 (2603:1096:202:16::24) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 94598f12-5639-4005-3c00-08d798bcd4d1
x-ms-traffictypediagnostic: AM0PR04MB4404:|AM0PR04MB4404:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB44042B159B41BE16E10E312388340@AM0PR04MB4404.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 028256169F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(396003)(346002)(376002)(136003)(199004)(189003)(316002)(81156014)(478600001)(66946007)(52116002)(110136005)(54906003)(4744005)(81166006)(36756003)(6506007)(8676002)(8936002)(64756008)(66556008)(66476007)(44832011)(186003)(66446008)(71200400001)(5660300002)(16526019)(69590400006)(86362001)(2906002)(6512007)(956004)(6486002)(4326008)(26005)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4404;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BN2zgY/qEzfMQFTaHAMPU9lmlDhr+C6Hty6jSzhapYCE9BtmlV9Ak1JIxljlAyJ9srbWsmiLLTE1mnBchjgzYhqgCfk2Nhs1jFiKDSMtF52dVtx2YuE2Gu14g3zUdLp6/m2LhgIqZUyjJ4JYdfxUmZ2eqYZtklDB01cCP78rvAjmo74sV6dVfkX1UW4BjxI7YJGCZnXDD0ju8MSrjwnghOF0zdsbD9UGRFkSfAhauJ4BN6jXlOs2dGVBt/SSBjSWB2nGq0fx5LTgcnUXXJ35k1glJVOly4nQ88nP7fg2jqmteDex8H/8bEB7p6Pww2zCNbMqCGZg4CdNOUrlHFcV3ntTRuYpeTD106VWmoIbjvIGDuaFc5vNjlo/5He6eBPXoVKm6vhaNNIK9VR9cbcmMZg5a/04itbzdmOCYaLBHVi4y0jm6ajCz1rESGKpsOtjpnWLcfx5CxhYBCcyJIHAeKFZq0C4QAl+kBFFlDJNESkATc2QCQjhkpyk6Q4X4Vvb
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94598f12-5639-4005-3c00-08d798bcd4d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2020 06:41:49.2307 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kZPbzLFxdfQdGtdbK0JrvE7Ki8iEFB6kn6BoWoPQt3CTQkpIYqzVonl5rII6JY/FgOYLTQL8WkrXqV60B8UiXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4404
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_224155_507759_3BEFC1A5 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.48 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Typo fix, "withe" -> "with".

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 Documentation/devicetree/bindings/arm/arm-boards | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/arm-boards b/Documentation/devicetree/bindings/arm/arm-boards
index b2a9f9f8430b..96b1dad58253 100644
--- a/Documentation/devicetree/bindings/arm/arm-boards
+++ b/Documentation/devicetree/bindings/arm/arm-boards
@@ -121,7 +121,7 @@ Required properties (in root node):
 Required nodes:
 
 - soc: some node of the RealView platforms must be the SoC
-  node that contain the SoC-specific devices, withe the compatible
+  node that contain the SoC-specific devices, with the compatible
   string set to one of these tuples:
    "arm,realview-eb-soc", "simple-bus"
    "arm,realview-pb1176-soc", "simple-bus"
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
