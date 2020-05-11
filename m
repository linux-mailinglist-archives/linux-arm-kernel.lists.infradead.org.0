Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E501CDA9C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 15:00:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bIajXHZBANJuEoY0GZm0h5PCac12oGCBl6YZGYiI27s=; b=qFVY8Ao1wVo4OO
	LACtvxCTBdrZOelA71ZeF+7OxyvaMiUWUk6nH01aBOSh1lbZYEL5KbqH4hpEda493evqxhq7VtRBt
	TgDo87Uj3TmU9bqX5exKQChEbF3MhNcqdXR9C02OjLI8ZdHgMFwfDT86nrCWH+/LFgm5NdlpcLV+2
	gNZmX307Ln9/lO/gN0JhVdGvwBUMBD3g5S336nEfE/Z2SCxfyucPfsptyrNKQQN3RtpE4/zfNLnq2
	Hhfl+WBCmrOBrbZO6Wpi4cGg87N049WuKRMPVoj9y9wAVj4lpO9w+czV0CG8uwdmFGcPcKB8ko12Z
	K4hUbwQtrTd+oveVodag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY82o-0004EU-SI; Mon, 11 May 2020 13:00:30 +0000
Received: from mail-eopbgr30054.outbound.protection.outlook.com ([40.107.3.54]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY82f-0004D5-57
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 13:00:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d9ssJa1cvQYL5fFaqwCA+p0JRJbj1U8Q85H8P7TXcCAKasr6XRe/9fMjhV0fWAvlpugi8H8sn6J6BjwctnRMAbeGlclK/iVHFKzuIcIAjCVax1R0nOFfjHuX7d70ioT8aDepX34dmoaBNVjvAFqw2o6XdsSa6ysD9AhEYMiadvdFgErIowmfQ6GJ7LQy/HK5ktH8rANjDhNUKQMhnRR5Vx9bf56XrCISMJZ6TER5lE1HKd8oU1GLcRPnI/bt1Tz3Krkm32JquQWNUpmd3HGNBc2tRvXJ0dyuOL5rs9GDKY3OUs3Qk236QXYYAMExde+Spj3jucJgMceCL496pDyU9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lDEdStoExKChGrIbKEwGNeUsZgdSI0qsSzHI3jcegnU=;
 b=LPA+LmRoPx1NaOD+wra4io6xvfoC0T3fTGGtxir+g6bnltH/fEZcr9mgJG9RlnxVLfQts+M04/wz0sZTGPNuwf7dSvIiyZpgBgUirZTy+I8vr5oYBahxTfIaNF/N3wxhQnkmZrO+9TaHBMDegBLlugzpNjHWRu6GpC6zKBE1XibNkp1ZgQYoveKgHDDhqDxKPRmUuygeqs7Ibmi4OEaf5J4xsQwRl2eBfxNHirx4I4p05Hkk3UEQWwdiNCLckFnlX7SOdfxGjToDNtd457CgZegTC2ryIMiAPukvwcwfI3Qm5HPOaQWTlNOi9JWjCaLPs/GPfOpCBKg6yVT5lTaNeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lDEdStoExKChGrIbKEwGNeUsZgdSI0qsSzHI3jcegnU=;
 b=doPhlPMJT9nPSqChFB/yk2HbJXyJUJNqIB2T0xztau0MGU8ya90lWB90CrhXORYuBMYPgbZHgTi8PKT+lQTlSq99Ub6m1lCbvCClHua7b+NfXJ+CqSRtgAaHiGG0LM5b7pjx157/R/79XTD4G4XDRwIr5ulRN1V/YFdKhD3NdZU=
Authentication-Results: huawei.com; dkim=none (message not signed)
 header.d=none;huawei.com; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB8PR04MB6586.eurprd04.prod.outlook.com (2603:10a6:10:101::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.28; Mon, 11 May
 2020 13:00:17 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e%6]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 13:00:17 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: john.garry@huawei.com,
	will@kernel.org,
	mark.rutland@arm.com
Subject: [PATCH V1 0/3] perf/imx_ddr: Add system PMU support
Date: Mon, 11 May 2020 20:57:10 +0800
Message-Id: <20200511125713.13536-1-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: SGBP274CA0024.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b0::36)
 To DB8PR04MB6795.eurprd04.prod.outlook.com
 (2603:10a6:10:fa::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by
 SGBP274CA0024.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b0::36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.28 via Frontend Transport; Mon, 11 May 2020 13:00:15 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [119.31.174.71]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 9707aa28-4810-420d-aeff-08d7f5ab40ec
X-MS-TrafficTypeDiagnostic: DB8PR04MB6586:|DB8PR04MB6586:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR04MB6586C1EBED52FC75DE4D781DE6A10@DB8PR04MB6586.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-Forefront-PRVS: 04004D94E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JSEzFQ2MAOD9P7iz4IkLzNlyUH03YP7m/VWYMHDT5Co7klEznTcqUD537uQtNx50H9Wp+wrBUlblOpDQTjvV8JrIl5t5UoXrYsH7FrjuYLY+vU9xjRxw4E0DF86lgblGR0AH18mkYNRxK2S4eLQIA9JYpfSZ6sEGRzJ85mx1Qvb/9HCpJHWaAmqQ+3F6EsFiEiZqt5uWrug7gtFgz8YCEgVwaGMxia0Xb11MRg7yETQiPGPgQ9jEiEg796PPvnXYiJigC25lHyQdTfX1/CWTuez30jSTlOj8w75kReGaGmGXKo9J31+XZxghprhlz4bWPzJ76qtoKad9l4PNLfXx92HnAX/lDdD3ZHwhyJQ5NuIL9rzR+n3krormFm+mdzbckkxGwPByqZn1Y7LrnUH4rHuPOnfaxuW4n6eD2vDhtvdQ21SykUvknKjfYZqHwjo11CgLFc2SPCI9/ZAMF8ZE9S6WwKsau1psnF/HAZ909waDwBY3Q2T0BOWfYhWTGM0Lo63WtKQfoaWTiLs0s3r7Orx+0JeixWf3plPpRVPNPQLnmidfY07Xqf2ycoF4hVIS
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB6795.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(396003)(39860400002)(136003)(366004)(33430700001)(956004)(6506007)(6666004)(2906002)(33440700001)(2616005)(6486002)(6512007)(4744005)(478600001)(186003)(1076003)(316002)(26005)(4326008)(8676002)(66946007)(16526019)(86362001)(5660300002)(66556008)(66476007)(36756003)(52116002)(8936002)(69590400007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: ykXTxIlByeU6wxI3CtD+2Hj57MTHhDt31x2zFQWwKekf7EUzC1GqCFa5t1PIfXPgLiuRo0J/NJAmwIP82lA08Ot6Xnl0XvD27OpXm8fPwxpxqkNgj6aKiAjrLm4EGDWCiJdDbzVEwXHTUJoWa3fGk21z99MJXru6WA2ddrgMzdMwx7xex78McvmPyjtFJJkgn/1vdBt5iNFvB+ozdK85+PXCjNfTzHOZ05syvpOTvEKeNkiOf8Jc3CoN8yey8c/ozQ3k5npnTk5vvd5jf+evdeaS+RIUk1EeyE2f9ryoeBaA/wBnvJW6UHUVS2cvDR69RvwI+vCCS4rlQ2qMjjFfSPncfUSdU1FOLCffbYT+oy4JMdqbCR5gbjayF5WPlblmGDCriW6I3Gh5e0k+rwoDAicEtADH5IWVBB4P6NteCPHjhCCihcGuPrIHaw2SJPhHtq27zTYOPhW8oEVMJRP77RXZN6AI6ca1SJUsZXFm7f4=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9707aa28-4810-420d-aeff-08d7f5ab40ec
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2020 13:00:17.7413 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: usCAITytp03x5S1gPwrU0rJZVfPaIEyQtMKZKq9+FYMDQid7mm/4GmthKnpHH4V9lEXPxAZMdlpDS/slnBkGLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6586
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_060021_267830_FF3FCFFC 
X-CRM114-Status: UNSURE (   7.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.3.54 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.3.54 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch set adds system PMU support for i.MX8 DDR Perf.

The sysfs location for userspace to get the PMU identifier under the
directory:
	/sys/bus/event_source/devices/<PMU DEVICE>/identifier

Joakim Zhang (3):
  perf/imx_ddr: Add system PMU identifier for userspace
  bindings/perf/imx-ddr: update compatible string
  arch: arm64: imx8mq/m/n: remove unused compatible string

 .../devicetree/bindings/perf/fsl-imx-ddr.txt  |  4 +-
 arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  2 +-
 arch/arm64/boot/dts/freescale/imx8mn.dtsi     |  2 +-
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  2 +-
 drivers/perf/fsl_imx8_ddr_perf.c              | 45 +++++++++++++++++--
 5 files changed, 48 insertions(+), 7 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
