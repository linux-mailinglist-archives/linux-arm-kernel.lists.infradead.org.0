Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B172C17D3E3
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 14:31:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ctqGi7MoV9oqb6V2lfAB5RehfrTKIxvr0cqHZ6Rbaoo=; b=hu3d380YobWz1t
	Zk3h1b7aab07nFj2dPis8B3wkErCfHgzBi2DDUSTP+qNo9CD9cZlJgNscr0srzx0Ou+uTzTOA88cY
	0WSSD+1O5bjOnsbEUaa2JtPre8GP7ya7jTl5RwSJUjnLXvreBlRXAgfMO2Xv/HdHNtEGirUVBPRF5
	cU9WR8k+HzzPw5ZmUCXvmlD6Vqr0B5XPzH6ohRwJ8K1giP/TL4afNtKLJ90v9GhiVQMDv9RYSNXrk
	1v2sQ2beINOTQC9BAEOuwqlFwU1NLpSPkAvkLcvG+kJb3vcAgijYh+fPd8MCriyf92xLc4pKr5hrp
	tAcPPDfjO5wh6JB74XNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAw1X-00012i-GA; Sun, 08 Mar 2020 13:31:19 +0000
Received: from mail-eopbgr10070.outbound.protection.outlook.com ([40.107.1.70]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAw1N-00011a-02
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 13:31:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aOWzq0YnFFCjSqkrf+Pxurf1eNdMMfiDnYfxAOH/li2vAQpyLNY7ifYt/DX5GKj3KNjTBJbJ5D9cD7V3FrxGLK9H5PbxyXNZYA3BxEEZfQ98fxQEJM4DtNUUVdGm1S9yYDdvRRGjf5w1gOpXyGD8HudGs/Xp7ZWlMdNJrwCXkNv1/R+0DXaazcFb9WfEayVaIcMxfZnt+7kxrj79F+TgI56EHZFkMq9WF9RU6+9BKVDuQHkHQ/a9mbLHTKHFsVa0Ocyb5MeWo/UrEXlcnnttqYyycgpml9tveR34fwgNrf4gC52uwPxrvIphvgCxFproxJa5kRqi8NWrMg+caHc6xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KPvGEoa3xXvTsw2glntuKyytxDx+FWSDma8CeW3Y3Lg=;
 b=QsIwbdmOSruEfHZUOmHCWg+F31aQu7TWXhscSngzfzPWldNYkGrEjjlmF9Q3f9fEorvn94WnthVEf/KxtTT14o+LsNro3Dl6JccX2yZRFYDnoW37gubcdLojPf7wAKpHxeuUbA7vYbJV5HBRtOt+sVqWyMumSu/rXF5j5P8a6Te1oM1eEFiuVkQi3k7VimAhZu+2AbkqPsET2ANLIqCR9JTdAiioOgBUw0z35tguFIWIKSOabHY/E0WVCDIcPBm4yCn03lpzigW4oZkFaN4WhXYS9zQsCb5iPBENYjLEhbkcNkk6Zxho5LRQcCtMNmSd0LqbVKqfFmiHGckjy+lIcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KPvGEoa3xXvTsw2glntuKyytxDx+FWSDma8CeW3Y3Lg=;
 b=Vc/4k9oNAXXCQ0FIdpxudsj5Qj88SPPfanra6eOlmfiyu9abmc2LOV1nGXaf6iJbznRylF7Uyxyqf4FBfcoH84UAHrtpUtMLdwPz1XYoswmlvxjnEDEoJohKONMuF8ETDH5CPzBgBXKkCXLpVQs6hwl7xjNMtT0SWi4OH4btwB0=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6275.eurprd04.prod.outlook.com (20.179.36.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.15; Sun, 8 Mar 2020 13:31:03 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.013; Sun, 8 Mar 2020
 13:31:03 +0000
From: peng.fan@nxp.com
To: sudeep.holla@arm.com,
	robh+dt@kernel.org
Subject: [PATCH V5 0/2] firmware: arm_scmi: add smc/hvc transports support
Date: Sun,  8 Mar 2020 21:24:37 +0800
Message-Id: <1583673879-20714-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR01CA0116.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::20) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR01CA0116.apcprd01.prod.exchangelabs.com (2603:1096:4:40::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2793.14 via Frontend
 Transport; Sun, 8 Mar 2020 13:31:00 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: c40ecc2d-67bb-46d5-14bd-08d7c364f286
X-MS-TrafficTypeDiagnostic: AM0PR04MB6275:|AM0PR04MB6275:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB62759973706A8568B31416B188E10@AM0PR04MB6275.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-Forefront-PRVS: 03361FCC43
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(39850400004)(396003)(366004)(346002)(376002)(136003)(199004)(189003)(5660300002)(16526019)(186003)(2616005)(956004)(2906002)(4326008)(6506007)(6512007)(6666004)(9686003)(52116002)(66556008)(966005)(6486002)(81156014)(81166006)(86362001)(478600001)(8676002)(316002)(66946007)(66476007)(26005)(36756003)(69590400007)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6275;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pjyNX7P1BekYFjENP723m1xtSKhfFwcZFajoNuUeBZIqDvgGOTV4SirkSA5bvrwue2cs3wcDL+9C3YrUcRh41lRB0z/n95INEDpjP3/fYMwkb7WkWD8t/2oXB0GpZi/BNx8jJPi7aVF0M6y9728XX7GICU0+VfKGd2+1y9oIQDA35znr9/yXAmv2BGeRZy/OY+PXhN3bcPhM2KvO1jfhxfUQ8ya/tVtBN4iI/QU4ZGhAgei7u9z3D6L048AQxkTePRmt426HSsrtOg2vG+w2+qizC/jKrRlUpFRRvIxUzHBk6EVmN+4awuuwkhA2O9XFFvTc0AWteTYYIwwMQWOqkVz0zgD2+6hVfwvgWe3NJHHoVInppJXvbghcaCz+fOkRe54s9mWJJSTG0rIYtzypVUod4GO9KM6nVnwnu/3EAHGExyMpSQiQK9e0/z2Fa5U6pvt1M9Rcu1fWPL5Ax4LNnYm+EKtfCiGhCC3/YxO61l92R4arj193KtAPewkTSbQMsPBkT8XbnReGtr8DjxotGSXRqyxYbPzjSg6COyN21uJoRTKC5pjoM6XsVDYIhmFy9kvrJfMe83gfKT1L3mF0lQ==
X-MS-Exchange-AntiSpam-MessageData: IFqQYgmjgJu/k7E2chCjj57YIMCZ4xJEba16pid4JCONmirIX9uFD+CP05YzVcRaBEBaF7DVBw8Kj7NeZW+2RswQ3Xg7rHRa+ykHeVPgX804dS/9q5/vwI9IJc0XaZxzOQ4g9+xpgpbvcuWohYepCQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c40ecc2d-67bb-46d5-14bd-08d7c364f286
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2020 13:31:03.3771 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IWixPaeQeBstrkZwSIBl1GD8nSG0SAEVgfCQqh13PWXmU/EWqsFeX28wbmhrTzG3Kaj4Vmq9GeukqX46jZdmDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6275
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_063109_041316_CE7E9F98 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.70 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
 linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

V5:
 Add Rob's R-b tag for patch 1
 Add mutex for patch 2

V4:
 Drop prot_id in scmi_chan_info, since not used for now.

V3:
 Add back arm,scmi-smc compatible string
 Change smc-id to arm,smc-id
 Directly use arm_smccc_1_1_invoke
 Add prot_id in scmi_chan_info for per protocol shmem usage.

V2:
 patch 1/2: only add smc-id property
 patch 2/2: Parse smc/hvc from psci node
	    Use prot_id as 2nd arg when issue smc/hvc
	    Differentiate tranports using mboxes or smc-id property
https://lore.kernel.org/patchwork/cover/1193435/

This is to add smc/hvc transports support, based on Viresh's v6.
SCMI firmware could be implemented in EL3, S-EL1, NS-EL2 or other
A core exception level. Then smc/hvc could be used. And for vendor
specific firmware, a wrapper layer could added in EL3, S-EL1,
NS-EL2 and etc to translate SCMI calls to vendor specific firmware calls.

A new compatible string arm,scmi-smc is added. arm,scmi is still for
mailbox transports.

Per smc/hvc, only Tx supported.

Peng Fan (2):
  dt-bindings: arm: arm,scmi: add smc/hvc transport
  firmware: arm_scmi: add smc/hvc transport

 Documentation/devicetree/bindings/arm/arm,scmi.txt |   3 +-
 drivers/firmware/arm_scmi/Makefile                 |   2 +-
 drivers/firmware/arm_scmi/common.h                 |   1 +
 drivers/firmware/arm_scmi/driver.c                 |   1 +
 drivers/firmware/arm_scmi/smc.c                    | 152 +++++++++++++++++++++
 5 files changed, 157 insertions(+), 2 deletions(-)
 create mode 100644 drivers/firmware/arm_scmi/smc.c

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
