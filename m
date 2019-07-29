Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B48D78C95
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 15:17:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=heqK+gWmbc6hfWQitRMkkY70ZCSqC9BoTgOi1hwtF4w=; b=BAp0GBQztCmJMM
	lyX4vDc0oDp1qX2wbZt08EKd6hd5kk1o7R8r0GoTK9bStWRYMCDKWJ+c8lj2XQnUAYeqAcnn3lsCL
	4Gc5k6H11meqPQygn/U0Capzpbx4Sa3Gl9ssfhos5LEWg96LmaVZATQjIrrc1yspRj7RVtLbDcdtR
	yMTy8KlAMUf9SU7wvgVpymuJCLoza6yKJrBRFlviHmKJlGC7J/0w0z4NNIuEV0lhWovnVxTRAaJiZ
	49QU86bvadf+haWEtDW88k9nn3CL1+gzJvfKEDcG0dZy5TNxlDpj8eMXDapwteY6taF1hgQ4sqwPq
	qcLDYMw7Voma0I0a2KlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs5Wq-0006b5-VV; Mon, 29 Jul 2019 13:17:28 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs5WP-0006HY-E3
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 13:17:03 +0000
Received: by mail-wm1-x341.google.com with SMTP id v19so53474391wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 06:17:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sLpjjKS1ce8bNQv8q/Qa2SJ22ctxx4jp20Vf7E5q7wU=;
 b=CLMiw/2aayuVDYeC8v+Hbs9eP9dRkSbExFD5+zaZD8XVZntLt21BOp69K1tnRRpjbW
 h1x6kbaocxmTZlgdkOUZgm3WJWxq1hMdlN8cTBLsyjebws2ydUOJ6ty5W1EE1SsdSXLC
 XDvlDjLNYQsTpJELOf5Goop1SSsDjIerBO2nq949ozhky/+DVkMb6ZCcqiAxOA+ulJ/m
 ddqoDYpU4+h9G1Jt9DOM6Ni4fwIoDJbAvBQyFiY5fLci9NEtaNz/LfRCK+zi4cjHTz/n
 tl2sSIZsHc1nOwvWY7yhIHw0wek4Pbo7+DYcXof7ZE7saR6s4hFgKhah7o+7+Bo1SpgV
 0W4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sLpjjKS1ce8bNQv8q/Qa2SJ22ctxx4jp20Vf7E5q7wU=;
 b=oCyhys6CFCpXhX3buWztZA8H6MTX8YK/9HVMaL7ICmY7LpTLYzlSUWZugSGArbBlwO
 pFuaaZk/Fo6C1BvIeZAuM/7NkpyR5CMVsAZy02ZK4D8KjlTHlSY3CQyFg82b5yQQsTxJ
 5S+Iw33CqPnoMdjJaOODVDxYWv/GCr48VEuSZvNq4FmRI7nESvUYCrToPE4fn0ku41Nv
 lGArJJdAJEIBiZSVQglk2otzJqbpe52uEZh0iuWjC8YxMwkYJdM/Hf//ONi6r/ElY58/
 S2G0JHifxesyjl7ltx98VaNsI+j/zqz0af0slR3sAd5nAB8pXee6CAItkaG590AxEKgN
 1QeQ==
X-Gm-Message-State: APjAAAVaYMGytGqBS2Z/hB0SWRR8kEx3aSErCYqTNs6iNpetXAA0qy6n
 frcY5v+MSbCANq6n2QH/h1m70w==
X-Google-Smtp-Source: APXvYqx9NaFkCsFk23eBGAF2Pv6Iu97a1Kl1E5TPuDeCk21lE8wkpH5qEfKm7if84d09Xzyl2Cz8fQ==
X-Received: by 2002:a1c:f418:: with SMTP id z24mr50475428wma.80.1564406220079; 
 Mon, 29 Jul 2019 06:17:00 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id b5sm52520490wru.69.2019.07.29.06.16.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 06:16:59 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: sboyd@kernel.org,
	jbrunet@baylibre.com
Subject: [PATCH 1/4] clk: core: introduce clk_hw_set_parent()
Date: Mon, 29 Jul 2019 15:16:53 +0200
Message-Id: <20190729131656.7308-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190729131656.7308-1-narmstrong@baylibre.com>
References: <20190729131656.7308-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_061701_470329_DADD010B 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce the clk_hw_set_parent() provider call to change parent of
a clock by using the clk_hw pointers.

This eases the clock reparenting from clock rate notifiers and
implementing DVFS with simpler code avoiding the boilerplates
functions as __clk_lookup(clk_hw_get_name()) then clk_set_parent().

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/clk/clk.c            | 6 ++++++
 include/linux/clk-provider.h | 1 +
 2 files changed, 7 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index c0990703ce54..c11b1781d24a 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -2487,6 +2487,12 @@ static int clk_core_set_parent_nolock(struct clk_core *core,
 	return ret;
 }
 
+int clk_hw_set_parent(struct clk_hw *hw, struct clk_hw *parent)
+{
+	return clk_core_set_parent_nolock(hw->core, parent->core);
+}
+EXPORT_SYMBOL_GPL(clk_hw_set_parent);
+
 /**
  * clk_set_parent - switch the parent of a mux clk
  * @clk: the mux clk whose input we are switching
diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
index 2ae7604783dd..dce5521a9bf6 100644
--- a/include/linux/clk-provider.h
+++ b/include/linux/clk-provider.h
@@ -817,6 +817,7 @@ unsigned int clk_hw_get_num_parents(const struct clk_hw *hw);
 struct clk_hw *clk_hw_get_parent(const struct clk_hw *hw);
 struct clk_hw *clk_hw_get_parent_by_index(const struct clk_hw *hw,
 					  unsigned int index);
+int clk_hw_set_parent(struct clk_hw *hw, struct clk_hw *new_parent);
 unsigned int __clk_get_enable_count(struct clk *clk);
 unsigned long clk_hw_get_rate(const struct clk_hw *hw);
 unsigned long __clk_get_flags(struct clk *clk);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
