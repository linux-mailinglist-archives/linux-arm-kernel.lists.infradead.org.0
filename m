Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 128EDA2CD9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 04:29:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zaeMmJImDSk1aUvYRZ+OYz0WO8jFErWMVUzg/lIkrpU=; b=MlhWR3+v9QTrzL
	GcC5h4M2oBlZSA34G2hQaOf8hnP7k4FV3Bf3es7266N3sje0OiIM6bzUARQ7GM6V4s9aEo2nvp1LW
	KA4tnNMUaGhmL+P1mDUfkjyTGBhKAG+pz6HHtcwk6g9OuenJcgkzkIaGRC9+ywl12y0v0zKF5pLoA
	y3GOAl/7DR955xRceEcSbQdnmvz72o+FXGzORzB/eMmZKNufSpAO1eieU/scv2LnFewzdqT+DSpvg
	kQ57jOCVht5wswqMUttsAnDLzz10WtMwyjMgvQLtrIlPQdj4fiwlhfx9ia7aFOccfF4mEG1pMLUFf
	exhiMc5Rwo29X442orDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Weo-0000mA-Pj; Fri, 30 Aug 2019 02:28:58 +0000
Received: from mail-eopbgr80080.outbound.protection.outlook.com ([40.107.8.80]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Web-0000lo-9V
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 02:28:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IV1nuaGbeX4EPMKY1an+ImXugJLAjAEJ1dehoyAbT9OvDS1yDbz9h7O2f+tu7enreGOIzC5gqRm7Xr8POpuGFdCUluXQPGiWMivDJWsU4bVGmk6qPdJP6R7JzwwRkEwIRV67uO0k5b0fK0DZPT3nwOcdrf4zLtBmVxg9I3iqma05kKMkTPXALsZl0I588y7N+t6Wu1fjWJdO4YqOWyyaOE7nhiEChKExtDG6r72JSo4zI1e2qiMiK4vxQFUCjV4Vi1YCwEgjVtnXfSUUl3STpjpmh6DsciwChE/WbRvvkpT1UkC0wAsC2oAAa/btxm6Bgv4WmNBBb8kN36tmHPPGng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XG0rWLhe7eNDoZpMeoGrKroXqtpjwdJE3AtA5mD/wiY=;
 b=HT3fvlaB0TcTU6e2ggEbeISFp0OvWqrWXYeCgRnlq5SUOcU84C+8Lcy8npoT2/GR2iSUdm7s5mA0I1rgfbfDmDIpjGRRHevsKyOH7kV39+FiX8gx7Q2I4pscroFxo9c+xGSVpT4r5r4Xt1O67Vy7AtCZkW/mSLpPZ0ROyKHFQj9pMn7nPIRBWNyisF8JbmS4dGtMK7U6+h0RY9NEtO1GOO292Mf20ca+cQ1NkaPM21xFvrFDCjp/RuRt+rHeUUlxANxPWGyskG6kq1kfQSZtv9C6VFDVEwNxFJmOkiXkMji7wDazstBe8KR/WeE4CsWUTDYjvgex2ofE5C7i5fWoWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XG0rWLhe7eNDoZpMeoGrKroXqtpjwdJE3AtA5mD/wiY=;
 b=A3T4KAeeBq77ovOm4k8dtp0QJ/lRVeGgQt8PFLs50cRGXR9AeiZAC4xZ56TsEFgPZ/WwNc7hu5Ogj3KeGVgLM1nm/KBZDhmdYn2WUVOQey3qCq54XYO4+Qt7Cr7KtpexBPhCraFr7fv37DS7qaCAmK5u2dgvq+wIg6TY8Gd3lzs=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6291.eurprd04.prod.outlook.com (20.179.33.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Fri, 30 Aug 2019 02:28:41 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4%4]) with mapi id 15.20.2178.023; Fri, 30 Aug 2019
 02:28:41 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sstabellini@kernel.org" <sstabellini@kernel.org>, "linux@armlinux.org.uk"
 <linux@armlinux.org.uk>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, 
 "will@kernel.org" <will@kernel.org>, "robin.murphy@arm.com"
 <robin.murphy@arm.com>
Subject: [PATCH V2] arm: xen: mm: use __GPF_DMA32 for arm64
Thread-Topic: [PATCH V2] arm: xen: mm: use __GPF_DMA32 for arm64
Thread-Index: AQHVXtqjidV/KwEkYkeguLx++Vlcnw==
Date: Fri, 30 Aug 2019 02:28:41 +0000
Message-ID: <1567175255-1798-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR02CA0187.apcprd02.prod.outlook.com
 (2603:1096:201:21::23) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3ee84b63-a69a-4742-4102-08d72cf1c5c2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6291; 
x-ms-traffictypediagnostic: AM0PR04MB6291:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB62914DE8E9F2819EEE3528F888BD0@AM0PR04MB6291.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:372;
x-forefront-prvs: 0145758B1D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(39860400002)(136003)(396003)(366004)(189003)(199004)(8676002)(5660300002)(8936002)(186003)(81156014)(81166006)(99286004)(386003)(305945005)(6116002)(3846002)(7736002)(54906003)(256004)(14444005)(6506007)(102836004)(52116002)(64756008)(66446008)(71200400001)(71190400001)(66476007)(66556008)(66946007)(66066001)(486006)(50226002)(110136005)(86362001)(26005)(2201001)(6512007)(2906002)(316002)(36756003)(478600001)(6436002)(25786009)(6486002)(14454004)(4326008)(53936002)(44832011)(2501003)(2616005)(476003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6291;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: duFuzaG8BXU1w9kvD1sB/VxKZd2tdZLi8Vpk11QXgy3x7NbdXAI431GwYvlY1Rps3uMl/T7+QOTSll4qkuaPRZ+/X7myFvNHUIo9vMv2aru0IcKb/QQHGEjCCl4M5gw+kjhw3Ws+vREUwn9lvE6Ms+dj79EhtcIgJVZZMXKbjwR6cCDfo/ai6R/A669U8956xXozSb+GVLUIWjpJCveB/BJfVBzKJi56DcQ7wKC8gGIWqEG022lMN8ZDc45Ky0D80vmzTu8ALM915n5xUXTUPHVbTteSKJBZJhSMOstVOnuiuhlOwGEI0OyxHdZ7rZqtIkjv1FQ2NsjeWycMJPqFwICtgXqlttnNGMsOGU5IWn2HN4k9WVe53mEDHy+nwjXsPrdFvbYFGB5h9qJzjDCaebIPgy8ku5ubGguXElyvwD4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ee84b63-a69a-4742-4102-08d72cf1c5c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2019 02:28:41.5335 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OhnWXYbjB7mW7NrJOCXPTqWe5Oc7ZC65iD3r3bd8OswenBirSpNZnTWLvGBK6ADNX7981PRV223XgyV/ZRcWPg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6291
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_192845_339162_DBDDD060 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.80 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
So introduce xen_set_gfp_dma for arm32/arm64 and using __GFP_DMA
for the former and __GFP_DMA32 for the latter.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V2:
 Follow suggestion from Stefano,
 introduce static inline void xen_set_gfp_dma(gfp_t *flags) for arm32/arm64, and
 for arm64 using __GFP_DMA for the former and __GFP_DMA32 for the latter.

 arch/arm/include/asm/xen/page.h   | 5 +++++
 arch/arm/xen/mm.c                 | 2 +-
 arch/arm64/include/asm/xen/page.h | 5 +++++
 3 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/xen/page.h b/arch/arm/include/asm/xen/page.h
index 31bbc803cecb..d08309c45e6c 100644
--- a/arch/arm/include/asm/xen/page.h
+++ b/arch/arm/include/asm/xen/page.h
@@ -1 +1,6 @@
 #include <xen/arm/page.h>
+
+static inline void xen_set_gfp_dma(gfp_t *flags)
+{
+	*flags |= __GFP_DMA;
+}
diff --git a/arch/arm/xen/mm.c b/arch/arm/xen/mm.c
index d33b77e9add3..828f49dc95f9 100644
--- a/arch/arm/xen/mm.c
+++ b/arch/arm/xen/mm.c
@@ -28,7 +28,7 @@ unsigned long xen_get_swiotlb_free_pages(unsigned int order)
 
 	for_each_memblock(memory, reg) {
 		if (reg->base < (phys_addr_t)0xffffffff) {
-			flags |= __GFP_DMA;
+			xen_set_gfp_dma(&flags);
 			break;
 		}
 	}
diff --git a/arch/arm64/include/asm/xen/page.h b/arch/arm64/include/asm/xen/page.h
index 31bbc803cecb..5eeabf2c6494 100644
--- a/arch/arm64/include/asm/xen/page.h
+++ b/arch/arm64/include/asm/xen/page.h
@@ -1 +1,6 @@
 #include <xen/arm/page.h>
+
+static inline void xen_set_gfp_dma(gfp_t *flags)
+{
+	*flags |= __GFP_DMA32;
+}
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
