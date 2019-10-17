Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05922DAB7D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 13:50:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8HvJiboo82Vx4Af2YZpKYDaxsEDDvHkZnP/u92bRO/g=; b=A1mw9oHtNpnRDv
	mKhhQjZeqGlzVcO5GtYQ/tcWKEXP7abrAW4B9V/D5fr7jSO6A79JN4LOqDPgf+PtU6hTUCAgfhB7I
	piPVQrlRpcN4/AAemuyOcG0EQimhUSakkjrXeYC7zZrXm6HUtTI/UjLjVvIxUNhpyJZWWDAp8EsLL
	38lRB2uw3+fHa/q+cmhFGKILEx2eJIZjZICXcPCeaKk6+uDTgbkNm+lxmS6NzZJ3B9mSq5eLoKDWN
	qnZYgpORAf8gvR+HOEX9LaoYRrUxKQ/Ll81L3G3nvtdRd0ua9GDB0WYzeVTty+7jdufKJtG2Ht1pz
	8Plz2O9ePkvYpV5Xpp1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL4I3-00029L-QE; Thu, 17 Oct 2019 11:49:59 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL4HM-0001i1-Ff
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 11:49:17 +0000
Received: by mail-lf1-x142.google.com with SMTP id u28so1634879lfc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 04:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aRODApNsJVV2rJDwziBmWs3j8yPs9YphekPtecPLAiU=;
 b=a81Dft1duwadDoXnkkFElfwe10DpV2vpElINNcypWE7FBfOQcdZm18KcVc+ATFFWfY
 kljiMjoHa3+55HWqHvmqVQgGWo9RXUzhVHZjrE0zd8OkR6gSrKFL7ZiKkq1dZa9xeKmK
 ffSTvwj0Yuxj0ci/iv67cg1+6pSoOtiHZBRI0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aRODApNsJVV2rJDwziBmWs3j8yPs9YphekPtecPLAiU=;
 b=QlA1EfoQwzKDMT0HeKLqFSqaaoKyoNELQTCTnKxzFrMG/8RZovbr0iQqDQD4ZWHQNv
 MxQu2dT1J6eTl4NT9ghnb9qRTcRX6UYIurG88HxUgt+oc+9Y2WQ7RxyqP/rSXTH5b5ff
 wangNb2RslTqJeYNNgq6ZaSno4jSV5cehFU22csClpARYrnnVZb8TVwWD8G4ZqiTXnPG
 Pj9kOfIytNhkR/EkYEiJFgu9H4pxsV7Ce0Q/ickudSAj/j7io+ifmuAELkuSggIeYX8x
 2sBWDg7aNU8Vic9xcNe92yu7yNnF+z7PHFAwc4bgs9zfX+vpjyTawLXoXiVlslxnJOPA
 1TPw==
X-Gm-Message-State: APjAAAX5ANocpZxOd85sP1Pm0xHe8tzux4E4YmB7TZS+8T4XVsFMgUIQ
 VcSSaxDwwa4GNhkSk8L69hhzIg==
X-Google-Smtp-Source: APXvYqyli5l3scW9RbTMDV7OJSAaURiEht8wF2Q1Cz/jerpQFJ/kBqqYjXUNWLCSY1A1nEqVUxLm7w==
X-Received: by 2002:a19:f707:: with SMTP id z7mr2017958lfe.162.1571312954818; 
 Thu, 17 Oct 2019 04:49:14 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id x30sm920772ljd.39.2019.10.17.04.49.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 04:49:14 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Andrew Morton <akpm@linux-foundation.org>, Gao Xiang <xiang@kernel.org>
Subject: [RFC PATCH 2/3] lib: lz4: wire up watchdog keepalive during
 decompression
Date: Thu, 17 Oct 2019 13:49:05 +0200
Message-Id: <20191017114906.30302-3-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191017114906.30302-1-linux@rasmusvillemoes.dk>
References: <20191017114906.30302-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_044916_525769_6C519572 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kernel@pengutronix.de, Linus Walleij <linus.walleij@linaro.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some boards have a hardware watchdog that (a) cannot be disabled
and (b) has a timeout short enough that there's no chance for the
kernel to get through decompression, let alone reach the
initialization of the appropriate watchdog device driver.

In order to allow booting such boards, the decompression routine needs
to service the watchdog in its main loop. This wires up lz4 to do that
via the decompress_keepalive() macro defined in the new
linux/decompress/keepalive.h.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 lib/lz4/lz4_decompress.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/lib/lz4/lz4_decompress.c b/lib/lz4/lz4_decompress.c
index 0c9d3ad17e0f..54ba41d073a6 100644
--- a/lib/lz4/lz4_decompress.c
+++ b/lib/lz4/lz4_decompress.c
@@ -39,6 +39,7 @@
 #include <linux/module.h>
 #include <linux/kernel.h>
 #include <asm/unaligned.h>
+#include <linux/decompress/keepalive.h>
 
 /*-*****************************
  *	Decompression functions
@@ -129,6 +130,7 @@ static FORCE_INLINE int LZ4_decompress_generic(
 
 		/* ip < iend before the increment */
 		assert(!endOnInput || ip <= iend);
+		decompress_keepalive();
 
 		/*
 		 * A two-stage shortcut for the most common case:
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
