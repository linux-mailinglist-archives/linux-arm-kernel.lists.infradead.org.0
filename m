Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F3C7BBF2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 10:41:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=heqK+gWmbc6hfWQitRMkkY70ZCSqC9BoTgOi1hwtF4w=; b=gSQQujkkilucob
	1F0Enu4VgJaF7U2jk9PxgiZqHXf3lw/U/YuP0odvaIvnsHDZipypW2pxSDXQHx6jtLVxOlMYXdhQX
	QnWc5nMf0Tyea4LALn4S6xYmA74KBle6dbpl9q1xXe8lo9KsFHhpa4ZXyne9vLx2gJfCwhQ00v2bv
	irDiu1OUP9SsLRvJy0vZFK3OpVvQASdho/KLDLhdofo4lhkcKXufhWODkt6XIw4oervuZh4niacO/
	V/9sHJLy5zPk7k5pUk2FZrUOul9cNw/tk8J69oVlsBL3rMQ1RqRXiPzpEqa1i9Yyj7od03hNukFtx
	Tb9+GzeppHM4VJmjlWmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hskAW-0006P8-SJ; Wed, 31 Jul 2019 08:41:08 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsk9p-00060Q-5y
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 08:40:28 +0000
Received: by mail-wr1-x444.google.com with SMTP id g17so68690643wrr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 01:40:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sLpjjKS1ce8bNQv8q/Qa2SJ22ctxx4jp20Vf7E5q7wU=;
 b=MV63+/qRVHk4pEL2HzlA9UVoc85DydE09k+CdU0asPODTFDtlVpRZcRLzSaAP0rUVm
 yi9qfx+pp21tlii4qTwgjeQVCMcugVuRyMpv+afoyKd4NMGKn42BJwxvqcBc7XYEgSUy
 Y02feLyW5nr4y+pPzjYnWIuzJF7q9aCqkio42k105UNNp1Y3SHilEVpJcVSYh2JJUqd0
 ZQfPsY/uuHth24yNpFCe0d1+UmcIZupfhlO+Sit5CsTagbQVc+wOcaFx9wlEC1r2q6YU
 DFmP6Me6nEMfvIU2AupxORQCbyYdfJ9ro2OYQwK/U4gvqdzrcbtA5q4UjiPNwYkvBR4G
 xqDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sLpjjKS1ce8bNQv8q/Qa2SJ22ctxx4jp20Vf7E5q7wU=;
 b=HuyOHQtJV63vmAjBUdyL+JR+D4P57CXpk7PXV0MfF9jOYErbtquR8HKClkd+WeZC4w
 /iSO4MfbQ4QjrCprWMf7uCjjTIOGMO0hKfMOwmRSWAI/KK6eIrm0CcRCB3q1kM9zQbZR
 /iW/r8UUzUfbvL2/zufLRoqC4rEE4pxXyXkk1GasFMXoyjS3y3snTPYq6HZnvdy72Yr7
 omgxSV8l3EyRirBYKogokGExxMQFC5vzvHKlWkBknBqHAxclt24+DQLN8LzCEAgr/VLw
 CzDFxci+SD+sBe8bx3P/qMgDfp2OZKNmL1zurUf2wZfM/cgSCtRVus6HSPy3h9p8fpDp
 U8+w==
X-Gm-Message-State: APjAAAVb/GKI0XW1ItbzhaWEtODCWZrfVVLteR+SylZT+DUwCG0Qnif8
 X+cZAb5F1q3Beo2yDnDnKBD64w==
X-Google-Smtp-Source: APXvYqzqvEbqRWHT70qD1Gd6GbwhoKcTb1xDRKV5uUOaWJtUJ43Ikrt6tSU+oew0L9HjDkTlKmV47A==
X-Received: by 2002:adf:f186:: with SMTP id h6mr5501169wro.274.1564562423669; 
 Wed, 31 Jul 2019 01:40:23 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id 18sm56049308wmg.43.2019.07.31.01.40.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 01:40:23 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: sboyd@kernel.org,
	jbrunet@baylibre.com
Subject: [PATCH v2 1/4] clk: core: introduce clk_hw_set_parent()
Date: Wed, 31 Jul 2019 10:40:16 +0200
Message-Id: <20190731084019.8451-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731084019.8451-1-narmstrong@baylibre.com>
References: <20190731084019.8451-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_014025_219372_1BF64981 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
