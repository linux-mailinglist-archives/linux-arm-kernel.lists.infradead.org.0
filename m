Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B175520371
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 12:28:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6uKkUNUsqam9w05gA8n41TjUoguLGdjFkeQQK+9BC4k=; b=cembi6hEfg9WYo
	Nol+wAWbdAIW9sBc+hejuKXzxzVlpFqyLxlgyEU6Csz0Tr4+SGwny5kBrtMBU9wcxGZX/pzAVe0FV
	P0zRZRDJFQWLz+rV3Sgn0v3kpjKF3tWCduh/d8zmNYtQZfX4islEcpF7/F/Swdpq0k3eNWLKWbgoy
	arcBxLoOhzyh74ubbktjs61lHluf3hkhBunTgVeCHiA1M12sYHzG6vr92XUd5PWYP8aEENfGHNnMo
	QywAGOVjaqQvXlWoDEQVH+91/OctItfCc8w+Qe4nFExUD3i+ZgGn3jvRpe3bdM51CT0C+A5W54YaV
	XXZ8e5+krmPiBnC5iVew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRDcz-0001gm-JK; Thu, 16 May 2019 10:28:45 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRDcr-0001fy-76
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 10:28:38 +0000
Received: by mail-pf1-x444.google.com with SMTP id u17so1621959pfn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 03:28:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zdJ9wOciRCFBg5OhP24ccEPW98TzZ5e0I9CMtzhtP7k=;
 b=j6TjZjdTvdf6CjCSc4yUwh0w3lHoZrsZkToyITUvilzaKO5fJ0vqwlISOAS2BDbhb6
 2VbC5h3lCINUHea8eLr5qB7bqHliBCV26+cZHkuc6/kN9BvyoxdDK0mVitXKri3MUivK
 IbYPCZMbdWKCRDRF9dlx5fQMu94ziC7y43FQI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zdJ9wOciRCFBg5OhP24ccEPW98TzZ5e0I9CMtzhtP7k=;
 b=HNzH/YzdwsqUZhEtXl9yrye8DPxFKWE7fngxy16VKhSz+E0mPu7bazRRhvU/aNSuGT
 LflrrlITdf9xJydrTn0fC+uMBRl2zYLxHb5wr4REeLnrWT8x08iQGyFaLAR9j8SfJ/Pz
 IDZX1K6KSlMYx2BPFLa38RRVkurr7/OjrNLnoQ29M+RoXqd3Z+ovlQzR68mi2p875QiG
 ttoj/u8YmJJcwvVXDTzkGk/A7+Yu2x60FBdOOyterUzYFSZlmW/3CKGrCLWx1XWyC0Ui
 6BPrr8GIXj6TAoGZhtHEisStcsr3nCqKJo6+1U63FfnzaQKW7HuOplZor8ETW4tFqn+a
 IlUg==
X-Gm-Message-State: APjAAAUjJjjc5rvjwJuNGN+OvIF5VcLyYsLXbhNRavVGzo/toMNi0GYX
 eG2kPx4DsKqgwyVmmjWCBwLGVgY0H4U=
X-Google-Smtp-Source: APXvYqzPTskZH8eYovOCQmHUvgMMgQkqepD4OYCnKFG7nHyDLIhQaMeOn+J/Ld+Xt/Ggq8IM/7Zmkg==
X-Received: by 2002:a62:e00e:: with SMTP id f14mr52831963pfh.257.1558002515484; 
 Thu, 16 May 2019 03:28:35 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id h123sm9338048pfe.80.2019.05.16.03.28.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 16 May 2019 03:28:34 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/3] include/of_fdt.h: add a weak arch hook to update fdt
 pgprot
Date: Thu, 16 May 2019 18:28:15 +0800
Message-Id: <20190516102817.188519-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_032837_281703_E9048A90 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yu Zhao <yuzhao@google.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Stephen Boyd <swboyd@chromium.org>,
 Chintan Pandya <cpandya@codeaurora.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Jun Yao <yaojun8558363@gmail.com>, Miles Chen <miles.chen@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, James Morse <james.morse@arm.com>,
 Hsin-Yi Wang <hsinyi@chromium.org>, Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Frank Rowand <frowand.list@gmail.com>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Does nothing as default, arch can implement their function to map
fdt to RO/RW. This is convenient if arch map fdt to RO during init
but needs to write fdt in some special cases after that.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 drivers/of/fdt.c       | 13 +++++++++++++
 include/linux/of_fdt.h |  2 ++
 2 files changed, 15 insertions(+)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index de893c9616a1..e84971d1e9ea 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -30,6 +30,19 @@
 
 #include "of_private.h"
 
+/*
+ * update_fdt_pgprot - Arch hook for changing fdt pgprot
+ *
+ * @prot: page protection flags for fdt
+ *
+ * Architecture can implement this function if they want to chagne
+ * fdt page protection flags before or after doing modification and
+ * fixups to fdt.
+ *
+ * Default does nothing.
+ */
+__weak void update_fdt_pgprot(pgprot_t prot) {}
+
 /*
  * of_fdt_limit_memory - limit the number of regions in the /memory node
  * @limit: maximum entries
diff --git a/include/linux/of_fdt.h b/include/linux/of_fdt.h
index a713e5d156d8..406c3e7b2b75 100644
--- a/include/linux/of_fdt.h
+++ b/include/linux/of_fdt.h
@@ -109,5 +109,7 @@ static inline void unflatten_device_tree(void) {}
 static inline void unflatten_and_copy_device_tree(void) {}
 #endif /* CONFIG_OF_EARLY_FLATTREE */
 
+extern void update_fdt_pgprot(pgprot_t prot);
+
 #endif /* __ASSEMBLY__ */
 #endif /* _LINUX_OF_FDT_H */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
