Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB0729309
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 10:25:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vpBp3LmsNMvnU/V4ddusoqmyKcmwNTRF3ItIrbokr2o=; b=aHPzBXmS3b0Ug5
	B0AuxDYaTiwD+LXK9o0bgYmkg55/IgWnt0Zh4ZSPYziAAN5jV5uZYWMAZ1DjhpX4YW9TepFHYec0a
	hV80IO+jsys0dpmK1+pYLnWnwzxo1R9bqV+RLW7cumEpWXCG+DQtHCs8EjLht6TSzOZ+hBrloyvsT
	N/J1+baoH7ueLhtfv4wg4HEKYe/QMxyAszDecSas1KapHT/KuNcBXVKR5xAvXJVfZT2D1aMbS2OBu
	jcmhwEpr9bdNYXk/UTkbMvpigVgwN3R1jDhLFPp3guv3d6SXhvidZdbL8Im9TYjVBN19f7LCQgWgv
	tJOx/NandzPe5L5iZMng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU5WH-0008At-6h; Fri, 24 May 2019 08:25:41 +0000
Received: from mail-eopbgr20064.outbound.protection.outlook.com ([40.107.2.64]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU5W8-0008AU-SM
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 08:25:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qO04GVUiYW8ZRvxE4PN6PeP3iZM71PYkLJ6x72Ypsx4=;
 b=AEMZwWDbTK0Ag7by++zMUYTCf/OgMJ9v5Uz3x0sIdZlR51fT6CS0RN0ou0JvvzmJhAA5C+/PwnO7yXmSB2s6DkAABXLC/ABOdDHgPDbgusmqjRZx9UNyPxbsWio02C6Cm+C56o28aM5GLfK+24/+onMQS/3Vm7DvsC6BZZtagfM=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB4516.eurprd04.prod.outlook.com (52.135.147.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Fri, 24 May 2019 08:25:25 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1922.016; Fri, 24 May 2019
 08:25:25 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH] clk: Add clk_parent entry in debugfs
Thread-Topic: [PATCH] clk: Add clk_parent entry in debugfs
Thread-Index: AQHVEgo8VzXmpj/WDkGGgiXI1N3a1Q==
Date: Fri, 24 May 2019 08:25:25 +0000
Message-ID: <057720844e78e615e46de34a73b16ffaf7dbfc10.1558686047.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.17.1
x-clientproxiedby: LO2P265CA0185.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a::29) To AM0PR04MB6434.eurprd04.prod.outlook.com
 (2603:10a6:208:16c::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fb47d393-aa12-4f5d-302b-08d6e0215f3e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4516; 
x-ms-traffictypediagnostic: AM0PR04MB4516:
x-microsoft-antispam-prvs: <AM0PR04MB45167920C851BCACD4E67AE0EE020@AM0PR04MB4516.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:525;
x-forefront-prvs: 0047BC5ADE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(396003)(376002)(366004)(39860400002)(346002)(189003)(199004)(2906002)(316002)(305945005)(6116002)(3846002)(7736002)(53936002)(50226002)(478600001)(66946007)(64756008)(8936002)(5660300002)(66446008)(66556008)(14454004)(6916009)(66476007)(73956011)(36756003)(8676002)(81166006)(118296001)(25786009)(81156014)(4326008)(68736007)(99286004)(86362001)(6506007)(386003)(6512007)(52116002)(44832011)(66066001)(186003)(54906003)(6436002)(256004)(6486002)(71190400001)(71200400001)(102836004)(476003)(2616005)(26005)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4516;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ZGAI3oO0gTsUsSmogd5K2jAxAt/bg2rwLTLeoOizhIpaB9iU4xcuh9+opXJqzdWVnsv1v6WMGqvFpqYyumkmwPZmXvncjOISvdLFD3WJpemn5qSH/WqIGXep1g+l4hRvRuHduH2pjgl28SwTs14tKHj/JaNgkBF9rpS4eD3TzF91wY0JOFkPMCHlh3kbXzi9HRGtExgjdUSjYfV10SBt62GcNuifn0sM04Rx4viRuQ5PUTBmu+BdMbh2HW1VOZjj7srETP7cWuDVdX1vkUDYafnORKxJ4Bc3Jk4+E0YCJ4IVDEdxdJY4WKGo9cG2NKMsVtf2AgEYxYz9W3zF2aqZUSGddg/VgS3flxaBZ/0KT2NGrLC1QvKaEJgLAdWhSmku237bIduvGi+02hs/huvfTkkr4tsdzQ0BEL+ILGcn4hA=
Content-ID: <D3AFC28DAB4ECC4E90C4BAA7DED00158@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb47d393-aa12-4f5d-302b-08d6e0215f3e
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2019 08:25:25.8456 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4516
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_012533_788405_EDC11A2E 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Peter De Schrijver <pdeschrijver@nvidia.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This allows to easily determine the parent in shell scripts without
parsing more complex files.

Add the clk_parent file unconditionally because this information is
useful for more than just muxes.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/clk/clk.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index aa51756fd4d6..94a93b07dd37 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -3009,10 +3009,21 @@ static int possible_parents_show(struct seq_file *s, void *data)
 
 	return 0;
 }
 DEFINE_SHOW_ATTRIBUTE(possible_parents);
 
+static int current_parent_show(struct seq_file *s, void *data)
+{
+	struct clk_core *core = s->private;
+
+	if (core->parent)
+		seq_printf(s, "%s\n", core->parent->name);
+
+	return 0;
+}
+DEFINE_SHOW_ATTRIBUTE(current_parent);
+
 static int clk_duty_cycle_show(struct seq_file *s, void *data)
 {
 	struct clk_core *core = s->private;
 	struct clk_duty *duty = &core->duty;
 
@@ -3040,10 +3051,11 @@ static void clk_debug_create_one(struct clk_core *core, struct dentry *pdentry)
 	debugfs_create_u32("clk_enable_count", 0444, root, &core->enable_count);
 	debugfs_create_u32("clk_protect_count", 0444, root, &core->protect_count);
 	debugfs_create_u32("clk_notifier_count", 0444, root, &core->notifier_count);
 	debugfs_create_file("clk_duty_cycle", 0444, root, core,
 			    &clk_duty_cycle_fops);
+	debugfs_create_file("clk_parent", 0444, root, core, &current_parent_fops);
 
 	if (core->num_parents > 1)
 		debugfs_create_file("clk_possible_parents", 0444, root, core,
 				    &possible_parents_fops);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
