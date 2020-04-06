Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC4819F4A2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 13:33:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RUVBVvmA61l9J7H8xKfPtrmTBxRiW5O8iILA8PtnFSQ=; b=mps/9uozT6gYLF
	CW+h3LTBavdCmfL8To1l4GpaCl6MaarPwNt9WcG6eI5qiuZC+PhhR1mGhXf6xzNEFlVscMVOffhG3
	FozkauVESWIxZR9SSWvWQUxAobmViiO0EUHr/KIt0ImzSeoh0ca3EFbv1fbfMoGOZQzbZpJL6wHUt
	9YbYGJi7ihjcoRxuX2v04/Tsw8mbyP2+yslMKLRQ/APBeaGQZNB5BIYFDrjbEc9eOIb/WGiURsOZv
	/TIN03bAHlm5w94yJ3I9I7kv4hHP/klkiJcAVbnMCp38hpesuz76BN46GSp5sdP9wNL/35DIFqPZt
	XJevbVF+Edvb0Ku9HUJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLQ0A-0007k1-4t; Mon, 06 Apr 2020 11:33:14 +0000
Received: from forward100p.mail.yandex.net ([77.88.28.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLPzJ-00075c-Ml
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 11:32:24 +0000
Received: from mxback18j.mail.yandex.net (mxback18j.mail.yandex.net
 [IPv6:2a02:6b8:0:1619::94])
 by forward100p.mail.yandex.net (Yandex) with ESMTP id 8EFA959802A0;
 Mon,  6 Apr 2020 14:32:17 +0300 (MSK)
Received: from iva6-add863d6e49c.qloud-c.yandex.net
 (iva6-add863d6e49c.qloud-c.yandex.net [2a02:6b8:c0c:7ea0:0:640:add8:63d6])
 by mxback18j.mail.yandex.net (mxback/Yandex) with ESMTP id fq58GT5zVa-WGOSMI2V;
 Mon, 06 Apr 2020 14:32:17 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=maquefel.me; s=mail;
 t=1586172737; bh=ucsdRRT+zZSKCrcUo+bbn9vGVT94WMNFHwYtuQ4aOdo=;
 h=In-Reply-To:Subject:To:From:Cc:References:Date:Message-Id;
 b=nkjpfeD1NrlyznWG1s4dpWYU0knd/9uazEY/jrjGtdM0jdYIc61Xhbag4hEliGnyI
 STJL8HAK46Z6jVb3nKduhgGd/FzatvD1mTX3A8e2+tatR+0SWnYswGIS+8w1dqrdOH
 TILdnV2QXTcgHDkX2GVeQnMO9sT2zcOejFbPOzVU=
Authentication-Results: mxback18j.mail.yandex.net;
 dkim=pass header.i=@maquefel.me
Received: by iva6-add863d6e49c.qloud-c.yandex.net (smtp/Yandex) with ESMTPSA
 id CHTIIrjdik-WF2uGgoU; Mon, 06 Apr 2020 14:32:15 +0300
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (Client certificate not present)
From: nikita.shubin@maquefel.me
To: nikita.shubin@maquefel.me
Subject: [PATCH v2 3/3] remoteproc: imx_rproc: memory regions
Date: Mon,  6 Apr 2020 14:33:10 +0300
Message-Id: <20200406113310.3041-4-nikita.shubin@maquefel.me>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200406113310.3041-1-nikita.shubin@maquefel.me>
References: <20200304142628.8471-1-NShubin@topcon.com>
 <20200406113310.3041-1-nikita.shubin@maquefel.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_043222_178557_BC80E9B9 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [77.88.28.100 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [77.88.28.100 listed in wl.mailspike.net]
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

Add support for carveout memory regions required for vdev vring's and
buffer.

Search in device tree and allocate memory regions like for ocram:

vdev0vring0: vdev0vring0@00920000 {
	compatible = "shared-dma-pool";
        reg = <0x00920000 0x2000>;
        no-map;
};

vdev0vring1: vdev0vring1@00922000 {
	compatible = "shared-dma-pool";
	reg = <0x00922000 0x2000>;
	no-map;
};

vdev0buffer: vdev0buffer@00924000 {
	compatible = "shared-dma-pool";
	reg = <0x00924000 0x4000>;
	no-map;
};

imx7d-cm4 {
	compatible = "fsl,imx7d-cm4";
	memory-region = <&ocram>, <&vdev0vring0>, <&vdev0vring1>, \
		<&vdev0buffer>;
}

vdev0vring0, vdev0vring1, vdev0buffer are required for virtio
functioning.

Signed-off-by: Nikita Shubin <NShubin@topcon.com>
---
 drivers/remoteproc/imx_rproc.c | 119 ++++++++++++++++++++++++++++++++-
 1 file changed, 118 insertions(+), 1 deletion(-)

diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
index d2bede4ccb70..cdcff2bd2867 100644
--- a/drivers/remoteproc/imx_rproc.c
+++ b/drivers/remoteproc/imx_rproc.c
@@ -11,6 +11,7 @@
 #include <linux/module.h>
 #include <linux/of_address.h>
 #include <linux/of_device.h>
+#include <linux/of_reserved_mem.h>
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
 #include <linux/remoteproc.h>
@@ -238,6 +239,29 @@ static int imx_rproc_da_to_sys(struct imx_rproc *priv, u64 da,
 	return -ENOENT;
 }
 
+static int imx_rproc_sys_to_da(struct imx_rproc *priv, u64 sys,
+				int len, u64 *da)
+{
+	const struct imx_rproc_dcfg *dcfg = priv->dcfg;
+	int i;
+
+	/* parse address translation table */
+	for (i = 0; i < dcfg->att_size; i++) {
+		const struct imx_rproc_att *att = &dcfg->att[i];
+
+		if (sys >= att->sa && sys + len <= att->sa + att->size) {
+			unsigned int offset = sys - att->sa;
+
+			*da = att->da + offset;
+			return 0;
+		}
+	}
+
+	dev_warn(priv->dev, "Translation failed: sys = 0x%llx len = 0x%x\n",
+			 sys, len);
+	return -ENOENT;
+}
+
 static void *imx_rproc_da_to_va(struct rproc *rproc, u64 da, int len)
 {
 	struct imx_rproc *priv = rproc->priv;
@@ -372,16 +396,109 @@ static void imx_rproc_kick(struct rproc *rproc, int vqid)
 		err = mbox_send_message(ddata->mb[i].chan, &vqid);
 		if (err < 0)
 			dev_err(&rproc->dev, "%s: failed (%s, err:%d)\n",
-					__func__, ddata->mb[i].name, err);
+				__func__, ddata->mb[i].name, err);
 			return;
 	}
 }
 
+static int imx_rproc_mem_alloc(struct rproc *rproc,
+				struct rproc_mem_entry *mem)
+{
+	struct device *dev = rproc->dev.parent;
+	void *va;
+
+	dev_dbg(dev, "map memory: %pa+%x\n", &mem->dma, mem->len);
+	va = ioremap_wc(mem->dma, mem->len);
+	if (IS_ERR_OR_NULL(va)) {
+		dev_err(dev, "Unable to map memory region: %pa+%x\n",
+				&mem->dma, mem->len);
+		return -ENOMEM;
+	}
+
+	/* Update memory entry va */
+	mem->va = va;
+
+	return 0;
+}
+
+static int imx_rproc_mem_release(struct rproc *rproc,
+				struct rproc_mem_entry *mem)
+{
+	dev_dbg(rproc->dev.parent, "unmap memory: %pa\n", &mem->dma);
+	iounmap(mem->va);
+
+	return 0;
+}
+
+static int imx_rproc_parse_fw(struct rproc *rproc, const struct firmware *fw)
+{
+	struct imx_rproc *priv = rproc->priv;
+	struct device *dev = rproc->dev.parent;
+	struct device_node *np = dev->of_node;
+	struct of_phandle_iterator it;
+	struct rproc_mem_entry *mem = 0;
+	struct reserved_mem *rmem;
+	u64 da;
+	int index = 0;
+
+	/* Register associated reserved memory regions */
+	of_phandle_iterator_init(&it, np, "memory-region", NULL, 0);
+	while (of_phandle_iterator_next(&it) == 0) {
+		rmem = of_reserved_mem_lookup(it.node);
+		if (!rmem) {
+			dev_err(dev, "unable to acquire memory-region\n");
+			return -EINVAL;
+		}
+
+		/*
+		 * Let's assume all data in device tree is from
+		 * CPU A7 point of view then we should translate
+		 * rmem->base into M4 da
+		 */
+		if (imx_rproc_sys_to_da(priv, rmem->base, rmem->size, &da)) {
+			dev_err(dev, "memory region not valid %pa\n",
+				&rmem->base);
+			return -EINVAL;
+		}
+
+		if (strcmp(it.node->name, "vdev0buffer")) {
+			/* Register memory region */
+			mem = rproc_mem_entry_init(dev, NULL,
+						(dma_addr_t)rmem->base,
+						rmem->size, da,
+						imx_rproc_mem_alloc,
+						imx_rproc_mem_release,
+						it.node->name);
+
+			if (mem)
+				rproc_coredump_add_segment(rproc, da,
+							rmem->size);
+		} else {
+			mem = rproc_of_resm_mem_entry_init(dev, index,
+							rmem->size,
+							rmem->base,
+							it.node->name);
+		}
+
+		if (!mem)
+			return -ENOMEM;
+
+		rproc_add_carveout(rproc, mem);
+		index++;
+	}
+
+	return rproc_elf_load_rsc_table(rproc, fw);
+}
+
 static const struct rproc_ops imx_rproc_ops = {
 	.start		= imx_rproc_start,
 	.stop		= imx_rproc_stop,
 	.da_to_va	= imx_rproc_da_to_va,
 	.kick		= imx_rproc_kick,
+	.load		= rproc_elf_load_segments,
+	.parse_fw	= imx_rproc_parse_fw,
+	.find_loaded_rsc_table = rproc_elf_find_loaded_rsc_table,
+	.sanity_check	= rproc_elf_sanity_check,
 	.get_boot_addr	= rproc_elf_get_boot_addr,
 };
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
