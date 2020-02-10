Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2F1156E1B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 04:54:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=31zCzcdDaDpYlbMiXk0u1UMsJRqdV/25xyPCu8NQrsA=; b=PQ+1FaIbds7KPU
	hLiS17zmwSkMTL+hiusmVxnbleXJpe1onXht79QnAyYWq7SBx5RxJ/IpRT+CJKscsbMRfroOXY+dc
	LC3vvQJdzzwSFDcWMQCGPlkKUCmiMuCb0z2WtSfAjvh5blysNGjxMioFC7NPh4xRKTWxLJFCC9owv
	ld/AnOrsUWY9OOZ4+hDyccnham6TGch5W6JcyEGnajLnt5mHdbUpeEim6iwTIC+tQKAIJLn2DoDLs
	7m5dqOtKWwfS1u5RbwsjDpVDY5IlcYVyvR0SSZFdLu/ymVOVUC73JWx9IJK7IxoSYii9xDsUOjY7m
	01Yew0hr4mc+J+w5agpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j109K-0000YZ-9b; Mon, 10 Feb 2020 03:54:18 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j109C-0000Xf-Ao
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 03:54:11 +0000
Received: by mail-pj1-x1042.google.com with SMTP id d5so3586866pjz.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Feb 2020 19:54:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XGTENEjJ0+z+1EMrz+JrOfyO1gcPOMBNtUwze/u53KI=;
 b=He3CPtJv9IthCFqDIfd5GI3rJaw5+1kbpKBDyO7Wh+3kXUrMjKjh0CrcU+HW+xzZCr
 miz1L40jFvrEay6sQy8PjEMqFuo9NyFaimnfRq1NeGccaMAhHQcmx/siFCBt7B0SexUk
 /PZeCvkoEg7mEk1YNJcZ5d4a0eFn7hI/WNdyo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XGTENEjJ0+z+1EMrz+JrOfyO1gcPOMBNtUwze/u53KI=;
 b=P6owJhecbRGOr+f6vfHmORFj8HruO2kwuX+t28Nf3NNynz6EvRSIGDH9y5bI6rFjfA
 udmGdMogCJ2yqlzYfHrz0bq6414bWUnx7+uphgs0/+wiShv7dRMQ0/ByDTVppTe+Do9N
 vaLNKAK1HmcgFlZo9R8UJ4UKNhv2zkR1dgdDvaLVcX9lyddPjm1hnR9Bp+I0P6qBow0z
 zc/qK+nsW0nm875OEqbbdnadpZkkLWwiimkh52GindlSBzEo1xOOMJHOn5tJv1XXoEnQ
 ZU6lhwP2i2oAlQM9+TGRtaAALukjHRUQ+ZOV5ZS9VnRA+xxzH0SZDdwo4XikyYRcWj6b
 NYAg==
X-Gm-Message-State: APjAAAW0GceSrsxIeP2lIpHagpA6NmZb161sosqPEsGif+GCmMx3APaJ
 ep9rb6SBdT6OVywvvdOvPhawbULOfB1aBQ==
X-Google-Smtp-Source: APXvYqztMKtN5f2EXAltVefsi/KgAfmMtI7mmcAMBhBpCsFWH61jBs7TaCyvdwU2IC6/picaXka25A==
X-Received: by 2002:a17:902:567:: with SMTP id
 94mr10741617plf.174.1581306848902; 
 Sun, 09 Feb 2020 19:54:08 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id c26sm10568151pfj.8.2020.02.09.19.54.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 09 Feb 2020 19:54:08 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] media: mtk-vpu: avoid unaligned access to DTCM buffer.
Date: Mon, 10 Feb 2020 11:53:52 +0800
Message-Id: <20200210035351.227499-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.225.g125e21ebc7-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_195410_396802_A82357E6 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

struct vpu_run *run in vpu_init_ipi_handler() is an ioremapped DTCM (Data
Tightly Coupled Memory) buffer shared with AP.  It's not able to do
unaligned access. Otherwise kernel would crash due to unable to handle
kernel paging request.

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

Copy the string by memcpy_fromio() for this buffer to avoid unaligned
access.

Fixes: 85709cbf1524 ("media: replace strncpy() by strscpy()")
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 drivers/media/platform/mtk-vpu/mtk_vpu.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/mtk-vpu/mtk_vpu.c b/drivers/media/platform/mtk-vpu/mtk_vpu.c
index a768707abb94..e705e85d6f5a 100644
--- a/drivers/media/platform/mtk-vpu/mtk_vpu.c
+++ b/drivers/media/platform/mtk-vpu/mtk_vpu.c
@@ -600,13 +600,16 @@ int vpu_load_firmware(struct platform_device *pdev)
 }
 EXPORT_SYMBOL_GPL(vpu_load_firmware);
 
-static void vpu_init_ipi_handler(void *data, unsigned int len, void *priv)
+static void vpu_init_ipi_handler(void __iomem *data, unsigned int len,
+				 void *priv)
 {
 	struct mtk_vpu *vpu = (struct mtk_vpu *)priv;
-	struct vpu_run *run = (struct vpu_run *)data;
+	struct vpu_run __iomem *run = data;
 
 	vpu->run.signaled = run->signaled;
-	strscpy(vpu->run.fw_ver, run->fw_ver, sizeof(vpu->run.fw_ver));
+	memcpy_fromio(vpu->run.fw_ver, run->fw_ver, sizeof(vpu->run.fw_ver));
+	/* Make sure the string is NUL-terminated */
+	vpu->run.fw_ver[sizeof(vpu->run.fw_ver) - 1] = '\0';
 	vpu->run.dec_capability = run->dec_capability;
 	vpu->run.enc_capability = run->enc_capability;
 	wake_up_interruptible(&vpu->run.wq);
-- 
2.25.0.225.g125e21ebc7-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
