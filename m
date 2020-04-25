Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A4C1B896D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 22:40:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m9jSMTwq/zhBldj4XXEQfonX/ykxZr6E3sCCiICXfn8=; b=hGY1qMLXhioVMf
	H6g4j3PJZwxn54J8Lsf0jTEbkAobEbMFJaJBezEVmdVAl4tvGhBhQD7F15/yN3OUql/4jaNZOwT+P
	lf3/6crpadYqpmdLqDMZkbSFCTSkRfS24CmCtGExi1dd55nujY3QbgQKGHVt76OQL2eLHDkosf+LV
	mIJ+6N/BZP+4bwj4etqHdeazNVpdajc77McjMDaRrTEBB9Acrck3oA5k2i7288SbW2H3Rjcm7TP6E
	10XnLBl40m8VxqNlo8PFISOz9t8L5sxqr0m/LLyY8NOSjeDIPEPAJQIikl7K/TBOVJrp70R3c27k8
	Tm5Dmv433NCS1D4sVdDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSRb1-000869-IY; Sat, 25 Apr 2020 20:40:19 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSRad-00083n-Kd; Sat, 25 Apr 2020 20:39:56 +0000
Received: by mail-wr1-x441.google.com with SMTP id x18so15795304wrq.2;
 Sat, 25 Apr 2020 13:39:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ImHIL2vKfBcIIT6MLP/ljPFS+7iiYKmixfDoPbU1l8g=;
 b=tLdWuHVFK7BH7PjywN96BGzSs07imqLs2JqVhvqLWZctk3p8om15aFXgRWLXYeSZPh
 ypzJ0aq6/FbYtr8m7ahAI6kXToXus/CXumtAg7JlNQdwPmuUtLvMhI61dnGtVXrtiv86
 4ZjlUcCqFBR31TWg8g0n/SUGURK5DTLYR3J0hxIA+H0+LFkpiv3Fgg6qexfrxRrGX28E
 9DVuG4gEouPf1nvXbVH+l3wxkeYRjFv8OYrj592LYwEegdGVk7n7RNwpfTu0cIUePo6u
 61VFYCn9+9oMH1VRFcYJLKB3wMtU0PP1iKDDP5+5chZ0HcJEjTCjf1LoKQek7b/qFbQz
 ol4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ImHIL2vKfBcIIT6MLP/ljPFS+7iiYKmixfDoPbU1l8g=;
 b=ovU4kyhX2Wv6H8l8TTLkzurolovRNcaGQdNu7cBhR5abSey6mCAGONdj/z22ho/T5W
 kGUXDGrdG6MluCgb/OZmhqiFleK7imvij+2uxMgOkvGjALkfm4hTzijjEBL2S8DVI8rQ
 zptsVHWoc3m9pKK1CbQDOUN2ET+V8ACwNzW9IUmVgQUNPNLWSUSpn83i0GITJP++zNvq
 wrETo7S0DI4KG8zrowv5PCG6FOqaeR0Fds6LBUAw8d2OwsPu8NsaMVq/eq2cyOCx2iBr
 SBO5PYTdSoK1RE7tcxKSHOzEmBF8XJdeiq4KdRF1XaxHUKjCwufLEF1AmZywLLU9jU6r
 BK/A==
X-Gm-Message-State: AGi0PubgGqcGIIkBT7Co9+O+FSSP5rR8V6Ruxg/GFoQRydaTZkPwD1Ux
 oocXqwj4xhaJQVxjH3IqBjo=
X-Google-Smtp-Source: APiQypIdXwVl1f4b7mf3LTaDVD8pAVD3aXuxUrJZFC7rD/jlBXlUIePVGB7g7Qv+KKpgO/4nRFXvQQ==
X-Received: by 2002:adf:f651:: with SMTP id x17mr18461448wrp.230.1587847192503; 
 Sat, 25 Apr 2020 13:39:52 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137142E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3714:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id t67sm9267418wmg.40.2020.04.25.13.39.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Apr 2020 13:39:51 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: narmstrong@baylibre.com, jmasson@baylibre.com,
 linux-amlogic@lists.infradead.org
Subject: [PATCH] drm/meson: viu: fix setting the OSD burst length in
 VIU_OSD1_FIFO_CTRL_STAT
Date: Sat, 25 Apr 2020 22:39:41 +0200
Message-Id: <20200425203941.3188000-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_133955_700879_4775F458 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The burst length is configured in VIU_OSD1_FIFO_CTRL_STAT[31] and
VIU_OSD1_FIFO_CTRL_STAT[11:10]. The public S905D3 datasheet describes
this as:
- 0x0 = up to 24 per burst
- 0x1 = up to 32 per burst
- 0x2 = up to 48 per burst
- 0x3 = up to 64 per burst
- 0x4 = up to 96 per burst
- 0x5 = up to 128 per burst

The lower two bits map to VIU_OSD1_FIFO_CTRL_STAT[11:10] while the upper
bit maps to VIU_OSD1_FIFO_CTRL_STAT[31].

Replace meson_viu_osd_burst_length_reg() with pre-defined macros which
set these values. meson_viu_osd_burst_length_reg() always returned 0
(for the two used values: 32 and 64 at least) and thus incorrectly set
the burst size to 24.

Fixes: 147ae1cbaa1842 ("drm: meson: viu: use proper macros instead of magic constants")
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/gpu/drm/meson/meson_registers.h |  6 ++++++
 drivers/gpu/drm/meson/meson_viu.c       | 11 ++---------
 2 files changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_registers.h b/drivers/gpu/drm/meson/meson_registers.h
index 8ea00546cd4e..049c4bfe2a3a 100644
--- a/drivers/gpu/drm/meson/meson_registers.h
+++ b/drivers/gpu/drm/meson/meson_registers.h
@@ -261,6 +261,12 @@
 #define VIU_OSD_FIFO_DEPTH_VAL(val)      ((val & 0x7f) << 12)
 #define VIU_OSD_WORDS_PER_BURST(words)   (((words & 0x4) >> 1) << 22)
 #define VIU_OSD_FIFO_LIMITS(size)        ((size & 0xf) << 24)
+#define VIU_OSD_BURST_LENGTH_24          (0x0 << 31 | 0x0 << 10)
+#define VIU_OSD_BURST_LENGTH_32          (0x0 << 31 | 0x1 << 10)
+#define VIU_OSD_BURST_LENGTH_48          (0x0 << 31 | 0x2 << 10)
+#define VIU_OSD_BURST_LENGTH_64          (0x0 << 31 | 0x3 << 10)
+#define VIU_OSD_BURST_LENGTH_96          (0x1 << 31 | 0x0 << 10)
+#define VIU_OSD_BURST_LENGTH_128         (0x1 << 31 | 0x1 << 10)
 
 #define VD1_IF0_GEN_REG 0x1a50
 #define VD1_IF0_CANVAS0 0x1a51
diff --git a/drivers/gpu/drm/meson/meson_viu.c b/drivers/gpu/drm/meson/meson_viu.c
index 304f8ff1339c..aede0c67a57f 100644
--- a/drivers/gpu/drm/meson/meson_viu.c
+++ b/drivers/gpu/drm/meson/meson_viu.c
@@ -411,13 +411,6 @@ void meson_viu_gxm_disable_osd1_afbc(struct meson_drm *priv)
 			    priv->io_base + _REG(VIU_MISC_CTRL1));
 }
 
-static inline uint32_t meson_viu_osd_burst_length_reg(uint32_t length)
-{
-	uint32_t val = (((length & 0x80) % 24) / 12);
-
-	return (((val & 0x3) << 10) | (((val & 0x4) >> 2) << 31));
-}
-
 void meson_viu_init(struct meson_drm *priv)
 {
 	uint32_t reg;
@@ -444,9 +437,9 @@ void meson_viu_init(struct meson_drm *priv)
 		VIU_OSD_FIFO_LIMITS(2);      /* fifo_lim: 2*16=32 */
 
 	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
-		reg |= meson_viu_osd_burst_length_reg(32);
+		reg |= VIU_OSD_BURST_LENGTH_32;
 	else
-		reg |= meson_viu_osd_burst_length_reg(64);
+		reg |= VIU_OSD_BURST_LENGTH_64;
 
 	writel_relaxed(reg, priv->io_base + _REG(VIU_OSD1_FIFO_CTRL_STAT));
 	writel_relaxed(reg, priv->io_base + _REG(VIU_OSD2_FIFO_CTRL_STAT));
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
