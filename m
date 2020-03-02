Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0AE3176576
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 21:57:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Du7ozFtOfdkV8g38qmtwfAHvilxuDyohGkkg8HuA63Q=; b=J5OygncguMyIcN
	XFU+RCzu7PLhyWQgf+QfF4IVRD+M060Puq24InTPDM/ZGYZJyIg7YX80XKcz25cz9ILF+UwI9cUHF
	QiyeNxSja5Fuju9QtCnhopBiu9+XLZw5UM88k+5VrHL2TyyBEepKbGiKVK9qg2kzURFTxJ8ckoLBp
	9oOTV5+bVvi+NQwXal/QzHJSuFL40l5KXZTIxafCuiZe6U078UuQDdzEnP3vLLRLs/3djcpSf+vwQ
	wQv7fqJEPO4ncfpL7l9izct5TIpOFpimPx0+iMyiCVcvMpFXLCnNibt+rs6QC1sw/vKLXx6JLczRb
	U/j+gFGxJnfqXEfLAO3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8s8M-0000f0-E4; Mon, 02 Mar 2020 20:57:50 +0000
Received: from mail-eopbgr70052.outbound.protection.outlook.com ([40.107.7.52]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8s8F-0000dm-0t
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 20:57:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ekqtjVewMFrRlkHGe+CPUP5whEzhenk9iGiZeGfHgS8Gwl9eSZfqYJlQGbPBH99eCYyVwbRzdGrfNT6fDtqj7BKDiqEgVKlPXwxFbIqREVUhjlyFvVAPDOzNsZU8Eu2NdtMYx4NsX7htcwZaUvuZAIAhn3qelGdSbVmEe90YcN6UkjOHNZdtChslCwGIkLB7X/e1pCwz+yUDAoZnLPBuOxbXOV8I19nG8FAPujfM7Y0q6ioRPRLBmVeDtOrlrrQFiZYGjxzIbm3zay7gNgnYBAGi8IKlVtBIg0FIz/Hkd9ILI+zpUO7UMJ+lm2ntqLuvSCrDrhL/m0ET5jHPM+nBCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KwW0WkLK7AMbPdbcN/MPMhAV7X0xRa9rgVZuqxdNv4c=;
 b=JOFFLpYfynEN6DOYbytnBrsq1sUpi4SHuIuKa2n9m4Q7AZZod0GrwMndP5phi1vla8MIA8pHQJ0RGreuNe5DC38JrO097a/34MFJvlzS8v9MKCSzQA5SyZXTl/ehEWddfPZ28/W5IFgBw3fDIslwi11ZLFIS3YbuM6buHsiA7duUpINXnnQ/fcuu/YwQMaUZ+QiqeAYOwJvgwvh7dJd5zYALb9aGtRslLe8E41z9v3HJe4rnIS3XYGEPcKbSWTdflLJTsILMJbv2R1Po0JUJmqftc0V7LqRPcPfqA6RJ1XDMgPhFD59RVK0CRA4G5RUUFTA/22IczbmlpXYUU7r20g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KwW0WkLK7AMbPdbcN/MPMhAV7X0xRa9rgVZuqxdNv4c=;
 b=kH7GkTLAiiqqX3GPytDj6tG+nEh838Q0ZA9x3fUBmzxKUHjcZ6WqDOEbgXKBqNNALTQd3KUb6WHMz1Hw8s9i9g7HIfpZtRomrhHQZcGrnV2/LoUM91LLCWER23SfKV0Dw5pas4EW0yPKVr19aWVQ/UPKs+nNlEks6GXgT13jfCU=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@oss.nxp.com; 
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com (52.134.16.147) by
 VI1PR0402MB3453.eurprd04.prod.outlook.com (52.134.3.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.18; Mon, 2 Mar 2020 20:57:36 +0000
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::35d0:31bc:91d9:ceb0]) by VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::35d0:31bc:91d9:ceb0%7]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 20:57:36 +0000
From: Daniel Baluta <daniel.baluta@oss.nxp.com>
To: rjw@rjwysocki.net,
	len.brown@intel.com,
	pavel@ucw.cz
Subject: [RFC PATCH 0/2] Introduce multi PM domains helpers
Date: Mon,  2 Mar 2020 22:56:58 +0200
Message-Id: <20200302205700.29746-1-daniel.baluta@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: AM4PR05CA0031.eurprd05.prod.outlook.com (2603:10a6:205::44)
 To VI1PR0402MB3839.eurprd04.prod.outlook.com
 (2603:10a6:803:21::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from fsr-ub1864-103.ro-buh02.nxp.com (89.37.124.34) by
 AM4PR05CA0031.eurprd05.prod.outlook.com (2603:10a6:205::44) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.15 via Frontend Transport; Mon, 2 Mar 2020 20:57:34 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [89.37.124.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 6ab0dde7-917b-48cd-b118-08d7beec5636
X-MS-TrafficTypeDiagnostic: VI1PR0402MB3453:|VI1PR0402MB3453:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0402MB3453AED7CF12DDDE9DFCD42DB8E70@VI1PR0402MB3453.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 033054F29A
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(376002)(346002)(136003)(366004)(199004)(189003)(2906002)(26005)(6486002)(4326008)(6506007)(5660300002)(186003)(16526019)(478600001)(7416002)(6666004)(1076003)(2616005)(66946007)(66556008)(66476007)(44832011)(8936002)(4744005)(8676002)(86362001)(81166006)(81156014)(6512007)(52116002)(956004)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3453;
 H:VI1PR0402MB3839.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
Received-SPF: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fn8ap5iZRidIEqf7abUkOuBDrwdeI/q2QYHPSy1ZVx6oCAafg2N2wBGTIZAFa5syO/5wy8Z+zYNIgRaGFBpmFVe80HsjakIXlO4hcIA7fHMj1j7Ca+QG4pfDZEzyx/ZnOytwG+nrCnv44qqvkog9qEYtD6OGyAKkRwrqMUnOiBMRpe+zoIkHOJIzg7W+QvOy71+At90H6vSuyvLUYmUPpxPo8KlsRbvqoQw2bcVg1RdV6zrIhgUW9oEesR2/2FSvZMaev1cdQ7uoVpCVZwBVYWFPH5wdiR99+TVOpIcpy0lSA7M4LNs7oBjdI8ByhbambvgzUd12fTpYhPURfEM99jpX9JzVCECOwq78FUFQildN+zwfLFZmI+P6kQrX/MELUSyqTKGfGLVzdmTFDnsKxdewHeQ76PG6BrsLQz3NHckXk+4o5rYwREIxmwLu/V5r
X-MS-Exchange-AntiSpam-MessageData: tdrkMUdFeQq2dWfsHMaXYlh070IfB+/WHhT+wjjbdqXKUhPmZqIvwh9bYwbr8TYoiEfU1YLm2uyvoFEcREcDVN+Tr3ASSX9V4Vpw78BboyK0bTp9jYBvR26nCMvJOLps4ReIxwosy5LtXHEXjFPVww==
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ab0dde7-917b-48cd-b118-08d7beec5636
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2020 20:57:36.7356 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fp3s6thvPf2NYNYaj8ew7Iuu2D0J4xgpQAwkwauBU21JHoCOL237z/II6WZzWGT496XpeCWnZGNxE8O+MB0Fvg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3453
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_125743_144289_50004C13 
X-CRM114-Status: UNSURE (   6.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.52 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: aisheng.dong@nxp.com, daniel.baluta@gmail.com, ulf.hansson@linaro.org,
 festevam@gmail.com, alsa-devel@alsa-project.org, linux-pm@vger.kernel.org,
 gregkh@linuxfoundation.org, s.hauer@pengutronix.de, khilman@kernel.org,
 ranjani.sridharan@linux.intel.com, linux-kernel@vger.kernel.org,
 Daniel Baluta <daniel.baluta@nxp.com>, pierre-louis.bossart@linux.intel.com,
 paul.olaru@nxp.com, linux-imx@nxp.com, kernel@pengutronix.de,
 shawnguo@kernel.org, shengjiu.wang@nxp.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Daniel Baluta <daniel.baluta@nxp.com>

i.MX8QXP/i.MX8QM has IPs that need multiple power domains to be up
in order to work. In order to help drivers, we introduce multi PM
domains helpers that are able to activate/deactivate multi PM domains.

First patch introduces the helpers and second patch demonstrates how
a driver can use them instead of hardcoding the PM domains handling.

Daniel Baluta (2):
  PM / domains: Introduce multi PM domains helpers
  ASoC: SOF: Use multi PM domains helpers

 drivers/base/power/common.c | 93 +++++++++++++++++++++++++++++++++++++
 include/linux/pm_domain.h   | 19 ++++++++
 sound/soc/sof/imx/imx8.c    | 54 +++------------------
 3 files changed, 118 insertions(+), 48 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
