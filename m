Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6480C15D70F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 13:02:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i1ypsAO5pPj7uSgAF9U+fIdnUPGT+8gWDP6aSQizhLs=; b=azZi2gK/aMGthR
	d5GsqXGVlLloORgJDTF+20zSWYn75YayOKoaxnG7YX+ejJn7lrWF3ubnzpqbBk+cnQRfe4JUooBZu
	SHLi3sZn+k1cKWNGc7gAp0NfGlKw5N7wKa0mRc7Hsup6L9pOOoCzqmfTMioIidqytQMQjmj9loZjx
	v7AXtNnTjeh8sVnYOPhKj6WnJhQIbW0MdyKIhAWL5TfTKbcqE7WsF1TUZIJJtb9hj1+t9v/ltS2au
	JUeVWDHUGl1d+QqVQNu5wDn4rF5Xco9wVSj6j/vZcd2O7K7S6QKD1exa7gmMgiGniT0yhTPPfC37/
	SjRQpsM4nP7r97GsxTCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2ZfV-000400-CU; Fri, 14 Feb 2020 12:02:01 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2ZfK-0003yY-MC
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 12:01:52 +0000
Received: by mail-pl1-x643.google.com with SMTP id t6so3670598plj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 04:01:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SrEeeiMYTh8tdM4uM57yi2C/Gx0ZYDeODDLqafFzdQw=;
 b=mgJ1kYMC+BKoJPHgI/QnmPPE5wphvts8MkBDeru9Bwop/IFN17dqQ8HwYmQciHiVmc
 8pDKI2wW53lT/DGGKiXtf8AYsk7nhkyInXUtN8syisSnx1SkqkFpmmaLOTfvCtTT8mN5
 aEz8ZBVe5ISoTRl7RQOkFKkH7rSgiFbU/VUMo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SrEeeiMYTh8tdM4uM57yi2C/Gx0ZYDeODDLqafFzdQw=;
 b=lyNIP3dfz4CKaSp5XXvXDnJJYfYXVKwD/FAvpiiCh5yzqr4UnhhcEjVb8DWClflztH
 q3v6bVj4xhESYS77yStgIHcuQ/RodLkwt5umz/blQvFhbEbTL1B/a40JYZLJhIMdWDLe
 nfClCVtN9DxMMDU4MvceoVWQYyAoe2upP4pMZWGioprT+67eS9N2TYqNNQ89CUcLzguR
 mAw85DHlGLX/uoXLs4dD9b0QwIAiA0cmwp3X672GmmEpN5Kh1e4zWFMAJTNfIqQ0R6Nu
 7xeNYy7zGl4osPavO679TfEFSqcyQmie+74DLrsP46EwROjVHK9yWwcdq1doIsFy+Lbw
 jQSg==
X-Gm-Message-State: APjAAAXL5oVNgs0BqruTjdGmY3ruJGjrciNM7MyMnQTU4FvAaOPQdxb/
 7b994zACKkKMC3YwbDF4MdpuRY0zHPyvaQ==
X-Google-Smtp-Source: APXvYqwWBAPzKlqlSPflws7rlPOk76DpJUm2SkfSFNRolVl+WFSLvA3yN/iX862TqE8JTe7pwnmITA==
X-Received: by 2002:a17:902:b40c:: with SMTP id
 x12mr3045452plr.70.1581681708257; 
 Fri, 14 Feb 2020 04:01:48 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id s18sm7120275pgn.34.2020.02.14.04.01.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Feb 2020 04:01:47 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] media: mtk-vpu: avoid unaligned access to DTCM buffer.
Date: Fri, 14 Feb 2020 20:01:42 +0800
Message-Id: <20200214120142.50529-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_040150_721643_8970476D 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
Change in v2:
- fix sparse warnings.
---
 drivers/media/platform/mtk-vpu/mtk_vpu.c | 17 ++++++++++-------
 drivers/media/platform/mtk-vpu/mtk_vpu.h |  2 +-
 2 files changed, 11 insertions(+), 8 deletions(-)

diff --git a/drivers/media/platform/mtk-vpu/mtk_vpu.c b/drivers/media/platform/mtk-vpu/mtk_vpu.c
index a768707abb94..c59373e84a33 100644
--- a/drivers/media/platform/mtk-vpu/mtk_vpu.c
+++ b/drivers/media/platform/mtk-vpu/mtk_vpu.c
@@ -600,15 +600,18 @@ int vpu_load_firmware(struct platform_device *pdev)
 }
 EXPORT_SYMBOL_GPL(vpu_load_firmware);
 
-static void vpu_init_ipi_handler(void *data, unsigned int len, void *priv)
+static void vpu_init_ipi_handler(void __iomem *data, unsigned int len,
+				 void *priv)
 {
 	struct mtk_vpu *vpu = (struct mtk_vpu *)priv;
-	struct vpu_run *run = (struct vpu_run *)data;
-
-	vpu->run.signaled = run->signaled;
-	strscpy(vpu->run.fw_ver, run->fw_ver, sizeof(vpu->run.fw_ver));
-	vpu->run.dec_capability = run->dec_capability;
-	vpu->run.enc_capability = run->enc_capability;
+	struct vpu_run __iomem *run = data;
+
+	vpu->run.signaled = readl(&run->signaled);
+	memcpy_fromio(vpu->run.fw_ver, run->fw_ver, sizeof(vpu->run.fw_ver));
+	/* Make sure the string is NUL-terminated */
+	vpu->run.fw_ver[sizeof(vpu->run.fw_ver) - 1] = '\0';
+	vpu->run.dec_capability = readl(&run->dec_capability);
+	vpu->run.enc_capability = readl(&run->enc_capability);
 	wake_up_interruptible(&vpu->run.wq);
 }
 
diff --git a/drivers/media/platform/mtk-vpu/mtk_vpu.h b/drivers/media/platform/mtk-vpu/mtk_vpu.h
index d4453b4bcee9..a7ac351b19c1 100644
--- a/drivers/media/platform/mtk-vpu/mtk_vpu.h
+++ b/drivers/media/platform/mtk-vpu/mtk_vpu.h
@@ -15,7 +15,7 @@
  * VPU interfaces with other blocks by share memory and interrupt.
  **/
 
-typedef void (*ipi_handler_t) (void *data,
+typedef void (*ipi_handler_t) (void __iomem *data,
 			       unsigned int len,
 			       void *priv);
 
-- 
2.25.0.265.gbab2e86ba0-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
