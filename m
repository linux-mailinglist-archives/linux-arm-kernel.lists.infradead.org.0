Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 797A910324A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 04:47:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b7OTlRLxfeyUCSNUTf4mYgw9lgY2uBM1hFCu71WFUx4=; b=cu0wNGrlQVRQK/
	oSgZqP2fU9IEJbkU3zeH66T4VaC8F2gputpZ6E8LeuYJ34pAf0lPV+ZeBWf9ukceKIBwBKNtKbtwM
	dr4qQPYTP7TnDxtqxY6GjnencM9BwINQSSWKQlr4e4xrjFLiU+nfljzQZMfwegVzLvHhLRLAOCACX
	AI/19tDdbyWq7mmPGB+m3ddTs9VAsScyLq+5FzPkMEpi8o9gL1FmImokVi4EuT5n4VHBoEVyNiL0L
	oyOmYeJ4NIp8/JdVVyXLGIiFHE1AJeG9W7Rxal7KFvLuO7v8sG1+cY1rYnHnzev0xBbO2x+NCJGzI
	r2N3b8ziARclixtvC3qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXGxS-0000Co-GN; Wed, 20 Nov 2019 03:47:10 +0000
Received: from mail-he1eur04on0616.outbound.protection.outlook.com
 ([2a01:111:f400:fe0d::616]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXGwK-0007og-1f
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 03:46:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YKAlWEWkH3MsXwO0r9fLuRnboYakOqkTpQhSB6AJSoV66gTy1wPuIYBYaiQlpDuA19U1Ywmg7DAtUnj1XH0z0sFxFOkHqvmf0Ja7Zok1AFiWfaANcODOc35B7suordhSzjp+/pT5R0zz62Ff/v06AMYPvknlU9i02JdAvgxgJn/sL+vlG5fM9DWCzgDml30ISwmUQm2NjSJCE0eg9Gjk85K0QYqWAE5HswsPrxowQJ9HW9Y87GbEo+Ug6XaID3VnWydVCXPGu5ICUckxgqGtHDanErc+Af/ELlWEoQJPnXhUhRAhuRO/v7of1hhQ0TC+Lm4bCerPOZfYnytm9Zy7QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=irUxrJ91vUjvc++H0x9KCLnC8wVeqmY2KZwUu4nyM3M=;
 b=ELj3SXSZwQBjNzHpk8TSVud+kN/RdaEHoqGg10J3hCZ7mWwvlONoKLqV3sfk1FnO2M2bmeDfLxAzzd897TB7AkrrOtY0jQBxKCgYyCN4eG9x5hJaqQIwbq5llx2lvMwmamL316sbGAwbur7CLY1J5nm+Mea8Ux2WWF7foKL0bWrTa5OU/esaL78Mg+VDHmu0u1fjcaZRemSxKtDRTHZJXwN7XSDNijeODIJq/mxY7zPUY/MfgTVwol+N51klX05VtSerRyPTidP3l85emmEyvStSN0LSSjLz71GThgDczdtvg3/VzmS4vHhHipnh02LDXeWKCIzk7UZoTXQxPLGAnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=irUxrJ91vUjvc++H0x9KCLnC8wVeqmY2KZwUu4nyM3M=;
 b=MIgWMexkERXWJekD/qEV7enwq29pgv3UrYIfkzXTdQ7Hd+npyeEVqhEkwTew+HIAprGo/zQMPTel4WGucOQUrDdYNyynk1Mc4HsURIzgou8NN4eFZkBXlKJo9awu4iP5VThvk1DiGNAq86qwu+FNxBvYZlO4sAJQUmLvKUuATno=
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com (20.179.250.159) by
 DB8PR04MB5657.eurprd04.prod.outlook.com (20.179.9.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Wed, 20 Nov 2019 03:45:57 +0000
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::898f:3cd6:c225:7219]) by DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::898f:3cd6:c225:7219%7]) with mapi id 15.20.2451.029; Wed, 20 Nov 2019
 03:45:57 +0000
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
Subject: [PATCHv9 06/12] PCI: mobiveil: Add callback function for link up check
Thread-Topic: [PATCHv9 06/12] PCI: mobiveil: Add callback function for link up
 check
Thread-Index: AQHVn1UEYLWmKTdIpEiL1397xUm0IA==
Date: Wed, 20 Nov 2019 03:45:57 +0000
Message-ID: <20191120034451.30102-7-Zhiqiang.Hou@nxp.com>
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
x-ms-office365-filtering-correlation-id: 2de09eb7-1dc6-4518-6710-08d76d6c269e
x-ms-traffictypediagnostic: DB8PR04MB5657:|DB8PR04MB5657:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB5657C8E66B3CCE85AAB258AB844F0@DB8PR04MB5657.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 02272225C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(1496009)(4636009)(366004)(346002)(396003)(39860400002)(136003)(376002)(199004)(189003)(2201001)(54906003)(86362001)(36756003)(256004)(7736002)(305945005)(6116002)(66066001)(3846002)(110136005)(316002)(71190400001)(7416002)(1076003)(71200400001)(52116002)(2501003)(4326008)(5660300002)(66476007)(476003)(64756008)(66556008)(11346002)(446003)(76176011)(2616005)(66946007)(6512007)(66446008)(8676002)(386003)(6506007)(2906002)(99286004)(102836004)(6486002)(81166006)(81156014)(8936002)(50226002)(186003)(26005)(478600001)(14454004)(486006)(6436002)(25786009)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB5657;
 H:DB8PR04MB6747.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sHiIvr1qFtacDtCOshqj15NnMQ6Bkr4JOJlJPeNME9Ium0ASDPjhMhsT5nnGeYscODpP5tFLjqHjIBMAKvJXQp0QLxl6xgLl/SAvpMDeXt+sDdMvI18ZR0hI2t4sLst5peNo8KkolgehPgU/8Jp6uBxxD+sixrMDQ/VDKn8jqtks5lBZ0s23MqYZoVgbf/8oOKyJK+p6qai1zhSLbUSXG2jntaBIjbtoRAV6ApEdALC2I0OQqRY9flVYKuBoXNLEq8UybsQre3S1PpGJkRJ9mTyYYGqYFoc0O5hdmRiP9SB0iIBoF1BQQO8Yu85Fio/2gzUypUBNPXzo6JkAchm098MvGGa+rY1BPLU6keU4AS+G7x2eL+URadkBoObDCEF71UQbqIcytD1wVBhPdW4fXEJi7glK3p6cH0TImGRv0dsELNwKdUc9vstUNX4MlA5A
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2de09eb7-1dc6-4518-6710-08d76d6c269e
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2019 03:45:57.0833 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1tvzEl/jNklY0Io5H4w8PSXhWrTZkDFRGYc31gSNMIr0/qSzA8piMnrMiu8biMUtefvt1gRPd+UxOxHiKD7xxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB5657
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_194600_216449_54A71546 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0d:0:0:0:616 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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

The platforms, in which the Mobiveil GPEX is integrated,
may have their specific mechanism to check link up status.
This patch is to enable these platforms to implement theirs.

Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
---
V9:
 - New patch splited from the #1 of V8 patches to make it easy to review.

 drivers/pci/controller/mobiveil/pcie-mobiveil.c | 3 +++
 drivers/pci/controller/mobiveil/pcie-mobiveil.h | 5 +++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil.c b/drivers/pci/controller/mobiveil/pcie-mobiveil.c
index 2773f823c9ea..b9ed2d95641c 100644
--- a/drivers/pci/controller/mobiveil/pcie-mobiveil.c
+++ b/drivers/pci/controller/mobiveil/pcie-mobiveil.c
@@ -125,6 +125,9 @@ void mobiveil_csr_write(struct mobiveil_pcie *pcie, u32 val, u32 off,
 
 bool mobiveil_pcie_link_up(struct mobiveil_pcie *pcie)
 {
+	if (pcie->ops->link_up)
+		return pcie->ops->link_up(pcie);
+
 	return (mobiveil_csr_readl(pcie, LTSSM_STATUS) &
 		LTSSM_STATUS_L0_MASK) == LTSSM_STATUS_L0;
 }
diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil.h b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
index 18d85806a7fc..95d2e7c809b8 100644
--- a/drivers/pci/controller/mobiveil/pcie-mobiveil.h
+++ b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
@@ -148,6 +148,10 @@ struct root_port {
 	struct pci_host_bridge *bridge;
 };
 
+struct mobiveil_pab_ops {
+	int (*link_up)(struct mobiveil_pcie *pcie);
+};
+
 struct mobiveil_pcie {
 	struct platform_device *pdev;
 	void __iomem *csr_axi_slave_base;	/* root port config base */
@@ -157,6 +161,7 @@ struct mobiveil_pcie {
 	int ppio_wins;
 	int ob_wins_configured;		/* configured outbound windows */
 	int ib_wins_configured;		/* configured inbound windows */
+	const struct mobiveil_pab_ops *ops;
 	struct root_port rp;
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
