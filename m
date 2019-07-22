Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C5066FD49
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 11:58:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OzgWTqMzZVzv15WIw1zKtLnUIISXh30k7hxt9T1KWts=; b=uQ6tF6dLdzcJrn/sDEBugSHm4N
	ie+kw4JZOCLfkYLWfgdYcLKWh4zfgFwzcZfjmDGSRjPx1RDhjIWLwkqyffyaKJaRFwMEsrXAqM/YG
	HA8XrsE5X7Ezihm7goOv4RSBqVyIv0irOhPNerbfpxbBZ2ESYcEvbBHXWEWrfYF0gMzX1m1nkmJuJ
	Dy2IOQ0Mf+yMlr9I61vHLR6VF8TsiUsTUs/CJ/o6qAd83DZQZxFpdLtGreXHBWtaBGiJdyQFyqifo
	rtm0LP6UhuH2KoKjmWtK10EeGOM26eveDaSyrxKnL1qGZ9EpgisOcqHGU7J6B40iEIRsfmzzPRPfE
	Jhn/hF1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpV5H-0002z7-IG; Mon, 22 Jul 2019 09:58:19 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpV1f-00088U-Gp
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 09:54:50 +0000
Received: by mail-wr1-x442.google.com with SMTP id r1so38710114wrl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 02:54:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FzybNdR15Qijg3J4fYjrwfuwdELElwLJSXj8hs/YBLw=;
 b=1yhteVtcPtFx4Ow5mRS1dEYidbu/9IxM9sPWNJNT45dOEo7E8OXzf6gEVZ9WGA/MTn
 I6w+jBuWDmggTJxDLUZlYKS8Y2muvq7EDEKDwEfO+CMDLCbuV6nKIOQBVICUfHRX7Lcj
 xBKAhXLscNeyht23Rn1AkeBZlgfokWedeKrfQICGs0WYR/wEEup+xhNjyD3dULRQ1aT+
 rMg9Z6IkCygJZK2Vf6/Jx8lsKQH/6drWnK4otqUQr7DjG6srtxP3MhLrxDXi0H4tAHno
 oSo6NRsyq7/rsUJLATSY+F9m+FXBVJmbUUrG3DYGA3hJh9sWT4Yn8VZG1KtSlzh8kBqd
 v4cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FzybNdR15Qijg3J4fYjrwfuwdELElwLJSXj8hs/YBLw=;
 b=qebZaHCkcZCmfCrgehfatDD2T5+M0fghObG8+CbemTS3klMAwCYZJd304GqeaV5o9e
 8bBkmklfr9mSv6Zi6ViAQMRV2Spxs3x2LtYdRFtePLFQvA1UU7A7gLGmw31YSOcWDlfb
 fTgf/QbLIsSEaCq/0IKQad+4wt4iMkReFIM+Xvav9zefBmOZcBLPBQj3pGyD/yLGWEf+
 b59/eQqZISrOq3oqIEIFoBW9BiJIqjhXFh7WSGfJXk7xjtrEQRtCoDmeaaJqeXFl5sHJ
 r7WIy2gW9OX5GqDGJdkT/PT1NRp8lmIYprXaJztkKGnYmeeiCLOG3c9C+6PWpR8wvVog
 w91w==
X-Gm-Message-State: APjAAAW3sNVqmuRHYb4xhK64Trfba949qp1ypYrM11RsXo9u6ysiQ94I
 5aY9JvmzbzmhJbpzJg2xoHMJvQ==
X-Google-Smtp-Source: APXvYqxz7bBeXcmL7PjwbF/jjbnawlFtyOHeGm6cHqounIFe8r151Sq4YxwMsZm5483RpcF7MmPOGg==
X-Received: by 2002:adf:f1d1:: with SMTP id z17mr895976wro.190.1563789274244; 
 Mon, 22 Jul 2019 02:54:34 -0700 (PDT)
Received: from pop-os.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id 91sm83158469wrp.3.2019.07.22.02.54.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 02:54:33 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
To: jbrunet@baylibre.com
Subject: [PATCH 6/8] clk: meson: clk-regmap: migrate to new parent description
 method
Date: Mon, 22 Jul 2019 11:54:23 +0200
Message-Id: <20190722095425.14193-7-amergnat@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190722095425.14193-1-amergnat@baylibre.com>
References: <20190722095425.14193-1-amergnat@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_025435_896986_9C6A1DE4 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: narmstrong@baylibre.com, sboyd@kernel.org, khilman@baylibre.com,
 Alexandre Mergnat <amergnat@baylibre.com>, linux-kernel@vger.kernel.org,
 baylibre-upstreaming@groups.io, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This clock controller use the string comparison method to describe parent
relation between the clocks, which is not optimized.

Migrate to the new way by using .parent_hws where possible (ie. when
all clocks are local to the controller) and use .parent_data otherwise.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 drivers/clk/meson/axg.c        |  3 +++
 drivers/clk/meson/clk-regmap.h | 12 ++++++------
 drivers/clk/meson/g12a.c       |  6 ++++++
 drivers/clk/meson/gxbb.c       |  3 +++
 drivers/clk/meson/meson8b.c    |  3 +++
 5 files changed, 21 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/meson/axg.c b/drivers/clk/meson/axg.c
index 7a3d795cc614..13fc0006f63d 100644
--- a/drivers/clk/meson/axg.c
+++ b/drivers/clk/meson/axg.c
@@ -1096,6 +1096,9 @@ static struct clk_regmap axg_gen_clk = {
 	},
 };
 
+#define MESON_GATE(_name, _reg, _bit) \
+	MESON_PCLK(_name, _reg, _bit, &axg_clk81.hw)
+
 /* Everything Else (EE) domain gates */
 static MESON_GATE(axg_ddr, HHI_GCLK_MPEG0, 0);
 static MESON_GATE(axg_audio_locker, HHI_GCLK_MPEG0, 2);
diff --git a/drivers/clk/meson/clk-regmap.h b/drivers/clk/meson/clk-regmap.h
index 1dd0abe3ba91..c4a39604cffd 100644
--- a/drivers/clk/meson/clk-regmap.h
+++ b/drivers/clk/meson/clk-regmap.h
@@ -111,7 +111,7 @@ clk_get_regmap_mux_data(struct clk_regmap *clk)
 extern const struct clk_ops clk_regmap_mux_ops;
 extern const struct clk_ops clk_regmap_mux_ro_ops;
 
-#define __MESON_GATE(_name, _reg, _bit, _ops)				\
+#define __MESON_PCLK(_name, _reg, _bit, _ops, _pname)			\
 struct clk_regmap _name = {						\
 	.data = &(struct clk_regmap_gate_data){				\
 		.offset = (_reg),					\
@@ -120,15 +120,15 @@ struct clk_regmap _name = {						\
 	.hw.init = &(struct clk_init_data) {				\
 		.name = #_name,						\
 		.ops = _ops,						\
-		.parent_names = (const char *[]){ "clk81" },		\
+		.parent_hws = (const struct clk_hw *[]) { _pname },	\
 		.num_parents = 1,					\
 		.flags = (CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED),	\
 	},								\
 }
 
-#define MESON_GATE(_name, _reg, _bit)	\
-	__MESON_GATE(_name, _reg, _bit, &clk_regmap_gate_ops)
+#define MESON_PCLK(_name, _reg, _bit, _pname)	\
+	__MESON_PCLK(_name, _reg, _bit, &clk_regmap_gate_ops, _pname)
 
-#define MESON_GATE_RO(_name, _reg, _bit)	\
-	__MESON_GATE(_name, _reg, _bit, &clk_regmap_gate_ro_ops)
+#define MESON_PCLK_RO(_name, _reg, _bit, _pname)	\
+	__MESON_PCLK(_name, _reg, _bit, &clk_regmap_gate_ro_ops, _pname)
 #endif /* __CLK_REGMAP_H */
diff --git a/drivers/clk/meson/g12a.c b/drivers/clk/meson/g12a.c
index 5cad8cee142b..891140eaeefb 100644
--- a/drivers/clk/meson/g12a.c
+++ b/drivers/clk/meson/g12a.c
@@ -3318,6 +3318,12 @@ static struct clk_regmap g12a_ts = {
 	},
 };
 
+#define MESON_GATE(_name, _reg, _bit) \
+	MESON_PCLK(_name, _reg, _bit, &g12a_clk81.hw)
+
+#define MESON_GATE_RO(_name, _reg, _bit) \
+	MESON_PCLK_RO(_name, _reg, _bit, &g12a_clk81.hw)
+
 /* Everything Else (EE) domain gates */
 static MESON_GATE(g12a_ddr,			HHI_GCLK_MPEG0,	0);
 static MESON_GATE(g12a_dos,			HHI_GCLK_MPEG0,	1);
diff --git a/drivers/clk/meson/gxbb.c b/drivers/clk/meson/gxbb.c
index 65ba08c210d2..45b4c0e62d7a 100644
--- a/drivers/clk/meson/gxbb.c
+++ b/drivers/clk/meson/gxbb.c
@@ -2576,6 +2576,9 @@ static struct clk_regmap gxbb_gen_clk = {
 	},
 };
 
+#define MESON_GATE(_name, _reg, _bit) \
+	MESON_PCLK(_name, _reg, _bit, &gxbb_clk81.hw)
+
 /* Everything Else (EE) domain gates */
 static MESON_GATE(gxbb_ddr, HHI_GCLK_MPEG0, 0);
 static MESON_GATE(gxbb_dos, HHI_GCLK_MPEG0, 1);
diff --git a/drivers/clk/meson/meson8b.c b/drivers/clk/meson/meson8b.c
index 8d0e362d750d..3414e573b8a1 100644
--- a/drivers/clk/meson/meson8b.c
+++ b/drivers/clk/meson/meson8b.c
@@ -2550,6 +2550,9 @@ static struct clk_regmap meson8b_cts_i958 = {
 	},
 };
 
+#define MESON_GATE(_name, _reg, _bit) \
+	MESON_PCLK(_name, _reg, _bit, &meson8b_clk81.hw)
+
 /* Everything Else (EE) domain gates */
 
 static MESON_GATE(meson8b_ddr, HHI_GCLK_MPEG0, 0);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
