Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0BB16EC75
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 18:24:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ILwI2rC8EYWLGcsPvq5wWEkglFYvpRE5RUrpJLI+Gx0=; b=fgu9gwT73HRxlr
	My4cwb9S1lOgrvfxG15z0vSmn6m4z5su9WnNRR25LS4X9j9GmUpwwMsPWkLvNzCCDvnWX8m8A8y+u
	DKqH/LlUWGFR71YXgrQ3nGR8M3Qngo9rnmPj561jYkYglelBTumvijea5Ss71WLZB93W8HcZ03LXU
	d3+tZYfaRsaWN13lmXEkYoaBW/1TGWMHeB49fE3WKqXAS5gb1t62hfy3gJ19kaUI6Y+UaUKden23c
	93zPgO1Gox4Gly7RLKLD/x5gpP8urc93QY9lICriPWPDTCxvUElpQaDZ8Upg4mshOrMp6TOs8rBGb
	UPz+vWajx87JVmFPbk9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6dx2-0003DJ-H4; Tue, 25 Feb 2020 17:24:56 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6dwr-0003CE-Qm
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 17:24:47 +0000
Received: by mail-pg1-x544.google.com with SMTP id d9so7207283pgu.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 09:24:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lfotpKjLU7BxU2unCoAL0OLP6JpkqZvfhxJOwfxAYmg=;
 b=ltTXZwDqi3bj0f4va6iSNa+noIAQ6niJVSGeslx5czOaMstk4QGvtQQBXCIA5DdolR
 n4MHGW+hII0IRLuu5vH5+ECcXvVBUIxDWvuiepyhTBqQbzFDKU5Eg6L51TGu0NJl6T2d
 4Aj3Fnggf+FTY9ad5BqpOrZyLPt3CvCy1aEd8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lfotpKjLU7BxU2unCoAL0OLP6JpkqZvfhxJOwfxAYmg=;
 b=Hcv62Cmqd4lpdZ902byjgzFM7nWm8XfoYSDnH/6Jp2yAmHGZCQMKGZCOmGP/KZFfKs
 2RcSvoaYinSTQD/2P9T68KpNqshyzt7IS8l5mV0GK2Lu9qCQrhijJ/M7MnoHuhYwkaW/
 YQ9EgWhFMOHw8l9K4lqT1zVcr16zgtidoJzNZWD5MSJLPMVXRohC3lThNcRqJ+1fky+2
 YX5nfYE8gWTQDCeXjCxJZDjRBcUuhJwCWY5pxOFAlwLYO/DpkkhVT6LiKnXSzWF8DTl2
 ltHgKSUw3et8/n9oS1rM1rYc5uDYTMCQ/KEWe4xK6Z5VyR6fan8tv1TJkkr3Ak8W5lAy
 qzHg==
X-Gm-Message-State: APjAAAVC/JFyyqMOC4MQSCVkAwVm9fPr08/UbYr52cFuyjphPLuSHNND
 eXZYwTSHjtFdVS2ekQKA5As/2C2pxsW1DQ==
X-Google-Smtp-Source: APXvYqwArngtth7ItH3EpE8LH8S4j/eVAVVg6AqEvqOu3xoUF1RjeEXBYLVRxkXdit5VDdriBk3z6w==
X-Received: by 2002:a63:cf06:: with SMTP id j6mr39603191pgg.379.1582651483432; 
 Tue, 25 Feb 2020 09:24:43 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id a17sm11099378pgv.11.2020.02.25.09.24.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 09:24:42 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3] media: mtk-vpu: avoid unaligned access to DTCM buffer.
Date: Wed, 26 Feb 2020 01:24:37 +0800
Message-Id: <20200225172437.106679-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_092445_865311_7A48EC0D 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Change in v3:
- fix sparse warnings.
Change in v2:
- fix sparse warnings.
---
 drivers/media/platform/mtk-vpu/mtk_vpu.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/media/platform/mtk-vpu/mtk_vpu.c b/drivers/media/platform/mtk-vpu/mtk_vpu.c
index a768707abb94..e3fd2d1814f3 100644
--- a/drivers/media/platform/mtk-vpu/mtk_vpu.c
+++ b/drivers/media/platform/mtk-vpu/mtk_vpu.c
@@ -603,12 +603,14 @@ EXPORT_SYMBOL_GPL(vpu_load_firmware);
 static void vpu_init_ipi_handler(void *data, unsigned int len, void *priv)
 {
 	struct mtk_vpu *vpu = (struct mtk_vpu *)priv;
-	struct vpu_run *run = (struct vpu_run *)data;
-
-	vpu->run.signaled = run->signaled;
-	strscpy(vpu->run.fw_ver, run->fw_ver, sizeof(vpu->run.fw_ver));
-	vpu->run.dec_capability = run->dec_capability;
-	vpu->run.enc_capability = run->enc_capability;
+	struct vpu_run __iomem *run = (struct vpu_run __iomem __force *)data;
+
+	vpu->run.signaled = readl(&run->signaled);
+	memcpy_fromio(vpu->run.fw_ver, run->fw_ver, sizeof(vpu->run.fw_ver));
+	/* Make sure the string is NUL-terminated */
+	vpu->run.fw_ver[sizeof(vpu->run.fw_ver) - 1] = '\0';
+	vpu->run.dec_capability = readl(&run->dec_capability);
+	vpu->run.enc_capability = readl(&run->enc_capability);
 	wake_up_interruptible(&vpu->run.wq);
 }
 
-- 
2.25.0.265.gbab2e86ba0-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
