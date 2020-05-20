Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C18FC1DAA4B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 08:01:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rH1TguZKpLD0z8E3nof+VfffFFsi2mXV4T0VbbyEc34=; b=RJudU7Vwly6rs6
	MvaPhAkI3Cj8nRBlirjQNGKawCzY2qnB1Oeuu5n+JKmgJt6Duj4+5dCRuNSPTiXjOeqS/SYan5/rN
	JBHbtv1FYdhy3HgdILD/1cFDhtrRoCUfw99MX9PnQKA2ncwKtD5oJL4FGJ73k2L0SUZQPS27CNvSE
	sSpKF9+Fsp6QgBJvlj3EeY8lSd1bNc9eOLeqauk0b89cgOSw3A+FTTOO2VtSsHb5M9AMHADb612Pl
	/JhS2+Je5QnzNKOG181sJ7HbYQ6dHUIhSYczWG0/BOFOlIozvGJmLraYOhWNFFLqk3r0hIsi/Nt+u
	08BMWslAK8zmrjtfK04w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbHnJ-0005kF-Mu; Wed, 20 May 2020 06:01:33 +0000
Received: from mail-db8eur05on2056.outbound.protection.outlook.com
 ([40.107.20.56] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbHnA-0005jg-Hl
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 06:01:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ILq5aEkY67AK5ACMr8VmsO9L2mRIYtLzo0AJyX77IoLoJ7OzBhp9AF9DdmqcPPrjm5VGDl1SZkAdZVi8iyvm3s/+6P13nRcCVoeEfoTS3TTkkwlE35emanlPBtwvMzSlM0A/wamJJU7ywHLqO9ovwihwY1kr02uACKDBMLEeIfAu8U7MFsViIEQ42Isu2ulqje606pWTBSrlk6FTn9hw9Nm4Hno7xZv7F/gw5y10PJMybQWqBai/L/EDPhRH+1lWtoGcwlcQvXY4Dkxr16dwhw619OtjC+mfcGNCJGYMBQ6nhjB1PNPy9gghELKGTdg7HnAM5hyuv4nbo0AO60T3iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4pziITDQvwrvyKHtLnKFlbCGb7/VBRcRhm8W4JqkTpk=;
 b=V84T1cZd/W1bGlTfSEWfeLH849nZNtNppgZahZa/VF4uBKkyU2WL0go93IfDWdd3RZOABSI+f1SF1HyT/EjHvMG0oNokBrfhIsvhtFZfn59cBglrjICsbhS+tgmeWEzbiJRMt7EqCv69LMryUfbbfdXs0yDnpwSfKsDeL4d+BkZf7+rre89WDOrIsa05eFeXsvV5ABXv/8jZbXbGYK0CFaoY0uL0D9tLmYa/Hi/IeswcSaF4oevn+6F8VyX0gZl2H1dqgShHj8BitfHJr4aJBcUAXEWJSqEaSQybRYwUK48SRNT7fwfutvT66BVlI8IieU+1ihmxsjrRTENRFuUQOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4pziITDQvwrvyKHtLnKFlbCGb7/VBRcRhm8W4JqkTpk=;
 b=nZDn5WqK5I9LVJiwsnliw6nrWZ1f1Rf7+fgRmK8gbe48bGHKWiPpJ3Dx0QUtxwZTfOUn2+vqwjHC+GY/chWs33tAP5qDiS5SJNqDIaaOApskXf+sT0xd7OLurwPpsI28/fhlLdhsiqbNraxwUKr5BmBwjQP+L9NGer7ppTqHhy4=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2790.eurprd04.prod.outlook.com (2603:10a6:4:97::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.20; Wed, 20 May
 2020 06:01:21 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3021.020; Wed, 20 May 2020
 06:01:21 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de
Subject: [PATCH V3 0/3] ARM: imx: move cpu code to drivers/soc/imx
Date: Wed, 20 May 2020 13:51:26 +0800
Message-Id: <1589953889-30955-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR02CA0038.apcprd02.prod.outlook.com
 (2603:1096:3:18::26) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR02CA0038.apcprd02.prod.outlook.com (2603:1096:3:18::26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3000.31 via Frontend Transport; Wed, 20 May 2020 06:01:16 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 8d579ff5-6ccf-4166-84c5-08d7fc83382e
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2790:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB2790186BE4030DA7FD3B856288B60@DB6PR0402MB2790.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 04097B7F7F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FflA5pYAgLtfPqUlyXbWDzTwPK0PlVvQ8iNEm80U/xzHxJ1q84n3m7CPT0FG5KpLgznPjzmbuYst0I0gmCRN5llz8d1nai0lAUSzmJ+Oe6d96dj8hi/Etv5O/gqG7b8oOOoiFAUgyETlyAL2KdJyN+9R+j5iXqdLmCxt00hu4jAITn35hrCLVodv0n2YxENbUYX8jgpyQ8sKbDxLmKeFh2DvpR9cJhbvSRsmhOlPmm+24O02hEer7/bdP9u4nYiGkgCTJLBuIusGL+6rTbs3l9dRiPE12ex/WDr4pvlpGq9C+ykifNNZO6vpIZ+OjmxQV98+N7DBX9gE7Wzt0notOjFwBiyn2O1UbGvq5X2cZnvqKXCWDj+P08X1E6OiXdcfWIO9CT8Ztm/FOZNNvfJQdEh436x55P0st8ubBHMCZSOvs4cAZbQOkzkbo0Wdj774+vAWngxjZVYog6hXFRl5rVLhK7wXOBatHDPP6QhvhlntFpB2xItiQzp/FgX3feRNJLV1s8W1aryE5EyQ3JjWweFeQwJhcOB6PKl7phI4sosN5K411gzYrIOiyMkqvzTPj8Xeuodl0pZpBfZBhqLqrg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(376002)(366004)(136003)(346002)(39860400002)(7416002)(2906002)(16526019)(186003)(66556008)(6486002)(86362001)(956004)(66476007)(2616005)(66946007)(69590400007)(6666004)(316002)(26005)(5660300002)(4326008)(966005)(8676002)(6512007)(478600001)(9686003)(36756003)(52116002)(6506007)(8936002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: G9mR2SAcqKtG0lEtT8MManaEGTk00IbGnDTdBmDCllQbCpx8nsgNjJ7umoIg7vzBeFN2raCdPwuTUN3e7CQpZh0QHgJZ4lfMhutJRIFuzaipyHFGTVXbbkDFcB7lRkxJIDdgJKBG1MHg5myyQjgaI5G5bzCPPBm+2JZzwZtWudSnVdyuFxHXx1uQ0lRk+BB2XI7IC7z0ZsWMXBiDUMvRDaAT2ChFIAcWT4ug+Yum6Xu3obof4Sj2iyNP0uHa9Ia2/I4Kf9jczSxbyiz1kp8sFZONm04xQufUFMi+bAGxS0pBMs4yLOlUDat0pofWbl6HJKu/tPkorgFXxhxSrCKyuj2cTXaF/lmjsm/eAZCdyLrm9/0YTGWsUQaw0Xqu6Gzbn26fjwrXAyhLpFEk1uW4YB69Idn7yRKTLzxXetl1wQYyNofzfqyNQdqI2rNsa18vFHVjKM2y8Sgs0OpWwvbaOr/LvdsfdW2we1tew8gRUxi9n7KebJ7WmtWs5FlqJsLx
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d579ff5-6ccf-4166-84c5-08d7fc83382e
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2020 06:01:21.3750 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KD0HFwofWK2W1riL4GcdqS9zACsEwH5hggMCP/anKOytV9AAtgHXLY6qXu6uP0V0UYxgnt7yQrBuhw2aWyssFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2790
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_230124_665659_733D692C 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.56 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.56 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, Peng Fan <peng.fan@nxp.com>,
 abel.vesa@nxp.com, Anson.Huang@nxp.com, andrew.smirnov@gmail.com,
 festevam@gmail.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, git@andred.net, leonard.crestez@nxp.com, info@metux.net,
 cphealy@gmail.com, allison@lohutok.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

V3:
 Rebased to latest next tree
 Resolved the conflicts with vf610 soc patch

V2:
 Keep i.MX1/2/3/5 cpu type for completness
 Correct return value in patch 1/3
 use CONFIG_ARM to guard compile soc-imx.c in patch 3/3

V1:
https://patchwork.kernel.org/cover/11433689/
RFC version :
https://patchwork.kernel.org/cover/11336433/

Nothing changed in v1, just rename to formal patches

Shawn,
 The original concern has been eliminated in RFC discussion,
 so this patchset is ready to be in next.
Thanks.

Follow i.MX8, move the soc device register code to drivers/soc/imx
to simplify arch/arm/mach-imx/cpu.c

I planned to use similar logic as soc-imx8m.c to restructure soc-imx.c
and merged the two files into one. But not sure, so still keep
the logic in cpu.c.

There is one change is the platform devices are not under
/sys/devices/soc0 after patch 1/4. Actually ARM64 platform
devices are not under /sys/devices/soc0, such as i.MX8/8M.
So it should not hurt to let the platform devices under platform dir.

Peng Fan (3):
  ARM: imx: use device_initcall for imx_soc_device_init
  ARM: imx: move cpu definitions into a header
  soc: imx: move cpu code to drivers/soc/imx

 arch/arm/mach-imx/common.h       |   1 -
 arch/arm/mach-imx/cpu.c          | 175 -----------------------------------
 arch/arm/mach-imx/mach-imx6q.c   |   8 +-
 arch/arm/mach-imx/mach-imx6sl.c  |   8 +-
 arch/arm/mach-imx/mach-imx6sx.c  |   8 +-
 arch/arm/mach-imx/mach-imx6ul.c  |   8 +-
 arch/arm/mach-imx/mach-imx7d.c   |   6 --
 arch/arm/mach-imx/mach-imx7ulp.c |   2 +-
 arch/arm/mach-imx/mach-vf610.c   |   8 +-
 arch/arm/mach-imx/mxc.h          |  28 +-----
 drivers/soc/imx/Makefile         |   3 +
 drivers/soc/imx/soc-imx.c        | 192 +++++++++++++++++++++++++++++++++++++++
 include/soc/imx/cpu.h            |  36 ++++++++
 13 files changed, 238 insertions(+), 245 deletions(-)
 create mode 100644 drivers/soc/imx/soc-imx.c
 create mode 100644 include/soc/imx/cpu.h

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
