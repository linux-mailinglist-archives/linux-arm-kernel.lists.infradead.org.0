Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66301179249
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 15:26:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=imolyJ63XwgT/teINdeYwVR5ncMfgcCcRWLlN/gp03Y=; b=OGTsXDrZ4Tk4CS
	L8ofUQA6MG1IzakU19ERjTk9C6mHHh5iM2g6w1Z0O44kq6PwSalB7NV4n4x3D4S3e/+aDM2OAFWZc
	ei7alZlnnV/dkzLx7amKK6UnukJB8TiMIIprDZ/d/8pD8+MkG0UH5HxFkPNdcopnHyu3qL0SjXnwM
	G+pM9seQz9NldXgWPpwF+sIpgzcy2CVYRWZ16LozXbzCX9OwyN1f6aNo6COGW2OKLTqymRY4yzG3X
	bSp9ysRNJAsUEzT5hJiFTqI6ygY37uh6lJkKi/oDeaEt/qJhVVngFc8QhViCAKZAdYLEPj0xseiuD
	xr+j4nf8YTJ4jI/Qifog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9UyA-0005wL-VT; Wed, 04 Mar 2020 14:25:54 +0000
Received: from forward103j.mail.yandex.net ([5.45.198.246])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Uxv-0005pG-46
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 14:25:41 +0000
Received: from forward101q.mail.yandex.net (forward101q.mail.yandex.net
 [IPv6:2a02:6b8:c0e:4b:0:640:4012:bb98])
 by forward103j.mail.yandex.net (Yandex) with ESMTP id 8C8F06740CBB;
 Wed,  4 Mar 2020 17:25:32 +0300 (MSK)
Received: from mxback11q.mail.yandex.net (mxback11q.mail.yandex.net
 [IPv6:2a02:6b8:c0e:1b4:0:640:1f0c:10f2])
 by forward101q.mail.yandex.net (Yandex) with ESMTP id 87464CF40016;
 Wed,  4 Mar 2020 17:25:32 +0300 (MSK)
Received: from vla5-47b3f4751bc4.qloud-c.yandex.net
 (vla5-47b3f4751bc4.qloud-c.yandex.net [2a02:6b8:c18:3508:0:640:47b3:f475])
 by mxback11q.mail.yandex.net (mxback/Yandex) with ESMTP id UCXxzZegUE-PVous9Uk;
 Wed, 04 Mar 2020 17:25:32 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=maquefel.me; s=mail;
 t=1583331932; bh=Jng1nEj1zbxMUGN9K/Xjwz4cFmbLujsZJxv+9sN+qAg=;
 h=In-Reply-To:Subject:To:From:Cc:References:Date:Message-Id;
 b=Y0dDF7rKpb4+QNQNIAI98jMiP86mMDuVOZfHeceea3AJcf2ji3FFCHzWbNZEgI/w0
 RgLFBNe68h8LFeo1xcZGJMEdGCCH3OETtgRxicMb3csdQWnFyrzAE9j5AzwUWcykdi
 uVuoaB/FkBz45olpZs4yKqu3SD4fF3BtljG0IN1U=
Authentication-Results: mxback11q.mail.yandex.net;
 dkim=pass header.i=@maquefel.me
Received: by vla5-47b3f4751bc4.qloud-c.yandex.net (smtp/Yandex) with ESMTPSA
 id OSNMAAdVGo-PU3OCmWJ; Wed, 04 Mar 2020 17:25:30 +0300
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (Client certificate not present)
From: Nikita Shubin <NShubin@topcon.com>
To: 
Subject: [PATCH 2/2] remoteproc: imx_rproc: set pc on start
Date: Wed,  4 Mar 2020 17:26:28 +0300
Message-Id: <20200304142628.8471-2-NShubin@topcon.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200304142628.8471-1-NShubin@topcon.com>
References: <20200304142628.8471-1-NShubin@topcon.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_062539_553650_7BBBC5CA 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [5.45.198.246 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 drivers/remoteproc/imx_rproc.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
index 796b6b86550a..d02007f05ebd 100644
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
 
@@ -366,6 +377,8 @@ static int imx_rproc_probe(struct platform_device *pdev)
 		goto err_put_rproc;
 	}
 
+	priv->bootreg = imx_rproc_da_to_va(rproc, IMX_BOOT_PC, sizeof(u32));
+
 	/*
 	 * clk for M4 block including memory. Should be
 	 * enabled before .start for FW transfer.
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
