Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55264B3787
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 11:51:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ommlCDOyM/U5uoQAZ7KwFJqKhkoFs5P31rCPDw6l/KQ=; b=EGSDgvsrAL7IJN
	20EqGGun6A4x51qbrKmXdmDtODomunZF/nX2mLoxHL1dS1dvUWDBWLpfbDGCCWqihEXRG97cZPQEM
	csE3amBYmSVkrPJlMRkLAn/g5TL5Z4nXr0V5cAY9HLShiPEGi8mcyKBEYc2hy4uhm8WmPdAZgCX49
	OJvGECskwg3ho1YbkYf6hSIlX/MYAq8QsrY4djv1nxBCcvbHesKP572Kt3rNjVoDs1ih1ZskCm2yp
	byO9wyL7iKIwrLXmT7RkaqbvNrP3JlWu6+kpU7O9finGmZxc8k/kO769PTn7Ql+/EnGJdmqZSX9uh
	rAdEyns/Q0j1jdS2oJmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9nfj-000737-TB; Mon, 16 Sep 2019 09:51:51 +0000
Received: from mail-eopbgr130043.outbound.protection.outlook.com
 ([40.107.13.43] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9nfV-00072i-6p
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 09:51:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OrPJnOpTBkVylyJtRpsRntiLtvIWd3Cz9EfihoRQHLP2d/2kQr58nfSIr0F5THakU5GbLyAXdg7hUvQQHpYjiY/zVbXVRdEvoTp5hsKIQ2fTgu8XXyWNTlOuzwDav9FDKAXpR3X+Uirk+ViG4SvL7U8sZ1eyhKvHqobqOd9whBcCyTtHnwaLn52vBGW++jjl175IaUNSATeMLuuMmnT8GbbCFm5jXtkMYIjSioyHsCxmnnGRXRGXkGodBK2upJPkouRauy7o7M5z4qcCyuiIU1FYXh/HPC5l7zrjrWUObob/BdKXWz5OVklErWUzryUauhby3jA1XMy+W74Yf6MLeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S8F5CzEJ/age1CHHHPqTMUHg6wLBT35cM6qcA/wKMQA=;
 b=KYFcb5BoA3Qer+mVYvhXLgEQL+H4SljhmErNxmtDpLYZCNrh4bAFdEAir9MV/akGqXlsXR6kMkfv0BOvIGO7iKfBxdNXYZySTT52EVZtGGxECOlNHg+KGC7ayze7pCQhqCgeshGQE5Z9DNps4rtGMaOSWlG7PDr4EE58qFHU1YnLRadgp7vlPI7wVMv/TUdIZrr3YEz9uEfrfCXXqPMKb65W4TbIZIOWMeHdwMq4i2ljYu+zrNtw/T2BrU9eyj8qsIAKsYqSHRVaQRPzZpYRmyQqH+LgodasmScQEujN45zAVHtrrHxqSRcvmfLWVH4Xvvk5u1nAebGvONJUoxnQ2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S8F5CzEJ/age1CHHHPqTMUHg6wLBT35cM6qcA/wKMQA=;
 b=oKdwZU3zDYX9Dy2TCF7VDy7nRB4A1mXtto4MzWFYRlsnKtWlA0iksceR/uvaxkjf+Va7BWRucsVUodAXCK+s2Eb4ltTCdIzVVR+g/EQSxEpXX6m6K3ROLHv4qJdWx4mTPRtINnXZW9lCoCdDGOYh/QohNFd3fB8P5EsYIA1pKow=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5186.eurprd04.prod.outlook.com (20.176.215.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.14; Mon, 16 Sep 2019 09:51:34 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8%6]) with mapi id 15.20.2263.023; Mon, 16 Sep 2019
 09:51:34 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sstabellini@kernel.org" <sstabellini@kernel.org>, "linux@armlinux.org.uk"
 <linux@armlinux.org.uk>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, 
 "will@kernel.org" <will@kernel.org>, "robin.murphy@arm.com"
 <robin.murphy@arm.com>
Subject: [PATCH V3] arm: xen: mm: use __GPF_DMA32 for arm64
Thread-Topic: [PATCH V3] arm: xen: mm: use __GPF_DMA32 for arm64
Thread-Index: AQHVbHRSaJ8nL5OcZUKnpAnuiJ+Vsw==
Date: Mon, 16 Sep 2019 09:51:33 +0000
Message-ID: <1568627400-21335-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR02CA0189.apcprd02.prod.outlook.com
 (2603:1096:201:21::25) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0dde092f-4dc9-47c8-17f2-08d73a8b7522
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM0PR04MB5186; 
x-ms-traffictypediagnostic: AM0PR04MB5186:|AM0PR04MB5186:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB518625B959CEEB06504C5075888C0@AM0PR04MB5186.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:133;
x-forefront-prvs: 0162ACCC24
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(376002)(39860400002)(136003)(396003)(199004)(189003)(7736002)(86362001)(25786009)(8676002)(54906003)(81166006)(26005)(2501003)(81156014)(8936002)(2906002)(102836004)(110136005)(6506007)(486006)(256004)(2201001)(53936002)(386003)(44832011)(6486002)(14444005)(14454004)(36756003)(50226002)(99286004)(305945005)(6436002)(66066001)(478600001)(71200400001)(5660300002)(71190400001)(4326008)(6512007)(6116002)(186003)(476003)(66476007)(66556008)(52116002)(2616005)(64756008)(66446008)(3846002)(66946007)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5186;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: GhFLTZUam2svVQUPfjTqJv8m65Dws5Irh+w2L39xjcuMTVdubiAYjtwT2WQKVVU8D2+kHmSaevnpE3jJc4lPnMoG8i3WKRx2Ow5tOeSRI47Q7qzoKGC1PZb5IsELH+tdaBRO9VKjLK6V9kIlHhZIlv7Hwmd/dJUEidO+ST8vyYQbyZ0ZQjonStJohxsxTDkos8R/yvg5Tl+s+P/Ctsn6vV9W5ydKWHYuT0Fgj6pYRxnumcc9IwGHLtz4VxZqqyeLoZU2KPzIQPzeLPiY5A9FfhUw+OzN5E+uVW71KavCG4WIOnBFhF6wDETw5HjSakweBONA2oAm8EjeCOFqptF4ZypqQqxWtKiGafebOAuR3RYlNcX3755D5BcDc7F/VLMI3fFhPKMAA3BSjXlG7fj7K4GmR5KDJFjUVLhL/OZfI/Q=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0dde092f-4dc9-47c8-17f2-08d73a8b7522
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2019 09:51:34.0156 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aZul6er8FMN9aOpYNr+i019whEoXmd9DgIzfC5geVUjcschdPUlhGkHT6jldF2wMNuybY6gTW7DCDBnUsUGWag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5186
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_025137_256167_FA7F638B 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>,
 Peng Fan <peng.fan@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

arm64 shares some code under arch/arm/xen, including mm.c.
However ZONE_DMA is removed by commit
ad67f5a6545("arm64: replace ZONE_DMA with ZONE_DMA32").

So add a check if CONFIG_ZONE_DMA32 is enabled use __GFP_DMA32.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V3:
 Use IS_ENABLED(CONFIG_ZONE_DMA32) and drop xen_set_gfp_dma.

V2:
 Follow suggestion from Stefano,
 introduce static inline void xen_set_gfp_dma(gfp_t *flags) for arm32/arm64, and
 for arm64 using __GFP_DMA for the former and __GFP_DMA32 for the latter.


 arch/arm/xen/mm.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm/xen/mm.c b/arch/arm/xen/mm.c
index 2b2c208408bb..38fa917c8585 100644
--- a/arch/arm/xen/mm.c
+++ b/arch/arm/xen/mm.c
@@ -28,7 +28,10 @@ unsigned long xen_get_swiotlb_free_pages(unsigned int order)
 
 	for_each_memblock(memory, reg) {
 		if (reg->base < (phys_addr_t)0xffffffff) {
-			flags |= __GFP_DMA;
+			if (IS_ENABLED(CONFIG_ZONE_DMA32))
+				flags |= __GFP_DMA32;
+			else
+				flags |= __GFP_DMA;
 			break;
 		}
 	}
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
