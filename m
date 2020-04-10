Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8131A3F23
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 05:49:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iIvUzLmVWdUELhHGcXhK3JMSq1vISzIEPwUoD/QHbsQ=; b=sB3beYuE4VSavq
	MS3TYP2BfCHjLXB+51/geghfCEuqyqphHOplMJcTNVQSKxxFMwrQ305qLszM2wi0x1RqbV3vdUMxN
	RoHpqM163xhgkHEErZiBKXgjcl9yoPGLAgPjmwcGbTuV8hbZY5+Qdxsb7dVhd48TFSwyHYBDxjDcE
	xkwMVv2kQ2OMMv+XbWNmHytlgNvCsTyw73ZNNX29SE/lvtn8QLF4aA+FA+ktGCJ9hE8KkU7lm+FoC
	hicnMSysN+7+JTqbzNa1O48Te+wclygInlGBiJSoin7VUuKduKmcOwFiHbnF56grrgTJzvjBUJLC0
	9cFZZO2efPDnbUI2H/yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMkfH-0004ML-Mg; Fri, 10 Apr 2020 03:49:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMkdp-0003DG-AP; Fri, 10 Apr 2020 03:47:44 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 91A2C20936;
 Fri, 10 Apr 2020 03:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586490460;
 bh=16VA5YD9gqxCaD7D986dD/QokR9l5L2qPbIUntmanD8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=fsPvj1kk/F2hs2LOu6P24mUbyxjsat4AvkV5GGM1Kl8bT/71d815X2eV6h4/ZjjHp
 B+YZ71gvcNJ7UNSsC7dy/ZAT1IWt1kypayWT+WXG/5FO2RmMni+MKvPb3jNla9UVB8
 z5XuLZlExxPXNM/sCAMRTGBk4IMk1drGGBX2uinE=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 54/68] media: mtk-vpu: avoid unaligned access to
 DTCM buffer.
Date: Thu,  9 Apr 2020 23:46:19 -0400
Message-Id: <20200410034634.7731-54-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200410034634.7731-1-sashal@kernel.org>
References: <20200410034634.7731-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_204741_447881_7EF26D0E 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux-mediatek@lists.infradead.org, Hsin-Yi Wang <hsinyi@chromium.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Hsin-Yi Wang <hsinyi@chromium.org>

[ Upstream commit e6599adfad30c340d06574e49a86afa7015c5c60 ]

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
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/media/platform/mtk-mdp/mtk_mdp_vpu.c  |  9 ++--
 .../media/platform/mtk-vcodec/vdec_vpu_if.c   |  6 +--
 .../media/platform/mtk-vcodec/venc_vpu_if.c   | 12 ++---
 drivers/media/platform/mtk-vpu/mtk_vpu.c      | 45 ++++++++++---------
 drivers/media/platform/mtk-vpu/mtk_vpu.h      |  2 +-
 5 files changed, 38 insertions(+), 36 deletions(-)

diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_vpu.c b/drivers/media/platform/mtk-mdp/mtk_mdp_vpu.c
index 6720d11f50cf6..b065ccd069140 100644
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
+	const struct mdp_ipi_comm_ack *msg = data;
+	unsigned int msg_id = msg->msg_id;
 	struct mtk_mdp_vpu *vpu = (struct mtk_mdp_vpu *)
 					(unsigned long)msg->ap_inst;
 	struct mtk_mdp_ctx *ctx;
diff --git a/drivers/media/platform/mtk-vcodec/vdec_vpu_if.c b/drivers/media/platform/mtk-vcodec/vdec_vpu_if.c
index 70abfd4cd4b9f..948a12fd9d46a 100644
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
index 3e931b0ed0965..9540709c19058 100644
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
index a768707abb942..2fbccc9b247b0 100644
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
index d4453b4bcee92..ee7c552ce9289 100644
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
