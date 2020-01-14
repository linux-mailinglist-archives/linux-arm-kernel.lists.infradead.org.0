Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA1F113B4B4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 22:49:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=x8+2AdgSGSgkNJ1XRlG5Ufblc/MUucIqIriTV2KazsU=; b=E/M
	vTsMKbKleNGJRDP5w5xmDhHThxX+Y84J6MgB0l1yha3b0yUgSTGGBXd+wgEFKv1hxN9fBYIKAP95P
	UNSgcFBs8OdTWW0fU6s8uLwt1LLYkULKt2AmXAdXBrnxX/kqIe1Z3qEVVJ4vGt2GoAQmi/qLkDAzL
	wA9+KKbabiAgk4MHzbO228ijjVgajU26rDxL/lem0MqZmLA5tvZYegX7GcuQ96IDIRUApKDx+eSaq
	LkuJCMTVKkEAeHNbhjuQutwWSp4RG2Gm+i8ehrIEsbtBYP81gVEZBN3TrIkV5wck1oF89qOm0vf2S
	CYZxBiPk/17zSh8eIYcLdxcSLU+wIrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irU3o-0004pT-Gu; Tue, 14 Jan 2020 21:49:16 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irU2x-0004Ir-Vr; Tue, 14 Jan 2020 21:48:27 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id EC927200507;
 Tue, 14 Jan 2020 22:48:19 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id ED0012000EA;
 Tue, 14 Jan 2020 22:48:13 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 5B31A40285;
 Wed, 15 Jan 2020 05:48:06 +0800 (SGT)
From: Han Xu <han.xu@nxp.com>
To: vkoul@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 esben@geanix.com, boris.brezillon@collabora.com
Subject: [PATCH 0/6] gpmi/mxs-dma runtime pm patch set
Date: Wed, 15 Jan 2020 05:43:57 +0800
Message-Id: <1579038243-28550-1-git-send-email-han.xu@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_134824_164235_6E9DB93C 
X-CRM114-Status: UNSURE (   3.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-imx@nxp.com, dmaengine@vger.kernel.org, han.xu@nxp.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

enable the system pm and runtime pm for mxs-dma and refine the gpmi
runtime pm code

Han Xu (6):
  dmaengine: mxs: change the way to register probe function
  dmaengine: mxs: add the remove function
  dmaengine: mxs: add the power management functions
  dmaengine: mxs: switch from dma_coherent to dma_pool
  mtd: rawnand: gpmi: refine the runtime pm ops
  mtd: rawnand: gpmi: set the pinctrl state for suspend/reusme

 drivers/dma/mxs-dma.c                      | 155 ++++++++++++++++++---
 drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c |  60 ++++----
 2 files changed, 167 insertions(+), 48 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
