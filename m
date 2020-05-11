Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFE61CD53A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 11:35:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kWLnlktroJbMKTL48JI4/YflRHnLmixkuHN6XIZjVwk=; b=cZPbiGJoRLw/U3
	TgYVC6qs6iGM2CgYWibKfNqEQHuXIzYXwXDS+9cG3d0pSVUSQfKPvLto5xNBOw9h6E0kv0A8Cy4nz
	B93LIrzjXdsxsVhY8of4x8/2JUpaNY2bG6jjDAOOtFpCDYCTolc5lWJZdqXf1Ry5WruvqotJX8FXS
	4CgppkwcR/2evOaKOv6VZsWYdD3FbF0SQc2WnRyeTnEEUEw8utU9ovcw77fYgOGxkDsjqcrNTh4sd
	yeSvOUK17q5Ez6bruOLqQ0rZu4Hcw9nDimUXAjax7QnzZjOl98FdK+hiHyLaIiPfBMdQ6byFAepQI
	BGu/Svdnlhuizn+FEEzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY4qN-0004r1-An; Mon, 11 May 2020 09:35:27 +0000
Received: from mail-eopbgr00054.outbound.protection.outlook.com ([40.107.0.54]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY4oA-00034E-Ur
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 09:33:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nUe4h8jb4mlTBoBWfvkHIVG6uukxOlbGgg5pziXUOy/e9giTFumemSIM/bNhhtTzyx52mDjoc79OJI3diliRFIJLASYonhS8h0BT2zOgSM5O1S5C16qNs4H5tzOFaIYjiZlESehE/Qbboz2elVYsX0wcUXkOhngKEbGWk99oNVF7+AFCyfmPenbVN7o4sYThrHUjqD//Hq8N+hcJhydpaEUWRFk89grQ51w79bztGOYBYxcYPIcs0GxW23qhiuqwDkBjh2kGLRFC+Eb5utG3ng5MiFYEyDe9QU9nLD9BDOkcI4KjJIp9++bSgXZomVxOcXI+w+TI/JquFVJlLsnejg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5jxJdGqHBF995O2koMhPVubVtg1S3gV8z8tbdE75gTs=;
 b=Dr6Ei1i3YJW53NQK/Zxc9pbm2UKMAyoPxP8UIWmFUkMEMibrO/uzK4hrAZjHYOedPfJcpMF+YVJmEYYEcferum+lf9nXm34cIvlbrRmf+5cescjPSUnexlN3fc/gAFc/euayzFiJzVD8UjPY2wadS22Xrm3wSMDzMflaX7Hm4MJpMdH8lx1wIs8QyQjzPVyHRnGTda6BZhV9143wMeKKsYlz9hp1iFoLvHIQrOSJLomY8rmlzeqduE4cAbFP70QhhWCZCqgZyfdAbzsQlWPBoZ3da4WjOZKZ3zernQaEw6wPRhG2JC4QqKOdy9fYWg/kpvhx/XnG304DjRrOHuw6ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5jxJdGqHBF995O2koMhPVubVtg1S3gV8z8tbdE75gTs=;
 b=DdwExHroUUn4/ECM9AGoyvnyfQsr2/X89oS0JSai9kTV1A9jHK2fagmKCU1b92muul9WdT8OG41HifvH9JOaYEvtBjW4IW7Bhd4pHZAWC1fTZNybl7011Z65vRwdWVuDs4uqKgDUyRQByTOd+g6nSsNnQwL81/apHot2uS+SqCE=
Authentication-Results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6637.eurprd04.prod.outlook.com (2603:10a6:803:126::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.33; Mon, 11 May
 2020 09:33:08 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa%4]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 09:33:08 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: s.hauer@pengutronix.de, vkoul@kernel.org, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de, robh+dt@kernel.org, festevam@gmail.com,
 dan.j.williams@intel.com, mark.rutland@arm.com, catalin.marinas@arm.com
Subject: [PATCH v7 RESEND 09/13] spi: imx: add new i.mx6ul compatible name in
 binding doc
Date: Tue, 12 May 2020 01:32:32 +0800
Message-Id: <1589218356-17475-10-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589218356-17475-1-git-send-email-yibin.gong@nxp.com>
References: <1589218356-17475-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR06CA0141.apcprd06.prod.outlook.com
 (2603:1096:1:1f::19) To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR06CA0141.apcprd06.prod.outlook.com (2603:1096:1:1f::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2979.27 via Frontend Transport; Mon, 11 May 2020 09:33:02 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 8dfb31ab-c213-4c48-138c-08d7f58e5046
X-MS-TrafficTypeDiagnostic: VE1PR04MB6637:|VE1PR04MB6637:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB66373E2F5D22CEE902A9DF0089A10@VE1PR04MB6637.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3276;
X-Forefront-PRVS: 04004D94E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: A1hlF/VuvGy7erhmQ2HiDqqqE+1VOUGVqhfxrrP5FWYjOzEKAb+kwmKhB1hbakAoiO7z5e44AE38YLHsZwIV2Q5YKEe5IA7sFqdR/qzTmr0oWPNozFBL4PaekuDOlQOCcNMF8r9quEHZR245LF8WZk4MfiwQmcfpo7J8K5HofFQ0tflj46Ckr1MsWMD3I6VgDUQ5+sRwbO4HXf3+QxQ3Y+CRHxURkClUQ9D69f+mAUHblzrHfC61++kZB64w6k8+c9WTdc97GkDDiQOPpmpWn3gUpgxdcmnKzKY5mSS0OPSZfCNBMfpRyjky3Xhy8+FS44imzL0VRkfyl7tGc+m4n1ttjkqWxfsrh1ZS0BwU8qD5L8uL7ZCN1ZMVXAFroSqyXg8kQfgabFtd1a+2dJtdOhMVupugTg4DvFv6tuAx3ggUrl9xxsqfotY5roVesKcv0xvcDk7Wpg8JTRcN5371Qm9Y4ZBtw6cEANvtoWCTI6QF7oW1lRU73x1uY9lL8fKCDEE0R3IFPAzA9LUZyh6mIw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(136003)(376002)(346002)(396003)(366004)(33430700001)(8936002)(26005)(52116002)(6506007)(16526019)(2616005)(186003)(956004)(6666004)(6512007)(7416002)(5660300002)(2906002)(4326008)(6486002)(33440700001)(66476007)(8676002)(66946007)(66556008)(478600001)(86362001)(316002)(36756003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: t4Aje8EXEeUbFm7IukMZVnqPGhal59RwhDd3whRFEwCkC3Kpb4K//pnvsXM52qxyf2fvIBkvPZHGr1My3LxaKiLhvxcNEmRYcwWq8QsC7ycv1Z3MOcdExtx/OBv7nXHc05hberLxTjtZAhlkKC0Mld82rPVRCAPBtCxPbtmR9cTE6QBwzUq8x9E5cOXg5ZtNUEMK855ScwMrOUACZpcvo/TbkpiO4SSXe2fkLNcyWiVqUMDUIWmpnTBB3t4aOhrJzrULQZ6tOXlS8kYmnU0h/RcxfMpOnvCfO/Wie/lFHS+BpzVQxNPUhQjTo4/Ol7No4eyx18OEE45pUWdAQqsi+rezHOb66VSKkx03YWweHWSx8PYYA0ayf99sEheP/8SYE2JeWaxh0Y6Xj8LXx78LaVQf6TqXYhDE5AZkuWN8Ka/DwTnHc0OmKt0mL6rXqIMRKWxax1lOybZt9aN6xyLHZefhlqNGJkqG7EHawKKoKOY=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8dfb31ab-c213-4c48-138c-08d7f58e5046
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2020 09:33:08.1383 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F++7PwSzV+tFowILnxoF6iagp12PdNHLbeSzDHnfSRnNQRvP78lKrbR10im7zSvYS23indmeb11W6ClpQse5Hw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6637
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_023311_008041_0CDC1916 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.0.54 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.0.54 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, martin.fuzzey@flowbird.group,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ERR009165 fixed from i.mx6ul, add its compatible name in binding doc.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
Acked-by: Mark Brown <broonie@kernel.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt b/Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt
index 33bc58f..0a529ba 100644
--- a/Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt
+++ b/Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt
@@ -10,6 +10,7 @@ Required properties:
   - "fsl,imx35-cspi" for SPI compatible with the one integrated on i.MX35
   - "fsl,imx51-ecspi" for SPI compatible with the one integrated on i.MX51
   - "fsl,imx53-ecspi" for SPI compatible with the one integrated on i.MX53 and later Soc
+  - "fsl,imx6ul-ecspi" for SPI compatible with the one integrated on i.MX6UL and later Soc
   - "fsl,imx8mq-ecspi" for SPI compatible with the one integrated on i.MX8MQ
   - "fsl,imx8mm-ecspi" for SPI compatible with the one integrated on i.MX8MM
   - "fsl,imx8mn-ecspi" for SPI compatible with the one integrated on i.MX8MN
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
