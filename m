Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB2D1EC8C7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 07:27:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NrcceARwe2mTVoB88Tmym8WbBF+Ok56l+bGGaIVCtVI=; b=fKLKGtyMUxKdtE+s7sFHp//y5Y
	c+Po4YD3W4ezvfpcCmXqbnTU+W3tQqguLydpThaZlgHO6qr84qvMra+U8zdSndGBr3kHnvGYheOqG
	vQBbaRbuZ5jt22c+6rtXdK8wr33eF17OVmpll72iB2OmUsxF3kP3ZWoeE6iL0jJgfiVi/03xW7POo
	kxIE9TuFEs8rKbVygHB5oyoXuuJGQhRFZIQ035/VKNm92BhAWu/Ad8cTxPvhThIHo3NpTlSPsjrsU
	ePkyZEJ9Tg1PeA3EyTF3OUQPKNoe2kvXlCmLC/fVAisCyZFxzTxyQhgI3+wQ4Cqk+NVSv/lYRxWOY
	H4ADgCXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgLvQ-0005L0-1G; Wed, 03 Jun 2020 05:26:52 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgLun-0004wo-Rt
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 05:26:15 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id AFF5E200D21;
 Wed,  3 Jun 2020 07:26:12 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 4C1A7200D53;
 Wed,  3 Jun 2020 07:26:09 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id B2687402B1;
 Wed,  3 Jun 2020 13:26:04 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: jassisinghbrar@gmail.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] mailbox: imx: ONLY IPC MU needs IRQF_NO_SUSPEND flag
Date: Wed,  3 Jun 2020 13:15:44 +0800
Message-Id: <1591161344-12885-4-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591161344-12885-1-git-send-email-Anson.Huang@nxp.com>
References: <1591161344-12885-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_222614_040961_38A97C29 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

IPC MU has no power domain assigned and there could be IPC during
noirq suspend phase, so IRQF_NO_SUSPEND flag is needed for IPC MU.
However, for other MUs, they have power domain assigned and their
power will be turned off during noirq suspend phase, but with
IRQF_NO_SUSPEND set, their interrupts are NOT disabled even after
their power turned off, it will cause system crash when mailbox
driver trys to handle pending interrupts but the MU power is already
turned off.

So, IRQF_NO_SUSPEND flag should ONLY be added to IPC MU which has
power domain managed by SCU, then all other MUs' pending interrupts
after noirq suspend phase will be handled after system resume.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/mailbox/imx-mailbox.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/mailbox/imx-mailbox.c b/drivers/mailbox/imx-mailbox.c
index 080b608..7205b82 100644
--- a/drivers/mailbox/imx-mailbox.c
+++ b/drivers/mailbox/imx-mailbox.c
@@ -292,6 +292,7 @@ static int imx_mu_startup(struct mbox_chan *chan)
 {
 	struct imx_mu_priv *priv = to_imx_mu_priv(chan->mbox);
 	struct imx_mu_con_priv *cp = chan->con_priv;
+	unsigned long irq_flag = IRQF_SHARED;
 	int ret;
 
 	pm_runtime_get_sync(priv->dev);
@@ -302,8 +303,12 @@ static int imx_mu_startup(struct mbox_chan *chan)
 		return 0;
 	}
 
-	ret = request_irq(priv->irq, imx_mu_isr, IRQF_SHARED |
-			  IRQF_NO_SUSPEND, cp->irq_desc, chan);
+	/* IPC MU should be with IRQF_NO_SUSPEND set */
+	if (!priv->dev->pm_domain)
+		irq_flag |= IRQF_NO_SUSPEND;
+
+	ret = request_irq(priv->irq, imx_mu_isr, irq_flag,
+			  cp->irq_desc, chan);
 	if (ret) {
 		dev_err(priv->dev,
 			"Unable to acquire IRQ %d\n", priv->irq);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
