Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CBD15447F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 14:05:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BfFF0ggcGyVCMNpp9p0Ex/LaRQzxcyDFHMhsJy3q9gs=; b=jjNyj7KzEF5ICI
	OwggqXsStbTFw928NAOnLpd7pfZMY0eC3xXZ7UwoVX2faV98LgagyG+t4GIoF6dvXyjTCvxoy4skW
	+RBCcrmTnZ3mweeQkj1w3eYdLZvZOSzLofD53cZ7fQYMUCaYHTqdBU0bFY78D3h9b31hKMPui6qR1
	2YL6pN0uiUu1YBhzihQuDA9hYL5peJxAaIN3KB30ghMZ2P8iikys4KYXdhF0d+lPA4iqyPmqGihv4
	QvtlektLHlqtOqv2yWXHgFLqp/SLNjejVebpwiSZM2ulSQvhEYDAtdxcruw5QpA6VGEIXuW5/TzYl
	HWZPS5lL4P+w1K8DK7Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izgq2-0001lG-A7; Thu, 06 Feb 2020 13:04:58 +0000
Received: from mail-db8eur05on2063.outbound.protection.outlook.com
 ([40.107.20.63] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izgpu-0001jo-Om
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 13:04:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V/ntwDpVNDuPONw0DvVAQj9wiMC6RRlOiLPWG+SMPBWMUZmszukkuQZj+v8SlKJoGRoeLx14DIvTzptjRKYQWINNt7RFjxoVFeRo9sxkII5utZ0MFuE/PVZsCX7MPF9VkEVJZYL5DBvMURbs2o8+CFilyZZDHpgRNUjmeJ5A6LCWALK0a2s3rdT5CfCDLsYiGw6UHV1PMHdhKB6tXZhyM6+/I7vuJINwB73yn56FrkRxtpbve2y2h1kdjUePIhiFvkSuFytQdO4udooyFdTlwhVhOXDH+8E3jGHFbANniGwEXoZ8H/t33TYOX75JZAeSPgHcO9DtEQk9BrLjWX+d9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mHfSijKilckf0Ocd/D/WiT7dQGm7dElsEx+7gO/odB0=;
 b=NIxsEWQIBDCbP7AT8Ro/x8nOBzZt5kYwSpGwzF68tt2jzwucQ7YtTjEfC1Qopp0WPc137ywE3GYZmiXU5bgxGdHQnsG0t3At86OwG5BxOpJVPPuezkyoYWwaDaaABnqVpVNQdc8CZp0F0R5qwxDsUMM1JIFhSKwSHOfH7PzWp/gYMT6kNg8OCTVUqi1rkBfPjAUPCXCjuT4naA1G3cy31N6jLUneK7SsX52Po5kGprfsrF9PJoAKouGHHPtOWGK95G5SuD9qTV2FGA1kG7RqFMl9Od2kSLcqWzVoPkHcJ+aAq5+EovNQDYSl0DIQq4qZFAAVfA0/hf7tExbMA2vfsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mHfSijKilckf0Ocd/D/WiT7dQGm7dElsEx+7gO/odB0=;
 b=ATqKup0LL3QbQlTQVQ6Bm+2A/Mnc4LBIsR+zldflHcNKYb5K6nOKrdhZNJlY27vFohNnWfEchkRj8FBMnrdwXya3kKXLsBNGKILkcZVKlBGPsJi4k7aVyn2AmC2mCPf1nWef1ps2D9/rKpG+BtHckCUkl8yxh1mayr43oz5dtlc=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4770.eurprd04.prod.outlook.com (20.177.41.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.32; Thu, 6 Feb 2020 13:04:43 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2707.020; Thu, 6 Feb 2020
 13:04:42 +0000
From: peng.fan@nxp.com
To: sudeep.holla@arm.com
Subject: [PATCH 1/2] firmware: arm_scmi: mailbox: share shmem for protocols
Date: Thu,  6 Feb 2020 20:59:25 +0800
Message-Id: <1580993966-17757-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: HK2PR04CA0086.apcprd04.prod.outlook.com
 (2603:1096:202:15::30) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR04CA0086.apcprd04.prod.outlook.com (2603:1096:202:15::30) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2707.21 via Frontend Transport; Thu, 6 Feb 2020 13:04:40 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: ba963931-86ce-46a6-45de-08d7ab0521b1
X-MS-TrafficTypeDiagnostic: AM0PR04MB4770:|AM0PR04MB4770:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB47702E6D4629E4A6CC555136881D0@AM0PR04MB4770.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1002;
X-Forefront-PRVS: 0305463112
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(346002)(396003)(136003)(376002)(189003)(199004)(86362001)(2616005)(956004)(36756003)(6486002)(6506007)(4326008)(6666004)(6512007)(9686003)(69590400006)(26005)(186003)(16526019)(2906002)(6916009)(4744005)(66946007)(5660300002)(66476007)(52116002)(15650500001)(81166006)(81156014)(8676002)(8936002)(478600001)(316002)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4770;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EgesQtD41UpgvUQnfAgoegTQwDgwAHdAiMbmMDphFrZHiBug2vfysRBIzmJTYQOOxx2WGe9UfMe3gI5DokPYbgSYPNOBcr57V7aMc/Ip85igWK4fHKx3PHUNrjw19tuilQZFL4CCg8eGFfX8Sx6moxld/CZyoPZlxSfvctmbRwv0wZXMD+H8no2Xr65D8yjrFkqhvZFVnDPARvrFt3g4jZDcYJOHcOzOP4GQHUljaUbdVwVN6vExfzJeRnR+PW/1HW8p1qwGZ9lG5OTVkA/nX8EpY9dvbK0Krq0iRNJ8e4Q1h3NmzLQJv0UA5sgede8CGJYqaeK5waP2upC4I6X7btW/qPPbpZcOrb+gS1EvjZmguU2hjNUknCX+AXHeNjvXzM2KuJZL5VbVCvSoBonvPxPKEMgdEd4ZpM3XWkANx9sId7ViWGocg3Q1QqvzztEFH9vRAQpPA7iyE6p17C+/Cb2jYxa7O8VSCiK+gdJIfxm1RynqZZIp+ggWTYc6+ruscMZMz8AQMmYWQgWAKUD0G2RUk3MWw5eSZ75esH/V1AA=
X-MS-Exchange-AntiSpam-MessageData: tiyv8m5VxH5wNrBsMknrCHUwPfCvjiJcbDTOkEZTEK9y3upAyZkEonLKLX0SfA+QlSfHvoUr6U4t6KG8Xnfrp4w9D1joCSjh8n5Ci3NRnbx8t/6jzn+dStlxpIyX6bh3l+44hYwmdD7likgx8mU15w==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba963931-86ce-46a6-45de-08d7ab0521b1
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2020 13:04:42.8694 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qGjOvss0po+fYeAxX92CVLEtg9s4tcQ8tsVxfdOwI1itR2eVNc3uuTxegiCg6elFxB4mci9RJpCkmD+YDDWs+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4770
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_050450_807092_6A6A4C26 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.63 listed in list.dnswl.org]
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
Cc: Peng Fan <peng.fan@nxp.com>, f.fainelli@gmail.com, viresh.kumar@linaro.org,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

When shmem property of protocol is not specificed, let it use
its parent's shmem property.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

Based on Viresh's V6 patchset.

 drivers/firmware/arm_scmi/mailbox.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/firmware/arm_scmi/mailbox.c b/drivers/firmware/arm_scmi/mailbox.c
index 73077bbc4ad9..68ed58e2a47a 100644
--- a/drivers/firmware/arm_scmi/mailbox.c
+++ b/drivers/firmware/arm_scmi/mailbox.c
@@ -69,6 +69,8 @@ static int mailbox_chan_setup(struct scmi_chan_info *cinfo, struct device *dev,
 		return -ENOMEM;
 
 	shmem = of_parse_phandle(cdev->of_node, "shmem", idx);
+	if (!shmem)
+		shmem = of_parse_phandle(dev->of_node, "shmem", idx);
 	ret = of_address_to_resource(shmem, 0, &res);
 	of_node_put(shmem);
 	if (ret) {
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
