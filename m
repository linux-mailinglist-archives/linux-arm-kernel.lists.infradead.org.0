Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E557F16F874
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 08:19:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=o0hJUn9GMFhfhAQMQxu6cj9V90KodNXk+1410r+9++g=; b=prKWvjDPk9JVD/
	8eQdZ9y1NCvqGNgG7RFWawPCsfIOpQ2e0V++D7TRwLvHFF8otVtLMANCdGqidegNC336S7AlcSmj9
	Rz1k1Zm91+4/jSGXMWyeCzgKuZYohRivJK9RP7AiO3nO5qP4yU2F8dobrZogSPjjF1CVfe02oWQq/
	zHyv9JHxvYNHwvUhMtUIuG5C9SPjI+UvxiRo8MnWBdq67RuZJoxSUHPLSxoxiqnJTGEFFMnxDaGtq
	NzHBfdnVEVjSFT4U7pQFhKH190//2bpxt+LnLB4rGJsDLT977IpRHuZTM74qKHWx1vrjOl86I3+ER
	G1OmIF4lXs4hDP5IiCyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6qyS-0006Dh-PC; Wed, 26 Feb 2020 07:19:16 +0000
Received: from mail-db8eur05on2070.outbound.protection.outlook.com
 ([40.107.20.70] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6qy8-0006D3-Qb
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 07:18:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mLda447KvSPNgeWzGXFTMDVzHjv67J+ntjLCEHyZ/1lmv6ajWTvzS0jzXXAxiwBnKdKmsrkHm9Z3xYCrGnJd4alsfF+PWeS8mLTPBoo5jujnfxXoy4hpwVMXwErqMlha1ADSauHDwXOlSys6mR7oy/jyWGCFhxauLnZiKUixxoSWmS8/9x35cd20LjSkp+naenh0uhacCdt26VXz49YJSOnUVvWhaa96GP4d8xf/hpKfMwfl1otF8fAuHIhlin8p9nZvgKveza9IWTWcZqqfQ+/EL/yQfTCiimpfl81oVXU16YYNdr0igfph97p6IX9eoxKKLZ/CpDWnkvOkDhjgxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nk8GoFSDbRtszFiYYHcBQ6IlTKuNv5lqKoyhWO6HQGk=;
 b=hPnGmCDjeJQiBTz8CpM/7B3Kt6sIusuYUJ3VAnfErtJwKL7BoTRqtknTBZBPyKumJy3ZEvWLOpWisEdkqkSuA6w9GbIkvE21y/kFSv4MCwF/OgiAB4VJl0stmOerAX+wCe5nJeZDm1qJTvDZvYgVe7zEZAzm0jpK6+OA3UA0hmhr5Eioayp6wk/tdozWucm/vgfpvlWokZ933y32TXyvO8GPVoM7Tmt/V+KnLN29P0cfjJc3y08pSyu44RzcyiW8CnFmUOrfn84lqepZHBsZbYCYazjkKhCsGuYd5KV2ja2Y7ag05kAM5yQWyXtCPytRJ6xM9cndONPJ1hY2GqRilQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nk8GoFSDbRtszFiYYHcBQ6IlTKuNv5lqKoyhWO6HQGk=;
 b=K3snKtXa78m2PxQ0npp5k7UyZTQSaaIZ5utOglItV6zEc6hb31zbU3Y8zuAYBNC3oqsEEpvJmzHruaj+l5+kRO4whD8WPYmTKZVn+L8vGHyYzdy1PR0vgsCm+0mgp2AdcktYTTvwVhBVj5XWNU+PPMYcu+vU+Wl1CXu10CLqZ+Q=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6819.eurprd04.prod.outlook.com (52.132.212.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Wed, 26 Feb 2020 07:18:54 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2750.021; Wed, 26 Feb 2020
 07:18:54 +0000
From: peng.fan@nxp.com
To: sudeep.holla@arm.com, robh+dt@kernel.org, mark.rutland@arm.com,
 robh@kernel.org
Subject: [PATCH V3 0/2] firmware: arm_scmi: add smc/hvc transports support
Date: Wed, 26 Feb 2020 15:12:49 +0800
Message-Id: <1582701171-26842-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR01CA0131.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::35) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR01CA0131.apcprd01.prod.exchangelabs.com (2603:1096:4:40::35) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2750.18 via Frontend
 Transport; Wed, 26 Feb 2020 07:18:50 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: b15bc919-5b95-4401-9900-08d7ba8c22a0
X-MS-TrafficTypeDiagnostic: AM0PR04MB6819:|AM0PR04MB6819:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB681997D767C5D208FA6E3C2588EA0@AM0PR04MB6819.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 0325F6C77B
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(39860400002)(376002)(136003)(366004)(199004)(189003)(186003)(2906002)(6512007)(36756003)(966005)(52116002)(6486002)(69590400006)(5660300002)(478600001)(316002)(16526019)(4326008)(9686003)(86362001)(81156014)(81166006)(66556008)(7416002)(8936002)(26005)(956004)(2616005)(6506007)(66946007)(8676002)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6819;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2GFMILwS39nRDDurBqyxC1z5DAE6bTHZWG9gtBkGZwgtDG9MOHiGnmcYrDhpEHVBXysyGpoKx8z0RhzG/dC6bw/NoG+8hqAuMy4OzsRcfDy7mffqczWthfd70OTVczy/23GsJCCPvmLz9zpHd9I+HDGju69QG5fs8KEFbGuxrRh88EDHO2TyGnB/15WADQ4LV+X1AmbzuSt2ddY/ZKyF7F081zaQomsQqzFN10OKJQ58bKobbXAJM5utlkaN/wRnFHFi90O/dCVL/9DPdS0EzXZ6bPtDcJzbuBTauOtD3Nra/9EgjO2gR5OAP+tLOpEFZbCi71XYguENhHxBhG5xH6JnHm7uvEjlShYrFdsmj9Yqw6ZAsgp9/WPXT3Xl6iRH5Jo9SDp8TPSQ4cJPQEUbr6lO5Q+8HtuPjFMSx5s9uOP642qusmd0PT4FxgnY7MW/S5HaGyL9D+/fgxU5wwiW/4WHNt+nIAmUUfsWK5BP2gVsdfWp5IyegrJDOn2Zaxa5coiMeeBCpHcQFG4MinsCT4dJS4FN3qV8V8sDRdThyVtweqvUMJjATut7qa+/qASsdv4poIYwft8+dNu4MxbACLXrgiQ/g1geBD/mjE0SaofztuVn7tdJNHB8keojQcov
X-MS-Exchange-AntiSpam-MessageData: h2iyqcuYSyTSINsJCE5YWrbcPfexuSvWVR2uYbe3ycf2LjxfijWQ+9w+eLWTn1L3Z4yaWgv5vUV/9w00r4dWfalfH4DdvsDIzsoeuBf980WxJ8sVLxNORaTedhjnw/mg3bOP34uWb5jJHYIwk1aj9A==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b15bc919-5b95-4401-9900-08d7ba8c22a0
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2020 07:18:53.7701 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OPe6m7Nr/SJ6LQ1GVHJVNnABGEz6Svg/0ua14XZDtwfJ5FJHql25wpD8uNb4TPmrFGmEiUX/+qOJJA4xa6/1qg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6819
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_231856_968869_385D5694 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.70 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 f.fainelli@gmail.com, viresh.kumar@linaro.org, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, andre.przywara@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

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

All protocol share same smc/hvc id, the protocol id will be take as
2nd arg when issue smc/hvc.
Each protocol could use its own shmem or share the same shmem
Per smc/hvc, only Tx supported.

Peng Fan (2):
  dt-bindings: arm: arm,scmi: add smc/hvc transport
  firmware: arm_scmi: add smc/hvc transport

 Documentation/devicetree/bindings/arm/arm,scmi.txt |   3 +-
 drivers/firmware/arm_scmi/Makefile                 |   2 +-
 drivers/firmware/arm_scmi/common.h                 |   3 +
 drivers/firmware/arm_scmi/driver.c                 |   2 +
 drivers/firmware/arm_scmi/smc.c                    | 146 +++++++++++++++++++++
 5 files changed, 154 insertions(+), 2 deletions(-)
 create mode 100644 drivers/firmware/arm_scmi/smc.c

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
