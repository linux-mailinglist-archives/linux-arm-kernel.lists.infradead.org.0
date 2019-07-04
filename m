Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B475FA17
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 16:29:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vLq6BI7stYcC+nIdm/WlJlatdUy3AqwPfi4iWQuanNc=; b=lT6
	4MuyhRt2EAkiWqpuw3Mb4JuSVPJIp3kiB7iLyY287GVCAZXRNlTativXxCwTUzQskV0raAV5hbTDv
	Io+0kapv4BYVi0CUHUsjrg2JRXvIR/UqXjfEt4EXlAGD2EWGaWqB7tM7OvheLLk6mybsaTuxFt+SC
	3a3HZ00vXpeTtOzqF4aZ1QYkymj1c5Q578DOPWuavBdmPYJjDfgv/o6TDXihuuVcdzLcQLe+skypK
	H7uYFdbtF3uA/TfMpCy/EnEWpFHj2fcGSqA7992xJMebi4s1vh75/srZcK844c+cmfvtnJ8rBVtUr
	CeU/eqInNeGJ2mT8UZVljUvIIEsHWpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj2js-0006L2-UA; Thu, 04 Jul 2019 14:29:32 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj2jh-0006KZ-B7
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 14:29:22 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id B52EE2000B3;
 Thu,  4 Jul 2019 16:29:19 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E28DB200DA6;
 Thu,  4 Jul 2019 16:29:14 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 2E9FB402C0;
 Thu,  4 Jul 2019 22:29:09 +0800 (SGT)
From: fugang.duan@nxp.com
To: srinivas.kandagatla@linaro.org, shawnguo@kernel.org, s.hauer@pengutronix.de
Subject: [PATCH nvmem 1/1] nvmem: imx: correct the fuse word index
Date: Thu,  4 Jul 2019 22:20:15 +0800
Message-Id: <20190704142015.10701-1-fugang.duan@nxp.com>
X-Mailer: git-send-email 2.14.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_072921_518756_6B470987 
X-CRM114-Status: UNSURE (   8.55  )
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
Cc: fugang.duan@nxp.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Fugang Duan <fugang.duan@nxp.com>

iMX8 fuse word index represent as one 4-bytes word,
it should not be divided by 4.

Exp:
- MAC0 address layout in fuse:
offset 708: MAC[3] MAC[2] MAC[1] MAC[0]
offset 709: XX     xx     MAC[5] MAC[4]

Signed-off-by: Fugang Duan <fugang.duan@nxp.com>
---
 drivers/nvmem/imx-ocotp-scu.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/nvmem/imx-ocotp-scu.c b/drivers/nvmem/imx-ocotp-scu.c
index d9dc482..be2f5f0 100644
--- a/drivers/nvmem/imx-ocotp-scu.c
+++ b/drivers/nvmem/imx-ocotp-scu.c
@@ -71,8 +71,8 @@ static int imx_scu_ocotp_read(void *context, unsigned int offset,
 	void *p;
 	int i, ret;
 
-	index = offset >> 2;
-	num_bytes = round_up((offset % 4) + bytes, 4);
+	index = offset;
+	num_bytes = round_up(bytes, 4);
 	count = num_bytes >> 2;
 
 	if (count > (priv->data->nregs - index))
@@ -100,7 +100,7 @@ static int imx_scu_ocotp_read(void *context, unsigned int offset,
 		buf++;
 	}
 
-	memcpy(val, (u8 *)p + offset % 4, bytes);
+	memcpy(val, (u8 *)p, bytes);
 
 	kfree(p);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
