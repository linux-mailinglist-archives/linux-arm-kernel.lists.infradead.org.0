Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3465245719
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 10:15:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wwp98OtOMjqWQychtnpx+85q7M3cwCvh/U1KWIGE6fY=; b=ZN1
	4HwaGPrQ/XzoeWtFBvpOCrFbW0sn63ymSmrSRNsRP4uZSWWhGon3274evor20jsvMS0922lYk7LJC
	3o8P1SiK7Xh1nt95hKSC8BBHSLrpjtvD6GIgSL3IdGhrb51yy3qvC8LHfC9IjlvBM8DpFRxWAfIFH
	II2X7megUaIMbDX1+6pZBGPZfeSVMh6Ru8EQGiv+Rnfxw/aRWLEu1sipy2nhoZfYxWDi1ychorlZY
	VO9lDRCnmqrasew6MFwIVZ2rYNepOreN/DBHZslFdk7SVxNFDi4rTbQKuCFlCaUKD/bbKqabsu9P3
	5vYLgc9rjmTNVItF23E61JXOw4/UibA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbhN4-0006Ne-CZ; Fri, 14 Jun 2019 08:15:38 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbhMo-0006M4-Cx
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 08:15:23 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 57B331A05D1;
 Fri, 14 Jun 2019 10:15:18 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D8CFD1A05D0;
 Fri, 14 Jun 2019 10:15:11 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id A6E2740310;
 Fri, 14 Jun 2019 16:15:03 +0800 (SGT)
From: daniel.baluta@nxp.com
To: shawnguo@kernel.org
Subject: [PATCH 0/2] Add support for DSP IPC protocol driver
Date: Fri, 14 Jun 2019 16:16:48 +0800
Message-Id: <20190614081650.11880-1-daniel.baluta@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_011522_594396_1C3C28FD 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: aisheng.dong@nxp.com, mark.rutland@arm.com, daniel.baluta@gmail.com,
 anson.huang@nxp.com, devicetree@vger.kernel.org, festevam@gmail.com,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, o.rempel@pengutronix.de,
 robh+dt@kernel.org, linux-imx@nxp.com, daniel.baluta@nxp.com,
 shengjiu.wang@nxp.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Daniel Baluta <daniel.baluta@nxp.com>

Hifi4 DSP can be found on some i.MX8 platforms (e.g i.MX8QXP, i.MX8QM).
This patch series introduces the layer that allows Host CPU to
communicate with DSP.

This layer provides a doorbell and clients can used that to notify DSP
that a message is placed somewhere in the shared memory.

The protocol used is request - reply. Usually, Host/DSP write a message
in a shared memory area and notify the other side. The other side will
also write a reply in a designated shared memory area and then ring
the doorbell to let the counterpart that a message is ready.

Daniel Baluta (2):
  firmware: imx: Add DSP IPC protocol driver
  dt-bindings: arm: fsl: Add DSP IPC binding support

 .../bindings/arm/freescale/fsl,dsp.yaml       |  43 +++++
 drivers/firmware/imx/Kconfig                  |  11 ++
 drivers/firmware/imx/Makefile                 |   1 +
 drivers/firmware/imx/imx-dsp.c                | 167 ++++++++++++++++++
 include/linux/firmware/imx/dsp.h              |  61 +++++++
 5 files changed, 283 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/freescale/fsl,dsp.yaml
 create mode 100644 drivers/firmware/imx/imx-dsp.c
 create mode 100644 include/linux/firmware/imx/dsp.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
