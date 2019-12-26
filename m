Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D2A12AE3A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 20:13:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sfSdjmXq8x+ndnb6ZBAIHmkgAYlrdxJDxRfk3f2fy2M=; b=Y6ujOt29UJ5mpZ
	z5JiSerGqq6FjXDWflvhUemoH4mcF9Ftwnr6u1Tt5xqvIVt6rsIARd5yGG4itNl78hBPnr9mAvjyM
	5H5weLsSNKYZXYKLJPs8EoI0u28Dfg+DSPIX6m0dS9aCjSlrMYSy/IRtMMIMHqlQfCJkq1zCFk5Dl
	zkTCLqMue38ixzzab43BricSvo9XRcZUINZOAh6asyuFP9lcodefVvaLZZwaNFXgKBcnl0C3Eeeq4
	EoE15QKWQDfLMnieECWXx/wosKKd5OuHiObktqL7bVBnR3RJjsRlwE8v9CZobEU/GtRTwJy7fgrt2
	NXTIhMZwSxozLw7EYkdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikYZP-0001rC-6R; Thu, 26 Dec 2019 19:13:15 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikYYv-0001WK-Kv; Thu, 26 Dec 2019 19:12:46 +0000
Received: by mail-wm1-x343.google.com with SMTP id d139so5565836wmd.0;
 Thu, 26 Dec 2019 11:12:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tt36REs6xTGhoAu/DRKUVnoYElZnOVVi2F4lvnCzwxk=;
 b=nN/5xERvRFlldF3gW7sAZTJtfO1cS4PM2gDnf67/zENyO5n4o77HOWTbJd+ZG9QQEk
 rRmgS1gcOjN3hRQiIL+owsaJVLwFqTfL1/vG+uggrbXC0yBGM+RxK1zFTo6OGeRaCvvr
 2bIXCEAwf2NTdJkSs9YLL71Y1MeiMYh+cgkFAqIiuMUmEUldmHj5l+11ytV6bc1yFMBx
 KSK2b/dgA5OZI681Yv5LvSHPpYjq5STPnwC0M/RjXSjn/F7jJrOyJThiJKZl71YehIwR
 pNI8Gvuz2bqniQpEFgzsYaEu9XkhkxVZNHC6U7sQeTE0867hzRQ7yq0Gjwpl4SU2o4WP
 c7yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tt36REs6xTGhoAu/DRKUVnoYElZnOVVi2F4lvnCzwxk=;
 b=s8V6mImHpyxzuNSg+k+2LxPGFKsYPQAs7CdHaF3dgS5nJXGg/eiGAmIyqfT1tLP3LX
 652/A2RVj/TJ95+Lz+7FOVXQG8CNeTUFjr6dMVcSH/1RAynxsZA2gk297Mr6o66sJWY7
 KOavLdkLFrZxJLvkLatOxigjeh9iKQ1IDVH3C9O/g/jev7HoyZQ0sBC1rEpDTwASUgRo
 ghW8wdYLfh93c4uzzitJtGTGSB/jIO9RXMBihrwhPOp+CRAcrQLlvi/gQuCh1LHl6zri
 INsDDVd8svVSrmU2l0CPJ1MHumlFIjuPzqv1pXJ6h+J1HLuLsPNK4/Mun3XxdlqqjwhM
 beBw==
X-Gm-Message-State: APjAAAVgXy216YKqpE7zxsp3VM/aNO+uTF7lu1JOc3cGWNem0e4BKzHo
 nvRmMJ+qSb64wBM4Uy7EcHOevTsU3NQ=
X-Google-Smtp-Source: APXvYqzZGxtmKwZ1j7QZvBVzxdXGXdom8ptwX/pQlRuThGcOkzVdWLF8jTR6H/5QaAJYZ0p+Ul4wvw==
X-Received: by 2002:a05:600c:290f:: with SMTP id
 i15mr15657682wmd.115.1577387564126; 
 Thu, 26 Dec 2019 11:12:44 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1373A1900428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:373a:1900:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id o7sm8965937wmh.11.2019.12.26.11.12.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Dec 2019 11:12:43 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, jbrunet@baylibre.com, sboyd@kernel.org
Subject: [PATCH v2 1/2] clk: meson: meson8b: make the CCF use the glitch-free
 "mali" mux
Date: Thu, 26 Dec 2019 20:12:23 +0100
Message-Id: <20191226191224.3785282-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191226191224.3785282-1-martin.blumenstingl@googlemail.com>
References: <20191226191224.3785282-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_111245_681062_47E794EF 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: narmstrong@baylibre.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The "mali_0" or "mali_1" clock trees should not be updated while the
clock is running. Enforce this by setting CLK_SET_RATE_GATE on the
"mali_0" and "mali_1" gates. This makes the CCF switch to the "mali_1"
tree when "mali_0" is currently active and vice versa, which is exactly
what the vendor driver does when updating the frequency of the mali
clock.

This fixes a potential hang when changing the GPU frequency at runtime.

Fixes: 74e1f2521f16ff ("clk: meson: meson8b: add the GPU clock tree")
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/clk/meson/meson8b.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/meson/meson8b.c b/drivers/clk/meson/meson8b.c
index 3408297bff65..9fd31f23b2a9 100644
--- a/drivers/clk/meson/meson8b.c
+++ b/drivers/clk/meson/meson8b.c
@@ -1772,8 +1772,11 @@ static struct clk_regmap meson8b_hdmi_sys = {
 
 /*
  * The MALI IP is clocked by two identical clocks (mali_0 and mali_1)
- * muxed by a glitch-free switch on Meson8b and Meson8m2. Meson8 only
- * has mali_0 and no glitch-free mux.
+ * muxed by a glitch-free switch on Meson8b and Meson8m2. The CCF can
+ * actually manage this glitch-free mux because it does top-to-bottom
+ * updates the each clock tree and switches to the "inactive" one when
+ * CLK_SET_RATE_GATE is set.
+ * Meson8 only has mali_0 and no glitch-free mux.
  */
 static const struct clk_parent_data meson8b_mali_0_1_parent_data[] = {
 	{ .fw_name = "xtal", .name = "xtal", .index = -1, },
@@ -1838,7 +1841,7 @@ static struct clk_regmap meson8b_mali_0 = {
 			&meson8b_mali_0_div.hw
 		},
 		.num_parents = 1,
-		.flags = CLK_SET_RATE_PARENT,
+		.flags = CLK_SET_RATE_GATE | CLK_SET_RATE_PARENT,
 	},
 };
 
@@ -1893,7 +1896,7 @@ static struct clk_regmap meson8b_mali_1 = {
 			&meson8b_mali_1_div.hw
 		},
 		.num_parents = 1,
-		.flags = CLK_SET_RATE_PARENT,
+		.flags = CLK_SET_RATE_GATE | CLK_SET_RATE_PARENT,
 	},
 };
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
