Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6349C15B80D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 05:04:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XDXMp1bdsbnZCw9JRNk9Ap0XyVgNdjzZR3a/qnXWkRU=; b=VAwItykck45Qip
	HZGNctUiAdqabzLOLyMVzQ4g1JQBV6v41eceJEpA5de2v9nmmEa6l3zd+FHkudp4yxWax0OyEcNdq
	YAf3m1dGggzpuMvxRyUDSGyJtE8Iw53siqU6/rdLTKEY9E7H2/0G0qMO4C1ySn1JD3DYu/uNNiKqF
	AP9eZk7dfc/H8vMDeS+IgK4X542NumlrPktYnxjWTv9FoM5fY+K3uvGnQ/m5ZyXTDliEBErO3TxpH
	+Wsd+jFjNNz6S/4XuAyCKEXQ1eU0X82vSyihKPzAajLtBErplkDj3zbNKNJNIeJm2lqiG2qcY8Wdj
	04AhiqJKp/Jic4YpBUfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j25k8-0002CB-Tm; Thu, 13 Feb 2020 04:04:48 +0000
Received: from mail-eopbgr60040.outbound.protection.outlook.com ([40.107.6.40]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j25jy-0002BT-Rj
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 04:04:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ybj+3x6m5PbYyJEmcivfsNT6T/s0wbrpYEREtfF20QSJvVBCFV8iKdw9P7mlHEOd3ayGjaa6JLoRXPTLGsgpzRsF1AhAP1mipe4K6G6FTMW7VfDFhdDuCG9D7SkNa868TAGvBUtZBxa0evbFix/sYvrRh1vEK62qPNrE+8MH3RG6pVVs2mrsSAKK++2Cn0B2zXcphP+5s/It5jxbTvrJucFiK9BatiGnNScY31itRNuENIpnv5lnvVxH6p7iFFDy4xwVsGM5vi815fb1T47ZYtXGKxt3B5mSankJsE/K5hRwyEYpeJBLr3rmvEZYzW+9kriDq8r8yyC2LJNCVWRq3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QRXwC/+YUmGPuAXuuGVkqYWLQt0AdSWQy8klGxhzrew=;
 b=fpINHh4Oj1Ng6qIbz0SfNruf2H3bL/w/HLzF0MpvI/ewEYcWd2MPThmmIBaf9AqJmvZkcv4cj1B/i3aKE/oxSW56xwPuEJXKljuu8wVl13enEWrqPgqiJhvLxkR6CnobMWhbRvPTPgW2mN9PbcetdLAvY+rWgn07cw8Ed4CuygDk2n1RfBII0VfgV8mgVuKgpbULC2a3DoXnot9Fkqc8GdY0y7cWp7ooQquTcr6WpwPcPCgKWBTVDpNRG1veagy5v9UZyypQ0f2DI7NSHtoNl+nOC8WMtGJW8ULnKl1G1Tm4fcvCB5vGksS8jDm3fuEFnKseJg5TzMppbRKDr/8U5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QRXwC/+YUmGPuAXuuGVkqYWLQt0AdSWQy8klGxhzrew=;
 b=kBeJjzXC3YMLDNMDahAx6Dyyc5OfhlZDnsGsaRcNvmRf5uh9Njg1EIKwDeBtSFs4EKG60wMGK3rSlWtw1UuNsGaj4oKCxtlKSH6Y78+8ueXGmlZOqBGKzhkBtDicwiZjYWhqLTE4yHsqBraKn3R0D7o88eWGEYtAu3Rag6e4N0I=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5220.eurprd04.prod.outlook.com (20.176.215.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.24; Thu, 13 Feb 2020 04:04:35 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.024; Thu, 13 Feb 2020
 04:04:35 +0000
From: peng.fan@nxp.com
To: sudeep.holla@arm.com,
	robh+dt@kernel.org,
	mark.rutland@arm.com
Subject: [PATCH V2 0/2] firmware: arm_scmi: add smc/hvc transports support
Date: Thu, 13 Feb 2020 11:58:48 +0800
Message-Id: <1581566330-1029-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: HK2PR03CA0056.apcprd03.prod.outlook.com
 (2603:1096:202:17::26) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR03CA0056.apcprd03.prod.outlook.com (2603:1096:202:17::26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2729.12 via Frontend Transport; Thu, 13 Feb 2020 04:04:32 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 790923b7-353a-4fac-32b2-08d7b039d690
X-MS-TrafficTypeDiagnostic: AM0PR04MB5220:|AM0PR04MB5220:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB5220CFBAE8423A2989997946881A0@AM0PR04MB5220.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 031257FE13
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(396003)(366004)(136003)(346002)(199004)(189003)(52116002)(4326008)(26005)(186003)(6666004)(36756003)(69590400006)(6486002)(956004)(2616005)(86362001)(8936002)(2906002)(478600001)(66476007)(5660300002)(81156014)(8676002)(81166006)(6506007)(9686003)(6512007)(316002)(66556008)(16526019)(66946007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5220;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iVoiqv9Jl9Vcj+j7Qdx52akaUnWd+Gim66WPt22tJQDRQN1o6ICSNRuzxuePeKluf3Nysz/ba8Brjma5BzF5i8ACngHNIEIpY80N/zGV99BaaacJOk3SO2GrUMktR7X+YG1c4o/roTgt+wM70m0MlXCR34FAIKWdDEAmmLnCxjKhcDHEV35f0k0SEV66BVS8wtL2Aeni5WjVI3TonMBDLTYsJ5sZgP7HazEqiahKYbNLxNUKUGbj5zn/D28K+7Pl51aDMrm4oRH427DPVTn9uTUUMT4PgxljPxO0yX3HJdLaHZzDiEpuL4c4IWdtKcSgw+CC5eQJnyEKc8xhMtI357x6zrUrZgMv9JuVJaC+TzUfzhaBnfNrVD3p5GtjztsS2JbZi/n1U97lpTXV/zASEUwfIF2hCTbR2OscLPIL33WhmWCrRPLwuclG1AE7JeefKtzAAdeaMnaZzAxXsxvgkjn0g0KvjA+NmP+nFTJYDYrkfOoWuOzhWUl0LgvygEQdZl34lqtxZV0c5qHhMTyXHfO5DBj/eLtRu9pDDdDq0AY=
X-MS-Exchange-AntiSpam-MessageData: 9zH3emyVoK8daxGhb0VmdVewPWSfiq2Khf877K6Tzp6q3E3NdGlXL00Krqn3BSsPmc9PMmGG3iHWB+0bpOgR4QrBtXoWb55zPgB9B6J2c4PvAm9cb6eMmdPjiAG8VoTdVnZibh/P3nU1nKZCBB89hw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 790923b7-353a-4fac-32b2-08d7b039d690
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2020 04:04:35.7802 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qHz1bfN3ia1m2um2ljl4d0h9NFKL8vJiDicr70aqPseGuhSwOgVS38r3Z4q/i/PF8qm91bverld1L2WmXznMtg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5220
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_200438_901605_165C8261 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.40 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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


V2:
 patch 1/2: only add smc-id property
 patch 2/2: Parse smc/hvc from psci node
	    Use prot_id as 2nd arg when issue smc/hvc
	    Differentiate tranports using mboxes or smc-id property

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
  dt-bindings: arm: arm,scmi: add smc/hvc transports
  firmware: arm_scmi: add smc/hvc transports

 Documentation/devicetree/bindings/arm/arm,scmi.txt |   1 +
 drivers/firmware/arm_scmi/Makefile                 |   2 +-
 drivers/firmware/arm_scmi/common.h                 |   4 +-
 drivers/firmware/arm_scmi/driver.c                 |  11 +-
 drivers/firmware/arm_scmi/mailbox.c                |   2 +-
 drivers/firmware/arm_scmi/smc.c                    | 222 +++++++++++++++++++++
 6 files changed, 235 insertions(+), 7 deletions(-)
 create mode 100644 drivers/firmware/arm_scmi/smc.c

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
