Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E48117BD3F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 13:50:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iBfhbM5zCu1rTL5HGMwTr5M5W1//zawy0u0rlz+n/dg=; b=NtHAjmBOBz1NwP
	g0bRgKkGJ322HhBr9BQaAeiT3whtg5suK3Xs+Vp5TcwMl7TqN7SP87n29P13JBefjrWZDpOqFIzaN
	Xrk1AJqfO29K6krUGGvDnLRbZb9RzNdirMQGC1ppWJRGhJxuhVFfSQ6CLp6smiqlK2JqrHn0bq+Ch
	jPZAzVz+dZCSOAlGsavwHvclO47bUZqXOkT0ZvaPbBsIUsx5BSUxMNfo5Ngllkqx+nMUKFam1OgGr
	qm8svCPGqPrSqVItP5kFnMrE12JjeDunXJV30nSblX8sAFvvuNC7apaXTlk/ejFbBh4HdihCaykxC
	brZveLaDaCEibyP/Futg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jACQk-0002RB-JW; Fri, 06 Mar 2020 12:50:18 +0000
Received: from mail-vi1eur05on2050.outbound.protection.outlook.com
 ([40.107.21.50] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jACQZ-000214-WE
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 12:50:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VcN6a2a4HRv6E9HVGIhHvNbz1oVs0KjzptPcvucYbjzWWJ3lR1y+Hu4FqSISzCmf9F1/+4YmQXKvDdpU1fLRkepmFTLiI+jV8pd5stO00Lc2VcfElfAo/NdLt7X6XH5hElJDhBMiqq6PXmFSqT6qBQphi+uwSaWa8yZjGkcPwn4PEAUG1CNCRW38anL1AwkqG61Lrzp1O9a+65272Zm3y4acbHvWBE2iiAdTxFWWlRKO9wAlGEJN1nNfWiuLt96f5sxUgHQXe/Ly5QjW2hzXeebVaf2kA6HuWjcNShhs03Ggh15q9hQdEnfmtdo8X5on0/4rwi219z9OXDoOghQJlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CNLXeyBcpces7IihoLXFLB1vS7qwMWWqV+o1Emzawbs=;
 b=I5s2VTcLxQprhUc745WtatlQ2XCy07M61Ppw4YZ673w4sWFzCxwsTchgKioNz24HjHMN9TT0BbVe3M/lGhfetVTlV3CgaXOZQicMBOXcJOZoBBz7pPz1ASWMsr77YLhEecfZNvGXV/n58Qd6HL3eCUcmdvcBvfWQzVcQPxPa0S0Q0tCY+yOvo4wwnKP8F+7HAeicdidKlYyjydluGy1S7MiP+Q/4wPY+aaP2nGSS3dHviGdGBCIdEvGpst0YU+c40YWbVaGa4miosXa3Oew4qKRNRwN3N/p8KnEX4M4g9NRTN1xcXMZdljqI9u2WdjzqXJbZmfVxHzhPf9VRD8DL3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CNLXeyBcpces7IihoLXFLB1vS7qwMWWqV+o1Emzawbs=;
 b=Twf5tJHBgsxiT0IxAV5IMEVBUUX3QjVlnnlgc6XN6q2ocg2I5kVVWDvHYs/gAuLOqdq1Ec+Bg5UBmw5o03j96aBcNjt5hpoCq16qDnFvTpc6vK+ctkPZuxOlYdXFlxeAiywYq08CiGLo227qb48szVCNcVCNS2HLw4kXhlUY6+M=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.palcu@oss.nxp.com; 
Received: from VI1PR04MB5775.eurprd04.prod.outlook.com (20.178.126.145) by
 VI1PR04MB6846.eurprd04.prod.outlook.com (52.133.244.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.16; Fri, 6 Mar 2020 12:50:04 +0000
Received: from VI1PR04MB5775.eurprd04.prod.outlook.com
 ([fe80::8542:a5b7:a83:6ff1]) by VI1PR04MB5775.eurprd04.prod.outlook.com
 ([fe80::8542:a5b7:a83:6ff1%3]) with mapi id 15.20.2772.019; Fri, 6 Mar 2020
 12:50:04 +0000
From: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>
To: Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 0/4] Add support for iMX8MQ Display Controller Subsystem
Date: Fri,  6 Mar 2020 14:49:24 +0200
Message-Id: <20200306124930.20978-1-laurentiu.palcu@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: AM0PR01CA0096.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:10e::37) To VI1PR04MB5775.eurprd04.prod.outlook.com
 (2603:10a6:803:e2::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from fsr-ub1864-141.ea.freescale.net (89.37.124.34) by
 AM0PR01CA0096.eurprd01.prod.exchangelabs.com (2603:10a6:208:10e::37) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.15 via Frontend
 Transport; Fri, 6 Mar 2020 12:50:03 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [89.37.124.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: a1995ce5-6da0-420d-e6bc-08d7c1cce3ff
X-MS-TrafficTypeDiagnostic: VI1PR04MB6846:|VI1PR04MB6846:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR04MB6846C3F6C41E6CE09AC58B76BEE30@VI1PR04MB6846.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-Forefront-PRVS: 0334223192
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(396003)(376002)(366004)(136003)(189003)(199004)(81166006)(8936002)(81156014)(186003)(110136005)(8676002)(2906002)(44832011)(26005)(2616005)(956004)(4326008)(16526019)(6506007)(1076003)(52116002)(6666004)(86362001)(66946007)(6512007)(6486002)(5660300002)(478600001)(316002)(66556008)(66476007)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6846;
 H:VI1PR04MB5775.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
Received-SPF: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5t72fPTjFKYkITp0eeaxFFcktKe1Rq7qzlnO+M8IvITuyzbwOBIPKf8bpQWDk1sy7IPETnQYpHlslJuTdrqm821tDl5NS8hzZd26O94e1bCm2oFngoDiIQFa8vOMR9MmcY6QjvwtI2/GBoEV+1QzeB+tBMlGIr/sZnImcJIby+K3AvVnXuuhffYOsEhcfIOrVSWO243W6xwg+0zAIm7xMKwgrHX96khyljuhekw+uwiLJLm2aRgPbX4lDjN3sEXMEOakC+hx7L3j+9Ff2qiGQmxkOJG2bCXaOwr1zS5nz/eVYQRHQHidrNFbor0g+PkxM9TektBwrTtgLWf5y2bJIXcLcn7VCfsRiG2Phz9PfNkdcpZ6ENKf0Jlghfcd7KGVkQfI8kz2vp7JLUxn4bxnKL9SgiF1j2UUBnja9ZK+YeOv4q3mUzqJQPet9MDh62NDx5Rjd9KJ1eHh+rId7H3YB19Pe9HdYF75dXBmMuj39O5FFnTGKliQ1Uz+3Hdu2Ec/
X-MS-Exchange-AntiSpam-MessageData: D5HzvIC/VqPRZyuE21PvvhtnPzxagJys3T+4nCTWlt1lULIdhHIYaA3r1GYrl72ZP1JFjXlJip97ld1/vLafDf4Rt36p2Issgr5MTDflGGc4Qi86oTFpRVA5/W9OfGE9Xkt60csMAKl0XVIHyxxZYg==
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1995ce5-6da0-420d-e6bc-08d7c1cce3ff
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2020 12:50:04.1171 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vcLLOrn5tqEZG444pE80ejRc7kifCNXYOYXlF/g0G50rIvCwIq7xyRSTKxorwVi8Mk0fH9yOmktAIejJai9KVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6846
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_045008_133935_54721863 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -1.5 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.50 listed in list.dnswl.org]
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.50 listed in wl.mailspike.net]
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
Cc: agx@sigxcpu.org, laurentiu.palcu@oss.nxp.com, lukas@mntmn.com,
 linux-kernel@vger.kernel.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Laurentiu Palcu <laurentiu.palcu@nxp.com>

Hi,

This patchset adds initial DCSS support for iMX8MQ chip. Initial support
includes only graphics plane support (no video planes), no HDR10 capabilities,
no graphics decompression (only linear, tiled and super-tiled buffers allowed).

Support for the rest of the features will be added incrementally, in subsequent
patches.

The patchset was tested with both HDP driver (not yet upstreamed) and MIPI-DSI
(drivers already on the dri-devel ML).

Thanks,
Laurentiu

Changes in v4:
 * Addressed Lucas and Philipp's comments:
   * Added DRM_KMS_CMA_HELPER dependency in Kconfig;
   * Removed usage of devm_ functions since I'm already doing all the
     clean-up in the submodules_deinit();
   * Moved the drm_crtc_arm_vblank_event() in dcss_crtc_atomic_flush();
   * Removed en_completion variable from dcss_crtc since this was
     introduced mainly to avoid vblank timeout warnings which were fixed
     by arming the vblank event in flush() instead of begin();
   * Removed clks_on and irq_enabled flags since all the calls to
     enabling/disabling clocks and interrupts were balanced;
   * Removed the custom atomic_commit callback and used the DRM core
     helper and, in the process, got rid of a workqueue that wasn't
     necessary anymore;
   * Fixed some minor DT binding issues flagged by Philipp;
   * Some other minor changes suggested by Lucas;
 * Removed YUV formats from the supported formats as these cannot work
   without the HDR10 module CSCs and LUTs. Will add them back when I
   will add support for video planes;

Changes in v3:
 * rebased to latest linux-next and made it compile as drmP.h was
   removed;
 * removed the patch adding the VIDEO2_PLL clock. It's already applied;
 * removed an unnecessary 50ms sleep in the dcss_dtg_sync_set();
 * fixed a a spurious hang reported by Lukas Hartmann and encountered
   by me several times;
 * mask DPR and DTG interrupts by default, as they may come enabled from
   U-boot;

Changes in v2:
 * Removed '0x' in node's unit-address both in DT and yaml;
 * Made the address region size lowercase, to be consistent;
 * Removed some left-over references to P010;
 * Added a Kconfig dependency of DRM && ARCH_MXC. This will also silence compilation
   issues reported by kbuild for other architectures;


Laurentiu Palcu (4):
  drm/imx: compile imx directory by default
  drm/imx: Add initial support for DCSS on iMX8MQ
  dt-bindings: display: imx: add bindings for DCSS
  arm64: dts: imx8mq: add DCSS node

 .../bindings/display/imx/nxp,imx8mq-dcss.yaml |  85 ++
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  23 +
 drivers/gpu/drm/Makefile                      |   2 +-
 drivers/gpu/drm/imx/Kconfig                   |   2 +
 drivers/gpu/drm/imx/Makefile                  |   1 +
 drivers/gpu/drm/imx/dcss/Kconfig              |   9 +
 drivers/gpu/drm/imx/dcss/Makefile             |   6 +
 drivers/gpu/drm/imx/dcss/dcss-blkctl.c        |  73 ++
 drivers/gpu/drm/imx/dcss/dcss-crtc.c          | 206 +++++
 drivers/gpu/drm/imx/dcss/dcss-ctxld.c         | 431 +++++++++
 drivers/gpu/drm/imx/dcss/dcss-dev.c           | 277 ++++++
 drivers/gpu/drm/imx/dcss/dcss-dev.h           | 172 ++++
 drivers/gpu/drm/imx/dcss/dcss-dpr.c           | 562 ++++++++++++
 drivers/gpu/drm/imx/dcss/dcss-drv.c           | 183 ++++
 drivers/gpu/drm/imx/dcss/dcss-dtg.c           | 413 +++++++++
 drivers/gpu/drm/imx/dcss/dcss-kms.c           | 188 ++++
 drivers/gpu/drm/imx/dcss/dcss-kms.h           |  43 +
 drivers/gpu/drm/imx/dcss/dcss-plane.c         | 405 +++++++++
 drivers/gpu/drm/imx/dcss/dcss-scaler.c        | 826 ++++++++++++++++++
 drivers/gpu/drm/imx/dcss/dcss-ss.c            | 180 ++++
 20 files changed, 4086 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/display/imx/nxp,imx8mq-dcss.yaml
 create mode 100644 drivers/gpu/drm/imx/dcss/Kconfig
 create mode 100644 drivers/gpu/drm/imx/dcss/Makefile
 create mode 100644 drivers/gpu/drm/imx/dcss/dcss-blkctl.c
 create mode 100644 drivers/gpu/drm/imx/dcss/dcss-crtc.c
 create mode 100644 drivers/gpu/drm/imx/dcss/dcss-ctxld.c
 create mode 100644 drivers/gpu/drm/imx/dcss/dcss-dev.c
 create mode 100644 drivers/gpu/drm/imx/dcss/dcss-dev.h
 create mode 100644 drivers/gpu/drm/imx/dcss/dcss-dpr.c
 create mode 100644 drivers/gpu/drm/imx/dcss/dcss-drv.c
 create mode 100644 drivers/gpu/drm/imx/dcss/dcss-dtg.c
 create mode 100644 drivers/gpu/drm/imx/dcss/dcss-kms.c
 create mode 100644 drivers/gpu/drm/imx/dcss/dcss-kms.h
 create mode 100644 drivers/gpu/drm/imx/dcss/dcss-plane.c
 create mode 100644 drivers/gpu/drm/imx/dcss/dcss-scaler.c
 create mode 100644 drivers/gpu/drm/imx/dcss/dcss-ss.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
