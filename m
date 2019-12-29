Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EAF712C059
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 04:49:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3SsYYENZDmRVSAq6xGKW7/KY0wSJQNagOv3ybPbS8I8=; b=sb8f/4528DC0A6
	y/nukqoXh3vuv+Gf+FvzzQkVRmQNioPkpcyezBpYei9x4AXcDL/GXpEGiwBPwnRSrBkctOPfjF6Ua
	L9PUqQrp+0VHoDUztJq5Otx7R49NMgjYzrbsFMCwsLuDyZg2/4SwbRtKLEWD6fkuso5MS9D/JEaFE
	dXmmkG0GyDsaqvsh2fA/OTODVJ3IgjiNdsJxJieBYiGGzf0m5wwEqT0A2jrYwaCBb65MJO1ZqWeob
	/rongm2WaacdeBcOZHk8N54ExJ7MTAhl2sULE98rqaNc8MLkIqy9WstxDl+pFD8RuYdfYB7OafVi/
	buPyjKZ0lXbBFWrxeKpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilPZr-0003nF-9i; Sun, 29 Dec 2019 03:49:15 +0000
Received: from mail-eopbgr00043.outbound.protection.outlook.com ([40.107.0.43]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilPZe-0003ma-Oh
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 03:49:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WiX0PK5fACBWf2Ylu31ZVIOEkG0Ce+NNJmclH3++buTrMxZdCOJRbK/o4L/0ZZBZN0sDAQRE8qjEgWEg4Vgdug6hfNrSQgNRlNl6KbY2cffl2aGPwYok+T/M5ti7VClRd+3l5uSZIbofG+Sb9QbPN4BD5GlNNp0QuWbsU4ouz+p6vG6fYDckkHB8du9G7YUxlPNErI8jX9EJehZsY2BMX+F8HNU0aBtKkCCVuXJ8YWhI99vevgDu/EhFO4FKWsvh+nob39DgNXfHPIKTx6nN+VGiOzj5WdIcbxhH+eT54boESqWy6RGCq6RcxI1w+5YzhKcrJVMihwrO+k80H9RO3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ll04A3+fpwlkErULbmjBXlTbjwtfhLrr7ZrmRp77Ffk=;
 b=kytnsaHQZtDuRwX/ZymunbguKT4ek/XJE2LFOHmKZ8/dhQE+SPK2YKsKPnlDvhUHVTkIDeZHwUCEVcJptYs/zTjNk3oqP34lrF0fIgDvLrhTdyF8ZhW0uL652osDMVdc6j/FQAC8XINow5PI5PBqCqSK3VnHrBiFU0KpubkeG+5NLiwzF6eIiB3F+TIC/bnHevUIIsexHCBiwG1moMTfsaGcZ1JHp1iILrfAZ6Lstt+B0LB+KB8Pt06M13/YEE2G0lkYSQ2chVvjPD7o3JyZEZg7PjyUx2vr2negtoCT3NFJROWXYIt/6sKFyRJegcS6h+XfzJd0bOqcdcdpzGIt6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ll04A3+fpwlkErULbmjBXlTbjwtfhLrr7ZrmRp77Ffk=;
 b=WrIpIgBryAGjledy6FsziAOFzaDRMxok8Amzc+9CuwMaLk6lt8E82f/iBpAXFvO1upVWFjhPoE/iO2/7CIVFOBO7SU6I7f8I+KE0xvLatCQKNrqHry9tdoVi7IM84n1XF2YGYz0KE/++PeOwCy92WqNWefC5n4KAep58Lt0U/EE=
Received: from VI1PR04MB4976.eurprd04.prod.outlook.com (20.177.49.217) by
 VI1PR04MB5119.eurprd04.prod.outlook.com (20.177.49.92) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.12; Sun, 29 Dec 2019 03:48:56 +0000
Received: from VI1PR04MB4976.eurprd04.prod.outlook.com
 ([fe80::b555:adcb:d7b3:1595]) by VI1PR04MB4976.eurprd04.prod.outlook.com
 ([fe80::b555:adcb:d7b3:1595%6]) with mapi id 15.20.2581.007; Sun, 29 Dec 2019
 03:48:56 +0000
Received: from prabhu-kush.ap.freescale.net (92.120.1.69) by
 PN1PR0101CA0060.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c00:d::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2581.11 via Frontend
 Transport; Sun, 29 Dec 2019 03:48:55 +0000
From: Poonam Aggrwal <poonam.aggrwal@nxp.com>
To: "takahiro.akashi@linaro.org" <takahiro.akashi@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] move reservation for elfcorehdr early
Thread-Topic: [PATCH] move reservation for elfcorehdr early
Thread-Index: AQHVvfrlL1QGQyVpb02DWGQcHEIPXA==
Date: Sun, 29 Dec 2019 03:48:56 +0000
Message-ID: <1577613635-31509-1-git-send-email-poonam.aggrwal@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [92.120.1.69]
x-mailer: git-send-email 2.7.4
x-clientproxiedby: PN1PR0101CA0060.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c00:d::22) To VI1PR04MB4976.eurprd04.prod.outlook.com
 (2603:10a6:803:57::25)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=poonam.aggrwal@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 189ad193-d1ed-473b-4d46-08d78c120797
x-ms-traffictypediagnostic: VI1PR04MB5119:|VI1PR04MB5119:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB51197DD22565065EF4402DA586240@VI1PR04MB5119.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0266491E90
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(136003)(39860400002)(376002)(346002)(189003)(199004)(54906003)(110136005)(66446008)(44832011)(26005)(66476007)(66556008)(4326008)(64756008)(52116002)(478600001)(6506007)(66946007)(45080400002)(316002)(71200400001)(6512007)(86362001)(5660300002)(8676002)(81156014)(186003)(8936002)(81166006)(36756003)(956004)(2906002)(16526019)(2616005)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5119;
 H:VI1PR04MB4976.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3yzqb3A1MruHeMRrdTof2XCbnhG0duhlvjpIWOzjJfGvbkYGXboZsM935GDk8Ra34PV2AcEDjcTH4mBmnJJfayqOMrRG6ga7MaHMYFuihTuvgc30QRkRnpIHQn/ZK3aL69mRc9G5TNu7XKP5mBM24Zizyo09C45nX/Jsyn8JCvHgWcjFJVZ3/0y/+z18JmX4c2PIHy9kWEqGTJcvjAxECeoro0E32GMTE8oZv36J223EtVyojDpF/1B92LcTTAoHhSQkEFaU91Py2uHpxSCSMgnlHtbAGwg3WIXvpu6RwFiDpdkwutcfPiAP8hPXGpYdTZYaWrbRrWmzti1S9or8mzEXMfRb9E3TRHL9S+A6voRYFI+tszaPS+wxdhX3w612B563RuJEgSeoq3t9otgb1uepM05Gpfn46/zkXi5h5GbHiSll5qrIFzpzKRncK3W0
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 189ad193-d1ed-473b-4d46-08d78c120797
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Dec 2019 03:48:56.2619 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oMcab4zkeb4aWIOSLiuQPXL+qbq9x99/k+LpQ1vWrNQ1Zx1aLt1MGJjenSJndRgO0WlO1pkaXm7UsZr3QdBkcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5119
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_194902_979933_9F06DB37 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.43 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Poonam Aggrwal <poonam.aggrwal@nxp.com>,
 Nikhil Gupta <nikhil.gupta@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

on some SOCs, elfcorehdr address may overlap with the address of reserved
memory allocated using early_init_fdt_scan_reserved_mem 

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
