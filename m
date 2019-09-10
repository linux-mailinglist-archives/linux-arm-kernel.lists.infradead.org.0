Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C90EAEB5E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 15:22:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IM5gZlgX47D59VJ8D5Lr+QMvATa4LH2Q0mpqrLVfGlg=; b=TCIFc1Tp1cY8bS
	49h2qC/fDe+Sz2wbxPZ1TSUQUBU9atc+bPqr0WVLjgQhRT4Wp8XIbY0NXzkd55GIu+FXWvYpspNLc
	iA/8+homxn9q7Kc0Yxh7dUhutrU3ytrNWi2OCjtm/GvrP5BPB+wEmzQAH1GPNLs6LZbJ06Ds0E0v/
	JnIvKRVAn+ArSxUneZUq/aAZyv77n12RNA8Fm3bxXoiRxlivTg+8ERUr9+FyWNzHJNDzYHSGYNul7
	J8fWba3azD5j8TGEQWNESTQP2yH29TP7o3RUAwOxqAjJ/Gnf4X+grtzMPdykYZRYOySHSzjCFyr+9
	TWcnqCuplWsvutjiScxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7g6S-0006I3-M2; Tue, 10 Sep 2019 13:22:40 +0000
Received: from mail-oln040092004038.outbound.protection.outlook.com
 ([40.92.4.38] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7g6H-0006HJ-HD
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 13:22:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dm5qhyuulYWIe4Y1SISsI6vpEot5ba2O99FRQJ8+RVfEF6THu2TqjyhLpCro8S9VXeGNG/+DkrMSYu/N8xQzp306uXmthv1QuwtXlnMRftWvyYwvc50U5+WYdyXqZ94cixFuthUuLuouo3MrfhUsVR5QODfz2qrVyxHwFaGo/dkwG/jcfNstGkOddyigMxnlnup7wItu5OQKQSB2J/ypxb19V2/y7IYmfm+ee3V2ovDZZGRMtQLZlfkU97KhaIMakNrhIc5p2VTTT6NPWE/AIp87jOQz5o+d+iEvQiakkNDDlIIQZGLWk5Mo+5GvCqe103B8qLGxa6NYWEWiOup8dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o9gA8vEgESeSyFSe6IdrIOYvmR0uHvDa9Z3am/R2/ak=;
 b=g/60QyKgCJhzVWtECfkJsNxB0u7pb8jicgO4qAZv1ZRlO66sMuTy86IahdXOi6DKUgjmZfwnv9etXHAjM8YayYoEwFoAlX08KppH2EjODNPTsVcciJ3EptZUmaECo2oOfFvKB2V7zxs2fzcDmfpSFYFAHGCTkF1yIiNgyK+kBVh9CajL2v0/bYdATSplrsKLuXhoCYhTWDgZUTxF/FfHscMBd3hLFnrh8V5O2YDPdkPpZ80AzpHR82D1D8T+tqs/vZc4xDvORO8sgvc8qmjlmducFj2biTLyfYX+SPgOfbiztJbQp9yPFDMr4xCu+HAzoHrqzDVekLwoqjdmR9qYuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o9gA8vEgESeSyFSe6IdrIOYvmR0uHvDa9Z3am/R2/ak=;
 b=tCfcWzBWJTs+Le5+OZV1xd3VYgixJeY6C7+2SCpj+lpeaWUHFfBRkkctIr9fBOM+xwf8wqUIGLYlufJ7GJgV4uwploStd0pmJxC/MOgVbWAvSa6VYBvd4zmtG92ex7H6k+ZX7kjKPAuhZnr8PSs0dSx1LocWqLLBlKIDBxGEv73P4rJk3oX3acYNs88tnlngj0cSXCW9r50OZl9Y64Foqzy/3zhzUb0e3l1S4qQe3OrEowCAHtKDnRnHCK6aFRWWteQvMmqX5kMOFZMLQNm7VTRVJqQnQcRgfvPAwn4rk64nksoaYHGeoYq7D22ShTfACJcTu2aSHQykDYhatbfalA==
Received: from CY1NAM02FT062.eop-nam02.prod.protection.outlook.com
 (10.152.74.55) by CY1NAM02HT191.eop-nam02.prod.protection.outlook.com
 (10.152.75.243) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2241.14; Tue, 10 Sep
 2019 13:22:28 +0000
Received: from BY5PR12MB3699.namprd12.prod.outlook.com (10.152.74.51) by
 CY1NAM02FT062.mail.protection.outlook.com (10.152.75.60) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2241.14 via Frontend Transport; Tue, 10 Sep 2019 13:22:28 +0000
Received: from BY5PR12MB3699.namprd12.prod.outlook.com
 ([fe80::2429:2cff:48e7:4d89]) by BY5PR12MB3699.namprd12.prod.outlook.com
 ([fe80::2429:2cff:48e7:4d89%5]) with mapi id 15.20.2241.018; Tue, 10 Sep 2019
 13:22:28 +0000
From: Lihua Yao <ylhuajnu@outlook.com>
To: "krzk@kernel.org" <krzk@kernel.org>, "kgene@kernel.org"
 <kgene@kernel.org>, "linux-samsung-soc@vger.kernel.org"
 <linux-samsung-soc@vger.kernel.org>
Subject: [PATCH] ARM: dts: s3c64xx: Fix init order of clock providers
Thread-Topic: [PATCH] ARM: dts: s3c64xx: Fix init order of clock providers
Thread-Index: AQHVZ9rKMIU90/Se8k2l6oKm2zKaRg==
Date: Tue, 10 Sep 2019 13:22:28 +0000
Message-ID: <BY5PR12MB3699A88381A84820B8263810C4B60@BY5PR12MB3699.namprd12.prod.outlook.com>
Accept-Language: en-GB, zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0PR03CA0006.apcprd03.prod.outlook.com
 (2603:1096:203:2e::18) To BY5PR12MB3699.namprd12.prod.outlook.com
 (2603:10b6:a03:195::16)
x-incomingtopheadermarker: OriginalChecksum:311CC036EDA141638B44235203A34B6929CB700DCF278FEB8F330BDD66751851;
 UpperCasedChecksum:743F2E6467614343168A62FD4EC135DBC7A47C8163E4329EA6F42B90DB94A23C;
 SizeAsReceived:7494; Count:48
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [BJfxclUsA1ym4S4AIMNmYB5eIZ+LQa30]
x-microsoft-original-message-id: <20190910132007.23519-1-ylhuajnu@outlook.com>
x-ms-publictraffictype: Email
x-incomingheadercount: 48
x-eopattributedmessage: 0
x-ms-exchange-slblob-mailprops: S/btQ8cKWiTyF7sT7AOcRlsQTUkJfLnn3TocnuFb8YYE8WAsycDKfxZBo/dAD6X2I+Rka6kXQEPPz08lgrrMwSlJSrcUyZevFekJINDGq1gU26+5ze0rRPGcdPVCABo2JH0Lb9PrdlJvEjMqYyd/jjdFZ9gYsj/Su53JA9D90oQLyp8vgJAS+oArC31c0CcZqvEaHpzIawZaG9CEWFqRMnDkSiZQ6G7CveZWaL9oNwA6WKpg2U+t4eRzGsYWarzLA3AxezqVk3XqP1PG2B9N1PB3fYZvxfrJP+DLwRPFfh8UtX5QcQny133TVKMHByFDuxPZeRqtvMyt/BWaqFT81s9dg1tAHp3YBAfYnPBaP8gIcdlrZiK/puh1T+byzgn9qqJj8UPBbnmGDERb1yeE6IGsAQOiJKHkwM6OsYp3DlaX+Fp/G24LE3KlzMSSvv1JRhVc7g17Y4V60aLuNMVkczrGyz7HL9JPww9tNuPdj56d3MbSnSBl5wDb+YjiVktPYJYm87MVuvnIxX0/h2Nig0tGcCYZ/UmwJX8TBQEtT4sS5KTXYHu8aauy+y/WiqmMPoYOeBDd2I0zEArjDEvIEy6aNf6IpwKjkSBDyW3A2KJ9DbTAwfiS4SPVmnkwF4qGhr8eQfnQdXP28i8atnSSXxeVRKaFDY3IzPSq5+XJ67Ct4dzuSgu+1eFoXwuxvUdXmL+q7v/OJRn+QkbcMMouqvGqtFIbWIY58ySaNdvNc1+b0p56YDEC59YKM/096sSIOc5pt6XN+y4=
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(201702181274)(2017031322404)(1601125500)(1603101475)(1701031045);
 SRVR:CY1NAM02HT191; 
x-ms-traffictypediagnostic: CY1NAM02HT191:
x-microsoft-antispam-message-info: SGCRT8qRppX0eTgn8xRQcesSbxIY9xWx/cuQDzXIdCyuunnf5FD925AROHAO3vNkjQrfh+vOqwfspfMBkb9G0DXoN5NNJa14aEVfrivwwQCRq6SEC3aulhdHAFEIqtdpDjXGXHt9xiWMP7/eV65woRP44aZ+AMt7yB/A0e2SzONnQudi2893DdUdubFo0Sxq
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 831a57be-d5a2-47e5-d1f8-08d735f1ecff
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2019 13:22:28.1510 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1NAM02HT191
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_062229_665704_2C32191B 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.4.38 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ylhuajnu[at]outlook.com)
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
Cc: Lihua Yao <ylhuajnu@outlook.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lihua Yao <ylhuajnu@outlook.com>

fin_pll is the parent of clock-controller@7e00f000, specify
the dependency to ensure proper initialization order of clock
providers.

without this patch:
[    0.000000] S3C6410 clocks: apll = 0, mpll = 0
[    0.000000]  epll = 0, arm_clk = 0

with this patch:
[    0.000000] S3C6410 clocks: apll = 532000000, mpll = 532000000
[    0.000000]  epll = 24000000, arm_clk = 532000000

Fixes: 3f6d439f2022 ("clk: reverse default clk provider initialization order in of_clk_init()")
Signed-off-by: Lihua Yao <ylhuajnu@outlook.com>
---
 arch/arm/boot/dts/s3c6410-mini6410.dts | 4 ++++
 arch/arm/boot/dts/s3c6410-smdk6410.dts | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/s3c6410-mini6410.dts b/arch/arm/boot/dts/s3c6410-mini6410.dts
index 5201512054c4..524b96f5e568 100644
--- a/arch/arm/boot/dts/s3c6410-mini6410.dts
+++ b/arch/arm/boot/dts/s3c6410-mini6410.dts
@@ -165,6 +165,10 @@
 	};
 };
 
+&clocks {
+	clocks = <&fin_pll>;
+};
+
 &sdhci0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&sd0_clk>, <&sd0_cmd>, <&sd0_cd>, <&sd0_bus4>;
diff --git a/arch/arm/boot/dts/s3c6410-smdk6410.dts b/arch/arm/boot/dts/s3c6410-smdk6410.dts
index a9a5689dc462..3bf6c450a26e 100644
--- a/arch/arm/boot/dts/s3c6410-smdk6410.dts
+++ b/arch/arm/boot/dts/s3c6410-smdk6410.dts
@@ -69,6 +69,10 @@
 	};
 };
 
+&clocks {
+	clocks = <&fin_pll>;
+};
+
 &sdhci0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&sd0_clk>, <&sd0_cmd>, <&sd0_cd>, <&sd0_bus4>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
