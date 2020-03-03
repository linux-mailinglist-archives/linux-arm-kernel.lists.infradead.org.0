Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B86176A7E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 03:13:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9Hf+Q74M1CtE2XlNPqy5eaE8ygtjseiXy6Wmk/zjjn0=; b=MIAVW3qfF1F8Bo
	FVejOADLNwHXzj3IQ6PE9Vg97MZOnTIm0Xa4Xu+4vurZaPgFZMxC4Z1g1iwT6Orp5UxP6ddkq61J4
	M3/zLXhK0BWbnQdrCz3haqjhmks5bKYgG2TyjE1q7EvbbafAgjWmj4mSCupd0GqN3wjoPICSeJ/O7
	w8zNDCbFL4iuTIAX/Z3N/wCI8HwIBQMozkpl0e87yBvmVdhD2N2XfyzY1c1y+nZ3z/becElevsbY3
	5GDHSGFlBCfPNSWLfrXfss4cap5gy/nMwZ0gQnL8JCjKrN3StbTarhMY+JT9VSuX143kggk8rKeFF
	KIl5efREkYk3dpYeTEbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8x3l-0008CF-0A; Tue, 03 Mar 2020 02:13:25 +0000
Received: from mail-eopbgr20088.outbound.protection.outlook.com ([40.107.2.88]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8x3a-0008BK-Gy
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 02:13:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cw0ND9NNdGA4tiBhGwPhtsTjcMuwar/tLlBTdC8LPlLJo0BzYmtw0KFSLf44lsr6WAt7QC++g0tfAQ2rQN4UuVG8GqTDwgFrZshaDYXgGMgJwFZcZ3zSZ/p6u8Ve6SfYrSzOHQhw7YzN1tXAHtdu5hZ31zZaKP6M5o4qfaXVDQ3fB2OurAv+b3JWnlJyEemDMgN83Ha0dYnPpb5NXnTwCMJEhgCfhlaUfaCJE9DL/p0FS3RPDr4DObcRay0sX/EyVWa01tPU4sHcwwsfZlkmE9itKmtPAXVfSycD7fpIuQQVFr3nj4DBlwBWbtnPP6LITHaVhdTi9Vp3iRzxpcuc+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zq4lYBpflAjQoQtYSMowoG+qsf+axWyvbvZhFB/9rG8=;
 b=Fi5VsvX+Q1hHsfoEc/gUqr0oYgs7HZ3CVU52mTkDGl0tdTdV67V9pIIp0saCbyuwxD2QyMgEmeUQjAA6dgyw9VceJbga7VuUPw67hCQEBwLp7k+T+6VsI9LymscmYGY1Utg2BkxqiOB5w3sPznFzjv89BgiSFob5/cfue4eRxvJ8du7S8PxLryX/fiQXkkUNy+XHJ1i+uojpV+wfCYwYPfyHsa823xbLkU/QWfLpo8zpvj93P6EgqIV+yuzhRymWS0GYGQRuXVlXHjgc2zOOLrdF7qI+zpFF+qBmsxdlhnoFi8NSp2NY6cms4Nk+SpCraX/ikDmSyw8cu9U4RTDZ0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zq4lYBpflAjQoQtYSMowoG+qsf+axWyvbvZhFB/9rG8=;
 b=fiRcpny+Yz+q4ctolVhIW+sPIKpfJC5kwp2b7JM+vJtFjgsYFNPWWAwSeUucu98mRh/pigYQm3yKrQNJ5kV9pgKpEybCG5gWYWE/5euUbnKowPcGGBidsKOPX51ZXOO25HtAwvbbr8EqqKwyUMkUOEHu3WhGNgnNZaxTLLt90zo=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6946.eurprd04.prod.outlook.com (52.132.214.88) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.16; Tue, 3 Mar 2020 02:13:09 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2772.019; Tue, 3 Mar 2020
 02:13:09 +0000
From: peng.fan@nxp.com
To: sudeep.holla@arm.com,
	robh+dt@kernel.org
Subject: [PATCH V4 0/2] firmware: arm_scmi: add smc/hvc transports support
Date: Tue,  3 Mar 2020 10:06:57 +0800
Message-Id: <1583201219-15839-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR06CA0125.apcprd06.prod.outlook.com
 (2603:1096:1:1d::27) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR06CA0125.apcprd06.prod.outlook.com (2603:1096:1:1d::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2772.15 via Frontend Transport; Tue, 3 Mar 2020 02:13:06 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 605d27bc-e824-409e-aaf9-08d7bf186b04
X-MS-TrafficTypeDiagnostic: AM0PR04MB6946:|AM0PR04MB6946:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB6946A4CF9286048E18A464A788E40@AM0PR04MB6946.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-Forefront-PRVS: 03319F6FEF
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(136003)(366004)(346002)(39860400002)(199004)(189003)(4326008)(6486002)(966005)(478600001)(36756003)(6506007)(52116002)(86362001)(2906002)(8936002)(69590400007)(8676002)(6666004)(81156014)(81166006)(26005)(6512007)(316002)(9686003)(5660300002)(66946007)(66556008)(66476007)(16526019)(186003)(956004)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6946;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +leFcetlNGNT7ZS+PI+nnZo399pysI8ajtX5cxuE0d50Hf7871VaANBi/ZUgJQP8kubjI+mGrx5TwGxa6mhYw/qxfillL7aUt8EcSMUuVa1sX6Gf6zPUunk/GpY4EJt3mDLbMTeAppk+cDfbTlL86TSY6Xmj8lAaH3UGkz4y4dojRTK5m2auiuGM8uUgB00fdkb/n4F0JCwhgW+fmL+BlZPPRO8arSkuZGyI8b2tm6eTue6TAjVrW2pv6tZeYcJGJpJ0P5hpkNGt5N31LTJBkNvq8TE5WGYMMLRAZNYOIKI9xOx4GkwcGdutcFGz3GPDJhJmey5DmPz+PJZdpeikJSK4NpjLR+tJAf/Z1tL8H2/GlMfXF2EjgyS7a65ih9fUVSzTzl7HU4n2fkgXRicDlCq4agAPsCECeM0u/0ZKemTmAzwGJ3gqUs0Rhn0auZPwFrsqJO/wipEp45P8IQH6k+B5ChRlPOfVWGybMKQWCtKuEgXhZMIk1oC4FF0Jsc6FUT3MJElEai2FFF70NgVyh50E0Th7A34r9/jy5iqaokU8TRi68cfsIDQVjN3sEIEcyhAUi0w1EtWi6n+OI41buw==
X-MS-Exchange-AntiSpam-MessageData: vc9G6HGpxfgeDFhG0LSmwlN+R++ATpjbTfBkG4JY0f4E80hj1p6pwwoNmFn9NQebsdqZmW93YwlKDRsFHS9d4Xz4R9Sc+eXdnOr//QK9E4CGE/29uTYc3WR+KVH01aeS+W5alj2zwTkxEdsYpveryQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 605d27bc-e824-409e-aaf9-08d7bf186b04
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2020 02:13:09.3841 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8oAtluiFtYQmabYAFKj6mhChQNbHofxHyz5GRY4bTwBtdD8PkMz9yGaXePR9lp4f1i1+BC7xEA4g3oUovJ2gZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6946
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_181314_638621_4FDE56A3 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.88 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 f.fainelli@gmail.com, viresh.kumar@linaro.org, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

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
 drivers/firmware/arm_scmi/smc.c                    | 145 +++++++++++++++++++++
 5 files changed, 150 insertions(+), 2 deletions(-)
 create mode 100644 drivers/firmware/arm_scmi/smc.c

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
