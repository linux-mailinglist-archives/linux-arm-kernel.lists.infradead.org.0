Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B39E3163D89
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 08:34:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u4eaOobpBNQg8q1y2kkbxjEcKLUuLu5L4VAJnqMooIQ=; b=jchdPY/JyHDHU2
	WXHvTS7Amxjc95oyVgEk5EJ4CxkTghL5ybpoFyIWbYLS9jYQAqUWMzaoa0HuAUUAiAvnO3iss2l5q
	wOPX2PHfyA0oiRANYYidu/6c/XzYTdy3+MFW6+scviMYZLwnoHqAq/jRkr0EUB0NBgPOaAsRRCzQ1
	HTvOGXWxb2Edz3PYWe506p7DYF5cAMuAAa58br/UqTzYYitgvnYsdLj+/ferK9rpqJUwO4xR/wSg6
	2LQcr9Yn+EJ9Bzx+LIKlqn9t+stb6kxYnRAQFOEPqnRlg+0V7h0dMhGZFUpwTThsjfHNcLogavgqw
	uPw86ndwgrT/fCamBV1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Jrn-00078z-SY; Wed, 19 Feb 2020 07:33:55 +0000
Received: from mail-eopbgr60069.outbound.protection.outlook.com ([40.107.6.69]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Jrb-00078J-61
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 07:33:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fjje7bJTrHPZjpY4BVtHqAatJeEwHoAlVctMkA6Shk1PfYfGBH+hHGetfNR2QOBYGvaWQgOi0leRdY42PeuTNfveFWQ2pssUVFx0jJruJkedf9SjhnwH8iPvTZMMfEsbGK5LvYjlEW8wJSVGtdDEBYnsdYmHZ5LYGtsMs1I+BMI37wuNdXJ87kUdQ1ESofhAprHdRbVt+9uQcLt6QzbRcXF/Qmz0L6RiDie5Id/53FzxILUnTUJXki9WV1wxt80/8utbfAx0KVIlHT6vhHn+peaaMgYR6OxJuDCiGv+m7e3ZnAZ05rn1a/bTRYHNwaafQa8N+7pyrTegEbPT2/m9nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xoD5Jl6VWwfzmGzqcrWGE6KRJZueYr76YPSmvFnIB4k=;
 b=KxG02GqRdFOmt1XN/wyKK7uCqkOUtMXCoGNNJJE5C0eSJuCAUbh7LxF5rmW2enpFmSYQ7qeVJ6ft4wvSi1WhdxmG9WvdNlluMFbjBrYGmgkd0/Mg1OYE1Ot+CcwGdivGtrZSb1YaFe2MRkAM1oSDRJMWcr4jIbZibUFxOSolZ2uSlLXMerxXa5+Bnh9oVRM6ZWGdg+bLZxpusf7S3ACxdQ42IA5Iu0Y7jkwo24uU1NM2KIixDYvL7ANghb0AHMBCdrhbdRg6X6Tl+JZ9KU8M7zS9YIqdb7+2ZxHBQJUPGrY7tILILteTbfH/8uo8Vtpfnnh1tbIfuxvJgFoYfa0ABQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xoD5Jl6VWwfzmGzqcrWGE6KRJZueYr76YPSmvFnIB4k=;
 b=ZwCseZM4EbfAv9YTh18Gwq40DYlRysWBujp4Kq3n/VDNHDWWloHSGYgVGji+oyrT8o08n0I9QFgMUgXBsLW5XOHfH0IWUsrd3VYVJ1HJEXi2EkxOtJhdF0jl5YlKTnnGWrfaTwIateeITwUgKlz4MXlaHRDMc+lumYNy9U0CnAg=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB3969.eurprd04.prod.outlook.com (52.134.95.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Wed, 19 Feb 2020 07:33:38 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 07:33:38 +0000
From: peng.fan@nxp.com
To: ohad@wizery.com, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com
Subject: [PATCH 0/9] remoteproc: imx_rproc: support i.MX8/8M/7ULP
Date: Wed, 19 Feb 2020 15:27:36 +0800
Message-Id: <1582097265-20170-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: HK0PR03CA0115.apcprd03.prod.outlook.com
 (2603:1096:203:b0::31) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HK0PR03CA0115.apcprd03.prod.outlook.com (2603:1096:203:b0::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2729.23 via Frontend Transport; Wed, 19 Feb 2020 07:33:34 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 77aead43-183b-4b0f-774c-08d7b50e0903
X-MS-TrafficTypeDiagnostic: AM0PR04MB3969:|AM0PR04MB3969:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB3969E455359D0CFF76FDF57488100@AM0PR04MB3969.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-Forefront-PRVS: 0318501FAE
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(366004)(376002)(396003)(136003)(189003)(199004)(66556008)(66476007)(8676002)(478600001)(186003)(52116002)(956004)(81166006)(81156014)(7416002)(5660300002)(4326008)(2616005)(66946007)(8936002)(16526019)(316002)(966005)(69590400006)(9686003)(36756003)(2906002)(86362001)(6506007)(6512007)(26005)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB3969;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: T1KnZ4svoIdhdnsVL/8BAcGJETb4DupazM3KbAUTzqN/e3L1TGLKKKQFsge0m53wPm3EDuDsEI4eidv2CBpgq5z9vcK0yVk8Pawt1iqQiwFjwghI+xxkTNicJHKj62UHa7Rr5n9dsXkx7dVN0RszxeaXvGHhVuNaqJoxIu65GK6BKB0PQiOyAExOHaY7aMD9E29/TDbF3hN7/iUdeRSSRcZlePeHxhlBl1+s6Z3c3rrlkcqT7I49jwlO6oupjRefy3xWueT/C3Xox7H63ThDgbC3dsWaiQTIORSU5dZDZHC+GmGOGm3t78mp0NEkGyKK5sI0GkFaWVWq6m6iije5sdAue4dfHzlX4pq89ipwpwCSgE1SQxa1FGCW7el2ueOeIuPADQPSPb911lKfaa6zoZeAtp9XydIvTOtE7/w4jpnqPdqoZLVZvIewHYEkNWTr6/R4BedCllQAUWQZ++jcNIu5RO3oRULlj2/MiPzAWvB/yXySBmiBuc3xLqXcysbxiP9xjvyTkq4YWqmBuxPy4A2y5qRDektgGoDum//qHrX4W3RJqvRgSSFsZ7x33vI53u6SxmkXyHf8wyG9sQ9wIUcSCzx5/0kJBU/jgQb7nfNK4Y+WqOnDfViRmrc4lc4N
X-MS-Exchange-AntiSpam-MessageData: xxw5pecQue6Y3gc5JrEOLQix0xpsDkq/28jA3Rs1KzamXUhjUpygZkIJXSDs0dZkr7vbYKVF8bT9jj0hIa4fpBi/L4xry9Cz90FbJtDK4pA9vRLgIWM0GEhWKugHUyGH4XNzxC0SxrssZlkwIoQ3lg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77aead43-183b-4b0f-774c-08d7b50e0903
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 07:33:38.3115 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rcKDb9OK9EluHSgijsRJzyyydinTVtK5zB3iL48+LDY2XV5u+1Qe4r7Y+FT2XzVcHThFE7hZbXZwkqqu9LrPbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB3969
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_233343_229434_A87F1410 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.69 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

This patchset aim to replace NXP vendor imx_rpmsg.c driver.

This patchset is tested with Loic PALLARDY's patch
"remoteproc: add support for co-processor loaded and booted before kernel"
https://patchwork.kernel.org/patch/11265869/,
and inspried from st's remoteproc early boot support.
Since Loic's patch is still under review, just expect your comments :)

Patch [1,2]/9: dt-bindings convert to json and new SoC support
Patch 3/9: skip firmware load when recovery. To i.MX8, firmware is not
           handled by Linux.

Patch [4-9]/9: i.MX specific part to support rpmsg/virtio with mbox.
      because NXP release image not have resoure table, so add resource
      table in dts

My test dts diff for i.MX8QXP MEK, but I have tested this patchset
for i.MX8QXP MEK, i.MX8MM EVK, i.MX7ULP EVK:

+
+	imx8x-cm4 {
+		compatible = "fsl,imx8qxp-cm4";
+		rsrc-table = <
+			0x1 0x2 0x0 0x0 0x18 0x5c
+			3
+			/*fw_rsc_vdev*/
+			7 0 1 0 0 0x200
+			/*fw_rsc_vdev_vring*/
+			0x90000000 4096 256 1 0
+			0x90008000 4096 256 2 0
+			3
+			/*fw_rsc_vdev*/
+			7 1 1 0 0 0x200
+			/*fw_rsc_vdev_vring*/
+			0x90010000 4096 256 1 0
+			0x90018000 4096 256 2 0
+		>;
+		early-booted;
+		mbox-names = "tx", "rx", "rxdb";
+		mboxes = <&lsio_mu5 0 1
+			  &lsio_mu5 1 1
+			  &lsio_mu5 3 1>;
+		mub-partition = <3>;
+		memory-region = <&vdev0vring0>, <&vdev0vring1>, <&vdev0buffer>,
+				<&vdev1vring0>, <&vdev1vring1>, <&vdev0buffer>;
+	};
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		vdev0vring0: vdev0vring0@90000000 {
+                       compatible = "shared-dma-pool";
+			reg = <0 0x90000000 0 0x8000>;
+			no-map;
+		};
+
+		vdev0vring1: vdev0vring1@90008000 {
+                       compatible = "shared-dma-pool";
+			reg = <0 0x90008000 0 0x8000>;
+			no-map;
+		};
+
+		vdev1vring0: vdev1vring0@90010000 {
+                       compatible = "shared-dma-pool";
+			reg = <0 0x90010000 0 0x8000>;
+			no-map;
+		};
+
+		vdev1vring1: vdev1vring1@90018000 {
+                       compatible = "shared-dma-pool";
+			reg = <0 0x90018000 0 0x8000>;
+			no-map;
+		};
+
+		vdev0buffer: vdev0buffer {
+                       compatible = "shared-dma-pool";
+			reg = <0 0x90400000 0 0x100000>;
+			no-map;
+		};
+	};
+

Peng Fan (9):
  dt-bindings: remoteproc: Convert imx-rproc to json-schema
  dt-bindings: remoteproc: imx-rproc: support i.MX[8,8M,7ULP]
  remoteproc: add support to skip firmware load when recovery
  remoteproc: imx_rproc: surport early booted remote processor
  remoteproc: imx_rproc: parse early-booted property
  remoteproc: imx_proc: enable virtio/mailbox
  remoteproc: imx_rproc: add i.MX8QM/QXP
  remoteproc: imx_rproc: support i.MX7ULP
  remoteproc: imx_rproc: add i.MX8MM support

 .../devicetree/bindings/remoteproc/imx-rproc.txt   |  33 --
 .../devicetree/bindings/remoteproc/imx-rproc.yaml  |  95 +++++
 drivers/remoteproc/imx_rproc.c                     | 455 +++++++++++++++++++--
 drivers/remoteproc/remoteproc_core.c               |  19 +-
 include/linux/remoteproc.h                         |   1 +
 5 files changed, 531 insertions(+), 72 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/remoteproc/imx-rproc.txt
 create mode 100644 Documentation/devicetree/bindings/remoteproc/imx-rproc.yaml

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
