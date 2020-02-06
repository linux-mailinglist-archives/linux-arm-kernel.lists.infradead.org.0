Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B57881547F4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 16:24:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zYQKaYX5WIqA2TH2AsCruHUs+ARRI8H14+ZgaL+hzt4=; b=CLBpD2yXAxzIK7
	+4mEinoQ9whsCQf5QO+K3eYqZlfynoeB+DvIxbN0oqei6lFDWoPNFfCtdbamgXFmyviKYv89uEJhM
	jCTb2y0QnVlkNPOxkzWfqKmcHBLoltmIL7iv00Lqo6vUabdh8WXlsn95Z5c14h6QFmOWY+ytGfAVP
	bqEkrAH7aD7m2U1u8v94ZXhnfbDeIafldyk9+fSIs8yOSe2iKIN/OgzqHEbnzIX6iKHa/WSWNWKTV
	xTDByZlFyQpGqKAlS+iZabclcLXPwP6Ul7m8bfPGH+YCxc1p1z52So3lAl1zQiztGpvEJBWeafMmC
	sETOucF7E0VgWBTxs7yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izj1E-0007ce-5F; Thu, 06 Feb 2020 15:24:40 +0000
Received: from mail-eopbgr80087.outbound.protection.outlook.com ([40.107.8.87]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izj0n-0007Ta-Hu
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 15:24:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g373pJHc8GpAB0iecqf4mnsYS9q7ntaUiQsz1Th3tLE9mTOJj2B8UQqsLxWZYw+STgq0vaVraDhA4hBLTA+bIL58CZT6Ts3Zf661rXi5ZMlERBKJe3jiPxzH7fWFGLCChh9BCO/9qDnbQnIrQ83FNHA1Xv0zFsWIYvee4WH1Vbs/JWXkG61inZJx1g0xF5aPdGAcf1XRM6et2AZfkqIEBTALDCIPSelcNc0SFiRQ0f+IW3zCDKC3U2trlVa1TNu6hWt0101c/TO/kBGLXipDSs7e4N/TOnMNdvTfJTFL1k7TE/GUXLCc2h77zW/XswYxSyGsrcaYvzJVrDoo0gPeww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HHbTS/Cj5dXSnqAU1g1UiSK63sJIv+b7AgFYor3Dnxw=;
 b=g2z7r/4uXgRc6kDSo0AToiqO5xodzMCoH81MkjPlhgT8QceXtXai/Ep0KwzkpffK2d41XIDrkY+fHwd4LoyyXGz9hKtjFf09YeDy0a8pOIwEWmGLsBoF7b7sF7gP0e2nBgzYK8rb7x+jwI7LQGCyfplFpnZL//WBMqH4SN8Zwb8Z5VjHOOwRZYxyAIqito2pvj9cSDjS+OtC+cDvtbOhTaJv88DZ9c5FRsZgHjdklirKtxq+2EaH/UJlFs5XKwSN0D0CR6GCKhGirvdHcbpQyhwYMPoXTETL9BmWgCIzaph4uDXD5dpsRKmnQm6ObbaeA7vgdTPLpSozwtdlgyi3Lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kococonnector.com; dmarc=pass action=none
 header.from=kococonnector.com; dkim=pass header.d=kococonnector.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=KoCoConnector.onmicrosoft.com; s=selector2-KoCoConnector-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HHbTS/Cj5dXSnqAU1g1UiSK63sJIv+b7AgFYor3Dnxw=;
 b=V5+NcWDLjlibv4GAYFbhXlYAoS7AtBOnApSLTQH8PwuOjWQ2mbDGzQXOVS+UFhkF/STKjKc1KEfgy/nnSZgdRc8Ka+O+JNsJ2ttIWPU7F40UTSoMPK1esFaJqNXPNhyWo7lbT1SSHgxMwjplpdZA24N+AqyVc/8X1QJxWytktGk=
Received: from DB6PR0902MB2072.eurprd09.prod.outlook.com (10.170.212.23) by
 DB6PR0902MB1847.eurprd09.prod.outlook.com (10.171.76.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.23; Thu, 6 Feb 2020 15:24:05 +0000
Received: from DB6PR0902MB2072.eurprd09.prod.outlook.com
 ([fe80::406b:dddb:f0d2:7ea7]) by DB6PR0902MB2072.eurprd09.prod.outlook.com
 ([fe80::406b:dddb:f0d2:7ea7%7]) with mapi id 15.20.2686.035; Thu, 6 Feb 2020
 15:24:05 +0000
Received: from localhost (193.47.161.132) by
 GV0P278CA0030.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:28::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.21 via Frontend Transport; Thu, 6 Feb 2020 15:24:05 +0000
From: Oliver Graute <oliver.graute@kococonnector.com>
To: "aisheng.dong@nxp.com" <aisheng.dong@nxp.com>
Subject: [PATCH 1/5] arm64: dts: imx8qm: Add HSIO Subsystem node
Thread-Topic: [PATCH 1/5] arm64: dts: imx8qm: Add HSIO Subsystem node
Thread-Index: AQHV3QF42MnWrrcWVUadUtYBmD3lxQ==
Date: Thu, 6 Feb 2020 15:24:05 +0000
Message-ID: <20200206152222.31095-2-oliver.graute@kococonnector.com>
References: <20200206152222.31095-1-oliver.graute@kococonnector.com>
In-Reply-To: <20200206152222.31095-1-oliver.graute@kococonnector.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: GV0P278CA0030.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:710:28::17) To DB6PR0902MB2072.eurprd09.prod.outlook.com
 (2603:10a6:6:8::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oliver.graute@kococonnector.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [193.47.161.132]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e8a7d717-9f79-422d-4a86-08d7ab189a7b
x-ms-traffictypediagnostic: DB6PR0902MB1847:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0902MB1847959BA1EB316538BE0134EB1D0@DB6PR0902MB1847.eurprd09.prod.outlook.com>
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
x-microsoft-antispam-message-info: bJr3Wxs9ylCzWO6CQZu73YQ8Z41VEs1hOdm56Qqb68kLeF6gdgmy2bRF2XrCX/KAzi9tZIEqdIVnFJje0D/siRVW2N/+WAKShhDSGZmEJKLizOAJ22KjtSkUTOGBf5WWboUHOsc7rkvQ7j937ltcRwmyLh8r9Z4T/pFtjzb2WvevcJazLmtOcJmlf6XkMvuNszG6AWrCMuxf9A4FhMBcPdYqp7gnubso4ys8fLThTYVXdC3umZDK1dieQK1/CJ5VcGF7Hpiwvb0KLA+1R3jXVip6b9xlaeNFHkD9Ngq+hPcGHLA6g2VV/GVDj44xTrkPmHtpqECabwuBDdm/UYRcntM4sbMXZmXHx2paY3Xax8I+QSqZcoajucqKtktqNebdfaTQSfu3EpUSuqbPizHAir6xRTILLMz2MHzcikHdCITHrzfyah1b/+K5sNDSGRKrSh8kZDthH889KvnUQBC0whSz1CZoAk4V6Uz9Fl/u5sQSibkNI6BIRd/pJWwExXu0
x-ms-exchange-antispam-messagedata: dN0gDG+W4UP15wX7lAHJWa5YtE4F5OqKZPpwClJlGspFErzFxY+NOojctbHFMLTbiyeHMYZe3GDbu6iF8FqPmCnB3Qhb50F7E390aHibfK79sWLMxi4OqKjS97dhViJzCba70UA9YYvQXUEdT+098Q==
MIME-Version: 1.0
X-OriginatorOrg: kococonnector.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8a7d717-9f79-422d-4a86-08d7ab189a7b
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2020 15:24:05.6859 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 59845429-0644-4099-bd7e-17fba65a2f2b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4vfMJX+jSV5DDTPrZ6xJTysMSPtc1K6sAZSkM0WjqZW96L+EVMisIkSj2s4q7OOQgisMhSTpeHOn6xtSS23iwjaEAEJulPFqTX05r8FiauU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0902MB1847
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_072413_591530_A0A8AD1A 
X-CRM114-Status: UNSURE (   7.26  )
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
index 097eca99c6ff..7efc0add74ea 100644
--- a/arch/arm64/boot/dts/freescale/imx8qm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qm.dtsi
@@ -125,6 +125,11 @@
 		interrupt-parent = <&gic>;
 	};
 
+	hsio: hsio@5f080000 {
+		compatible = "fsl,imx8qm-hsio", "syscon";
+		reg = <0x0 0x5f080000 0x0 0xF0000>; /* lpcg, csr, msic, gpio */
+	};
+
 	pmu {
 		compatible = "arm,armv8-pmuv3";
 		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
