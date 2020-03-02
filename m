Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 712021752C0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 05:40:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XoSmmDovk4STrt/D8HekR8+F4435s1qkvodgfXmUzrM=; b=GEROb9kgM9gTWk
	R2I4B2QJuHk1Acunod2WT2o/R06kWIc5KR02BkzNOU3BZNGIv/gbxiZT5Kh1GzAEh7JeRy8SMBbj7
	AYX0w6btZZr9SG0zZw7F2NmJn679hZzKDv9qLVFUPpiI7lZ0dPixYbbcd45jW4rRgHLhRIvauzBgr
	LFj9iEl+2ROwZCjFWyFc7PGphMrRArTDaj0nABsANRyw90YCyGvcznyoI0mkgOFPNc/BZZFKRLwRS
	1uw8uMzdLbUcXt+1TCWeS+P7Xrbf7pHF2tE+jYVqpd63sF72niJvLUV3M9UDvBT3TRTWtgSeM/jQv
	ZBOu3AC6M8wgPjZGH9lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8cse-0001bZ-T5; Mon, 02 Mar 2020 04:40:36 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8csX-0001aR-Ri
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 04:40:31 +0000
Received: by mail-pl1-x641.google.com with SMTP id b22so3674316pls.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 01 Mar 2020 20:40:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JBoBPXSfXN0i6YlT5O3w+IrrwUqvYYFsrcYt5wboxew=;
 b=FT2t3MpuBDpL8dt3OrpOC6aOPTFpny+bXnL67bulR0bRHvNuF2L0alcK4pqgI7T58x
 y6SfKubAdgC0CCTSAdLlkzxM7dJcZ6UwhEJCV8rRWGJHq8bz/UT2KjuVenSCdY8z+LTk
 rLBlppfKW0h+D7aH256sHo5Ef5I5tlqdnm5zM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JBoBPXSfXN0i6YlT5O3w+IrrwUqvYYFsrcYt5wboxew=;
 b=WpES0tJ/+RyK3geMY2RdbEHyfru9S/Sesfy6GuLMncUQIUE3rLKasVPkGcEtATWCyy
 fZS8nGpsLxqDGgSAaPCiwvBsAt9dsj1W0U//qB9kvkQqiHsdhhaQr+GyfKzPnkAxsQMl
 uSimFhdz3XliSql23zc4hM8vieEZsG6oJ44Pq+H2QVvKhK1+n2/yKefKfBpDHUN/fGBT
 ciLjysLZLfFHGfrVpH3wje9AEb81cCODOLfmhkjLI+eNmhI+3VcMXRFSbvptOqeXYTuF
 bx8qk10+d3PmRobhVePmzW7r62HyhZK7z7I5ZdyFGl5D20qoijsx6LOUx10GBVKRYdRk
 oWMQ==
X-Gm-Message-State: APjAAAV4u4asaYxuAC8t0z3bBT7FvpXEi80ab8zKnhoBsgjRDT4zETb+
 M+me58TrVvPCrnrD5GJ6q+w3h49btd27HQ==
X-Google-Smtp-Source: APXvYqybK13H+eIbB8Ngys7J7QSF2IWrobmgk4p2PvvFqnxE00d2PqWOmqj/NGCkvg5Do3OENzBvGQ==
X-Received: by 2002:a17:90a:aa83:: with SMTP id
 l3mr19872063pjq.5.1583124027833; 
 Sun, 01 Mar 2020 20:40:27 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id f8sm18753362pfn.2.2020.03.01.20.40.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Mar 2020 20:40:27 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4] media: mtk-vpu: avoid unaligned access to DTCM buffer.
Date: Mon,  2 Mar 2020 12:40:21 +0800
Message-Id: <20200302044021.97415-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_204029_923390_187BA194 
X-CRM114-Status: GOOD (  17.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-kernel@vger.kernel.org, Houlong Wei <houlong.wei@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Tiffany Lin <tiffany.lin@mediatek.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

media: mtk-vpu: avoid unaligned access to DTCM buffer.

Previously, vpu->recv_buf and send_buf are forced cast from
void __iomem *tcm. vpu->recv_buf->share_buf is passed to
vpu_ipi_desc.handler(). It's not able to do unaligned access. Otherwise
kernel would crash due to unable to handle kernel paging request.

struct vpu_run {
	u32 signaled;
	char fw_ver[VPU_FW_VER_LEN];
	unsigned int	dec_capability;
	unsigned int	enc_capability;
	wait_queue_head_t wq;
};

fw_ver starts at 4 byte boundary. If system enables
CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS, strscpy() will do
read_word_at_a_time(), which tries to read 8-byte: *(unsigned long *)addr

vpu_init_ipi_handler() calls strscpy(), which would lead to crash.

vpu_init_ipi_handler() and several other handlers (eg.
vpu_dec_ipi_handler) only do read access to this data, so they can be
const, and we can use memcpy_fromio() to copy the buf to another non iomem
buffer then pass to handler.

Fixes: 85709cbf1524 ("media: replace strncpy() by strscpy()")
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
Change in v4:
- Remove forced casting recv_buf from tcm. Copy iomem data before passing
  to handler.
Change in v2, v3:
- fix sparse warnings.
---
 drivers/media/platform/mtk-mdp/mtk_mdp_vpu.c  |  9 ++--
 .../media/platform/mtk-vcodec/vdec_vpu_if.c   |  6 +--
 .../media/platform/mtk-vcodec/venc_vpu_if.c   | 12 ++---
 drivers/media/platform/mtk-vpu/mtk_vpu.c      | 45 ++++++++++---------
 drivers/media/platform/mtk-vpu/mtk_vpu.h      |  2 +-
 5 files changed, 38 insertions(+), 36 deletions(-)

diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_vpu.c b/drivers/media/platform/mtk-mdp/mtk_mdp_vpu.c
index 6720d11f50cf..dc95b8a44759 100644
--- a/drivers/media/platform/mtk-mdp/mtk_mdp_vpu.c
+++ b/drivers/media/platform/mtk-mdp/mtk_mdp_vpu.c
@@ -15,7 +15,7 @@ static inline struct mtk_mdp_ctx *vpu_to_ctx(struct mtk_mdp_vpu *vpu)
 	return container_of(vpu, struct mtk_mdp_ctx, vpu);
 }
 
-static void mtk_mdp_vpu_handle_init_ack(struct mdp_ipi_comm_ack *msg)
+static void mtk_mdp_vpu_handle_init_ack(const struct mdp_ipi_comm_ack *msg)
 {
 	struct mtk_mdp_vpu *vpu = (struct mtk_mdp_vpu *)
 					(unsigned long)msg->ap_inst;
@@ -26,10 +26,11 @@ static void mtk_mdp_vpu_handle_init_ack(struct mdp_ipi_comm_ack *msg)
 	vpu->inst_addr = msg->vpu_inst_addr;
 }
 
-static void mtk_mdp_vpu_ipi_handler(void *data, unsigned int len, void *priv)
+static void mtk_mdp_vpu_ipi_handler(const void *data, unsigned int len,
+				    void *priv)
 {
-	unsigned int msg_id = *(unsigned int *)data;
-	struct mdp_ipi_comm_ack *msg = (struct mdp_ipi_comm_ack *)data;
+	unsigned int msg_id = *(const unsigned int *)data;
+	const struct mdp_ipi_comm_ack *msg = data;
 	struct mtk_mdp_vpu *vpu = (struct mtk_mdp_vpu *)
 					(unsigned long)msg->ap_inst;
 	struct mtk_mdp_ctx *ctx;
diff --git a/drivers/media/platform/mtk-vcodec/vdec_vpu_if.c b/drivers/media/platform/mtk-vcodec/vdec_vpu_if.c
index 70abfd4cd4b9..948a12fd9d46 100644
--- a/drivers/media/platform/mtk-vcodec/vdec_vpu_if.c
+++ b/drivers/media/platform/mtk-vcodec/vdec_vpu_if.c
@@ -9,7 +9,7 @@
 #include "vdec_ipi_msg.h"
 #include "vdec_vpu_if.h"
 
-static void handle_init_ack_msg(struct vdec_vpu_ipi_init_ack *msg)
+static void handle_init_ack_msg(const struct vdec_vpu_ipi_init_ack *msg)
 {
 	struct vdec_vpu_inst *vpu = (struct vdec_vpu_inst *)
 					(unsigned long)msg->ap_inst_addr;
@@ -34,9 +34,9 @@ static void handle_init_ack_msg(struct vdec_vpu_ipi_init_ack *msg)
  * This function runs in interrupt context and it means there's an IPI MSG
  * from VPU.
  */
-static void vpu_dec_ipi_handler(void *data, unsigned int len, void *priv)
+static void vpu_dec_ipi_handler(const void *data, unsigned int len, void *priv)
 {
-	struct vdec_vpu_ipi_ack *msg = data;
+	const struct vdec_vpu_ipi_ack *msg = data;
 	struct vdec_vpu_inst *vpu = (struct vdec_vpu_inst *)
 					(unsigned long)msg->ap_inst_addr;
 
diff --git a/drivers/media/platform/mtk-vcodec/venc_vpu_if.c b/drivers/media/platform/mtk-vcodec/venc_vpu_if.c
index 3e931b0ed096..9540709c1905 100644
--- a/drivers/media/platform/mtk-vcodec/venc_vpu_if.c
+++ b/drivers/media/platform/mtk-vcodec/venc_vpu_if.c
@@ -8,26 +8,26 @@
 #include "venc_ipi_msg.h"
 #include "venc_vpu_if.h"
 
-static void handle_enc_init_msg(struct venc_vpu_inst *vpu, void *data)
+static void handle_enc_init_msg(struct venc_vpu_inst *vpu, const void *data)
 {
-	struct venc_vpu_ipi_msg_init *msg = data;
+	const struct venc_vpu_ipi_msg_init *msg = data;
 
 	vpu->inst_addr = msg->vpu_inst_addr;
 	vpu->vsi = vpu_mapping_dm_addr(vpu->dev, msg->vpu_inst_addr);
 }
 
-static void handle_enc_encode_msg(struct venc_vpu_inst *vpu, void *data)
+static void handle_enc_encode_msg(struct venc_vpu_inst *vpu, const void *data)
 {
-	struct venc_vpu_ipi_msg_enc *msg = data;
+	const struct venc_vpu_ipi_msg_enc *msg = data;
 
 	vpu->state = msg->state;
 	vpu->bs_size = msg->bs_size;
 	vpu->is_key_frm = msg->is_key_frm;
 }
 
-static void vpu_enc_ipi_handler(void *data, unsigned int len, void *priv)
+static void vpu_enc_ipi_handler(const void *data, unsigned int len, void *priv)
 {
-	struct venc_vpu_ipi_msg_common *msg = data;
+	const struct venc_vpu_ipi_msg_common *msg = data;
 	struct venc_vpu_inst *vpu =
 		(struct venc_vpu_inst *)(unsigned long)msg->venc_inst;
 
diff --git a/drivers/media/platform/mtk-vpu/mtk_vpu.c b/drivers/media/platform/mtk-vpu/mtk_vpu.c
index a768707abb94..2fbccc9b247b 100644
--- a/drivers/media/platform/mtk-vpu/mtk_vpu.c
+++ b/drivers/media/platform/mtk-vpu/mtk_vpu.c
@@ -203,8 +203,8 @@ struct mtk_vpu {
 	struct vpu_run run;
 	struct vpu_wdt wdt;
 	struct vpu_ipi_desc ipi_desc[IPI_MAX];
-	struct share_obj *recv_buf;
-	struct share_obj *send_buf;
+	struct share_obj __iomem *recv_buf;
+	struct share_obj __iomem *send_buf;
 	struct device *dev;
 	struct clk *clk;
 	bool fw_loaded;
@@ -292,7 +292,7 @@ int vpu_ipi_send(struct platform_device *pdev,
 		 unsigned int len)
 {
 	struct mtk_vpu *vpu = platform_get_drvdata(pdev);
-	struct share_obj *send_obj = vpu->send_buf;
+	struct share_obj __iomem *send_obj = vpu->send_buf;
 	unsigned long timeout;
 	int ret = 0;
 
@@ -325,9 +325,9 @@ int vpu_ipi_send(struct platform_device *pdev,
 		}
 	} while (vpu_cfg_readl(vpu, HOST_TO_VPU));
 
-	memcpy((void *)send_obj->share_buf, buf, len);
-	send_obj->len = len;
-	send_obj->id = id;
+	memcpy_toio(send_obj->share_buf, buf, len);
+	writel(len, &send_obj->len);
+	writel(id, &send_obj->id);
 
 	vpu->ipi_id_ack[id] = false;
 	/* send the command to VPU */
@@ -600,10 +600,10 @@ int vpu_load_firmware(struct platform_device *pdev)
 }
 EXPORT_SYMBOL_GPL(vpu_load_firmware);
 
-static void vpu_init_ipi_handler(void *data, unsigned int len, void *priv)
+static void vpu_init_ipi_handler(const void *data, unsigned int len, void *priv)
 {
-	struct mtk_vpu *vpu = (struct mtk_vpu *)priv;
-	struct vpu_run *run = (struct vpu_run *)data;
+	struct mtk_vpu *vpu = priv;
+	const struct vpu_run *run = data;
 
 	vpu->run.signaled = run->signaled;
 	strscpy(vpu->run.fw_ver, run->fw_ver, sizeof(vpu->run.fw_ver));
@@ -700,19 +700,21 @@ static int vpu_alloc_ext_mem(struct mtk_vpu *vpu, u32 fw_type)
 
 static void vpu_ipi_handler(struct mtk_vpu *vpu)
 {
-	struct share_obj *rcv_obj = vpu->recv_buf;
+	struct share_obj __iomem *rcv_obj = vpu->recv_buf;
 	struct vpu_ipi_desc *ipi_desc = vpu->ipi_desc;
-
-	if (rcv_obj->id < IPI_MAX && ipi_desc[rcv_obj->id].handler) {
-		ipi_desc[rcv_obj->id].handler(rcv_obj->share_buf,
-					      rcv_obj->len,
-					      ipi_desc[rcv_obj->id].priv);
-		if (rcv_obj->id > IPI_VPU_INIT) {
-			vpu->ipi_id_ack[rcv_obj->id] = true;
+	unsigned char data[SHARE_BUF_SIZE];
+	s32 id = readl(&rcv_obj->id);
+
+	memcpy_fromio(data, rcv_obj->share_buf, sizeof(data));
+	if (id < IPI_MAX && ipi_desc[id].handler) {
+		ipi_desc[id].handler(data, readl(&rcv_obj->len),
+				     ipi_desc[id].priv);
+		if (id > IPI_VPU_INIT) {
+			vpu->ipi_id_ack[id] = true;
 			wake_up(&vpu->ack_wq);
 		}
 	} else {
-		dev_err(vpu->dev, "No such ipi id = %d\n", rcv_obj->id);
+		dev_err(vpu->dev, "No such ipi id = %d\n", id);
 	}
 }
 
@@ -722,11 +724,10 @@ static int vpu_ipi_init(struct mtk_vpu *vpu)
 	vpu_cfg_writel(vpu, 0x0, VPU_TO_HOST);
 
 	/* shared buffer initialization */
-	vpu->recv_buf = (__force struct share_obj *)(vpu->reg.tcm +
-						     VPU_DTCM_OFFSET);
+	vpu->recv_buf = vpu->reg.tcm + VPU_DTCM_OFFSET;
 	vpu->send_buf = vpu->recv_buf + 1;
-	memset(vpu->recv_buf, 0, sizeof(struct share_obj));
-	memset(vpu->send_buf, 0, sizeof(struct share_obj));
+	memset_io(vpu->recv_buf, 0, sizeof(struct share_obj));
+	memset_io(vpu->send_buf, 0, sizeof(struct share_obj));
 
 	return 0;
 }
diff --git a/drivers/media/platform/mtk-vpu/mtk_vpu.h b/drivers/media/platform/mtk-vpu/mtk_vpu.h
index d4453b4bcee9..ee7c552ce928 100644
--- a/drivers/media/platform/mtk-vpu/mtk_vpu.h
+++ b/drivers/media/platform/mtk-vpu/mtk_vpu.h
@@ -15,7 +15,7 @@
  * VPU interfaces with other blocks by share memory and interrupt.
  **/
 
-typedef void (*ipi_handler_t) (void *data,
+typedef void (*ipi_handler_t) (const void *data,
 			       unsigned int len,
 			       void *priv);
 
-- 
2.25.0.265.gbab2e86ba0-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
