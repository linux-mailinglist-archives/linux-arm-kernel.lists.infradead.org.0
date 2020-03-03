Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD70177006
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 08:24:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sQ4LV0kgEXwRBp95XqQyZ89/EW/9BO85YgjNjlQjEGU=; b=eYfA1FHhxqaO2R
	djilL5HzBSjHc7760w4kGiL5QE/Wv853E+auUDxuBaCe3HT8eiwO/NaLkMETMSo7cOvus0OANSqXz
	Ti40ApjqaSjSFxzbcop9eK+jlL3Cr3i8CDAfRKljDnCXu0AoM5Ddp8qc7+ywkbObArJFs1sgOuRQy
	lnKJJYH9rYs+RJT90C921/Nn3vjmq1pJyuz1yc11v6FGyJcgDGk5agIhYx92PmUGEXQCP4FaXAGWw
	jDxtFQ+IHrNFKV6R0Ec0Ue8aiNQOWNRfs6kkkrk+XgYthoW1/znNxA1mpGdhoNAztZjke44t+uvfM
	9b4o3V0ewnfAnolysRXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j91uK-0000uD-PR; Tue, 03 Mar 2020 07:24:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j91tG-0008VK-W1
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 07:22:56 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1j91tB-0000Qm-Ed; Tue, 03 Mar 2020 08:22:49 +0100
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1j91tA-0000xa-5M; Tue, 03 Mar 2020 08:22:48 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Jassi Brar <jassisinghbrar@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v1] MAINTAINERS: mailbox: imx: take over maintainership
Date: Tue,  3 Mar 2020 08:22:47 +0100
Message-Id: <20200303072247.3641-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_232255_055312_011E7D02 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-kernel@vger.kernel.org, Oleksij Rempel <o.rempel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I would like to maintain the imx-mailbox driver. I'm the author of this
driver and involved in reviewing of all related patches anyway. So, make
it official.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 38fe2f3f7b6f..8f3f6b764779 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6681,6 +6681,14 @@ S:	Maintained
 F:	drivers/i2c/busses/i2c-imx-lpi2c.c
 F:	Documentation/devicetree/bindings/i2c/i2c-imx-lpi2c.txt
 
+FREESCALE IMX MAILBOX DRIVER
+M:	Oleksij Rempel <o.rempel@pengutronix.de>
+R:	Pengutronix Kernel Team <kernel@pengutronix.de>
+L:	linux-kernel@vger.kernel.org
+S:	Maintained
+F:	drivers/mailbox/imx-mailbox.c
+F:	Documentation/devicetree/bindings/mailbox/fsl,mu.txt
+
 FREESCALE IMX / MXC FEC DRIVER
 M:	Fugang Duan <fugang.duan@nxp.com>
 L:	netdev@vger.kernel.org
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
