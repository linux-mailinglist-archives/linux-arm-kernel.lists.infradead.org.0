Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE5BAC422
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 04:48:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LbTMJ5UQlFEoUAJparT8BULvm1e1F1/17p/dOK8y/NU=; b=YlhgH1cD1U9fKD
	u5flWUyyBSKsipX0Dfes7qkKSILpkuh7YJeZMovl2PdNk7v5xOluKjW3Y+YkdVLPqTXyfu9ckHgb5
	KZarRAi8lfkSdFE8IZS6LxNCs2cgOvt5m79F9/S0PO3KuwI/4tjE1zTMP0qizFctOje9t9/92Bjb1
	cg8zY/V/kZoCmOO9gQuMHN42Kdv2ENsK1gmSh6q8myehXnEJrQCv7bL9oJ6u1II2cBS9V5vpNUG21
	rQW6fmGERwZiIOmrEgAJ/ybvicTBPZP7rrI3VSiZfsHYcH10pDvEkK6GnTOb15C0K/YCx6r7tWxQc
	17uM69ByeQypN382q3EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Qlq-0005dG-IJ; Sat, 07 Sep 2019 02:48:14 +0000
Received: from mail-oln040092013069.outbound.protection.outlook.com
 ([40.92.13.69] helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6QlV-0005cq-Gi
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 02:47:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LlvBXoMgJmqgMjUbsIkJnDVyxHWcNFL3HVeNsb+aoNe4YcFrKLUyuAMHDksyoijzWgukYJQpc/rwwVCaNu85+BmK+AHggW1Rki8aUKW9Eg+kDs9+gEjYXeDnjscMuKNaXPTwa4a68uSQFZ7bERsJCRGg/p5k1lRDeljlggyJoAa+hxTtx/BTWXeHMHsHf24M5kFhZk6iF7HrT1NyBDXkT/DinvuLt0cgtZWxiTbDV0xzwNOOkSiiNuIzMuxv2tz5a0VDQIcRdrXIBjRjyg1uIDlQXTNtvo6PseNvVYhJtLnGsfjafT5o0TT50nlpKkBUCQQbnpavPigL6pfaGsG9dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BUKkUT1eyx5FZTK6Xq/YsW4npTci6eh/VoWupVMkRz0=;
 b=eUBykbpRhCqsrXmELtvZcFmYwx9zzWcCqe0Pd+bBWI8G0XmkvWz1j+nWB9z0Dj39NarrEaeRA1rwt2Jts08sSZT5mJeVYIHX3QGLIhYawqo4lnJQlFtvmvtP70ZDM1ttg8MtlwJ/jLo1SkmAUanVrKc8qhYQtA88xR93nfzKH+iWjjEU+DdFqP0U1vpbXqY9J/L0KoAKH2fcAcnKLDW97hbrW6gYW5R0AX1oHzQAKys9aSlZQ3cBL3oboF3t8nQX39Jri5+bv9H3jAJ0aSP7Oa8JaEDySD5kRUnEvCL6P3TiNK5eMtxKBUzr8dwCp3N0Qq1MkpXFmyqB1oYEgtH+mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BUKkUT1eyx5FZTK6Xq/YsW4npTci6eh/VoWupVMkRz0=;
 b=GJ2AS1NZOtwvs9F1mg4rljfX08FLG20/4y4J5TN6P+wDGB8xy5xc9a+ukgoP2+Hatsd3haJ+XkEaFX9xP6BjeAjPti1/PdkEkPe30bff9OeBl4jKM7M2VSeDSk43FYqYpmtqoXE3HM8WVoixb8Ph2Z3GO/C6RtwcM2nQjHAlyrXyGm+1kAKDTUcSRgdfzagCnwjdDxtfYJNvuONNJ+rq5Oxm3yzV1DrrazzHv0T2QJf0737hzE8FYX3bNz91qNL/gMq8V4iKG2boBhlNxOZtLH1cc1CnWMkpFtE7gZ2H8wmK18qy4aMzO8PH4prlBOGE6jA33cKR3j2sEWkTLI7NgQ==
Received: from BY2NAM05FT030.eop-nam05.prod.protection.outlook.com
 (10.152.100.58) by BY2NAM05HT133.eop-nam05.prod.protection.outlook.com
 (10.152.101.78) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2263.6; Sat, 7 Sep
 2019 02:47:48 +0000
Received: from BY5PR12MB3699.namprd12.prod.outlook.com (10.152.100.59) by
 BY2NAM05FT030.mail.protection.outlook.com (10.152.100.167) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.6 via Frontend Transport; Sat, 7 Sep 2019 02:47:48 +0000
Received: from BY5PR12MB3699.namprd12.prod.outlook.com
 ([fe80::2429:2cff:48e7:4d89]) by BY5PR12MB3699.namprd12.prod.outlook.com
 ([fe80::2429:2cff:48e7:4d89%5]) with mapi id 15.20.2220.024; Sat, 7 Sep 2019
 02:47:48 +0000
From: Yao Lihua <ylhuajnu@outlook.com>
To: "krzk@kernel.org" <krzk@kernel.org>, "kgene@kernel.org"
 <kgene@kernel.org>, "linux-samsung-soc@vger.kernel.org"
 <linux-samsung-soc@vger.kernel.org>
Subject: [PATCH 0/2] Fix init order of S3C64xx's clock providers
Thread-Topic: [PATCH 0/2] Fix init order of S3C64xx's clock providers
Thread-Index: AQHVZSaiW91wLn5Vn0OHDbNgCQYMcg==
Date: Sat, 7 Sep 2019 02:47:48 +0000
Message-ID: <BY5PR12MB3699A8D741EF6226B8DB65E4C4B50@BY5PR12MB3699.namprd12.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0PR03CA0096.apcprd03.prod.outlook.com
 (2603:1096:203:72::36) To BY5PR12MB3699.namprd12.prod.outlook.com
 (2603:10b6:a03:195::16)
x-incomingtopheadermarker: OriginalChecksum:0707FC45F03E8ED7520792CB3344E53008DA47F62C2A02F2D2BAF570631116BE;
 UpperCasedChecksum:7AEBCF3B0A4B2DDD0B4097FE297A84A5DC256792AAD10A95541F5D3764C52E83;
 SizeAsReceived:7487; Count:48
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [D70OcmfeE6t3iNr/c6TvtDq2IHBquyaQ]
x-microsoft-original-message-id: <20190907024719.16974-1-ylhuajnu@outlook.com>
x-ms-publictraffictype: Email
x-incomingheadercount: 48
x-eopattributedmessage: 0
x-ms-exchange-slblob-mailprops: mBRmoEB1kyJZLj0bYvVxCSrv9e2Se25nzXua1sMAR8mvcBn/MTGK90TR+/GKGBAL2orxHZXvr6B3yFt8C9tpDDt192TdKf0eZlqQw99hdD6sSfdFaM/uSYKKaLK32Da149jvwxgTNKHzGwAmaOnMIvwj9mTZ1tFv9b4q7XoFMDZC4Ob3Q3BT2+JhBmAxlXH4+WaDGkEWj2Sx6/8EEWazY4KVGPJ47uoYSxZCtgwprqxVpE9g0MfkylbQF2Fq7mGR+1Ae6Qi0yA3ylMBcQl7rvytB3IvTbud90AObDbL9u+ZMqY1QPnwSdXIQOSFJXmLA2qUWyWBj4c/jHLGRfXvI7dBT7O8UcMnmVsMHyAByH0Xy1jplMXZeaEr1laFLzfowS/gJ47k0jhLBdIMDoNjn/YqF9VrfLNHNb37BpJ/VkD9Me0lZADr5yKDKcB5WNo22qsSxCW3vNxC3SVzDuZP4bc0ytGnwdk4t7wqedApaSNPu2FACm2VV+zuNeptZaG9lll0qlTUo59gJZ2xkIwPZkhjI0CGeSsS6foGFvyF30/r7f1oDaKYMbKReutAS9xRvDNzwODnAlm27eApQh+clq4Tj3YmkRdZMquGvuelees/pwjHW2NEBjSRRNw79N8DlhLsJADDIRlYqxaISUzOc7WXnI7wYG1YYA5ak/6qoPBluBK+XZknmxb1wAY1qCvWwD1JMyOHK6/ghmnbQrNDgIrFaQsBWW7xmy1F+2MnFuwagOtaHUbhN68HBnLZIvov5MAdDlPcuSSY=
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(201702181274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:BY2NAM05HT133; 
x-ms-traffictypediagnostic: BY2NAM05HT133:
x-microsoft-antispam-message-info: mVgPiJC92Nz3LNHlAB8PfXhq7WaCGE4QqPq2V45Hb2CQ5K2pf10BrGzogIqQPS7R+KhPpxzE0laQq6PVO0KZOTn0GlmoM9vGTY45B4zRugo9vpoW6mrFK1KK2MgEbNSiLy6IX7tJh1rfILZuRINjURcIyLpFM9qitgxtUZe9EPti09nxnJ9e6o6v/x39c6Qy
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 1de14863-e478-4ca1-4dff-08d7333dc495
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Sep 2019 02:47:48.4912 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2NAM05HT133
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_194753_641771_03953203 
X-CRM114-Status: UNSURE (   6.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.13.69 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ylhuajnu[at]outlook.com)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Yao Lihua <ylhuajnu@outlook.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lihua Yao <ylhuajnu@outlook.com>

Ensure fin_pll is initialized before clock-controller@7e00f000 so
we have correct clock frequency like below:

[    0.000000] S3C6410 clocks: apll = 532000000, mpll = 532000000
[    0.000000]  epll = 24000000, arm_clk = 532000000

Lihua Yao (2):
  ARM: dts: s3c64xx: factor out external fixed clocks
  ARM: dts: s3c64xx: specify dependency of clock providers

 arch/arm/boot/dts/s3c6400.dtsi         |  1 +
 arch/arm/boot/dts/s3c6410-mini6410.dts | 22 ----------------------
 arch/arm/boot/dts/s3c6410-smdk6410.dts | 22 ----------------------
 arch/arm/boot/dts/s3c6410.dtsi         |  1 +
 arch/arm/boot/dts/s3c64xx.dtsi         | 14 ++++++++++++++
 5 files changed, 16 insertions(+), 44 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
