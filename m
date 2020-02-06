Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A83154490
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 14:07:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RjtNDl1zuZhEK2FjWJR/6mqta11klk8oE5phRCCPD88=; b=TW4N8PVfBpve8J
	ttyguhZFZm4OMRVqCNsaZ+1a735TU9DlBwKgoZzjbk4k1ARZ3In/e+MTacTVNPNWhUcOx/7s62Xrx
	PiyLeYQjW4qCuFAh+7fx4ThOEQ8OivCszU8vJ5FfVyYQFthRBLHREZOJRENZKUUyiEfFZjEYr57cl
	wMemjZbtnhDaNb1H8sULED8gUrUZXp56PwFS60YNzn8oUIo4Oxn93FNy00sFA+g6zxW3g2zIJy7o4
	GM0ozOXA/M39x/y1ujffjcVCZ3HH3j6DVNR+EQssNNxdXXtI2bmry2uNzHt6KQYYma5nQLIA9sHq7
	rahoYn6tGr4Xsm2hGEpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izgs0-0003qT-S3; Thu, 06 Feb 2020 13:07:00 +0000
Received: from mail-db8eur05on2079.outbound.protection.outlook.com
 ([40.107.20.79] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izgrt-0003om-5M
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 13:06:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c0BOZ26fYYJVZ7YA8J52saTPAZp33tE9o03T31AQ0/RVzCdgEnBk+L4wcZR/X3NhQwtAP/LtDZIWzGoSlo6e74h93jOpHGWljnsaWzHMx467afFKuUPsNnXBW9OZfeAIteZ/5RUKEw8ZZGLmCSG+YwEc+7OI2bf8hFngZgKb0up2LcLQEc4NdcMbxLEPo4ExIDQmmU+/Iv6XEvRrh0pkXUTfh7+jgKK0pn3z8auc1ZUoqv7+X8aHqlmiQiZt8CtnMT8b+/toSFwt2w0jWTBKK9NhM4kCAxkpn0rf1qsq9e0k1s0QWKM1+yB6/XD87PW1Lmg8Gg+aAB28oEi0L7uLTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CkvH+Q9AOBv6o4IB9gqkOV3V3maW0RSzeNKUxe4Nkwg=;
 b=TkzQ5uShZspPDzWzuVkcetrknG2up3p1yDo45vjBFWcg1CwO4MtR3XrQI+CCS09qpnLFCwlP8E1qhvTAsbOHzVaAv47G7YKqOE7CxJbGyq4lybSSmo/v09MrFzG8JWcZaCYWZUE6rf4UN77vDmlazU0fQhJU7RkpFnKiU0tTPtGfeSMc5fS+iwcEwbHHdxj7PU2Swqtx1IvpfHqcnnw2ATg8dl7BEktbQCYtuo2+aj20Bsw/UmFEAwGkg3EengZOBX/pIPVHUe6bYIrI2zeA/MaueU+0Bp4Du/j4E1j7tqlKQVSLFjuaMG7yBVDKhn7FvrAKlL+7iorDrMdOdHWtyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CkvH+Q9AOBv6o4IB9gqkOV3V3maW0RSzeNKUxe4Nkwg=;
 b=s8WuItH6uHm9rbNa2IRHdU/rAN3MGyVW8gG6VOAYXR14imtGpzxYSuhPDJm5Y5dlkk9vjCfYqiky1FHBt/HNlf4o7eIqMQWben2L+hGR7XoAafFBW+g9hT1yZuRknFr5OK5zcEN0kk6NxS68owAubN/ZonSceIWuIbDKy8hhZyQ=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4770.eurprd04.prod.outlook.com (20.177.41.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.32; Thu, 6 Feb 2020 13:06:46 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2707.020; Thu, 6 Feb 2020
 13:06:46 +0000
From: peng.fan@nxp.com
To: sudeep.holla@arm.com,
	robh+dt@kernel.org,
	mark.rutland@arm.com
Subject: [PATCH 0/2] firmware: arm_scmi: add smc/hvc transports support
Date: Thu,  6 Feb 2020 21:01:24 +0800
Message-Id: <1580994086-17850-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: HK2PR02CA0136.apcprd02.prod.outlook.com
 (2603:1096:202:16::20) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR02CA0136.apcprd02.prod.outlook.com (2603:1096:202:16::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2707.21 via Frontend Transport; Thu, 6 Feb 2020 13:06:43 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: fe40001c-2dfd-494c-2238-08d7ab056b80
X-MS-TrafficTypeDiagnostic: AM0PR04MB4770:|AM0PR04MB4770:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB4770D49E8D440FC66D0421F6881D0@AM0PR04MB4770.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 0305463112
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(189003)(199004)(86362001)(2616005)(956004)(36756003)(6486002)(6506007)(4326008)(6666004)(6512007)(9686003)(69590400006)(498600001)(26005)(186003)(16526019)(2906002)(66946007)(5660300002)(66476007)(52116002)(81166006)(81156014)(8676002)(8936002)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4770;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vIJ1GosEGIVaL7dWcoQMbLgyE6Qg0UTD+9Ym2fdA97lxdTNX59X5NvRqn4w0Pd7YErLl///+brJXV1Fq1WN89FkuT/vRoo2CtreWw8UI39FJ9COJWZYlS7igWAfxMP8ybGzFFLTWNggNWX3GR1HnUIhHjH1fdYsFzRN6bZe5/HVYio1yqpgNvttllYuxEnD5mxXbWCqm7jYLpbnoGOBDe+2lAWwH2xnc8lM/XnPcd7R0hxk3j9HC/eVhpyBW4bnseEtmFMnTxEnUqUCk840JVr5V6jCmaPdhLzJVIIfvXBpIwpOmk9yWlf+WeJ5/4lbpasyJxUEkVWfImMdpp8764hLA++8oWs06EzBwzy1X2USwNk2IGXqZrKUYFR9QbKetKFVFXtSXPjr00jKWboP792NBtOIFEZgEFmVBXQpofYwMpxuvl6HlC2MwBzRw8SfMujewAxx5aq9MFgwQ9IaAvbPy72pxs2JOKUHi22qOdI3AMAMYyL5oaMj7vPDzyvH3rc4AKVb25BfP1vLwyG+DGtUHXWcbiQ9Kg3ubD0pSj50=
X-MS-Exchange-AntiSpam-MessageData: jstqu2wCaeshREdD1+Y/qpDe0Do9WEw032AL4ABWpbbTbUIgx/wvRcW9KTbMN9ct7fqPCg7+dJqeXQlg//qLxQxtlfC7BOm8HuSp/E1iVspHrc9PHm9U5w1P4NF7NBlA6CrBcBWzXwRwUsi5vYbLYg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe40001c-2dfd-494c-2238-08d7ab056b80
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2020 13:06:46.6897 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bKiHks4zi5/JoD5rKu+6BW/AibAOuNmbm5vt9ny4wy8BMkXT170xfSgIKARjSxu04uc7NcVtjTbn89C9krc2Vw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4770
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_050653_202690_4EB01B42 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 f.fainelli@gmail.com, viresh.kumar@linaro.org, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, andre.przywara@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

This is to add smc/hvc transports support, based on Viresh's v6.
SCMI firmware could be implemented in EL3, S-EL1, NS-EL2 or other
A core exception level. Then smc/hvc could be used. And for vendor
specific firmware, a wrapper layer could added in EL3, S-EL1,
NS-EL2 and etc to translate SCMI calls to vendor specific firmware calls.

A new compatible string arm,scmi-smc is added. arm,scmi is still for
mailbox transports.

Each protocol could use its own smc/hvc id or share the same smc/hvc id
Each protocol could use its own shmem or share the same shmem
Per smc/hvc, only Tx supported.

Peng Fan (2):
  dt-bindings: arm: arm,scmi: add smc/hvc transports
  firmware: arm_scmi: add smc/hvc transports

 Documentation/devicetree/bindings/arm/arm,scmi.txt |   4 +-
 drivers/firmware/arm_scmi/Makefile                 |   2 +-
 drivers/firmware/arm_scmi/common.h                 |   1 +
 drivers/firmware/arm_scmi/driver.c                 |   1 +
 drivers/firmware/arm_scmi/smc.c                    | 177 +++++++++++++++++++++
 5 files changed, 183 insertions(+), 2 deletions(-)
 create mode 100644 drivers/firmware/arm_scmi/smc.c

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
