Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6373E18C0CB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 20:52:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tJiCvqOuxR3qVBoEuyNbm43isEri/mgoxrTCCeCdhNk=; b=eWo3SUhTojs+BR
	MY1YHFW+jGv4SWXtaUdCONd3bdkevUXG/uxWi3dFan01o0szqak5/7dePaVhTVU5Nl9BX39iLvBeg
	HD7gYkxOJwnWN8he+yYaoa7vDdHqDOQqFhBgS5My3mVOISQRGARF+b5HpJmU1YI03X2Wywh93Z2hM
	kNRXdaJq4diYqg1zjzWtp48QEDcv4hULJILQjWeBeYwGVAOo/df1fYwnJt4G5vP5HXJsfJMEA1NNo
	bTv+ee4x4z2WCD/WlB5CxlDCF4g3RmidLdssio/drJYbg4Y+vUIiht75X2IUxdEBwahxA4T6+oWfl
	xAfvzEUFuKybN58aAQqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF1D1-0002Ja-90; Thu, 19 Mar 2020 19:52:03 +0000
Received: from mail-eopbgr80054.outbound.protection.outlook.com ([40.107.8.54]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF1Cl-0002IB-1G
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 19:51:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q4zofgkZ7zP6Gw5Te1xkIS+tjd1YGkHLrhfPGnfOiRvErYMAgViuVPaTQrEMDWEtRISSCAIel84/8LCKJwC0/fbdD5Eo4R89msT6/BLqsBs5u4TeWK5HiMLN7UuxS+lqCjQUGKMjZZKTdLdILDRVvf9D3G+wL34JgtVyAxZ/opHL9xaXb9Qn0k1uyB0Ypl0M08kQzj0TRBTEvDmkCaOEfpiQXeIXGLGbvbQjigeKqpvqnOg1hLEiGS7xSxykxtkhslw7b85SEr3c/OICfJAUm3XCh75S7ZfozVHCyhAapypdugcR+mdmJciFSIkI7/1N12nk//PqlbZdJPiiWR51ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=33Y+k5XVFn4hawpiqiZ0JEg5M5ZSQ1Lh1jAjmWH3bMM=;
 b=Ybd27aeWUUnUhk2QjfLJm2sknDmYXiz1xNGOQNbhjlX8bLEhHwWwyC6IYqdJs+KaB9Fi/Pp+SvELGwODESU2fwpAefb1QZKVBKLSUDnrDSRvsQfPxQNAuQF57qboYMunyXPOWrfx16S0felcIA3MUqe9prO57Aj8R5mbzwVHTnmEPpMYp0T/T6sjJAg8dB+T+7GfM1fxmgFxAffNzl0Fdwp9ia3SeR+OVyJ1FcM9NlAWDKXy/9Lj9J+8e8xDR1GVnhC13nBUZT47LbIzG36XpDYz40KTB6RX1x8D0EnEzAb+P6LMvHww6hgS8+MdUV/PlUFbw6s5OnBHOKCviRGoPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=33Y+k5XVFn4hawpiqiZ0JEg5M5ZSQ1Lh1jAjmWH3bMM=;
 b=FPJvvm45tYSLWmK1t3fz230Rah/0tsGBqJGsEFXNeCkaM4QBSrRsKEmbN9bTP7+KawAeah1Byc/x5XADhdyhN1f2JjQctdMPqKhka2xErmIFCVvRyRqy8dXtiDZGX0vTy0rx+1Slt+LgTsjXK0grapLURuYDWlIlfFGeSSGc3lA=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@oss.nxp.com; 
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com (52.134.16.147) by
 VI1PR0402MB3486.eurprd04.prod.outlook.com (52.134.4.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.13; Thu, 19 Mar 2020 19:51:41 +0000
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::35d0:31bc:91d9:ceb0]) by VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::35d0:31bc:91d9:ceb0%7]) with mapi id 15.20.2835.017; Thu, 19 Mar 2020
 19:51:41 +0000
From: Daniel Baluta <daniel.baluta@oss.nxp.com>
To: lgirdwood@gmail.com,
	broonie@kernel.org
Subject: [PATCH 0/5] Add support for SOF on i.MX8M 
Date: Thu, 19 Mar 2020 21:49:52 +0200
Message-Id: <20200319194957.9569-1-daniel.baluta@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: AM0PR07CA0031.eurprd07.prod.outlook.com
 (2603:10a6:208:ac::44) To VI1PR0402MB3839.eurprd04.prod.outlook.com
 (2603:10a6:803:21::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from fsr-ub1864-103.ro-buh02.nxp.com (89.37.124.34) by
 AM0PR07CA0031.eurprd07.prod.outlook.com (2603:10a6:208:ac::44) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.12 via Frontend Transport; Thu, 19 Mar 2020 19:51:39 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [89.37.124.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: a7eaeb31-5b4e-4855-98a2-08d7cc3ef1a9
X-MS-TrafficTypeDiagnostic: VI1PR0402MB3486:|VI1PR0402MB3486:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0402MB3486E70DDEC1DB7B40580ECAB8F40@VI1PR0402MB3486.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-Forefront-PRVS: 0347410860
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(39860400002)(396003)(136003)(376002)(199004)(81156014)(4744005)(8676002)(8936002)(1076003)(81166006)(186003)(26005)(956004)(4326008)(16526019)(2616005)(478600001)(4743002)(6506007)(316002)(6666004)(2906002)(44832011)(86362001)(66946007)(7416002)(66476007)(6486002)(52116002)(66556008)(6512007)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3486;
 H:VI1PR0402MB3839.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; 
Received-SPF: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aGxMB3yr3NIjHkL71VSOamB8pUYzRhtj+Y69FHeMnXpqosZCzEsvF4WZykGvw/aShyOMo+/h3UTCJozdkub208TvYO1NUc74WYu9Wkql8DeAFF8w1yNcjnGxHrUkIT4lDFxSZ8eqAZ7gT7cV/+g+OOSixF5aGAgkH4dcd3YXM+49CzjxJ7aTwgXCxyqZxqY7mEe8R0oVwBE5OE4AaXXLzvYUerICiqiVE4Y+uQS4VXsETM20BUME3VxEcsgMapJcsij1m/Rxzrk57ndIRakEizf5DGaYV0qO47bC0gOY4An3ck6JdChXM92+oWvs7kh7hym3TKtdz6y4PC1Omk3vXCGm4Lud8UmJJx6J9wHRrLaQO/ICyzGzccx31M5afE7X2F8+7DGhB41avpt1ooD4b532lTeck8GDweJ3RSrZmc169vGuaIpgjESJ3UJHVYCJ
X-MS-Exchange-AntiSpam-MessageData: FicdRk1BQFUw6771FAeXE17a6AScZSlpPKbpH8y5VRYwX4HeiKfVnybF1LT8QOobjmMYop3956oSdqSkDQEhg2fXvwcFu8otfQMdLyZfpJbqmmzPusx/aKlei5T28dmstalS8ILDiC7OiiXuqcQhQA==
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7eaeb31-5b4e-4855-98a2-08d7cc3ef1a9
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2020 19:51:41.6233 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SUxIjWvQbxuE+3Gt3pxQ00551TH/bQ1atvALi2LoP9OCkPfgBWLINSwVfh4lZgdPoSh0IVs+ADv4EZJUhI62+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3486
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_125147_130607_31B5AC59 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.54 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 daniel.baluta@gmail.com, Daniel Baluta <daniel.baluta@nxp.com>,
 kai.vehmanen@linux.intel.com, festevam@gmail.com, s.hauer@pengutronix.de,
 yuehaibing@huawei.com, pierre-louis.bossart@linux.intel.com, krzk@kernel.org,
 ranjani.sridharan@linux.intel.com, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, alsa-devel@alsa-project.org, shawnguo@kernel.org,
 linux-kernel@vger.kernel.org, sound-open-firmware@alsa-project.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Daniel Baluta <daniel.baluta@nxp.com>

This patch series adds support for SOF on i.MX8M family. First board
from this family that has a DSP is i.MX8MP.

First 2 patches are trying to fix some compilation issues, the next two
are adding the imx8m support and the last one adds the devicetree
binding.

Daniel Baluta (4):
  ASoC: SOF: imx: fix undefined reference issue
  ASoC: SOF: imx: Add i.MX8M HW support
  ASoC: SOF: Add i.MX8MP device descriptor
  dt-bindings: dsp: fsl: Add fsl,imx8mp-dsp entry

YueHaibing (1):
  ASoC: SOF: imx8: Fix randbuild error

 .../devicetree/bindings/dsp/fsl,dsp.yaml      |   2 +
 sound/soc/sof/imx/Kconfig                     |  32 +-
 sound/soc/sof/imx/Makefile                    |   2 +
 sound/soc/sof/imx/imx8m.c                     | 279 ++++++++++++++++++
 sound/soc/sof/sof-of-dev.c                    |  14 +
 5 files changed, 325 insertions(+), 4 deletions(-)
 create mode 100644 sound/soc/sof/imx/imx8m.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
