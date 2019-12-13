Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EBFC11DBFF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 03:11:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IbEiEtr8EEO+Jn7a+KiYe6xJ97dH73Mygh9d0ZKKKIs=; b=GZr
	fXFsDh/H8Sc1IzTPFMvaGBYAtL16+WW7CSFJ0wiw/ck2Pw1HoM+KelZg1qD/FaQ9KTcBBavzuwzF1
	o/wqfNayT9EpYQaXWw3my8d0Ou3830go81jhUUA6kVdF114sPU1cai6BlQJyHb/gMhPBfomPE6L15
	Uw8qh/ieE2tK/s85TDLjh3aW0N1h7heqehNpLdu69w3zdPy48TjsEDIQR455JjSCwdNrfCaT+lBpr
	WTHkuFMEJwsCdh5bGfGlPVwsP26rVeT3hLTnY4edHUS5IvLoXlA4aYzxrGVjPI9kwu6kQr657H17c
	XcXv4ocYLNubfY5x/KKQE4I9ubI/NMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifaQI-0000cN-Iv; Fri, 13 Dec 2019 02:11:18 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifaQB-0000bc-Nm
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 02:11:13 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id C9ED61A0149;
 Fri, 13 Dec 2019 03:11:07 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 4E73F1A031E;
 Fri, 13 Dec 2019 03:11:03 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 7474640296;
 Fri, 13 Dec 2019 10:10:57 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: dmitry.torokhov@gmail.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, robh@kernel.org,
 linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] input: keyboard: imx_sc_key: Only take the valid data from
 SCU firmware as key state
Date: Fri, 13 Dec 2019 10:08:29 +0800
Message-Id: <1576202909-1661-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_181111_913559_59C6F79A 
X-CRM114-Status: UNSURE (   7.88  )
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When reading key state from SCU, the response data from SCU firmware
is 4 bytes due to MU message protocol, but ONLY the first byte is the
key state, other 3 bytes could be some dirty data, so we should ONLY
take the first byte as key state to avoid reporting incorrect state.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/input/keyboard/imx_sc_key.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/input/keyboard/imx_sc_key.c b/drivers/input/keyboard/imx_sc_key.c
index 5379952..9f809ae 100644
--- a/drivers/input/keyboard/imx_sc_key.c
+++ b/drivers/input/keyboard/imx_sc_key.c
@@ -78,7 +78,13 @@ static void imx_sc_check_for_events(struct work_struct *work)
 		return;
 	}
 
-	state = (bool)msg.state;
+	/*
+	 * The response data from SCU firmware is 4 bytes,
+	 * but ONLY the first byte is the key state, other
+	 * 3 bytes could be some dirty data, so we should
+	 * ONLY take the first byte as key state.
+	 */
+	state = (bool)(msg.state & 0xff);
 
 	if (state ^ priv->keystate) {
 		priv->keystate = state;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
