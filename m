Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3D9BC52E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 11:49:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jGu72qVz4A5rZk2qF7FV+OshYKMaNkToYrkbQybEKfs=; b=TtlLPeMTOQIzEp
	NUAEflkEAIFSuJoLw33HD2+3MOEzIfN1FHv73o75tU8bzP9wtwUA5ray3H88G8GejjiZu2dLhqFQL
	rMaRlWCXCFYNX9Y9AN/d95TgNJaL+mI3/TYlz0JpQIcskZ8BHKEWYvzoZF0X7E7QhZdWc/sVlqnMa
	L9ts8/g2vi03MZaEBxSB3uNH1t3df65SgO63VWonIMRPIB+GvbA5syCiNnP9xpyj8ZEt+oGSOxdFm
	FQdUJD7VJ6JHNsujHSsSFXvukxuJXT+w7NAHyfT9VDJFJI/tX6oNbDTlMMdiw8JAoFsjDygBGlmwz
	WWRq8bUdTBIjPKRUiJlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iChRw-0002VE-9b; Tue, 24 Sep 2019 09:49:36 +0000
Received: from mail-eopbgr70081.outbound.protection.outlook.com ([40.107.7.81]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iChRi-0002Uv-1E
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 09:49:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O0txogB4rFx6NKY5ZqwmrVy9wSXOv/92LbnYBDhle+iPOMdvTXoV6WhvcW66QMZ/TNTnydddwZdKZL24LrZvC2Xzj+FwNVMtjwqGYc0sl7jjQllW3MyAc5PjtXh/OZU1sMMt5G6ouhXpl2KwgfMtPh+g+uBOYKm42tf2ODBcyk5XvyFtLIWDL9zQICG3DezuQVh/GhagXp2juLsESJ+RTaEyjFA7junyHNpbB2e8NIdS05ib6kOu9fg+lbbC3QXYcWSNFjYrYW7Hook6cPyRmgxgYA3X+IvMHHy3KZV7y8sNG4jWjDmVB69ggrkatyFoMeg6hDq6CCx/BtsfarbV5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OAPPSsCtAOwgKhNpbzg/xYaJiessAiZJO4uR8zuUmPU=;
 b=TWaPO5sbvO183pcXX6A+kZpGFpe/2RWRoYxEq7eKoFIpzyb8TXlmgCzPAK/URlmOl4nERPxsmhqU8deqM0wIKF5PGD3sYO99OG0UNZsmcTSuohBn712MM+FfdKoWJkfM7BOyBnnBNXLKah5Gcsi8I9cv0kBZIVoM3RWk54HD/d3wc32VtsCmZBxW2m5nKVPNeqfcQf1dTUaGRqzK1xkKAb1Lp2VlqWhWe4xeM+muOVb/wvnrc+9+sBEZtlSEkwN72vIXUvp8MPRc8ZaeW6cYlwTfsR3RKPgcx1ntf/IWRfMTsVanuIUV6qi2Swqfb9wSG+ycirZe8mS4FkfU63m7JA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OAPPSsCtAOwgKhNpbzg/xYaJiessAiZJO4uR8zuUmPU=;
 b=YOArI7n5HtOHr9az3QrKGjx018ealUNoW35AAa+KKWmUbUckO+KTNHZUqwnaOP38LqHTGp5yZVox/hmBn6PVMkZa5yHqsOz1x/SI1LayvtLJ7dANQ4rydKy0Z+F8LQrDPbb795U303L47il032AYTDdr65yn6WpkaD15qkrDGeI=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6560.eurprd04.prod.outlook.com (20.179.234.89) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Tue, 24 Sep 2019 09:49:18 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::35d1:8d88:10f4:561]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::35d1:8d88:10f4:561%5]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 09:49:18 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: "vkoul@kernel.org" <vkoul@kernel.org>, "dan.j.williams@intel.com"
 <dan.j.williams@intel.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "J.Lambrecht@TELEVIC.com" <J.Lambrecht@TELEVIC.com>
Subject: [PATCH v1] dmaengine: imx-sdma: fix kernel hangs with SLUB slab
 allocator
Thread-Topic: [PATCH v1] dmaengine: imx-sdma: fix kernel hangs with SLUB slab
 allocator
Thread-Index: AQHVcr1VGWNo2EzDlEmVbBRWEyoOAw==
Date: Tue, 24 Sep 2019 09:49:18 +0000
Message-ID: <1569347584-3478-1-git-send-email-yibin.gong@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0P153CA0045.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:17::33) To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8483d06d-f9be-4148-f3d9-08d740d477b2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6560; 
x-ms-traffictypediagnostic: VE1PR04MB6560:|VE1PR04MB6560:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB65604C340BA36162D990FB8689840@VE1PR04MB6560.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:605;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(366004)(136003)(39860400002)(346002)(199004)(189003)(5660300002)(66476007)(110136005)(6486002)(36756003)(6306002)(86362001)(8676002)(486006)(66446008)(7416002)(26005)(81156014)(8936002)(966005)(4326008)(99286004)(2501003)(102836004)(6436002)(50226002)(256004)(14454004)(2201001)(3846002)(186003)(25786009)(478600001)(6116002)(66066001)(305945005)(71190400001)(81166006)(71200400001)(2906002)(14444005)(2616005)(54906003)(6506007)(316002)(386003)(7736002)(476003)(66556008)(66946007)(52116002)(64756008)(6512007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6560;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: XKKTYo4pPRs+46TEbEl/CXyJvGirY8qB3d2B5mnXzRuTH5ZXMl4zGYoj2eINSmK4QifxcqOp9wf+ury17Xx2k54qR+Kw0zIX+DhS2oPnfljLGMx5plMu804Abpf7Q/qdvgGY5cSJm+pfUN0FgQN4NWtIGuy58TFOI5Y4ki6xKclrfIBGbprDC0d0YfIpuHh+OaCLCLYaBsdt0MUMA09H910dLkJHjnNHht2jMPiQD7f9JkkdIDlZZbSOn723G69tgbJCpkTgfdP5b3q1YiMsdTAXAbvSeJwAM8/m4TeXXNPL8KnMLyvh8ERhjR/wBLe6Jl+CV6Tu0Anlqzm9VCxfrUWmoP/K4vy0Ft+eOZGmEspVYFmALtWQ3TDMubNulza170MrdNTqNWBmpWp1pmrYC6i+ANeYtTdODSJ32Y4eafeYOvr8lzM2yCvbYuH7rEhVLACgk3l954XkLw6ueBvI+w==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8483d06d-f9be-4148-f3d9-08d740d477b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 09:49:18.4343 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VmFAyFNomgWRXTTuRZ+WDUviwNOnSn7sTdmyJ2pZzRvzmUDjwt0fLSWSQmdntsDrOLfcqR0dV/fP94Cnv3FW5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6560
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_024922_077002_B434B47D 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.81 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Illegal memory will be touch if SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V3
(41) exceed the size of structure sdma_script_start_addrs(40),
thus cause memory corrupt such as slob block header so that kernel
trap into while() loop forever in slob_free(). Please refer to below
code piece in imx-sdma.c:
for (i = 0; i < sdma->script_number; i++)
	if (addr_arr[i] > 0)
		saddr_arr[i] = addr_arr[i]; /* memory corrupt here */
That issue was brought by commit a572460be9cf ("dmaengine: imx-sdma: Add
support for version 3 firmware") because SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V3
(38->41 3 scripts added) not align with script number added in
sdma_script_start_addrs(2 scripts).

Fixes: a572460be9cf ("dmaengine: imx-sdma: Add support for version 3 firmware")
Cc: stable@vger.kernel
Link: https://www.spinics.net/lists/arm-kernel/msg754895.html
Signed-off-by: Robin Gong <yibin.gong@nxp.com>
Reported-by: Jurgen Lambrecht <J.Lambrecht@TELEVIC.com>
---
 drivers/dma/imx-sdma.c                     | 8 ++++++++
 include/linux/platform_data/dma-imx-sdma.h | 3 +++
 2 files changed, 11 insertions(+)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index 9ba74ab..c27e206 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -1707,6 +1707,14 @@ static void sdma_add_scripts(struct sdma_engine *sdma,
 	if (!sdma->script_number)
 		sdma->script_number = SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V1;
 
+	if (sdma->script_number > sizeof(struct sdma_script_start_addrs)
+				  / sizeof(s32)) {
+		dev_err(sdma->dev,
+			"SDMA script number %d not match with firmware.\n",
+			sdma->script_number);
+		return;
+	}
+
 	for (i = 0; i < sdma->script_number; i++)
 		if (addr_arr[i] > 0)
 			saddr_arr[i] = addr_arr[i];
diff --git a/include/linux/platform_data/dma-imx-sdma.h b/include/linux/platform_data/dma-imx-sdma.h
index 6eaa53c..30e676b 100644
--- a/include/linux/platform_data/dma-imx-sdma.h
+++ b/include/linux/platform_data/dma-imx-sdma.h
@@ -51,7 +51,10 @@ struct sdma_script_start_addrs {
 	/* End of v2 array */
 	s32 zcanfd_2_mcu_addr;
 	s32 zqspi_2_mcu_addr;
+	s32 mcu_2_ecspi_addr;
 	/* End of v3 array */
+	s32 mcu_2_zqspi_addr;
+	/* End of v4 array */
 };
 
 /**
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
