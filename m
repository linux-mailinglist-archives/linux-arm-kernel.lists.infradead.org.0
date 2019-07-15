Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24FC86907A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 16:22:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YcQ434e4lC9qDu0M8JoE6c9xpozUYoMpWs9vjjLHnMo=; b=pneo3G0ZTUUiq+
	DmLIp47u0TApg6yChMW/zY7NBgG4F3DvMHlI1dIFsSDROy3wE7sHWJBRoDC3lQ3eJaA0OL00HY2OI
	6eTZwHpckxdvZMwudTQS5ubNIytOc4i0MkMt/lFoKIV0k4Z1jK8UDPHKqHXpFFijnEP+CD8m7dmrt
	QoBYUSF9heY6LV4OwwrTlh1dxEJqguNdD+dPUg9XODbS0+7lPE0iL2nbHOYWC8l2VJcNoP+kmqfeX
	NlX39Td6BUd3JDD5i7diDzLIGq9+M6u0FJ01TSX5KwLuehiaKvHXR6KDWu3+J1US6kOPEickgYe2V
	Lo8Zf0D5/brjZ0QhN4tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn1rc-000533-CI; Mon, 15 Jul 2019 14:22:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn1rH-00050Y-NN
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 14:21:41 +0000
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C5EFF206B8;
 Mon, 15 Jul 2019 14:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563200499;
 bh=rVWg3oKKFb4E1pAZN5rWGwPzMZIurk1py9w3asMvb1o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CA2GqQBdf2qXrOEvXjVPs3FEA96KhLK0UHKpoZMg8PAeyI5SNlxztM1yrk+AbA0MM
 OFxATsWeCtAjE3J+tGfBwAYcnGa8bXCiF6qvqSE5t5xtCBejckME2gxRxUkBeOPQQk
 5+DGcmAhVWIRpoXtv8EeROpSR81I+Fkr2f12BUpQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 063/158] media: s5p-mfc: fix reading min scratch
 buffer size on MFC v6/v7
Date: Mon, 15 Jul 2019 10:16:34 -0400
Message-Id: <20190715141809.8445-63-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715141809.8445-1-sashal@kernel.org>
References: <20190715141809.8445-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_072139_856971_00A448DE 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sasha Levin <sashal@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marek Szyprowski <m.szyprowski@samsung.com>

[ Upstream commit be22203aec440c1761ce8542c2636ac6c8951e3a ]

MFC v6 and v7 has no register to read min scratch buffer size, so it has
to be read conditionally only if hardware supports it. This fixes following
NULL pointer exception on SoCs with MFC v6/v7:

8<--- cut here ---
Unable to handle kernel NULL pointer dereference at virtual address 00000000
pgd = f25837f9
[00000000] *pgd=bd93d835
Internal error: Oops: 17 [#1] PREEMPT SMP ARM
Modules linked in: btmrvl_sdio btmrvl bluetooth mwifiex_sdio mwifiex ecdh_generic ecc
Hardware name: SAMSUNG EXYNOS (Flattened Device Tree)
PC is at s5p_mfc_get_min_scratch_buf_size+0x30/0x3c
LR is at s5p_mfc_get_min_scratch_buf_size+0x28/0x3c
...
[<c074f998>] (s5p_mfc_get_min_scratch_buf_size) from [<c0745bc0>] (s5p_mfc_irq+0x814/0xa5c)
[<c0745bc0>] (s5p_mfc_irq) from [<c019a218>] (__handle_irq_event_percpu+0x64/0x3f8)
[<c019a218>] (__handle_irq_event_percpu) from [<c019a5d8>] (handle_irq_event_percpu+0x2c/0x7c)
[<c019a5d8>] (handle_irq_event_percpu) from [<c019a660>] (handle_irq_event+0x38/0x5c)
[<c019a660>] (handle_irq_event) from [<c019ebc4>] (handle_fasteoi_irq+0xc4/0x180)
[<c019ebc4>] (handle_fasteoi_irq) from [<c0199270>] (generic_handle_irq+0x24/0x34)
[<c0199270>] (generic_handle_irq) from [<c0199888>] (__handle_domain_irq+0x7c/0xec)
[<c0199888>] (__handle_domain_irq) from [<c04ac298>] (gic_handle_irq+0x58/0x9c)
[<c04ac298>] (gic_handle_irq) from [<c0101ab0>] (__irq_svc+0x70/0xb0)
Exception stack(0xe73ddc60 to 0xe73ddca8)
...
[<c0101ab0>] (__irq_svc) from [<c01967d8>] (console_unlock+0x5a8/0x6a8)
[<c01967d8>] (console_unlock) from [<c01981d0>] (vprintk_emit+0x118/0x2d8)
[<c01981d0>] (vprintk_emit) from [<c01983b0>] (vprintk_default+0x20/0x28)
[<c01983b0>] (vprintk_default) from [<c01989b4>] (printk+0x30/0x54)
[<c01989b4>] (printk) from [<c07500b8>] (s5p_mfc_init_decode_v6+0x1d4/0x284)
[<c07500b8>] (s5p_mfc_init_decode_v6) from [<c07230d0>] (vb2_start_streaming+0x24/0x150)
[<c07230d0>] (vb2_start_streaming) from [<c0724e4c>] (vb2_core_streamon+0x11c/0x15c)
[<c0724e4c>] (vb2_core_streamon) from [<c07478b8>] (vidioc_streamon+0x64/0xa0)
[<c07478b8>] (vidioc_streamon) from [<c0709640>] (__video_do_ioctl+0x28c/0x45c)
[<c0709640>] (__video_do_ioctl) from [<c0709bc8>] (video_usercopy+0x260/0x8a4)
[<c0709bc8>] (video_usercopy) from [<c02b3820>] (do_vfs_ioctl+0xb0/0x9fc)
[<c02b3820>] (do_vfs_ioctl) from [<c02b41a0>] (ksys_ioctl+0x34/0x58)
[<c02b41a0>] (ksys_ioctl) from [<c0101000>] (ret_fast_syscall+0x0/0x28)
Exception stack(0xe73ddfa8 to 0xe73ddff0)
...
---[ end trace 376cf5ba6e0bee93 ]---

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/media/platform/s5p-mfc/s5p_mfc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/s5p-mfc/s5p_mfc.c b/drivers/media/platform/s5p-mfc/s5p_mfc.c
index ca11f8a7569d..4b8516c35bc2 100644
--- a/drivers/media/platform/s5p-mfc/s5p_mfc.c
+++ b/drivers/media/platform/s5p-mfc/s5p_mfc.c
@@ -527,7 +527,8 @@ static void s5p_mfc_handle_seq_done(struct s5p_mfc_ctx *ctx,
 				dev);
 		ctx->mv_count = s5p_mfc_hw_call(dev->mfc_ops, get_mv_count,
 				dev);
-		ctx->scratch_buf_size = s5p_mfc_hw_call(dev->mfc_ops,
+		if (FW_HAS_E_MIN_SCRATCH_BUF(dev))
+			ctx->scratch_buf_size = s5p_mfc_hw_call(dev->mfc_ops,
 						get_min_scratch_buf_size, dev);
 		if (ctx->img_width == 0 || ctx->img_height == 0)
 			ctx->state = MFCINST_ERROR;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
