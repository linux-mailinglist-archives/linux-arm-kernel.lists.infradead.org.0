Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF16181310
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 09:35:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QfpjzyKqiW/23nb/d4E74LPeVeqsBeIlgolAlLWWYK0=; b=XlvKOXlzC9bM03
	SopNjD4LaOi5GcQUEHU7OlBVvhzvFTK3KEghCa5M0qDDWSOfJixfduRemmTfKQ5MlOGCliT6ZT5uy
	Ztq/uA3Bki3yfKLJOwU2Szp+unrmswpFKCOkr93my7QHem21rsxsEwaWl8qxQYH1I46s7uJkAqgUj
	LponA/Y5PjIfbAqGlZ/cL4vkVw5NJHeO//k0FMsjUUIRTTU4GKebCHVVXMxe4q06C3Z7o67v1iZBu
	tF9lDzpd0QvZS94f1a6SYCTM1oLqUs7teEMJIRnP0DsoErb+hseYg4A/G+LBJXfH1+QR0JwgfE+ff
	AFP9Z/ZzKtiDADH1+SBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBwpx-0003tN-D0; Wed, 11 Mar 2020 08:35:33 +0000
Received: from mail-eopbgr10058.outbound.protection.outlook.com ([40.107.1.58]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBwpj-0003qB-Fm
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 08:35:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ExO26AV6idq2cRkM+IRbUnFbxWPzaoEEL5dp+XU1n43U1MWWwVI//zJxV4Snw6Tn26cDfhAvEhDBXc7Zx8c5HtOSUgZlCMW+kK+2cKBjaXAEaqgHNmocafr/9HfHNEc3ocLmmV0BOkqyYLCX9Cs72ymNAViakZ87PLRRHaepkRFNEBaQp8+FQil/t5682tI80p8H5UrDeHo5nFBPfU8Bfj/l1WJO5tTUZ9H9dyQhkiVxVLfOpp22piFx4xUVhNa3C3+uQm+sbAibn/lzTAJoGrcMk6V8t1PEAwZaZBA1G6WgReNTz2ud+gwKwUo7EJV4158q+EfeO0HGG02P/It78Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pw4icEYch86s6OwQMtMQ7hmk2R5+lBdfcIpDrfc/eIY=;
 b=S3M7qoYryHJ049T2jwe5KKLp/FeZdfucKhwEoFYtH1YBuUn4D5t6TPvgB0P9BPaN6380QHPmsiPlT9/RJpWbKb7sUutntxxmnGhY0zdh+mAnsFvHFSwPCd8ZVMsO1e2F2/aZElGL1yCATapq35r3Rkk3PIxL/Gdw16DFYLuVVeG5o7dNjbSE6ccweMxCFZQ5/KMhhXCE/+8Y4U52Q29bEV5OHNLyuxxczMvusef+Fu/+wchzL6RRebjvG+YcYCDjYeXAFKTPLSDvHKKVEbzPZnWxkI1cBB1hhx8WDMYiZXOU3F5CFghzP0Vr7q9wnCs4R1F3O3NYwnMoDP9VUXRlxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pw4icEYch86s6OwQMtMQ7hmk2R5+lBdfcIpDrfc/eIY=;
 b=FygpH18YKRzZp9sBemiCJe48VEs6x3JDGagc2tNFF1eGEdPED/t1KSjGZB6EM1najh16WmF7mtRZu7jr58z5LwHOjdvkBWYMktVTvGZqRC/iF0ue5VhSbacMaRshoklMC8GsmARi6mO0tIGVRYqEgvqo1p3N1mt1sFW9DV5v2mk=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6702.eurprd04.prod.outlook.com (20.179.234.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Wed, 11 Mar 2020 08:35:14 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31%6]) with mapi id 15.20.2793.018; Wed, 11 Mar 2020
 08:35:13 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: s.hauer@pengutronix.de, vkoul@kernel.org, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de, broonie@kernel.org, robh+dt@kernel.org,
 festevam@gmail.com, dan.j.williams@intel.com, mark.rutland@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, l.stach@pengutronix.de,
 martin.fuzzey@flowbird.group
Subject: [PATCH v7 00/13] add ecspi ERR009165 for i.mx6/7 soc family
Date: Thu, 12 Mar 2020 00:36:23 +0800
Message-Id: <1583944596-23410-1-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR04CA0158.apcprd04.prod.outlook.com (2603:1096:4::20)
 To VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR04CA0158.apcprd04.prod.outlook.com (2603:1096:4::20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2793.15 via Frontend Transport; Wed, 11 Mar 2020 08:35:08 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: dc0178ad-1b76-435f-514a-08d7c5971e55
X-MS-TrafficTypeDiagnostic: VE1PR04MB6702:|VE1PR04MB6702:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB6702263D20E70251C7A9316C89FC0@VE1PR04MB6702.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2887;
X-Forefront-PRVS: 0339F89554
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(396003)(376002)(39860400002)(136003)(199004)(966005)(956004)(6486002)(2616005)(2906002)(6666004)(7416002)(66476007)(66946007)(8676002)(66556008)(316002)(86362001)(52116002)(478600001)(81166006)(6512007)(26005)(81156014)(6506007)(8936002)(36756003)(5660300002)(16526019)(4326008)(186003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6702;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: f/5a+IgY0gvAOEYICJWwGwYQfw16rWlREDR3F+zi4EFhtqWhWUwc869O+LZP1UJRF6WbMjnjWDSpc6qtzhaWJaJ3+8121H28pBV0ssKr7g65EzWj6Ei6Y1iKE8D5bLwSdCaaUr1LWThDPsqgYlFHNdRH90BusSvF6QGegJ+b2gra3upQ05Z+8wZ51BR9cZllYEXzCgBivuxXfg5IQlvbikZvmB18owMjfL40dmxI0fwg5riy+C4xuemyFZYjOfVVzCjwCvNOsvrR4MWk9zHimI4pAS82ARQADv98YSH0RmVRw2V5ZAdvzhZSYwAn2tNmXxDVGI40HQf9g27gSobvJOV00vQVzIQNik6BbZqwOY3TgIvQ6AVWKSN/YN7FTeyPDt54rXE9K0kqy9u0VmNGpgE417uNxaPlXeEwlnTkwCdjx+BYx3eb20aKJnrwTZ6UOKmoVfbzXe0i3dZbJK8FMtUTOSOjE1FB3xZhqbnI+IwvP3yD0WIPg3gfm7yDiIwlM7sWftjNJ1y4PfrXvTiyfxU5ECinWoUuFRHLl9TvCrrS4XqB5DnGEUTDOwxtReIsZXieK6a8e7wGDpsQ+OFb4Q==
X-MS-Exchange-AntiSpam-MessageData: gS4BQnuy/cg9KvzPXEt6Uc55SNWyp7ESwwog04WofWE1hLbYyJvu9dnuIU6fR8W6K+u5lGQIm2oZnic1PX0CzEKzOjeJp/7Yes46D/oG0D7ohSvpyU+fzeAiI8fOH96RjS7sKK8S+popCfGdF8b8ow==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc0178ad-1b76-435f-514a-08d7c5971e55
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2020 08:35:13.8054 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lVFGl9uRD2rMf5K2AaCaECo9qfECmwwxIIBjbyLmmIn0LTDTAvG/T2EwCp0qvqCXjTZQIfKeEy9T77gtsnbrAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6702
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_013520_524490_BFF3D8F2 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.58 listed in list.dnswl.org]
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is ecspi ERR009165 on i.mx6/7 soc family, which cause FIFO
transfer to be send twice in DMA mode. Please get more information from:
https://www.nxp.com/docs/en/errata/IMX6DQCE.pdf. The workaround is adding
new sdma ram script which works in XCH  mode as PIO inside sdma instead
of SMC mode, meanwhile, 'TX_THRESHOLD' should be 0. The issue should be
exist on all legacy i.mx6/7 soc family before i.mx6ul.
NXP fix this design issue from i.mx6ul, so newer chips including i.mx6ul/
6ull/6sll do not need this workaroud anymore. All other i.mx6/7/8 chips
still need this workaroud. This patch set add new 'fsl,imx6ul-ecspi'
for ecspi driver and 'ecspi_fixed' in sdma driver to choose if need errata
or not.
The first two reverted patches should be the same issue, though, it
seems 'fixed' by changing to other shp script. Hope Sean or Sascha could
have the chance to test this patch set if could fix their issues.
Besides, enable sdma support for i.mx8mm/8mq and fix ecspi1 not work
on i.mx8mm because the event id is zero.

PS:
   Please get sdma firmware from below linux-firmware and copy it to your
local rootfs /lib/firmware/imx/sdma.
https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/imx/sdma

v2:
  1.Add commit log for reverted patches.
  2.Add comment for 'ecspi_fixed' in sdma driver.
  3.Add 'fsl,imx6sll-ecspi' compatible instead of 'fsl,imx6ul-ecspi'
    rather than remove.
v3:
  1.Confirm with design team make sure ERR009165 fixed on i.mx6ul/i.mx6ull
    /i.mx6sll, not fixed on i.mx8m/8mm and other i.mx6/7 legacy chips.
    Correct dts related dts patch in v2.
  2.Clean eratta information in binding doc and new 'tx_glitch_fixed' flag
    in spi-imx driver to state ERR009165 fixed or not.
  3.Enlarge burst size to fifo size for tx since tx_wml set to 0 in the
    errata workaroud, thus improve performance as possible.
v4:
  1.Add Ack tag from Mark and Vinod
  2.Remove checking 'event_id1' zero as 'event_id0'.
v5:
  1.Add the last patch for compatible with the current uart driver which
    using rom script, so both uart ram script and rom script supported
    in latest firmware, by default uart rom script used. UART driver
    will be broken without this patch.
v6:
  1.Resend after rebase the latest next branch.
  2.Remove below No.13~No.15 patches of v5 because they were mergered.
  	ARM: dts: imx6ul: add dma support on ecspi
  	ARM: dts: imx6sll: correct sdma compatible
  	arm64: defconfig: Enable SDMA on i.mx8mq/8mm
  3.Revert "dmaengine: imx-sdma: fix context cache" since
    'context_loaded' removed.
v7:
  1.Put the last patch 13/13 'Revert "dmaengine: imx-sdma: fix context
    cache"' to the ahead of 03/13 'Revert "dmaengine: imx-sdma: refine
    to load context only once" so that no building waring during comes out
    during bisect.
  2.Address Sascha's comments, including eliminating any i.mx6sx in this
    series, adding new 'is_imx6ul_ecspi()' instead imx in imx51 and taking
    care SMC bit for PIO.
  3.Add back missing 'Reviewed-by' tag on 08/15(v5):09/13(v7)
   'spi: imx: add new i.mx6ul compatible name in binding doc'

Robin Gong (13):
  Revert "ARM: dts: imx6q: Use correct SDMA script for SPI5 core"
  Revert "ARM: dts: imx6: Use correct SDMA script for SPI cores"
  Revert "dmaengine: imx-sdma: fix context cache"
  Revert "dmaengine: imx-sdma: refine to load context only once"
  dmaengine: imx-sdma: remove dupilicated sdma_load_context
  dmaengine: imx-sdma: add mcu_2_ecspi script
  spi: imx: fix ERR009165
  spi: imx: remove ERR009165 workaround on i.mx6ul
  spi: imx: add new i.mx6ul compatible name in binding doc
  dmaengine: imx-sdma: remove ERR009165 on i.mx6ul
  dma: imx-sdma: add i.mx6ul compatible name
  dmaengine: imx-sdma: fix ecspi1 rx dma not work on i.mx8mm
  dmaengine: imx-sdma: add uart rom script

 .../devicetree/bindings/dma/fsl-imx-sdma.txt       |  1 +
 .../devicetree/bindings/spi/fsl-imx-cspi.txt       |  1 +
 arch/arm/boot/dts/imx6q.dtsi                       |  2 +-
 arch/arm/boot/dts/imx6qdl.dtsi                     |  8 +--
 drivers/dma/imx-sdma.c                             | 67 ++++++++++++++--------
 drivers/spi/spi-imx.c                              | 61 +++++++++++++++++---
 include/linux/platform_data/dma-imx-sdma.h         |  8 ++-
 7 files changed, 108 insertions(+), 40 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
