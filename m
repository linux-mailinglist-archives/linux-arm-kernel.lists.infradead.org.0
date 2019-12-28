Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE4DE12BEDE
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 21:29:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xkyBs5Hw5Su3zbgjsgE+DtHzR+3Y0x0fIvoNryjGCGI=; b=Sok5Q+JYTvnH3OUTtmh1Uw7mor
	t4/DlC8l+zk5skE2r+NGTgYACNmx2zenNL5HUxeZfy/AxLkEWoO7QkM2SbEZUtVsLYQ1tTpn/Skyc
	j4rdAWTz57m+oZc7AX71/NfC7fRfApfE2c/Cr5TffhfyonrjT0w2WeyZ33SPn6nSYBh4r+iG9/6fR
	Lf5WMSYUdt0zD+C/POerW7alwg2QMm9hyJyosO4SkXV6JRQs8fgVfuimAg+ZeNFwBLnzrmaVSclxL
	iHijwXKYHoq7NO/z6ahMauwpVAqU4Imz2B72cVa0J0x+zWf5IrNse2+2a5QwbfDwnPQr7s/igB9l/
	a48GWmJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilIhx-0004Or-IY; Sat, 28 Dec 2019 20:29:09 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilIhU-0004GM-2D
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Dec 2019 20:28:41 +0000
Received: by mail-pl1-x643.google.com with SMTP id c13so13113012pls.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Dec 2019 12:28:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=globallogic.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=O/NazlIyebGgm2jHBRChRbTb9wSObdQ6N5Bgyi7i27c=;
 b=kiAAsW26ytcRco0kYp0tzDQgd4XIQNe722oGmS6OtNr2W8p69FOcKQV1Mfu0enUGzD
 gZMbna0w/IOgjM4QkcNhnB5zh60rGSQz+UC6Ox+luGu4NjcvUMe2iPcDMzmsMsySgvIE
 Jn/jOIadgILoQXyKU301MMgEkrm6tuU7phT+sdwkOiJGZmlg5w7CpF6QVqt3ks7Psv+D
 Vyz4aIsLr0e+Otg0gXLZ8pYm19AzvIw496AAXLdFdXkqT3ESZN8vuHkSdqBJwVJ/cMHQ
 4VzS3AaGP717AVYQD61WCZiIzTLASb2b6wOg4h+4zucxuOSiX1r5L6Lym8p7VW0wQOeS
 tkcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=O/NazlIyebGgm2jHBRChRbTb9wSObdQ6N5Bgyi7i27c=;
 b=WPivUa3vFQzsABnbMMOinpuR9ly9BnIf8P4cycZqifMY9HAtqtkfveveLzXZwbdT5o
 UvGjRVvQhFGvj47XbKvReKfP637lpfUTFIhx6ifO/MFpCa1tzX+pYwE5yhr1nnhr6T25
 oAbrCo3u4dmreFob17NEkJvCFz/6sUxpxLAVkhbsYxsWz1xItDG5vpyxKV7bMkJ6R0Aw
 y9OuRUKS/5Q+EgAaCJkpBGooP3xFIgN2UaGS1qP39bXiaOJkFy3wUuoV6I4YJ5xXkSA1
 oVB5hIYISkEVJOlKrHiqiyBRYklFuzRtoq/+xBEnAlhk+0UeEJpkykIjvm/zRUhf2RnM
 lzaw==
X-Gm-Message-State: APjAAAUI7vN+yzktSQDMYryG/eO3qb+wI0a0Tzn8bkX+MA6r5OdAfckT
 9Nm15BV0/BZBpJIWVwxaYb07AQ==
X-Google-Smtp-Source: APXvYqzil8XHZKEKGXU9xgLOmC+kzkkEd7Atnumax82OKBXXcIfMJT4P+N0l7H8T4ce/5JC7LvTxDA==
X-Received: by 2002:a17:90a:28a1:: with SMTP id
 f30mr35191546pjd.77.1577564917184; 
 Sat, 28 Dec 2019 12:28:37 -0800 (PST)
Received: from virtualhost-PowerEdge-R810.synapse.com ([195.238.92.107])
 by smtp.gmail.com with ESMTPSA id i68sm46771169pfe.173.2019.12.28.12.28.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Dec 2019 12:28:36 -0800 (PST)
From: roman.stratiienko@globallogic.com
To: mripard@kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 jernej.skrabec@siol.net
Subject: [RFC 1/4] drm/sun4i: Wait for previous mixing process finish before
 committing next
Date: Sat, 28 Dec 2019 22:28:15 +0200
Message-Id: <20191228202818.69908-2-roman.stratiienko@globallogic.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191228202818.69908-1-roman.stratiienko@globallogic.com>
References: <20191228202818.69908-1-roman.stratiienko@globallogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_122840_167013_77495FCA 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Roman Stratiienko <roman.stratiienko@globallogic.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Roman Stratiienko <roman.stratiienko@globallogic.com>

Screen composition that requires dynamic layout modification,
especially scaling is corrupted when layout changes.

For example if one of the layer scales down, misaligned lines can be
observed, and dynamic increasing of destination area makes mixer to hang
and draw nothing after drawing modified layer.

After deep investigation it turns that scaler double-buffered registers
are not latched by GLB_DBUFFER bit, instead thay are latched immidiately.

Only way to avoid artifacts is to change the registers after mixer finish
previous frame.

Similar was made in sunxi BSP - scaler register values was stored into RAM,
and moved into registers at sync together with GLB_DBUFFER.

Signed-off-by: Roman Stratiienko <roman.stratiienko@globallogic.com>
---
 drivers/gpu/drm/sun4i/sun8i_mixer.c | 15 +++++++++++++++
 drivers/gpu/drm/sun4i/sun8i_mixer.h |  2 ++
 2 files changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.c b/drivers/gpu/drm/sun4i/sun8i_mixer.c
index 8b803eb903b8..eea4813602b7 100644
--- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
@@ -257,6 +257,20 @@ const struct de2_fmt_info *sun8i_mixer_format_info(u32 format)
 	return NULL;
 }
 
+static void sun8i_atomic_begin(struct sunxi_engine *engine,
+			       struct drm_crtc_state *old_state)
+{
+	int reg, ret;
+
+	ret = regmap_read_poll_timeout(engine->regs, SUN8I_MIXER_GLOBAL_STATUS,
+				       reg,
+				       !(reg & SUN8I_MIXER_GLOBAL_STATUS_BUSY),
+				       200, 100000);
+
+	if (ret)
+		pr_warn("%s: Wait for frame finish timeout\n", __func__);
+}
+
 static void sun8i_mixer_commit(struct sunxi_engine *engine)
 {
 	DRM_DEBUG_DRIVER("Committing changes\n");
@@ -310,6 +324,7 @@ static struct drm_plane **sun8i_layers_init(struct drm_device *drm,
 static const struct sunxi_engine_ops sun8i_engine_ops = {
 	.commit		= sun8i_mixer_commit,
 	.layers_init	= sun8i_layers_init,
+	.atomic_begin	= sun8i_atomic_begin,
 };
 
 static struct regmap_config sun8i_mixer_regmap_config = {
diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.h b/drivers/gpu/drm/sun4i/sun8i_mixer.h
index c6cc94057faf..915479cc3077 100644
--- a/drivers/gpu/drm/sun4i/sun8i_mixer.h
+++ b/drivers/gpu/drm/sun4i/sun8i_mixer.h
@@ -25,6 +25,8 @@
 
 #define SUN8I_MIXER_GLOBAL_DBUFF_ENABLE		BIT(0)
 
+#define SUN8I_MIXER_GLOBAL_STATUS_BUSY		BIT(4)
+
 #define DE2_MIXER_UNIT_SIZE			0x6000
 #define DE3_MIXER_UNIT_SIZE			0x3000
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
