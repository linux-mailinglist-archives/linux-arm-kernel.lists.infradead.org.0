Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B4E13A000
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 04:33:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5HMgkcJYL/aFDA31wBRcMzCndk2RIFz5y6nY+glzF4w=; b=KAXX5LV+q46TP3
	HsbbXN02mp4JuxKJ5hNU8zoPayvEBTUlngyNToFLnq3ABpayNzoRUZlFFDkgeGQpFQ9CN4NGBOtSo
	5d5H/ulEIUYonCX36VuYqluyRkeE4TpF1PQUQmSDCM2JTcJoe9d9rJWUM2y1uo/WYCpj/wNFAdtZB
	DimmqpsHdUTI9RT4+lwHxJac6Ebw/ZVkpycIlksguYR99rjawq0hT0ln9cTlT39D3P8zx+b1CycfR
	Jc/t3F/RWT4F5HZvvjTjcs8A7+bvKqvo9pJ/aRgZfq/lK53PyystCQSKoqxLUlhWBm+RZ7zNC8gEN
	xu8hw3OLr8niqcACmliQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irCwp-0004P1-98; Tue, 14 Jan 2020 03:32:55 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irCwc-0004NY-8b; Tue, 14 Jan 2020 03:32:43 +0000
X-UUID: f99a34e724cd4e9d9e1ff6e344745583-20200113
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=XLvcWral8p9KiUuPJwP/lks3XQA8VB4u3bPZ7v2sRGk=; 
 b=BVkmlRCelb0+JZgzzWO9R8lRDIed1YLcPRlElGGNqHu3Pn9Yx4G9dMvzIvCLtkmKUOHcOs4akwlywPdnYKpvs/uNiScQ1A0aONm4E5wCMSc6px17B93XLpWKs3pwpBBiGqOULMKuA5tpV4004sJYFjr6FK4zlXTq2GHDOlyqKsY=;
X-UUID: f99a34e724cd4e9d9e1ff6e344745583-20200113
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <gtk_ruiwang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1175490561; Mon, 13 Jan 2020 19:32:37 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 13 Jan 2020 19:33:21 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 Jan 2020 11:32:08 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 14 Jan 2020 11:32:46 +0800
From: <gtk_ruiwang@mediatek.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, Alexandre Courbot
 <acourbot@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "Matthias Brugger" <matthias.bgg@gmail.com>, Thomas Gleixner
 <tglx@linutronix.de>, Tomasz Figa <tfiga@chromium.org>
Subject: media: mtk-vcodec: reset segment data then trig decoder
Date: Tue, 14 Jan 2020 11:32:26 +0800
Message-ID: <20200114033226.16786-1-gtk_ruiwang@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_193242_307317_9C9D03C3 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: gtk_ruiwang@mediatek.com, Maoguang Meng <maoguang.meng@mediatek.com>,
 srv_heupstream@mediatek.com, Yunfei Dong <yunfei.dong@mediatek.com>,
 Longfei Wang <longfei.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Tiffany Lin <tiffany.lin@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: gtk_ruiwang <gtk_ruiwang@mediatek.com>

VP9 bitstream specification indicate segment data should reset to
default when meet key frames, intra only frames or enable error
resilience mode. So memset segmentation map buffer before every
decode process is not appropriate.

Reset segment data only when needed, then trig decoder hardware

Signed-off-by: Rui Wang <gtk_ruiwang@mediatek.com>
---
 .../platform/mtk-vcodec/vdec/vdec_vp9_if.c    | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c b/drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c
index 24c1f0bf2147..42c9c3c98076 100644
--- a/drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c
+++ b/drivers/media/platform/mtk-vcodec/vdec/vdec_vp9_if.c
@@ -110,7 +110,9 @@ struct vp9_sf_ref_fb {
  * @buf_len_sz_c : size used to store cbcr plane ufo info (AP-R, VPU-W)
 
  * @profile : profile sparsed from vpu (AP-R, VPU-W)
- * @show_frame : display this frame or not (AP-R, VPU-W)
+ * @show_frame : [BIT(0)] display this frame or not (AP-R, VPU-W)
+ *	[BIT(14)] reset segment data or not (AP-R, VPU-W)
+ *	[BIT(15)] trig decoder hardware or not (AP-R, VPU-W)
  * @show_existing_frame : inform this frame is show existing frame
  *	(AP-R, VPU-W)
  * @frm_to_show_idx : index to show frame (AP-R, VPU-W)
@@ -494,12 +496,12 @@ static void vp9_swap_frm_bufs(struct vdec_vp9_inst *inst)
 					frm_to_show->fb->base_y.size);
 		}
 		if (!vp9_is_sf_ref_fb(inst, inst->cur_fb)) {
-			if (vsi->show_frame)
+			if (vsi->show_frame & BIT(0))
 				vp9_add_to_fb_disp_list(inst, inst->cur_fb);
 		}
 	} else {
 		if (!vp9_is_sf_ref_fb(inst, inst->cur_fb)) {
-			if (vsi->show_frame)
+			if (vsi->show_frame & BIT(0))
 				vp9_add_to_fb_disp_list(inst, frm_to_show->fb);
 		}
 	}
@@ -870,13 +872,22 @@ static int vdec_vp9_decode(void *h_vdec, struct mtk_vcodec_mem *bs,
 					vsi->sf_frm_sz[idx]);
 			}
 		}
-		memset(inst->seg_id_buf.va, 0, inst->seg_id_buf.size);
 		ret = vpu_dec_start(&inst->vpu, data, 3);
 		if (ret) {
 			mtk_vcodec_err(inst, "vpu_dec_start failed");
 			goto DECODE_ERROR;
 		}
 
+		if ((vsi->show_frame & BIT(15)) &&
+		    (vsi->show_frame & BIT(14))) {
+			memset(inst->seg_id_buf.va, 0, inst->seg_id_buf.size);
+			ret = vpu_dec_start(&inst->vpu, NULL, 0);
+			if (ret) {
+				mtk_vcodec_err(inst, "vpu trig decoder failed");
+				goto DECODE_ERROR;
+			}
+		}
+
 		ret = validate_vsi_array_indexes(inst, vsi);
 		if (ret) {
 			mtk_vcodec_err(inst, "Invalid values from VPU.");
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
