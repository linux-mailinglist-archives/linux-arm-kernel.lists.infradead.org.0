Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7362311C3E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 04:38:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2u8wQXAOivLZrDFMTvOnHpjyCwqf+ouCIwYpOOin5cI=; b=pdIA1HyyQBUO1h
	JVtS1r8snsLP6sjdKuA/aZGSSaKOUtDuLKnhjsJOAvKMWnDjsi3On8HeYpt3vsw+NLzR6ewqr3fRx
	NmLUsT7K6tWKWyTPwWrWxelV5G1Q5BdN2xvgfdNaM3BkEqG0QSIBlU5g9R67hcmPO2mmLj83bftqP
	UbWBTJgDoC8nXoNMD6sOBK3Qw06uhcf1UGzAeNcvITvwEQla38gB1DK3Ta2G+uAtXcrizaZSk0Z9K
	hg20typBnf7jclIEA0MNerVei94lh97lYEvWPSG+4TDDAO/YyWyTRPzNIOEkSaPsRnboKfIeWD3+i
	pUe4maGIYetMkstHmecQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifFJJ-0008Cc-Kf; Thu, 12 Dec 2019 03:38:41 +0000
Received: from mail-eopbgr70084.outbound.protection.outlook.com ([40.107.7.84]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifFIu-00080i-A8
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 03:38:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QAxvvefK3dZ2ORw2wblir4IUhllKzqQ7iXRHxP9EwQElUZ0HuVFfyXxEEC2MKBok9NUPEuzO4lLMuZNy9a2Rfyi5s9NJR1woJIl4ov/sPAKdjApHIgkQpKxClDJVigGyPYWyp3dUvSQh7RgdenqQS2myvDNarxec8olOJZcwVcg67K3HDzKhyueS2PwXUNpSTwsQzYeX/VrHkwxj/58lfbiiOscgbybmLHdVdBw75BOpkS5YwqFdvDW3K/2aPmJTitXAAcqENxqqln/aEUnzS1SusVugYhltEHxVa9gKvwTMma0MEJF0EBMaGKYQHNUJfbS9TWC84UjO8ECbdor4PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IWsVfGK0bxOq9PMELOpWmkTzoCr1WxMplfvHsXJk09Q=;
 b=Nop6VO6PAxxzRSVXWAMO1HvvPJ1aLVQFvAj3LqNXtg9HhLetF8bE01SxRFFJ55gDQ6/njTgNIhah51mGszTpZVgac5WWmNGw1a2pGPtDV1L+a9ldLhtWhphFgbvWaNy4PpP5Sj0297sq6YrgQ+SLoIALST888rU1STedjlwGQvUXy+RwyZ4Q3W97iP7W77/1bdhseJWHGOZDtlgFick0KnV3IN4Uya2likebRFtqlmRAAdebxorhKyNxeSfW0MZb2Ix7rx/p0iWC+jKrGOta6bf5FjNjbHCJjihE3pvecS26ELfBOJhesaZHZk3U9SVg0AA7roAsuzhHgd8p9D3QgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IWsVfGK0bxOq9PMELOpWmkTzoCr1WxMplfvHsXJk09Q=;
 b=BLgl426o29BvZhZNWa/2mrn0Ca4ABRC+SRANQsmgdIlViXHfDJqCvhN5+pGOfjvZ3Wa0JJOT2sGb6JaiAnKoE7rkoJ5YwP1gIoSTO296jlAVRZipFm9NT3gCJ1kIDeb+g8h++lGitG6kbF8ZQ6vtWinygfn+2hu4Zd6dMoos/V0=
Received: from VI1PR04MB4431.eurprd04.prod.outlook.com (20.177.55.205) by
 VI1PR04MB3181.eurprd04.prod.outlook.com (10.170.229.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.16; Thu, 12 Dec 2019 03:38:15 +0000
Received: from VI1PR04MB4431.eurprd04.prod.outlook.com
 ([fe80::c947:5ae7:2a68:a4f2]) by VI1PR04MB4431.eurprd04.prod.outlook.com
 ([fe80::c947:5ae7:2a68:a4f2%3]) with mapi id 15.20.2538.017; Thu, 12 Dec 2019
 03:38:15 +0000
From: Peng Ma <peng.ma@nxp.com>
To: "vkoul@kernel.org" <vkoul@kernel.org>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Leo Li <leoyang.li@nxp.com>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>, Robin Gong
 <yibin.gong@nxp.com>
Subject: [v5 2/3] arm64: dts: ls1028a: Update edma compatible to fit eDMA
 driver
Thread-Topic: [v5 2/3] arm64: dts: ls1028a: Update edma compatible to fit eDMA
 driver
Thread-Index: AQHVsJ2W8RhfCx/dzkymv4+bZg9BTw==
Date: Thu, 12 Dec 2019 03:38:15 +0000
Message-ID: <20191212033714.4090-2-peng.ma@nxp.com>
References: <20191212033714.4090-1-peng.ma@nxp.com>
In-Reply-To: <20191212033714.4090-1-peng.ma@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2PR04CA0049.apcprd04.prod.outlook.com
 (2603:1096:202:14::17) To VI1PR04MB4431.eurprd04.prod.outlook.com
 (2603:10a6:803:6f::13)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.ma@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 45b9fab4-c4f8-4c77-d335-08d77eb4b864
x-ms-traffictypediagnostic: VI1PR04MB3181:|VI1PR04MB3181:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB3181E8B91DA73A467A29E753ED550@VI1PR04MB3181.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-forefront-prvs: 0249EFCB0B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(346002)(376002)(39860400002)(396003)(199004)(189003)(1076003)(6512007)(5660300002)(4744005)(478600001)(6486002)(26005)(71200400001)(6506007)(2906002)(316002)(52116002)(4326008)(186003)(66476007)(110136005)(66946007)(64756008)(66446008)(6636002)(54906003)(8936002)(8676002)(81166006)(81156014)(86362001)(2616005)(44832011)(36756003)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3181;
 H:VI1PR04MB4431.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zV1zD7gUbIyY2hNJ2ETLTt35jIPLzWX6kZmBupbTGbptQkCEXpWn0PEyyOCUXUBZntULb8aasPn10his/OuahmjIunajXHfEJN6KjVfPClvfXbAFeDtzRSBebdKzd2bL9pMNb44xIGZnjZHBKur9+ZbxP6ZwdCSQ2FusN+M2LY/ftVvOP36T26rvdmerxPd6PKJnEjeVWD5qTlEpFgbhZfy3niUqgR/v/RENEzIbobMtzY7oepOrrtyHW2+Gtr2a9xN9tR8hCC1dluVfaD0f9YOwBCnfxJlapylGyiqNYnv3z73R53Gmb/kcHTyo1h//UhSeOKGB4COBqxwEXxkgtPtKUl2U/ClWOme+7nTYEDNvtgmYo+e44OU3rSuwyTIr3WKgViyu2B8/SHTsAgwHbEQPxXC77A3ZRv8nVcLHDuaafKYbPlNSoYwIK1+37g2U
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45b9fab4-c4f8-4c77-d335-08d77eb4b864
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2019 03:38:15.3260 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i0O33lbdFjR8ACrm49JolU3Hie2fUz53kT69zptJy3Op4orIEHJ+PndEyMXEhPjV
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3181
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_193816_349436_8CF1AF10 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.84 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Ma <peng.ma@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The eDMA of LS1028A soc has a little bit different from others, So we
should distinguish them in driver by compatible.

Signed-off-by: Peng Ma <peng.ma@nxp.com>
---
Changed for v5:
	- separate dts and binding

 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index 8e8a77eb596a..b3716a89fa0d 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -316,7 +316,7 @@
 
 		edma0: dma-controller@22c0000 {
 			#dma-cells = <2>;
-			compatible = "fsl,vf610-edma";
+			compatible = "fsl,ls1028a-edma";
 			reg = <0x0 0x22c0000 0x0 0x10000>,
 			      <0x0 0x22d0000 0x0 0x10000>,
 			      <0x0 0x22e0000 0x0 0x10000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
