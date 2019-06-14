Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 803C8458DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 11:37:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kl3RcJg6Bjiq8zJirQJfRhaohADTPNa9sNC1MBwWtLo=; b=XqUIEXGHuPK7WkwcAyejYY69qx
	oDekfArZ7H3BNM127fnQW8li8guwfJAGmEjA0MRxWFGoB60kZA/wVKQdW0yMi90UD1fXYoOk+s6ty
	F6WL+B/a/rbf6+892Q7poP+HPq4fug4Lz3mpr2XxQoBjBt57Ypef3LpIOoiqkEn+hk8H8ZbTA6ID6
	6uTbMlZtOEBVFeF8REIBXhi4Au06pJsLrEWZMg7+uh/XR01pZmLdZry6fFa7m7lzOr3/HeYtPKKd8
	qSpFYmDYThLEJ0gFnA7NiFZHOZWGitLdR8aVWVMwwMaTaFPtooKO85ePquroIgTjd3vv8GubmPBol
	OeFZ2FmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbie3-0000FA-2i; Fri, 14 Jun 2019 09:37:15 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbib8-0005BU-A0
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 09:34:15 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id F0C521A0610;
 Fri, 14 Jun 2019 11:34:12 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A7EDB1A0606;
 Fri, 14 Jun 2019 11:34:07 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id C670F40319;
 Fri, 14 Jun 2019 17:33:59 +0800 (SGT)
From: Peter Chen <peter.chen@nxp.com>
To: balbi@kernel.org,
	shawnguo@kernel.org
Subject: [PATCH v4 8/8] usb: chipidea: imx: "fsl,
 usbphy" phandle is not mandatory now
Date: Fri, 14 Jun 2019 17:35:44 +0800
Message-Id: <20190614093544.11730-9-peter.chen@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190614093544.11730-1-peter.chen@nxp.com>
References: <20190614093544.11730-1-peter.chen@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_023414_567993_325F219D 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: aisheng.dong@nxp.com, devicetree@vger.kernel.org,
 Peter Chen <peter.chen@nxp.com>, linux-usb@vger.kernel.org,
 chunfeng.yun@mediatek.com, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, fabio.estevam@nxp.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
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
