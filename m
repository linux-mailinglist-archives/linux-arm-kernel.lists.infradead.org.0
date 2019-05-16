Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E4D2012F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 10:22:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZXQbVbBhxPyuXCatBCZyH808k9iYwXkKSxKq9chO+LM=; b=MERZTBxPiJY+cu
	yVjIHDJGjlnDU98GF2BgcqQVzU25K2saKVCf98pZiC7xD7hlxGokZqntkO/KgXIcKJO00pkhqSTMy
	7TnprRSGwaKxNKenmwY33rdUoVrBHCxZD2e0Iu5BKWmepgyIyFZII27wBBscCn2tcvGv4LpnMZZ8r
	8RIf/zwcU97br3T/Dejo2yuLM+6ON4+RXCL3/vUanYyeb3ntcPjVcoCuTX/40aMdl0IOoA+14BJvs
	AQUFG1hwxbp8wPyui4CUNSGMCnkuvhQQYhRU5RkB3XIvnbJlD956olCW7aUlcYRLusq5TU89vod9P
	qMiHIisBOuI0H3NXD2yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRBeK-0004xz-V1; Thu, 16 May 2019 08:22:00 +0000
Received: from mail-eopbgr20086.outbound.protection.outlook.com ([40.107.2.86]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRBeD-0004mq-6N
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 08:21:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OXGY3ZvNg7ar0ixmq1J0SoCFXDdUevVaWbUL1TG8F9g=;
 b=L22WeFqcgdbMznXzAZ2FqvmYAfW8GG0MITPpROAA+k6kqBgzyJ6AzAOXLq8gXxRP3H/PECdfipbsKZlban8dJKRw+g5VACh22kJ3WAKuLSOwGcIh+BpNEkXiUXtQLTSXOJJSLxLdH5jUM6vXGzIFgysRbAgnSrqBRCAQExQrSOw=
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com (10.168.65.10) by
 VI1PR0401MB2239.eurprd04.prod.outlook.com (10.169.137.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Thu, 16 May 2019 08:21:45 +0000
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::3d45:6b81:13ba:88cf]) by VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::3d45:6b81:13ba:88cf%7]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 08:21:45 +0000
From: Pankaj Bansal <pankaj.bansal@nxp.com>
To: Leo Li <leoyang.li@nxp.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH] arm64: defconfig: enable NXP FlexCAN driver
Thread-Topic: [PATCH] arm64: defconfig: enable NXP FlexCAN driver
Thread-Index: AQHVC8BmIv5TGJloGkq4eEKBEFIqkQ==
Date: Thu, 16 May 2019 08:21:45 +0000
Message-ID: <20190516134516.19351-1-pankaj.bansal@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BMXPR01CA0021.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:d::31) To VI1PR0401MB2496.eurprd04.prod.outlook.com
 (2603:10a6:800:56::10)
x-mailer: git-send-email 2.17.1
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pankaj.bansal@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [92.120.1.69]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fe8ade55-4713-431f-3c55-08d6d9d7888f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0401MB2239; 
x-ms-traffictypediagnostic: VI1PR0401MB2239:
x-microsoft-antispam-prvs: <VI1PR0401MB2239F51F809EC48FA13EC5B9F10A0@VI1PR0401MB2239.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:590;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(396003)(39860400002)(136003)(366004)(199004)(189003)(53936002)(478600001)(8676002)(81166006)(71200400001)(256004)(8936002)(44832011)(66066001)(71190400001)(476003)(486006)(73956011)(14454004)(66556008)(66946007)(186003)(2616005)(66476007)(64756008)(50226002)(66446008)(7736002)(81156014)(6436002)(26005)(316002)(4326008)(6486002)(6512007)(305945005)(4744005)(52116002)(110136005)(386003)(6506007)(102836004)(25786009)(99286004)(5660300002)(68736007)(3846002)(2906002)(36756003)(86362001)(6116002)(1076003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2239;
 H:VI1PR0401MB2496.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 5j7CDYdWgcpSbNtEuCmFAWaXJyvN2mR15zWDkOQcPJrICHGSElaSHe/nvJIoxB/z5Ip4HzuhszG1ZhK9iwndaJRsySdPc3y/HRXMhTiwTyWHLR8cbGPnCMY3nYeqAMQph/NtJDb0KbRyZ5II2iyxJY+dvGjLRi3ScQDLLcBoWtdgXk7reXhmDGVvR7bB1x5n01DkwF7PXPRgqYS/a94qdhvANBw3N9oBUDBncLQPtsXVPtXLTpP+NYgPoF0fWIggOMOuJQ9FDwVbKjWkB6PywNI8JaD3Hjx70LsvlPjDuQFcprRj8M//O2E5Rd7VfWqJdsorE6VNhVDRwkb2iLDxXEq5CL7KtudcsyAr3fmgkJ/QiQDqqyimq3qnaU5H4MXWx74Goes9K4k8gaBmWup0INuBrCYHi5vmQgaRlC5HQ6M=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe8ade55-4713-431f-3c55-08d6d9d7888f
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 08:21:45.5751 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2239
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_012153_239270_99116451 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable driver support of NXP FlexCAN controller.

Signed-off-by: Pankaj Bansal <pankaj.bansal@nxp.com>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 2d9c39033c1a..8c176e65bef2 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -180,6 +180,8 @@ CONFIG_QRTR=m
 CONFIG_QRTR_SMD=m
 CONFIG_QRTR_TUN=m
 CONFIG_BPF_JIT=y
+CONFIG_CAN=y
+CONFIG_CAN_FLEXCAN=y
 CONFIG_BT=m
 CONFIG_BT_HIDP=m
 # CONFIG_BT_HS is not set
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
