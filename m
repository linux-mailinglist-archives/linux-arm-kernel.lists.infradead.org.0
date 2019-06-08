Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF5839C9F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 12:57:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dLdPJ99o55UvtmJI+D16FFCxmbfx5f15O3k7k+ysGF8=; b=OEe2at0q56MKUO
	yYNB5JXaD3l0Dynb4Stb4etHNGhuhfnLajbWkgxCwZpcz2oFA27d8rZVSHB++u4R/j9628iT6OIEA
	nc0MphQok6Wfj4lRqAj8DSu389xLk9F5ytAc0k6sOhXo+TiYu0Qm2Lb5e8PvvmDRXYU9uyiFb0grw
	AGMw1+dSSyF+4Hr6yYiY1t6vb1lqvCq0tGWm6la2i0mTspvt7hKZ1bXuYgq8uX1OlXG3HcRbp0xqf
	8JEYSDK2lWZDn+Aq5CeNDF/MOaqvohoL04zQsSBgS+FbIoYH9rzbPJibAJcanL1hSSIhWUOOGK1qd
	DNz5Ihh+eCvzvJJZHbtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZZ2f-0001R6-7A; Sat, 08 Jun 2019 10:57:45 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZZ1u-0000r4-R6
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 10:57:00 +0000
Received: from localhost (p5486CBCC.dip0.t-ipconnect.de [84.134.203.204])
 by pokefinder.org (Postfix) with ESMTPSA id 5A7563E4795;
 Sat,  8 Jun 2019 12:56:57 +0200 (CEST)
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-i2c@vger.kernel.org
Subject: [PATCH 31/34] staging: media: soc_camera: imx074: simplify getting
 the adapter of a client
Date: Sat,  8 Jun 2019 12:56:10 +0200
Message-Id: <20190608105619.593-32-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190608105619.593-1-wsa+renesas@sang-engineering.com>
References: <20190608105619.593-1-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_035659_047054_5F3FD121 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devel@driverdev.osuosl.org, Fabio Estevam <festevam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We have a dedicated pointer for that, so use it. Much easier to read and
less computation involved.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---

Please apply to your subsystem tree.

 drivers/staging/media/soc_camera/imx074.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/soc_camera/imx074.c b/drivers/staging/media/soc_camera/imx074.c
index d907aa62f898..14240b74cdd0 100644
--- a/drivers/staging/media/soc_camera/imx074.c
+++ b/drivers/staging/media/soc_camera/imx074.c
@@ -409,7 +409,7 @@ static int imx074_probe(struct i2c_client *client,
 			const struct i2c_device_id *did)
 {
 	struct imx074 *priv;
-	struct i2c_adapter *adapter = to_i2c_adapter(client->dev.parent);
+	struct i2c_adapter *adapter = client->adapter;
 	struct soc_camera_subdev_desc *ssdd = soc_camera_i2c_to_desc(client);
 	int ret;
 
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
