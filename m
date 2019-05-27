Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2902AD35
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 05:06:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kl3RcJg6Bjiq8zJirQJfRhaohADTPNa9sNC1MBwWtLo=; b=IAGh+vAW3GwAdg
	oB2vF4VEgdjfSYPyEp1s3ti+ogOrhrJHHvG7xoe0KL05jxyQkfQQXwNOZVaCpqymUHI0+YAbU5Wfr
	oD5Q3YnEkgnBD9AIqgrk5ObV/Cvj+Vqga0W4cux41/hh5uupN84lw5ieG7+PYbIlEk7edT2PkWD4S
	G43wdEMLda2W41V24nZyEc/3vKL7lr9WIkULxIC71P5p1PzYATx2r4XTFAJ7YBhZIJGy+ktC7j9+w
	Jx8Q52D/Ww3/0vIjtNaTL0RhyhpouhvOyAQF7JjffZ/EJQRFCmI2WEPTPw1zlpCFgc7Z5igIWyxSJ
	cGV/YtcfdegWRdD9mTjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV5yK-0003fi-Ma; Mon, 27 May 2019 03:06:48 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV5wP-0000hU-UT
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 03:04:52 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9EE191A01AC;
 Mon, 27 May 2019 05:04:48 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 526231A0AB2;
 Mon, 27 May 2019 05:04:43 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 277C6402D6;
 Mon, 27 May 2019 11:04:34 +0800 (SGT)
From: Peter Chen <peter.chen@nxp.com>
To: balbi@kernel.org,
	shawnguo@kernel.org
Subject: [PATCH v3 8/8] usb: chipidea: imx: "fsl,
 usbphy" phandle is not mandatory now
Date: Mon, 27 May 2019 11:06:16 +0800
Message-Id: <20190527030616.44397-9-peter.chen@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190527030616.44397-1-peter.chen@nxp.com>
References: <20190527030616.44397-1-peter.chen@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_200450_233243_8BCDA7D6 
X-CRM114-Status: UNSURE (   9.90  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: aisheng.dong@nxp.com, devicetree@vger.kernel.org,
 Peter Chen <peter.chen@nxp.com>, linux-usb@vger.kernel.org,
 chunfeng.yun@mediatek.com, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, fabio.estevam@nxp.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since the chipidea common code support get the USB PHY phandle from
"phys", the glue layer is not mandatory to get the "fsl,usbphy" phandle
any more.

Signed-off-by: Peter Chen <peter.chen@nxp.com>
---
 drivers/usb/chipidea/ci_hdrc_imx.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/chipidea/ci_hdrc_imx.c b/drivers/usb/chipidea/ci_hdrc_imx.c
index a76708501236..b5abfe89190c 100644
--- a/drivers/usb/chipidea/ci_hdrc_imx.c
+++ b/drivers/usb/chipidea/ci_hdrc_imx.c
@@ -398,8 +398,9 @@ static int ci_hdrc_imx_probe(struct platform_device *pdev)
 		ret = PTR_ERR(data->phy);
 		/* Return -EINVAL if no usbphy is available */
 		if (ret == -ENODEV)
-			ret = -EINVAL;
-		goto err_clk;
+			data->phy = NULL;
+		else
+			goto err_clk;
 	}
 
 	pdata.usb_phy = data->phy;
-- 
2.14.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
