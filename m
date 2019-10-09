Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7099DD094C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 10:10:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=p+uDMKOshLpPDl5WroOej94XvNr2M9nx04T2ye2IYFs=; b=u8rj5+k6gP/9JvBarVsWrsTVlf
	rpRpZqhAn6wRjn7dtJbT0ZbFqyX7vYWWbj1vt48aBlxOUo5HW+lKpC0aYVosdF2YkblZe9QnxT+Dm
	AIPhYTLZlNOqYhqDluAQdsIya2t5X5paBFP/vo7jz0CULRA6+vHkzw08mNDDL0Ou0QQwcqNmYKKaP
	JCOv6BXJ5XsOZsnTgQWcB8G+qxpSfA/jSaaV27J7mMBMQdPKtanZity5sN9L+naS7FRNvyO4B6LWz
	fLvdIi2yuVoERn5/u5byuzu73ov7ygxNbVSNY126tRINUuxSbTAj7kHyEDbhVgxDuYDqv3+rA4Xdh
	J/l3n8sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI73Q-0002k1-T7; Wed, 09 Oct 2019 08:10:40 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI72Y-00015z-Uz
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 08:09:49 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id AFACE1A039D;
 Wed,  9 Oct 2019 10:09:45 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A951F1A0382;
 Wed,  9 Oct 2019 10:09:41 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id B4232402FF;
 Wed,  9 Oct 2019 16:09:33 +0800 (SGT)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: jassisinghbrar@gmail.com, o.rempel@pengutronix.de, daniel.baluta@nxp.com,
 aisheng.dong@nxp.com
Subject: [PATCH v6 2/4] mailbox: imx: Clear the right interrupts at shutdown
Date: Wed,  9 Oct 2019 16:07:19 +0800
Message-Id: <1570608441-29651-3-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570608441-29651-1-git-send-email-hongxing.zhu@nxp.com>
References: <1570608441-29651-1-git-send-email-hongxing.zhu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_010947_191019_CBFA5FB7 
X-CRM114-Status: UNSURE (   7.66  )
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
Cc: Richard Zhu <hongxing.zhu@nxp.com>, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Daniel Baluta <daniel.baluta@nxp.com>

Make sure to only clear enabled interrupts keeping count
of the connection type.

Suggested-by: Oleksij Rempel <o.rempel@pengutronix.de>
Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
---
 drivers/mailbox/imx-mailbox.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/mailbox/imx-mailbox.c b/drivers/mailbox/imx-mailbox.c
index 957c10c..afe625e 100644
--- a/drivers/mailbox/imx-mailbox.c
+++ b/drivers/mailbox/imx-mailbox.c
@@ -219,8 +219,19 @@ static void imx_mu_shutdown(struct mbox_chan *chan)
 		return;
 	}
 
-	imx_mu_xcr_rmw(priv, 0, IMX_MU_xCR_TIEn(cp->idx) |
-		       IMX_MU_xCR_RIEn(cp->idx) | IMX_MU_xCR_GIEn(cp->idx));
+	switch (cp->type) {
+	case IMX_MU_TYPE_TX:
+		imx_mu_xcr_rmw(priv, 0, IMX_MU_xCR_TIEn(cp->idx));
+		break;
+	case IMX_MU_TYPE_RX:
+		imx_mu_xcr_rmw(priv, 0, IMX_MU_xCR_RIEn(cp->idx));
+		break;
+	case IMX_MU_TYPE_RXDB:
+		imx_mu_xcr_rmw(priv, 0, IMX_MU_xCR_GIEn(cp->idx));
+		break;
+	default:
+		break;
+	}
 
 	free_irq(priv->irq, chan);
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
