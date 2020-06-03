Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F35E1EC7DD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 05:43:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+lWinE/nvDoj4TjDzkMul7JwiT+i0XYbpDbzcgPfCSk=; b=IA3rLz5u1dOjZn
	cwFqKmH71RzCPqZxkCmAuuze1vGBTxn54vjZOjsbrnCrLMD8vQ9JytZv97stWb4+jKvcftGnC9+88
	yNZyNQgWrUTBxWyUFNY12s2aWdbSihyj3shS1P406FQTOGj0GVtGswudWRaD5YgZ8FsmLhPBuWCH9
	lDYkcZHpxcteosAYBzDbSP7kyXs45SuHWOtt81GmeTDfbdFM8LKimRk8fAYbXNagXcvGWXVaZM84J
	xvvUwZCfte/Hf8YY+ylOtbdL/vZ7UXgMeiDESiFv07x+KlqWATKiNtz9skUG/VWMNqmJjLsThDNwi
	GH2GJGX1FkNH3d6mI5LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgKIx-0002oH-Kp; Wed, 03 Jun 2020 03:43:03 +0000
Received: from mail-eopbgr140083.outbound.protection.outlook.com
 ([40.107.14.83] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgKIq-0002nj-Ag
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 03:42:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sij2O4qOCXpze/TInIvYP9ys9PwmUGqZx/CQFb/ZK6Rv8mADq8Q4splecyZvcjcBT+UBS/ExtB41lgej1LonEHBfhk57ufGGMsCvsjskLe0j6xW+XiUfLtqXLlKyaMFDLYNayKX22fsiYq9yKKYa1CqdT9o/OZjQQL7ZrnhoF06MU6U03TTDbXCE1FZsnFUPs0dNSClsfNsB4/YwzwqFIio5KU8oNtKI0SI1YOPnK6qGnU47fYMv0+9JZ0Ip8W7JdckYy/WOuqMAhSMO2Vvzs0qpT+gwNMPloaEvrI2k6+jdJKKNs/PqC+q+0MX+68xymEVDxXoXNuhPAm5pLwVQLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Sxt6snazwSZaOkz+/3Uy5F1S9PEdTwIuBbF6fdmRRJM=;
 b=Hpk7aEwERF/VHkbJbJ0StVQV+t4Jaz0CW3WElW6m8Xhjbb4vi585kpr4IBWcCXkVrHngPbWA8Ggs2OnEk32KKP6+r8Wdu0yifcKmySHK7DdEOHAF9gdNC0stqW+aqgfy2iaNGtpgNSgfCTpnvukWbR2by7nMt5pzQ0f4mv2g4/cbwQ8519ejX0fj03NHht2aqKSldwZw12KidfaHP+i8kax7bV5VkcPehw1p/6PaWVP01rC3gRGQx//R0096KcuDWrH8TFBC9PRHmunXanQfta3ls+wa1XGsfVhogDbkjnHhyQpq4BhaAdEd0KLtS6/sp4/bwYD7SfmJ6stnW5p5dA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Sxt6snazwSZaOkz+/3Uy5F1S9PEdTwIuBbF6fdmRRJM=;
 b=mL6sYzK1GzxLaLv/WMrYnu2vwCzvOXHj2HIJmXbCQjHnS073XJNms81w3P7pyUawX+TeF+9VAzpf9ouGbRBUa0LXlGfdFivg+xvHupBHnwd5VFlEEZJAjPsNyZpAaYAKjzC8PDQVfCXRbebfNGAvFNlaW3Ib9HNr2espxLv25ks=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2854.eurprd04.prod.outlook.com (2603:10a6:4:94::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Wed, 3 Jun
 2020 03:42:53 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3066.018; Wed, 3 Jun 2020
 03:42:53 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	aisheng.dong@nxp.com
Subject: [PATCH V2 0/3] firmware: imx: fix/update cm4 and add resource check 
Date: Wed,  3 Jun 2020 11:32:20 +0800
Message-Id: <1591155143-25972-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR06CA0198.apcprd06.prod.outlook.com (2603:1096:4:1::30)
 To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR06CA0198.apcprd06.prod.outlook.com (2603:1096:4:1::30) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3066.18 via Frontend Transport; Wed, 3 Jun 2020 03:42:49 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 399fcaad-5cc5-48d0-dd76-08d8077031e2
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2854:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB28544E81F591EDC40AAD1D0588880@DB6PR0402MB2854.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 04238CD941
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dqSpCCmACce3Xv9cnk38eJZCTeQ6Vx5EhSMliXQH/N/3tM5RqmmwkV6Gqi9MJG+AIoJQYMFeGcTjdo3NIsflQNn7sWnxMTihJp42uOaVmhKUrTqklThpkSGOB9QE64DQT+6AR7CKpXoRfNoosq5PBVMioCVDDt/eYIiC4UegAjEtZVSsYWAXU32ZgVwrqDZAAQ60MFUDFc5q6O3QSGU3e+Ap1bMKNGfdg6kpT/oHCrmEAb5g3dHJQ3rRmF7xEA9DOLS5GguUYXJWIOABjxh1KcBw04TNz8zbGhcVVfmCdszVgf/hquu+wpgYeQKednfFCzEHlzUEpgck96dAnstmlw1h2VVjwQ+kq6MECKh7urP/TXtFWDMQwgafN+LgS4xDLVdiAmvnpm//6VgcZPg0Y5zRuIy8nnEYQ2OdbB5L6SPQKoZo/QbnRpSKwJtUOh+fUfelhtU8F6oXhUOTZv58Sg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(39860400002)(376002)(136003)(366004)(346002)(966005)(6506007)(478600001)(186003)(6486002)(36756003)(5660300002)(26005)(66476007)(15650500001)(66946007)(66556008)(83380400001)(4744005)(4743002)(2616005)(52116002)(8936002)(16526019)(9686003)(316002)(2906002)(956004)(6512007)(69590400007)(4326008)(8676002)(6666004)(86362001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: ae3afJGUIoMeY+sOc8Ncj8pbDMSi7aiQYD+WPV33UqHad2ctTRy4KTYq8Zec1ou4Vcr2w2bhmK1bhmJRnzMYjF67vudc+10AtDnujRGDvJ5gfiVMXRvg+9i3NvLO94ME9bU7xLyoUSmGUZwT9s6l0sDVIrSo45ly8gc18Rs/D58gFfYaH0Lj2chFie+TjcwmOOCJ2DbkwAEhQZQpDoTeP7xWViqYiukhygl6rR+MV3OSVRe1BttKEQayg0u9PwSSqmS3wGMZd5zPmgkL8uVsOPtQoQZ4dzg2/WTEj4XclzTkPVnq4MAbj3pWLdaz1bwphb1m46EpiVkwgsBw7v3wszV3SBNRj20Lm+w7/TKQlEk5LFYTGBibVIVVhGdokcikGqXWU7Y06+bLki+SNjpeUmatvixdbmq5CKfVGI3do6g1ccLIIMJ2zJFlP2THKlm0GIMN/wS/4LmggtP/L1X1Wh4VuhQvSiU1YxRZjgrZdcs=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 399fcaad-5cc5-48d0-dd76-08d8077031e2
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2020 03:42:53.1006 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LYrU5JxqGY+K/rpyyzsHt7kx5nxFSnmg0JM7h+lpsJl2yIE2jeHEevpxs/YWEAguFRPO2LPpsrXMkYiMA9WFRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2854
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_204256_368949_F26B05A1 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.14.83 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.83 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Peng Fan <peng.fan@nxp.com>, festevam@gmail.com, qiangqing.zhang@nxp.com,
 linux@rempel-privat.de, linux-arm-kernel@lists.infradead.org,
 kernel@pengutronix.de, leonard.crestez@nxp.com, daniel.baluta@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

V2:
 Add R-b tag
 Drop patch 3/4 from V1
 Add comments and update Copyright for patch 2/3
 keep code consistency in Patch 3/3

V1:
 https://patchwork.kernel.org/cover/11505045/

Fix cm40 power domain, update to add more cm4 resources
Add resource owner check, to not register if not owned by Linux.


Peng Fan (3):
  firmware: imx: scu-pd: fix cm40 power domain
  firmware: imx: add resource management api
  firmware: imx: scu-pd: add more cm4 resources

 drivers/firmware/imx/Makefile       |  2 +-
 drivers/firmware/imx/rm.c           | 45 ++++++++++++++++++++++++
 drivers/firmware/imx/scu-pd.c       | 14 ++++++--
 include/linux/firmware/imx/sci.h    |  1 +
 include/linux/firmware/imx/svc/rm.h | 69 +++++++++++++++++++++++++++++++++++++
 5 files changed, 128 insertions(+), 3 deletions(-)
 create mode 100644 drivers/firmware/imx/rm.c
 create mode 100644 include/linux/firmware/imx/svc/rm.h

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
