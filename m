Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0553319F49A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 13:32:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tun/OUdcB1nchrHvspHp29XPoAH6O9YxDj0p3XtjOq4=; b=ILvcZFzXmflMT5
	+0YiPVceJmy95KNHDQRXSBVLuh6lEjKR/v+Bvx9uCG8jiIRUQQ//4TyZe9h+pZS9pchFpPRxn98+y
	Ph7APwC2TRgqjDN0oT28sk2KzEnMzdDEfcB5vvSuGRR+ZGdKPgJY8ZUC4z/gVooIDeumEGXBcb0pr
	iIgJSC8w3MHgHSw/XM4v7Tt3/01mjtl0NuOQEegInt4NF+ZiRsWVw9qGcCdNhCuADBzUW4bE+3fZ0
	8OKToKQdYJW7TJtBZ8UkUQTOC4KAm2v+g5055Ww6sykyRXCTlKo107sj4RIVT5iQQ/fiRthd1yLcW
	meOhPus1UyTwuxQUWCMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLPzT-000735-47; Mon, 06 Apr 2020 11:32:31 +0000
Received: from forward103p.mail.yandex.net ([2a02:6b8:0:1472:2741:0:8b7:106])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1jLPzA-0006vn-Pe
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 11:32:14 +0000
Received: from mxback8g.mail.yandex.net (mxback8g.mail.yandex.net
 [IPv6:2a02:6b8:0:1472:2741:0:8b7:169])
 by forward103p.mail.yandex.net (Yandex) with ESMTP id 76EF718C041F;
 Mon,  6 Apr 2020 14:32:10 +0300 (MSK)
Received: from iva6-add863d6e49c.qloud-c.yandex.net
 (iva6-add863d6e49c.qloud-c.yandex.net [2a02:6b8:c0c:7ea0:0:640:add8:63d6])
 by mxback8g.mail.yandex.net (mxback/Yandex) with ESMTP id N5wck4Svr5-WA8eClK8; 
 Mon, 06 Apr 2020 14:32:10 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=maquefel.me; s=mail;
 t=1586172730; bh=gn4X4dwb/lGc1aff1jWlSmhgRv7I3Jq+82nqfbVnrDA=;
 h=In-Reply-To:Subject:To:From:Cc:References:Date:Message-Id;
 b=qWUrR2VSCnrWGTRWQGPGQAw6W6+Aq9M0i/MerQPIsUY5nyH33Sdp+3qw7WGMpjxeU
 BYYs6faqIwlD/cdSBngdUpIMoluVQCgNF1NJC+aX/mJtY9wnan4VwMHxjuXVP7FCts
 KAHBOITctctnR3pSW3FH5BUq6moTJyxpWFGkjC7U=
Authentication-Results: mxback8g.mail.yandex.net;
 dkim=pass header.i=@maquefel.me
Received: by iva6-add863d6e49c.qloud-c.yandex.net (smtp/Yandex) with ESMTPSA
 id CHTIIrjdik-W92uoY3j; Mon, 06 Apr 2020 14:32:09 +0300
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (Client certificate not present)
From: nikita.shubin@maquefel.me
To: nikita.shubin@maquefel.me
Subject: [PATCH v2 1/3] remoteproc: imx_rproc: set pc on start
Date: Mon,  6 Apr 2020 14:33:08 +0300
Message-Id: <20200406113310.3041-2-nikita.shubin@maquefel.me>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200406113310.3041-1-nikita.shubin@maquefel.me>
References: <20200304142628.8471-1-NShubin@topcon.com>
 <20200406113310.3041-1-nikita.shubin@maquefel.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_043213_201402_258952E2 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a02:6b8:0:1472:2741:0:8b7:106 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Fabio Estevam <festevam@gmail.com>,
 Nikita Shubin <NShubin@topcon.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In case elf file interrupt vector is not supposed to be at OCRAM_S,
it is needed to write elf entry point to OCRAM_S + 0x4, to boot M4
firmware.

Otherwise firmware located anywhere besides OCRAM_S won't boot.

The firmware must set stack poiner as first instruction:

Reset_Handler:
    ldr   sp, = __stack      /* set stack pointer */

Signed-off-by: Nikita Shubin <NShubin@topcon.com>
---
 drivers/remoteproc/imx_rproc.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
index 3e72b6f38d4b..bebc58d0f711 100644
--- a/drivers/remoteproc/imx_rproc.c
+++ b/drivers/remoteproc/imx_rproc.c
@@ -45,6 +45,8 @@
 
 #define IMX7D_RPROC_MEM_MAX		8
 
+#define IMX_BOOT_PC			0x4
+
 /**
  * struct imx_rproc_mem - slim internal memory structure
  * @cpu_addr: MPU virtual address of the memory region
@@ -85,6 +87,7 @@ struct imx_rproc {
 	const struct imx_rproc_dcfg	*dcfg;
 	struct imx_rproc_mem		mem[IMX7D_RPROC_MEM_MAX];
 	struct clk			*clk;
+	void __iomem			*bootreg;
 };
 
 static const struct imx_rproc_att imx_rproc_att_imx7d[] = {
@@ -162,11 +165,16 @@ static int imx_rproc_start(struct rproc *rproc)
 	struct device *dev = priv->dev;
 	int ret;
 
+	/* write entry point to program counter */
+	writel(rproc->bootaddr, priv->bootreg);
+
 	ret = regmap_update_bits(priv->regmap, dcfg->src_reg,
 				 dcfg->src_mask, dcfg->src_start);
 	if (ret)
 		dev_err(dev, "Failed to enable M4!\n");
 
+	dev_info(&rproc->dev, "Started from 0x%x\n", rproc->bootaddr);
+
 	return ret;
 }
 
@@ -182,6 +190,9 @@ static int imx_rproc_stop(struct rproc *rproc)
 	if (ret)
 		dev_err(dev, "Failed to stop M4!\n");
 
+	/* clear entry points */
+	writel(0, priv->bootreg);
+
 	return ret;
 }
 
@@ -243,7 +254,8 @@ static void *imx_rproc_da_to_va(struct rproc *rproc, u64 da, int len)
 static const struct rproc_ops imx_rproc_ops = {
 	.start		= imx_rproc_start,
 	.stop		= imx_rproc_stop,
-	.da_to_va       = imx_rproc_da_to_va,
+	.da_to_va	= imx_rproc_da_to_va,
+	.get_boot_addr	= rproc_elf_get_boot_addr,
 };
 
 static int imx_rproc_addr_init(struct imx_rproc *priv,
@@ -360,6 +372,8 @@ static int imx_rproc_probe(struct platform_device *pdev)
 		goto err_put_rproc;
 	}
 
+	priv->bootreg = imx_rproc_da_to_va(rproc, IMX_BOOT_PC, sizeof(u32));
+
 	/*
 	 * clk for M4 block including memory. Should be
 	 * enabled before .start for FW transfer.
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
