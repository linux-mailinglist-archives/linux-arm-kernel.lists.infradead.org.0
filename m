Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B7616F89B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 08:37:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RXd0d9CVs2lPPwas1F6v/yVYzIU6DlISk5DcHx4/ed8=; b=eKp57qHwAxdtPa
	xzUrYRkG5koDSVsVRFrO4hVOe2ax3Bfg5wDFgKHxUmIfDl3qgTl3V+jNQfwVYkBU5Hx+100JSAsAV
	RYlkuSuHCcJyWQB+qlNZpLCNG5vkIkSiqHSbQXpG44ieHA16vbH19AOMjz7gsim4WrBvs6q/MZ1GX
	wR9nRbgdqHdTeW1Da7Ub+Jh/VdYjmLv2d2Oup+HnOaYYuvDqpVTo+InDRmRVZI/d7zZRrpoKqc/vN
	ly2mlOI/Bum/CIjR/MvZKDVAMAZVqTxHtqw7g2Z5RQrgOSq+EtKVjPCnv0n8kLywM6CCi/FWMp6sA
	02fEY606BSVEXvcvOEdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6rGL-0005YY-7W; Wed, 26 Feb 2020 07:37:45 +0000
Received: from mail-eopbgr130052.outbound.protection.outlook.com
 ([40.107.13.52] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6rG7-0005Y1-Nl
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 07:37:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a7uZHYgy+kSA5wmW7rDz1VP5JgYgZbsR0qCEV3JBMdnvx9dLwXBSwMntszuJZRmQu/6ARaSVJf++yIojUfIQ9a0ASZwYYQdw1YLNzINgj7gfeHAd1F8ACVlvG3BrPvo3/QcwmlYiDpOXKRlZg02V4taLm/VGWQ7xEK2FRwcrzUjEHc0aQq/AKVIR0RxSV3q5eBdL4uk6tSnherG9BMumDxaSyAyYz/Df/PQUjz7sN+Q1D3xNJuk1sADfcVoaFWCMSJCUxoU8/4TYA2BosFBVltdt5zS4NFSA7AsBYMZnvssIFhlVd2kXzZEYOIbSyU8vG91V5gXB7i5shnX2iiMsIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CTRm6IRce9MvasbU2WUbS+xQBgd9t/Q/lX/OqyPurcw=;
 b=WZ20Id1ku8etNkPgfLcqUWTDT5bru0OPbQIfTbEd6Vr8TwUehKJbt4VSJBfyz/rGWnYu/6rg0JjzWYKunnOEr1jIuM+nsjeZSYd7D2kZ473njJe3ICA/T5hKSqY1Wcn5u6C3tGIhOAvkBACdKNX7qqwl11qZJ6Iu/39Ms8AfJ3HU/aLlW1huQDyQAC3wH6S1mIlofACGiF0Q2ziQFuN5JGmytVgn6Y5Q9xBcOzF9DrEQzqrBcxFBnI8Wtj2kKIUA76B9NPhIqu3z7aC3PA4/jS3x39YdI6CV21/Gi3Y468f2P0UpXC+LlBlosC9a6GEtWdB7gzrQq8fm1JMruFQpzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CTRm6IRce9MvasbU2WUbS+xQBgd9t/Q/lX/OqyPurcw=;
 b=qQECj73b5xWo3tiHGCFyisDrBTOV8RIWqXbJ5m60PTDLoZCFEyugSABgEQzlWUlFF0VtU7cQ+6YKt1OZrw43DWLvXUaCTf5aI1+0eAsXE34f653UDIpogNjcs/CM3yBUygA9RCyi2ktcIvNTXGbyDRwZHgSYouXD8anTg3nBvyM=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4281.eurprd04.prod.outlook.com (52.135.128.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Wed, 26 Feb 2020 07:37:26 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::5cb4:81c8:1618:5ca]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::5cb4:81c8:1618:5ca%7]) with mapi id 15.20.2750.021; Wed, 26 Feb 2020
 07:37:26 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: john.garry@huawei.com,
	will@kernel.org,
	mark.rutland@arm.com
Subject: [PATCH RFC 0/3] perf/imx_ddr: Add system PMU support
Date: Wed, 26 Feb 2020 15:34:30 +0800
Message-Id: <20200226073433.5834-1-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: SG2PR06CA0133.apcprd06.prod.outlook.com
 (2603:1096:1:1f::11) To DB7PR04MB4618.eurprd04.prod.outlook.com
 (2603:10a6:5:38::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by
 SG2PR06CA0133.apcprd06.prod.outlook.com (2603:1096:1:1f::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.14 via Frontend Transport; Wed, 26 Feb 2020 07:37:24 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [119.31.174.71]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 957a6e6a-2389-4d7d-0ca8-08d7ba8eba06
X-MS-TrafficTypeDiagnostic: DB7PR04MB4281:|DB7PR04MB4281:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB4281454DA6C506AD3D748708E6EA0@DB7PR04MB4281.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0325F6C77B
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(136003)(376002)(366004)(346002)(189003)(199004)(186003)(66476007)(16526019)(956004)(86362001)(1076003)(6666004)(6512007)(8936002)(66946007)(4326008)(5660300002)(36756003)(66556008)(81166006)(6486002)(26005)(8676002)(316002)(52116002)(2906002)(81156014)(2616005)(6506007)(478600001)(4744005)(69590400006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4281;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8HfbyA9DVOanzswKiBCEUT7RiZz/9IOGwX6RhXws3xOo2yWW8e408FZttYm2fzBX8o+SpAxPr87alzDEunPkVAMfZHjPzhVeB+aIiTZPhwi23CFzFWCklD70KeW5RtGnuX8pGvfzDdyexRO0+fkjpl+OeN2wlOaoB0NW4gGBciHxqp9siGmkfcv0DUMK2JGcoTPqWf66zm9g3mubknE7ArAfWKyaEGoi9tyXmtWrfWAJvmgTdYPloNWnEAfC3TVYSjHgDPksg+UJEK9TWuvWOGYr0FGM4fZ/CyD37zkXGWjsrNO/+DPKIulUu7ofMQiWQviqne/iiwnNVAlFNmz2z9DSIa4v89YXmfc/clgNG0/RVZPavtQ2pkhzYzAKnYcpYBLuWyaFYOnRS2q/X8HL+oZKikUS9juHAEo6VFAL1M5UhL65qzJaeqeeV9mLDx7MF6PU88Iahb59cIL0WDD43nleClH1zniDL6j4PRmakdl5z+3K++ABj+OO4+q0F9yYDXMp2gLYcR7rFg1icqAg15/at0tYy5PNhZJuf0HXAdc=
X-MS-Exchange-AntiSpam-MessageData: 9Iy0ozfq/wRy+ZwmCjY9mLvwkyv6/6trc3EXdA8vR/CPCCyLp4BsgY2FEONMXjSWU9nftAZ5VfToYqCol8WnnPeOJenE40F88Ok/r9fSgbz8oOMVqy2T5JrcqQ2ncG2GJbeLIrrGsNGxHagu0yQHxA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 957a6e6a-2389-4d7d-0ca8-08d7ba8eba06
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2020 07:37:26.8783 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sa4Rh0jFj1O8I0W0t4EE3hwblpQzycWwEQx/HrNV81cPUjpBkaOoUiFveCm9cYbfIdng/YsrGsHLbRTxvDMdrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4281
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_233731_777411_F796A667 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.52 listed in list.dnswl.org]
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
Cc: linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi John,

The sysfs location for userspace to get the PMU identifier has chenged a
bit, this could be more formal.
	/sys/bus/event_source/devices/<PMU DEVICE>/identifier
Small update shoud be done from userspace :-)

Hi Will, Mark,

As we discussed before, this patch set intends to expose system PMU
identifier for userspace. Anyone wants to support system PMU must expose
this "identifier" property, since John will always read this file to get
system PMU's identifier.

Any comments?

Regards,
Joakim

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
