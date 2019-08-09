Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F028789E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 13:31:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FxUZfzSueC1IZRxkB7/krFsiiuuMTbgIumxHO1fNn7I=; b=l7NoZClZdivXN2
	C0bfyjL9wIsYoMO19hEzxJDdRHr99NFWgOYe1ydxedRBFrKGWcDoKU+5IgiJo0xB3/zYjqPWhYSFG
	GPHbH4jMy2503DxnU9R77zu/oFEWVeA7t0g11mYjIaafdZeyedv21eTYlAPohqw/ZO4+U3/W8AnTQ
	/OxjB4pECzK+gbzcohrYEshPz9q/d1RsxtmRJdirfC2h/3SNZEteFF2AsI+dDk75EZH6GvizlAJq+
	F4r3iFuu1NjXWFiLvtyJuPPaellrs490Rom8goLta4ezj/ER1tpxIWMkjOk27m+8DOCv8wLuOkRu7
	kI3NMzAz5jBWQp7NF6Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw375-00017U-PG; Fri, 09 Aug 2019 11:31:16 +0000
Received: from mail-eopbgr130047.outbound.protection.outlook.com
 ([40.107.13.47] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw35H-0006rZ-RD
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 11:29:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RY9e5QfGTxXKxU73StVPynk/u1tD4cw8m0aOiXNUsISihDUf/vJgGqcdrIY8O/BkqQ23/wIEG/hIq/ldUQ4f2BTp7NpQaTkFyN60mQXBtht67arCaLNVWFRsDpGAVZfN0SsNAP+gmaz9JX5DEfIpjmUn1RAOWFI8Ulrb67ZtCo/51w2e+94QlYPevqGkwSadzG1s4G1P/tsH9wX1onzt26ZXiBLVUNcYyXb3hCnBUD3Q/g8Vt0X0sA3ol7uNKRvw1uNaqsgVYegxvCHnfZX7xPo0Yr8qzIlfQpmVmtV7PigKPzdAoDeovTLxX5sWlmt+HLYZeye+mVZDgNdcAftj7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=egAmLLcYxNc+vNg4VL0BrjM1fDO0l7UPG3LF2prGCGY=;
 b=e7DFr8PU/Df1XY8hpmgeBMBnROM705BthR6u74ENXsSbD8K18EUdc5fjZdGXaJ5ghZWhV5dfJ1dKLFLBz7Sb4nevA4zszjTReTpiIPgc8k9Dp1q7tat5gycXT0rCT6hgQGpqdPg1eRn1cxRs9QlK+8lbSnfJaNvTLyzgZ+KE3yKZLyNw0BEqeCd9FORqY6ZF8SIH8+O+GxjGAsma/uKYvw3sGLQ4MerU8YfJcJZIZshoGDu6h2R5ZbEF7i/rrJOocmqO2jd0NQ9BooepeVW2IYR8d4fLHhplxjxYQ+HeaH2WzI027N+kuKJbClRWHl4gG6P4PLV0UZyaijJeiOiNBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=egAmLLcYxNc+vNg4VL0BrjM1fDO0l7UPG3LF2prGCGY=;
 b=O/87qTjTjiagOUQnMFgfYhNho9/+J0T9yA/qSHzt7Ou3j+Y8rBDb5INFQtYzWTf/ZSm11JGagB/bRCwnLXLey5i4cgns3vJnJvuwIZXnIl217d3kJ303ZI5FWyMc01tdW5kxc5m7SuUigBGyqYaNTfONwcoKPkrL2nAoNCudDDA=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB3359.eurprd04.prod.outlook.com (52.134.1.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.13; Fri, 9 Aug 2019 11:29:17 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023%7]) with mapi id 15.20.2157.020; Fri, 9 Aug 2019
 11:29:17 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: "corbet@lwn.net" <corbet@lwn.net>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>, Leo Li
 <leoyang.li@nxp.com>
Subject: [PATCH v2 6/6] arm64: defconfig: Enable configs for S32V234
Thread-Topic: [PATCH v2 6/6] arm64: defconfig: Enable configs for S32V234
Thread-Index: AQHVTqWu+WgIlHI7r0m+m9eS182FUg==
Date: Fri, 9 Aug 2019 11:29:17 +0000
Message-ID: <20190809112853.15846-7-stefan-gabriel.mirea@nxp.com>
References: <20190809112853.15846-1-stefan-gabriel.mirea@nxp.com>
In-Reply-To: <20190809112853.15846-1-stefan-gabriel.mirea@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.22.0
x-clientproxiedby: AM5PR06CA0024.eurprd06.prod.outlook.com
 (2603:10a6:206:2::37) To VI1PR0402MB2863.eurprd04.prod.outlook.com
 (2603:10a6:800:af::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cbb89b76-d93b-4c2f-4303-08d71cbcd094
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB3359; 
x-ms-traffictypediagnostic: VI1PR0402MB3359:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB335949DBA80CF4E4A6792857DFD60@VI1PR0402MB3359.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(396003)(39860400002)(136003)(346002)(199004)(189003)(66476007)(66446008)(66556008)(64756008)(5660300002)(6512007)(26005)(186003)(2201001)(52116002)(76176011)(8936002)(99286004)(14454004)(50226002)(4744005)(1076003)(86362001)(66946007)(71190400001)(71200400001)(4326008)(386003)(6506007)(53936002)(478600001)(102836004)(110136005)(2906002)(256004)(25786009)(8676002)(66066001)(476003)(2616005)(54906003)(2501003)(486006)(316002)(36756003)(6116002)(3846002)(6486002)(7736002)(6636002)(7416002)(6436002)(305945005)(81156014)(446003)(11346002)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3359;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0HGnW3fW4/leamMFUJoSdRUXBcbv2NLXysx9du/YqT6w53rl3RQbc4UdnNt4hwLK8ZNISn7kWuXRrm93/Ym9DjqhnkLYJHI1h8k7ywA2El/1TOvwoLcbBI5O/nDuuTdVUKYbujSpF29N7Sih9jUpAt6nIxahtOrpueW8J4NlA/BIkz3cJdVh2QBc1+hp0D+5SRehG8SHaD2VwGtJf94QNU0VHdChNAwSXgZuX8u1u75/Ph6qH0PrWq8Lx73QtKw2s1pg8zeB3+Nfml/h9ozpkgkc0p9DlNqIxLHwZTHccP01TnSULPH+iOkPXDZjErKt6EiS9pvkHZQj5xufClNj9RcpdCGrW9L4fB0L6zvfy3lEj1cxkIDPaqKWuQVM+7qDu/OXSzu34V10vTP1vMpjMeX8+fd8kadxP3NdpnexvwE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cbb89b76-d93b-4c2f-4303-08d71cbcd094
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 11:29:17.7410 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qx2ZEcQnshSF3IYgmQcHThqGc9/3Iy5veRgfGXDODfo0CMzF+4J9xoydzOcqh/EPw3+4WPhm7Xl6X8/GU6LYmhOb8Gyw0dtRl/Y+6JIVnAs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3359
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_042924_211438_881E81D7 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.47 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 Cosmin Stefan Stoica <cosmin.stoica@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mihaela Martinas <Mihaela.Martinas@freescale.com>

Enable support for the S32V234 SoC, including the previously added UART
driver.

Signed-off-by: Mihaela Martinas <Mihaela.Martinas@freescale.com>
Signed-off-by: Adrian.Nitu <adrian.nitu@freescale.com>
Signed-off-by: Stoica Cosmin-Stefan <cosmin.stoica@nxp.com>
Signed-off-by: Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>
---
 arch/arm64/configs/defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 0e58ef02880c..bb5aa95a8455 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -48,6 +48,7 @@ CONFIG_ARCH_MXC=y
 CONFIG_ARCH_QCOM=y
 CONFIG_ARCH_RENESAS=y
 CONFIG_ARCH_ROCKCHIP=y
+CONFIG_ARCH_S32=y
 CONFIG_ARCH_SEATTLE=y
 CONFIG_ARCH_STRATIX10=y
 CONFIG_ARCH_SYNQUACER=y
@@ -347,6 +348,8 @@ CONFIG_SERIAL_XILINX_PS_UART=y
 CONFIG_SERIAL_XILINX_PS_UART_CONSOLE=y
 CONFIG_SERIAL_FSL_LPUART=y
 CONFIG_SERIAL_FSL_LPUART_CONSOLE=y
+CONFIG_SERIAL_FSL_LINFLEXUART=y
+CONFIG_SERIAL_FSL_LINFLEXUART_CONSOLE=y
 CONFIG_SERIAL_MVEBU_UART=y
 CONFIG_SERIAL_DEV_BUS=y
 CONFIG_VIRTIO_CONSOLE=y
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
