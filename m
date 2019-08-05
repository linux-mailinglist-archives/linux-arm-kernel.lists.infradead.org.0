Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8778A8178C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 12:52:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=utgqBwRNxg8K6pteqNT1t0hpTarDNdt05XQ3nn6nBnk=; b=k5z9p9ZyQLOCJ/
	CDyAzU3UaSWNwxB9eBdW9FbQlVL2K4cPYuUPoh6KgSe/RL19J6Rgrji6pGsxH7ASOnVuA0rzZRpvH
	L6nlJYmUK9A+B9bmtslu6ghhPA42d6ppgGar9/A47CUMqUfgqFEC38hSkxJXDFu4816hUXCaCAiuk
	D3HwV8Y9dwOrxKmz0v190khq2fOqfuPni9jLH0BFjaEMknvJb6C3pvdV7cyxPBgomie1bW7qtGAnb
	n4TvQ35gi0LgXH6TxbpOL1XRJrMhsWT8PnxtmZm2CGlK3yQ/MxChFdFEHKgg3DX6LV8UTO88jEqN4
	UjA+rjYZiW6N+FuNC4cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huabA-0004XZ-Nq; Mon, 05 Aug 2019 10:52:16 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huaZ4-0002Dz-Cg
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 10:50:14 +0000
Received: by mail-pg1-x543.google.com with SMTP id l21so39523716pgm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 03:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VsiMPoQw313jte7m9MJscNYMAwKro8rGKocdVFsbB7Y=;
 b=k/Ar16KfMDDpJYJrhmFd62/xMyb0kBcEw8CFAkTYUPNN15r+qG7dSOI9SptKAoOg3D
 bhs511hrybd8qEkHvHoyxm0eVV6nAfHViG9weC0ag/94ZnktvsjJBEgZ5WgxTPqnxBw7
 F8czGcoIWmurydrjTMwW5CHb8BUSQQqnaFx/M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VsiMPoQw313jte7m9MJscNYMAwKro8rGKocdVFsbB7Y=;
 b=GX12b1kDNkrP1XYW05/pu3M+r1VQ7n45rls69wGSzBp1oAwoEM3+k1OHL7Q2ahHDKf
 bra11qhfjvmjuLUUQBIdPvMXzUDPY0kPkGrQS+riGXYyJROwN8IzaR94GSLpMv/xjnb2
 njckpiNsrqqAS+gXLj4MxOUgdgV5nabKpqvB1U5rRcox1DXe3nLAZYqX2gLJUhEU9zNz
 HhosecQtrAn3tIebhAWfXaPgx/d48ZhCRDkjmf3yFH/Uo/JzUjXxRXt0j4V7vqL05JzO
 J5qTx///xTbe96wC4GCDO6coE2ivcvkaEFPNg1xyRcBTRBQ/bA4WEW/zJ6awlYRFS1r9
 h8tA==
X-Gm-Message-State: APjAAAUzvGRkkKem4OLoqJOXnpWFyuX62pxf5nnk/50gXQGIHbrGzNlA
 Gcl+J+y1wGKfRoy14r/Bfg0G4A==
X-Google-Smtp-Source: APXvYqzHq5Omjj5EUlNRmoNVTX63MJz79D8hdxTm3dtTktQl4UVJvXuYn7m3Q7Xwl9R4C/CRt1fUuA==
X-Received: by 2002:aa7:8218:: with SMTP id k24mr69814542pfi.221.1565002200904; 
 Mon, 05 Aug 2019 03:50:00 -0700 (PDT)
Received: from pihsun-z840.tpe.corp.google.com
 ([2401:fa00:1:10:7889:7a43:f899:134c])
 by smtp.googlemail.com with ESMTPSA id 65sm88693864pgf.30.2019.08.05.03.49.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 03:50:00 -0700 (PDT)
From: Pi-Hsun Shih <pihsun@chromium.org>
To: 
Subject: [PATCH v14 3/5] remoteproc: mt8183: add reserved memory manager API
Date: Mon,  5 Aug 2019 18:49:24 +0800
Message-Id: <20190805104932.96745-4-pihsun@chromium.org>
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
In-Reply-To: <20190805104932.96745-1-pihsun@chromium.org>
References: <20190805104932.96745-1-pihsun@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_035007_825722_03C4CE7B 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Erin Lo <erin.lo@mediatek.com>,
 "open list:REMOTE PROCESSOR REMOTEPROC SUBSYSTEM"
 <linux-remoteproc@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Pi-Hsun Shih <pihsun@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Erin Lo <erin.lo@mediatek.com>

Add memory table mapping API for other driver to lookup
reserved physical and virtual memory

Signed-off-by: Erin Lo <erin.lo@mediatek.com>
Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>
---
Changes from v13:
 - Add one more reserved region.
 - Rename scp_get_reserve_* to scp_get_reserved_*.
 - Minor fixes addressing comment.

Changes from v12:
 - Reformat a line to fit 80 character width.

Changes from v11:
 - No change.

Changes from v10:
 - Fix some type mismatch warnings when printing debug messages.

Changes from v9:
 - No change.

Changes from v8:
 - Add more reserved regions for camera ISP.

Changes from v7, v6, v5:
 - No change.

Changes from v4:
 - New patch.
---
 drivers/remoteproc/mtk_scp.c       | 145 +++++++++++++++++++++++++++++
 include/linux/remoteproc/mtk_scp.h |  25 +++++
 2 files changed, 170 insertions(+)

diff --git a/drivers/remoteproc/mtk_scp.c b/drivers/remoteproc/mtk_scp.c
index 2e4fa3e41f84..ee28e761a82e 100644
--- a/drivers/remoteproc/mtk_scp.c
+++ b/drivers/remoteproc/mtk_scp.c
@@ -366,11 +366,142 @@ void *scp_mapping_dm_addr(struct platform_device *pdev, u32 mem_addr)
 }
 EXPORT_SYMBOL_GPL(scp_mapping_dm_addr);
 
+#if SCP_RESERVED_MEM
+static phys_addr_t scp_mem_base_phys;
+static phys_addr_t scp_mem_base_virt;
+static size_t scp_mem_size;
+
+static struct scp_reserve_mblock scp_reserve_mblock[] = {
+	{
+		.num = SCP_ISP_MEM_ID,
+		.start_phys = 0x0,
+		.start_virt = 0x0,
+		.size = 0x200000, /*2MB*/
+	},
+	{
+		.num = SCP_ISP_MEM2_ID,
+		.start_phys = 0x0,
+		.start_virt = 0x0,
+		.size = 0x800000, /*8MB*/
+	},
+	{
+		.num = SCP_MDP_MEM_ID,
+		.start_phys = 0x0,
+		.start_virt = 0x0,
+		.size = 0x600000, /*6MB*/
+	},
+	{
+		.num = SCP_DIP_MEM_ID,
+		.start_phys = 0x0,
+		.start_virt = 0x0,
+		.size = 0x900000, /*9MB*/
+	},
+	{
+		.num = SCP_FD_MEM_ID,
+		.start_phys = 0x0,
+		.start_virt = 0x0,
+		.size = 0x100000, /*1MB*/
+	},
+	{
+		.num = SCP_FD_MEM2_ID,
+		.start_phys = 0x0,
+		.start_virt = 0x0,
+		.size = 0x100000, /*1MB*/
+	},
+};
+
+static int scp_reserve_mem_init(struct mtk_scp *scp)
+{
+	enum scp_reserve_mem_id_t id;
+	phys_addr_t accumlate_memory_size = 0;
+
+	scp_mem_base_phys = (phys_addr_t) (scp->phys_addr + MAX_CODE_SIZE);
+	scp_mem_size = scp->dram_size - MAX_CODE_SIZE;
+
+	dev_info(scp->dev,
+		 "phys:0x%llx - 0x%llx (0x%llx)\n",
+		 (unsigned long long)scp_mem_base_phys,
+		 (unsigned long long)(scp_mem_base_phys + scp_mem_size),
+		 (unsigned long long)scp_mem_size);
+	accumlate_memory_size = 0;
+	for (id = 0; id < SCP_NUMS_MEM_ID; id++) {
+		scp_reserve_mblock[id].start_phys =
+			scp_mem_base_phys + accumlate_memory_size;
+		accumlate_memory_size += scp_reserve_mblock[id].size;
+		dev_info(
+			scp->dev,
+			"[reserve_mem:%d]: phys:0x%llx - 0x%llx (0x%llx)\n", id,
+			(unsigned long long)scp_reserve_mblock[id].start_phys,
+			(unsigned long long)(scp_reserve_mblock[id].start_phys +
+					     scp_reserve_mblock[id].size),
+			(unsigned long long)scp_reserve_mblock[id].size);
+	}
+	return 0;
+}
+
+static int scp_reserve_memory_ioremap(struct mtk_scp *scp)
+{
+	enum scp_reserve_mem_id_t id;
+	phys_addr_t accumlate_memory_size = 0;
+
+	scp_mem_base_virt = (phys_addr_t)(size_t)ioremap_wc(scp_mem_base_phys,
+							    scp_mem_size);
+
+	dev_info(scp->dev,
+		 "virt:0x%llx - 0x%llx (0x%llx)\n",
+		(unsigned long long)scp_mem_base_virt,
+		(unsigned long long)(scp_mem_base_virt + scp_mem_size),
+		(unsigned long long)scp_mem_size);
+	for (id = 0; id < SCP_NUMS_MEM_ID; id++) {
+		scp_reserve_mblock[id].start_virt =
+			scp_mem_base_virt + accumlate_memory_size;
+		accumlate_memory_size += scp_reserve_mblock[id].size;
+	}
+	/* the reserved memory should be larger then expected memory
+	 * or scp_reserve_mblock does not match dts
+	 */
+	WARN_ON(accumlate_memory_size > scp_mem_size);
+	return 0;
+}
+phys_addr_t scp_get_reserved_mem_phys(enum scp_reserve_mem_id_t id)
+{
+	if (id >= SCP_NUMS_MEM_ID) {
+		pr_err("[SCP] no reserve memory for %d", id);
+		return 0;
+	}
+	return scp_reserve_mblock[id].start_phys;
+}
+EXPORT_SYMBOL_GPL(scp_get_reserved_mem_phys);
+
+phys_addr_t scp_get_reserved_mem_virt(enum scp_reserve_mem_id_t id)
+{
+	if (id >= SCP_NUMS_MEM_ID) {
+		pr_err("[SCP] no reserve memory for %d", id);
+		return 0;
+	}
+	return scp_reserve_mblock[id].start_virt;
+}
+EXPORT_SYMBOL_GPL(scp_get_reserved_mem_virt);
+
+size_t scp_get_reserved_mem_size(enum scp_reserve_mem_id_t id)
+{
+	if (id >= SCP_NUMS_MEM_ID) {
+		pr_err("[SCP] no reserve memory for %d", id);
+		return 0;
+	}
+	return scp_reserve_mblock[id].size;
+}
+EXPORT_SYMBOL_GPL(scp_get_reserved_mem_size);
+#endif
+
 static int scp_map_memory_region(struct mtk_scp *scp)
 {
 	struct device_node *node;
 	struct resource r;
 	int ret;
+#ifdef DEBUG
+	enum scp_reserve_mem_id_t id;
+#endif
 
 	node = of_parse_phandle(scp->dev->of_node, "memory-region", 0);
 	if (!node) {
@@ -393,6 +524,20 @@ static int scp_map_memory_region(struct mtk_scp *scp)
 		return -EBUSY;
 	}
 
+#if SCP_RESERVED_MEM
+	scp_reserve_mem_init(scp);
+	scp_reserve_memory_ioremap(scp);
+#ifdef DEBUG
+	for (id = 0; id < NUMS_MEM_ID; id++) {
+		dev_info(scp->dev,
+			 "[mem_reserve-%d] phys:0x%llx,virt:0x%llx,size:0x%llx\n",
+			 id,
+			 scp_get_reserved_mem_phys(id),
+			 scp_get_reserved_mem_virt(id),
+			 scp_get_reserved_mem_size(id));
+	}
+#endif
+#endif
 	return 0;
 }
 
diff --git a/include/linux/remoteproc/mtk_scp.h b/include/linux/remoteproc/mtk_scp.h
index b80d8e3f7959..707556f6b899 100644
--- a/include/linux/remoteproc/mtk_scp.h
+++ b/include/linux/remoteproc/mtk_scp.h
@@ -138,4 +138,29 @@ unsigned int scp_get_venc_hw_capa(struct platform_device *pdev);
 void *scp_mapping_dm_addr(struct platform_device *pdev,
 			  u32 mem_addr);
 
+#define SCP_RESERVED_MEM	(1)
+#if SCP_RESERVED_MEM
+/* scp reserve memory ID definition*/
+enum scp_reserve_mem_id_t {
+	SCP_ISP_MEM_ID,
+	SCP_ISP_MEM2_ID,
+	SCP_MDP_MEM_ID,
+	SCP_DIP_MEM_ID,
+	SCP_FD_MEM_ID,
+	SCP_FD_MEM2_ID,
+	SCP_NUMS_MEM_ID,
+};
+
+struct scp_reserve_mblock {
+	enum scp_reserve_mem_id_t num;
+	u64 start_phys;
+	u64 start_virt;
+	u64 size;
+};
+
+extern phys_addr_t scp_get_reserved_mem_phys(enum scp_reserve_mem_id_t id);
+extern phys_addr_t scp_get_reserved_mem_virt(enum scp_reserve_mem_id_t id);
+extern size_t scp_get_reserved_mem_size(enum scp_reserve_mem_id_t id);
+#endif
+
 #endif /* _MTK_SCP_H */
-- 
2.22.0.770.g0f2c4a37fd-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
