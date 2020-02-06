Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A27F1547F5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 16:25:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IXc7qJACbcHSHHByZOjxDTIAWmJ+VZFwhjYHwgqOJzM=; b=K9YTlO9Dj97j9e
	Aig7qClO5xyZ5tm01BRcXFYWEpI/zeo3CD6/Hz+pMUoxgyUcYKPuqYZk2XLN5Fke5Y2SNtr0DZ4kT
	nPkZQZxVCfdOC/dnEVYbS3Q0tyQ+HPSQD2u14JWmerb093gV/RiDJTExF2MNrMjxvyHOuAG+IhBWa
	Kwuo8MJEXLx7kju6jcUEHwGAJ2zJdbC0rR1FKIMSgFxzMbxjcZJJDaBhFYAGRiIipBzRFhvI6gKld
	Xe9tBsWyiURYJ43VCPMK6T2llkInsfdxam6QXXbLxW1HWHGvusNyVRNcgtLrZvZS/KHqVqFKZmA+3
	m1iMklRQ3W5UHctK9qEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izj1T-0007tr-Jd; Thu, 06 Feb 2020 15:24:55 +0000
Received: from mail-eopbgr80087.outbound.protection.outlook.com ([40.107.8.87]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izj0p-0007Ta-45
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 15:24:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XJ19ejM3rnfnUUIqYueTb1GNXEgvTlUK5YGGZ28apWZW4zwMvWj5mQYap/y4ID4xWBvuXfrRw4NsVx3py2g7Slt4IbpcdGnfKIer8tBQZS3VQTmGqqRjCXNA4nPDmPyWVBm/IAf2EOfXZrydRa8UbEyMyRIFMZwGp8RDcJBKxD+6ekAn5Uz8LxB8xeOlsu8LJDg5jrThlFafw0wQTa078qVJjo7Alo04OJU/k3ytkWn+yxk9AZVUzpzY7xJ8+Doh4DhmQYD5YM7Pdgo7XrDsm3yl5Qhnl3gqVN2eMLLH7ZPgmn3LJvE7moCxRSxrXbKGF4oJjjDxETlQF79Ho/2AbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wIMFvvMFtYO6T0EUoaJ/htAD7+yP4O1vKO4FAMiYnC4=;
 b=bybJJVaKZ5qQJ1yrjuLXrOyV8iPn9zXRlYxKagWnRw89FBEldoWJ0PPPtEstBlJpnOlYkO7lqx11EjcXU3mZABxsEGHO4uvvbC7wYu08L5REWpdPtTINDtFwWEH5XgaEcpptqVjRCq9S5d/HjfhqmOBBwgh4V7Azcuj0yAigRp3d/Y/lbCabQORbRQ6HCvusY1I9yiKdTC6EjxUaw3LduQH9hWTx0lR9FX2QJdCm8aUSLhOMX8/rtb/F0HrEEhcIXeZB29jE297fPK+fd3bY7tWEgx58Lu9z3Fx46Bw6qq5prHdbY/ScbEV3emqqQfbFynUVftVc5i6rsYUgB534JQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kococonnector.com; dmarc=pass action=none
 header.from=kococonnector.com; dkim=pass header.d=kococonnector.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=KoCoConnector.onmicrosoft.com; s=selector2-KoCoConnector-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wIMFvvMFtYO6T0EUoaJ/htAD7+yP4O1vKO4FAMiYnC4=;
 b=li+XwGsrWtmyvKKHuSDPGpHYOzAyxQ9e3AitrGSAytlCQF1nvOX5XK+eaIf0A8M6mRSBFRv+DTA85qhB9z1rdmEG4TmcCwnJYvYByDhV9NZlvdxFIqm8A/oPAN8ypTNXV0GtdpTUufU8hg2KigOSfujJ6sPCcLPRf3b7m/5hBuM=
Received: from DB6PR0902MB2072.eurprd09.prod.outlook.com (10.170.212.23) by
 DB6PR0902MB1847.eurprd09.prod.outlook.com (10.171.76.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.23; Thu, 6 Feb 2020 15:24:08 +0000
Received: from DB6PR0902MB2072.eurprd09.prod.outlook.com
 ([fe80::406b:dddb:f0d2:7ea7]) by DB6PR0902MB2072.eurprd09.prod.outlook.com
 ([fe80::406b:dddb:f0d2:7ea7%7]) with mapi id 15.20.2686.035; Thu, 6 Feb 2020
 15:24:08 +0000
Received: from localhost (193.47.161.132) by
 GV0P278CA0035.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:28::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.21 via Frontend Transport; Thu, 6 Feb 2020 15:24:07 +0000
From: Oliver Graute <oliver.graute@kococonnector.com>
To: "aisheng.dong@nxp.com" <aisheng.dong@nxp.com>
Subject: [PATCH 2/5] arm64: dts: imx8qm: added System MMU
Thread-Topic: [PATCH 2/5] arm64: dts: imx8qm: added System MMU
Thread-Index: AQHV3QF5hUkxAjhWT0Goj1otwWD+bQ==
Date: Thu, 6 Feb 2020 15:24:08 +0000
Message-ID: <20200206152222.31095-3-oliver.graute@kococonnector.com>
References: <20200206152222.31095-1-oliver.graute@kococonnector.com>
In-Reply-To: <20200206152222.31095-1-oliver.graute@kococonnector.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: GV0P278CA0035.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:710:28::22) To DB6PR0902MB2072.eurprd09.prod.outlook.com
 (2603:10a6:6:8::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oliver.graute@kococonnector.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [193.47.161.132]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: df47cfef-fcfa-4f06-23d3-08d7ab189be0
x-ms-traffictypediagnostic: DB6PR0902MB1847:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0902MB1847888746D6002D25C3E972EB1D0@DB6PR0902MB1847.eurprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1051;
x-forefront-prvs: 0305463112
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39830400003)(346002)(376002)(136003)(366004)(199004)(189003)(508600001)(4326008)(64756008)(186003)(5660300002)(2906002)(6486002)(66446008)(6916009)(81166006)(81156014)(44832011)(16526019)(956004)(2616005)(26005)(66556008)(4744005)(66946007)(66476007)(54906003)(7416002)(6496006)(8676002)(52116002)(86362001)(36756003)(8936002)(71200400001)(1076003)(316002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0902MB1847;
 H:DB6PR0902MB2072.eurprd09.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: kococonnector.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PFNbnYwEWy1pXLBjRgM+V+/91voQR1nQeE7Q+buZFe0UeQSZhLtcmuBUncf3ZdkyuTi/6DWdlLmZaE6FluXcWlL5tRuZxm44LeiLVtuonrTCKNwFgSy1Mjj7VgDPYV+ZEyE+ZZW2sUPRwBSSDZSngI7ewMUTXZHjgR+DsQq/JrxFyY3bT72eQuiZavDuyUGzgVGWebkC6SIcnV0GFLIhH1TgUY1B2s5TJdOgP4y3+rhspTj/s9TN0rGSIMab0/98XgorXPajdxyUHLhTPYnlqIi9c7AXx9vL6mcXh2szmEvhGAwQisXVwG+WaxffrYyKY6AE9JcszaFCJ/7ZaPbOKWP3VOjIlairn2EuEzZcx29kDLptrYVfzX1I8tEIrp+/HZmT3IH6twQmbxTo0JyL41BVdHmLFwyHnbFtpcpLgfV888KELrBbVAxmuMoOzTvCaweieSht0Q0pNbvTN3v7yeiKcFbm9LooZqrKgcYdVf/2jIw/YmTFf7K+x/ycUXXb
x-ms-exchange-antispam-messagedata: Uxg+SI59ZyXk9G3hCfYkZwcQ+Jyev8//ZJOXSZdi3zdWW+3C3Bbz1ZLAHc3Cv+tuIUQP7wOA6LTcsMJekxbl914rDjlnMeAjYe9fOIsyxb28ZkadeOdj1qLPSXaKmUFumK840dEF4weVpGJkxOuLKA==
MIME-Version: 1.0
X-OriginatorOrg: kococonnector.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df47cfef-fcfa-4f06-23d3-08d7ab189be0
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2020 15:24:08.0436 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 59845429-0644-4099-bd7e-17fba65a2f2b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bDFc6sdLoHImwUVJ80yV3QfFzFwaD32Vlb2xvw6/83ct5jcMfE5sW8c1WPs0Nednb1WDXKYAK3wvRUYE41yKSZW2gGJYPtZJ7GgZ1TXjFBc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0902MB1847
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_072415_172768_10A3F190 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.87 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.87 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "peng.fan@nxp.com" <peng.fan@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Oliver Graute <oliver.graute@kococonnector.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "fabio.estevam@nxp.com" <fabio.estevam@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

diff --git a/arch/arm64/boot/dts/freescale/imx8qm.dtsi b/arch/arm64/boot/dts/freescale/imx8qm.dtsi
index 7efc0add74ea..fa827ed04e09 100644
--- a/arch/arm64/boot/dts/freescale/imx8qm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qm.dtsi
@@ -140,6 +140,23 @@
 		method = "smc";
 	};
 
+	smmu: iommu@51400000 {
+		compatible = "arm,mmu-500";
+		interrupt-parent = <&gic>;
+		reg = <0 0x51400000 0 0x40000>;
+		#global-interrupts = <1>;
+		#iommu-cells = <2>;
+		interrupts = <0 32 4>,
+			     <0 32 4>, <0 32 4>, <0 32 4>, <0 32 4>,
+			     <0 32 4>, <0 32 4>, <0 32 4>, <0 32 4>,
+			     <0 32 4>, <0 32 4>, <0 32 4>, <0 32 4>,
+			     <0 32 4>, <0 32 4>, <0 32 4>, <0 32 4>,
+			     <0 32 4>, <0 32 4>, <0 32 4>, <0 32 4>,
+			     <0 32 4>, <0 32 4>, <0 32 4>, <0 32 4>,
+			     <0 32 4>, <0 32 4>, <0 32 4>, <0 32 4>,
+			     <0 32 4>, <0 32 4>, <0 32 4>, <0 32 4>;
+	};
+
 	timer {
 		compatible = "arm,armv8-timer";
 		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>, /* Physical Secure */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
