Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF0F12CDB4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 09:31:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=amkcO1M5JFouSQVPqt/kIYjUhAIwn5GPwkNetzsmRxI=; b=GTDYmjM64PTC9v
	/gOGuli4CGtXmBXRhscqqFIVdC2UKZrUMeU5J/cv8jffiwO9IEDL4GIHB8uXwfPFiyxOCG4TGhLp1
	0BxQW8UryrJBx+0edT5JHszzVVjV/6U8VRd+Fq4GpqkObJYzwUQyJM8aTKKWzpTBatVfWI6ZJ5cJL
	satoS+1YZQor4pfRlPiUiQ32XZC0kSiV7CYelDH9DyxKHto/bNy0ao+w4FvA2hsEppJXDFcE58nvj
	dS0HJ0tmM2FuWYBMT6dKkuREjNNkyTNYwQNTwZaRQ8RbRb3+RH+aAjvCiB/hNTnmRM+GvYQMI49z8
	FqMs1/vMYesKKh1UgPlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilqSf-00081S-Ok; Mon, 30 Dec 2019 08:31:37 +0000
Received: from mail-eopbgr30064.outbound.protection.outlook.com ([40.107.3.64]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilqSU-000816-N9
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 08:31:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W/OZLAc25FI/gsckJ/eZieh2F8QB7YekGX0hDgfUYojz+kFJ2KrSZvhoq+HN/IVRj6EhfXDbEO3tW+VATT43aJLiDO8+ajG5tqUQPjew+gHUMTzKUUAAdrHA+6gaieqGNOjD1Ud8X5Ta9qHzcLdYLD7NTUlWXezdrxaZwskCDd1S8Y5tZuD0WfoBY9nInEHXXb7yZgc0Rfb7cTYt+I78jTPL6WaVyUdW0wknb44PIuwsy/kVhPHVUgmzjDmzqHzCqSApmfNUqnaKkdenGoD3mmIPneQeGS+i8bnkTo1iHBLpTsyS1L76vX6IQp5KbpFj3TeYCgm9EDXVKPs8/u9LyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mFEZL4hQTX7safM93gM+74jEH6eIAICOXH4Pu7HnByc=;
 b=SmNCLyCH3jeQRnOxOpGfSS64U+7RnIM32QixVmFLd5uk4/TH9/AC1sy+o7/WsWlkavnFfmxFOzdu4jEEmNmNh0SpjNi/T+cYipEnOjzQ6OJxC5EJhRh1wF+HEP0tEZUeu1+4737r88m97ybWtixa5J1FimR9Jh01gQGDKiJ3oxNYuj6N6jgPsrnlnOd3uhOCGlkB1DGe2/MOoOXgs+eSHiWyzdRQhx5n+DYZsq8kt0UHjykqjcN+3oBDdHUQRpahT69ZLk4v9EorRsDqfIgyxhKwr+bzZPygoj/6Dv1XqTraVzsYoDyWZQTlwoveLnY9+tOMFZFKjk+qbCn+NjcH1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mFEZL4hQTX7safM93gM+74jEH6eIAICOXH4Pu7HnByc=;
 b=Z/DWso778BIbRxmcinN6gS4UsnxnkwUD3bL6NqWM65na6fwvSOGIv6ETw5NyymXA0LVuwpJ80G0q26uqSf0PhsKkv2SDIVeSQdD7pklFKWkdqVm1aTzFjPLCpCV6Lg/+4e9fN+Hvyx3abV6n7hgwFT9cpqTHQdaQaV2T32HGXC4=
Received: from VI1PR04MB4976.eurprd04.prod.outlook.com (20.177.49.217) by
 VI1PR04MB3967.eurprd04.prod.outlook.com (10.171.182.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.11; Mon, 30 Dec 2019 08:31:18 +0000
Received: from VI1PR04MB4976.eurprd04.prod.outlook.com
 ([fe80::b555:adcb:d7b3:1595]) by VI1PR04MB4976.eurprd04.prod.outlook.com
 ([fe80::b555:adcb:d7b3:1595%6]) with mapi id 15.20.2581.007; Mon, 30 Dec 2019
 08:31:18 +0000
Received: from prabhu-kush.ap.freescale.net (92.120.1.69) by
 BM1PR0101CA0020.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:18::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2581.11 via Frontend
 Transport; Mon, 30 Dec 2019 08:31:17 +0000
From: Poonam Aggrwal <poonam.aggrwal@nxp.com>
To: "takahiro.akashi@linaro.org" <takahiro.akashi@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v2]arm64:move elfcorehdr reservation early for crash dump
 kernel
Thread-Topic: [PATCH v2]arm64:move elfcorehdr reservation early for crash dump
 kernel
Thread-Index: AQHVvuuB1a7r5S/LA0Wg32VAKJsNkA==
Date: Mon, 30 Dec 2019 08:31:18 +0000
Message-ID: <1577716974-7188-1-git-send-email-poonam.aggrwal@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [92.120.1.69]
x-mailer: git-send-email 2.7.4
x-clientproxiedby: BM1PR0101CA0020.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:18::30) To VI1PR04MB4976.eurprd04.prod.outlook.com
 (2603:10a6:803:57::25)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=poonam.aggrwal@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c7018d3a-73ed-4b5d-5426-08d78d02a444
x-ms-traffictypediagnostic: VI1PR04MB3967:|VI1PR04MB3967:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB3967ABF00648CBA6C664799E86270@VI1PR04MB3967.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0267E514F9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(366004)(376002)(136003)(346002)(189003)(199004)(45080400002)(8676002)(6512007)(2906002)(5660300002)(66946007)(36756003)(66446008)(64756008)(66556008)(66476007)(478600001)(52116002)(956004)(81166006)(81156014)(2616005)(8936002)(6486002)(44832011)(26005)(186003)(54906003)(16526019)(86362001)(6506007)(4326008)(71200400001)(316002)(110136005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3967;
 H:VI1PR04MB4976.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OfnNaffW2nol7C7/B0ElyPaSzU8DSr+6A9xirWr7HtynZsJDMGP5J9QmuvQ7PLyNl6MRDKnK/gj8qU6b53YpEfmsbjnET2/fNePAz/Z/0uLScloVLCivAk3/e8NHBhmVc+9szQvYIkdOTMSsKH3fJZ/3A5zHj0MWExDy6n9If07ktg/+MkFazYAAn9GNnHf1+FwFLizB+Uo+8bk2heAZ6IIUX/VeSH53QLQmZTQ7J0+/4y4IbwT46ecW2WR1VEx5ZOfpwHCROL+G5VAGEE4PsVGU/JIRslgwxBPrLXyg1b6FW8qIYVR4295G7AIqWudqXtVKJ9OeWzq6TAgNydffmv7eo4KIB1iDKTNlYMhBYRPpB38PqjBSnV0Lbc6s2LH4k4UzCDfHybkA+PElWWhiFIVppfUQxUk4D1bNWNFv5TPVunTE1yPiHTb4xVj/x9d/
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7018d3a-73ed-4b5d-5426-08d78d02a444
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Dec 2019 08:31:18.3675 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qRopt1xI5E/oiGx+3BrRX7bX5Z5jor/rted9VzO2TT79Bo6axZZpF8lDFcWanEvXd3B9uon5KMsMANyAQXfBvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3967
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_003126_908757_E87B6B58 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Poonam Aggrwal <poonam.aggrwal@nxp.com>,
 Nikhil Gupta <nikhil.gupta@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

on some SOCs, elfcorehdr address may overlap with the address of reserved
memory allocated using early_init_fdt_scan_reserved_mem 

Reviewed-by: Prabhakar Kushwaha <pkushwaha@marvell.com>
Signed-off-by: Poonam Aggrwal <poonam.aggrwal@nxp.com>
---
Overlaps seen on LS1043A SoC:
[    0.000000] Reserved memory: created DMA memory pool at 0x00000000f7c00000, size 4 MiB
[    0.000000] OF: reserved mem: initialized node qman-fqd, compatible id shared-dma-pool
[    0.000000] Reserved memory: created DMA memory pool at 0x00000000f4000000, size 32 MiB
[    0.000000] OF: reserved mem: initialized node qman-pfdr, compatible id shared-dma-pool
[    0.000000] Reserved memory: created DMA memory pool at 0x00000000f6000000, size 16 MiB
[    0.000000] OF: reserved mem: initialized node bman-fbpr, compatible id shared-dma-pool
[    0.000000] Reserving 1KB of memory at 0xf7fff000 for elfcorehdr

panic in elfcorehdr_read:
[    0.443984] Unable to handle kernel paging request at virtual address ffff000037fff000
[    0.451942] Mem abort info:
[    0.454740]   ESR = 0x96000006
[    0.457806]   EC = 0x25: DABT (current EL), IL = 32 bits
[    0.463142]   SET = 0, FnV = 0
[    0.466202]   EA = 0, S1PTW = 0
[    0.469353] Data abort info:
[    0.472243]   ISV = 0, ISS = 0x00000006
[    0.476094]   CM = 0, WnR = 0
[    0.479072] swapper pgtable: 4k pages, 48-bit VAs, pgdp=00000000d9373000
[    0.485806] [ffff000037fff000] pgd=00000000f7bf7003, pud=00000000f7bf6003, pmd=0000000000000000
[    0.494553] Internal error: Oops: 96000006 [#1] PREEMPT SMP
[    0.500146] Modules linked in:
[    0.503211] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.5.0-rc3-00062-gbf8d1cd #5
[    0.510725] Hardware name: LS1043A RDB Board (DT)
[    0.515446] pstate: 80000005 (Nzcv daif -PAN -UAO)
[    0.520260] pc : __memcpy+0x78/0x180
[    0.523847] lr : elfcorehdr_read+0x28/0x38
<snip>
[    0.611262] Call trace:
[    0.613713]  __memcpy+0x78/0x180
[    0.616950]  vmcore_init+0x70/0x534
 arch/arm64/mm/init.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index b65dffd..e610180 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -438,6 +438,8 @@ void __init arm64_memblock_init(void)
 		initrd_end = initrd_start + phys_initrd_size;
 	}
 
+	reserve_elfcorehdr();
+
 	early_init_fdt_scan_reserved_mem();
 
 	if (IS_ENABLED(CONFIG_ZONE_DMA)) {
@@ -452,8 +454,6 @@ void __init arm64_memblock_init(void)
 
 	reserve_crashkernel();
 
-	reserve_elfcorehdr();
-
 	high_memory = __va(memblock_end_of_DRAM() - 1) + 1;
 
 	dma_contiguous_reserve(arm64_dma32_phys_limit);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
