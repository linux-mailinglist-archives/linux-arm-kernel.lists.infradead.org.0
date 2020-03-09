Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3EA317E9D7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 21:18:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P0r8QpQemS1wAX1Rn43NUassF3Ku2EJseyGDtkJfDgk=; b=Y3sifOWaF4hQsn
	KszvfTO/0GY1Vag8x3/oaHunvSR2/wvlXmmPdtFKijrpXpoMgkBBWv5Da0HCu7SibJsbE/v1is8jA
	aWZFM5fgGxEhkoOxNthGT9dg8y3Nhh5H8ylmhYpry8gdL/Cl/jDe+I2I/RY2OwvAlP40e7Na1iT3W
	i8v7BS0eNWqu32ATEuzzsvb+i5CNWFP+ioEnmeS3pTUA/uW8I6vw5iR5Mqs8zGRaOE5/uE5akQF5C
	VFTN3mj2bbOmpS3ilPKZqEkyNNpci0EBdAhpC0X39HhNL+6o8bt5AjzSm2nkq/Ywi7hTNZKNcq/+l
	X5B8WF9FvGTQfUkBsnsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBOrN-0001r5-JP; Mon, 09 Mar 2020 20:18:45 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBOrG-0001qU-RX
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 20:18:40 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48bqL40Fv6z1rqr6;
 Mon,  9 Mar 2020 21:18:36 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48bqL36L5cz1qqkK;
 Mon,  9 Mar 2020 21:18:35 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id v1j6b16FhZMq; Mon,  9 Mar 2020 21:18:34 +0100 (CET)
X-Auth-Info: pxE9hLQTDSKVUdsKBhgO8Qz9VASPqG+2R5NrZAxTfik=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Mon,  9 Mar 2020 21:18:34 +0100 (CET)
From: Marek Vasut <marex@denx.de>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH V2] drm/imx: parallel-display: Adjust bus_flags handling
Date: Mon,  9 Mar 2020 21:18:33 +0100
Message-Id: <20200309201833.41648-1-marex@denx.de>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_131839_043528_F300F574 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Marek Vasut <marex@denx.de>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The bus_flags handling logic does not seem to cover all potential
usecases. Specifically, this seems to fail with an "edt,etm0700g0edh6"
display attached to an 24bit display interface, with interface-pix-fmt
= "rgb24" set in DT.

This patch fixes the problem by overriding the imx_crtc_state->bus_flags
from the imxpd->bus_flags only if the DT property "interface-pix-fmt" is
present or if the DI provides no formats.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: David Airlie <airlied@linux.ie>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
To: dri-devel@lists.freedesktop.org
---
V2: Rebase on next, update description
---
 drivers/gpu/drm/imx/parallel-display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/imx/parallel-display.c b/drivers/gpu/drm/imx/parallel-display.c
index 08fafa4bf8c2..e411179cba1f 100644
--- a/drivers/gpu/drm/imx/parallel-display.c
+++ b/drivers/gpu/drm/imx/parallel-display.c
@@ -216,7 +216,7 @@ static int imx_pd_bridge_atomic_check(struct drm_bridge *bridge,
 
 	if (next_bridge_state)
 		bus_flags = next_bridge_state->input_bus_cfg.flags;
-	else if (!imxpd->bus_format && di->num_bus_formats)
+	else if (di->num_bus_formats)
 		bus_flags = di->bus_flags;
 	else
 		bus_flags = imxpd->bus_flags;
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
