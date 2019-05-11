Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8ABD1A623
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 May 2019 03:24:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=04PPbcFizd5yuMOeXeRi/zj6QWP3G8757MPMGJyJ2Zk=; b=XTjmZfX/soPY+O
	2k7AYlgSaqJ0R8v7rt89kI5R7nPc2Eh9rdj4zckZSZSSWTVxzueOJxWMUCS8p3OwrDBlQ4EiaMg57
	LEVf1XWi1giwgDkEvkMDOkI6VahQKECspcpfIoVXIGV5+eovvfRuQVrAIhdyTTYpMyqUtM+4IsCBW
	Lgr6Pukm/j0RwVoEvaXPcCX29UYWQonme224d4P51l6FYOQrgzqSwfLh+J/TIZxAXPnUECo0BDHtE
	jTYTpN3VOW7phXrgoqjhZBADqEG/Cm0sA6QM5WS9jgLW+HdA7PhnXKESWGXFqsF5jkjhygbdvA3Fy
	/80KGjxJ+kjVxA3pZFcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPGjy-0002J4-GL; Sat, 11 May 2019 01:23:54 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPGjr-0002IM-QC
 for linux-arm-kernel@lists.infradead.org; Sat, 11 May 2019 01:23:49 +0000
Received: by mail-ed1-x542.google.com with SMTP id p26so7590289edr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 May 2019 18:23:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8Sy6IJVq4VJSGNsCncCOevfEMVkxJ4DdVxf3Fz7dO1o=;
 b=rnMpbkIZV4iQ4uC1XfVbzikGIDK3Y+X7xhPA0psUZYD05UE/Dqd5RuIMhOxiYAFKqn
 uKs3xy3l40Rp4PJym3z08kOPIuHzjGzk2tezFv6qMlcYGEncR0+Y7n0whFx+kDsCB6Tb
 Z49SYnDW8VehUpLEXctnUsWYHTGT++65Lp23fGWAICCifApmLlteKtlNTK2oFp3mQ6lH
 ikukBB6HUN+zaBVSvGe1nLUw/HbhQ8ruWgpsy/T66ozOwjE5ykYJtuGBAtvUAPDllIxf
 /gCI9y5LGU9tCSG/+V5w754Nbb8UPqwBMl1/pqEk1U0JYG6UXtn9r/cJGpKeIlOC2zyt
 q7HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8Sy6IJVq4VJSGNsCncCOevfEMVkxJ4DdVxf3Fz7dO1o=;
 b=hDlTrQzhjPetErs8Ce71NJMLERufq8OoCVHKlB09WgWLF5a4ljDIB22UbpbeGcdc+F
 BtzcZGiXRe8dqX8953Y6gGezVBBKUNS78FvlC8OpqNYav8T/BWKJFG62s+hmcBr07D/L
 S3VRlRGwR/h7/oPtHWeCz62PVN6BwY7jESD9hoMlX/1KkFjn3vNmk+UduzQKK+KHHM/3
 6xqk9IJDfQ0el77cHt37D83VdPqU6Bdj0BfkgFTxq6E/JRZQxp2lmB0q5zgrwbBLCC8f
 mjrPbr44e5opsv0c/SVyKWnPkliY/QIju+iX0iQ/DMGgTjBVt6xFK7sl4XJqSr1fW6Uu
 mCxQ==
X-Gm-Message-State: APjAAAXiYJ2fnnMTG3K1Z4NCU7/z0hZkge0t3r6vqz3/qj8cVBRyEVFJ
 SU3Y++ewDqIJCsk12wmJJ48=
X-Google-Smtp-Source: APXvYqx0DjxzxMiJASMnY3yXqVa1UNYgM9oYsPoKMw+8rRXJ93TwPZ8R959C69MGa/Os41aCsPmcww==
X-Received: by 2002:a50:b3a4:: with SMTP id s33mr14924192edd.112.1557537824828; 
 Fri, 10 May 2019 18:23:44 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f9:2b:2b84::2])
 by smtp.gmail.com with ESMTPSA id r3sm941779ejb.88.2019.05.10.18.23.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 May 2019 18:23:44 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Amelie Delaunay <amelie.delaunay@st.com>, Lee Jones <lee.jones@linaro.org>
Subject: [PATCH] mfd: stmfx: Fix macro definition spelling
Date: Fri, 10 May 2019 18:23:01 -0700
Message-Id: <20190511012301.2661-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_182347_872440_C34AE472 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Clang warns:

In file included from drivers/mfd/stmfx.c:13:
include/linux/mfd/stmfx.h:7:9: warning: 'MFD_STMFX_H' is used as a
header guard here, followed by #define of a different macro
[-Wheader-guard]

Fixes: 06252ade9156 ("mfd: Add ST Multi-Function eXpander (STMFX) core driver")
Link: https://github.com/ClangBuiltLinux/linux/issues/475
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 include/linux/mfd/stmfx.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/mfd/stmfx.h b/include/linux/mfd/stmfx.h
index d890595b89b6..3c67983678ec 100644
--- a/include/linux/mfd/stmfx.h
+++ b/include/linux/mfd/stmfx.h
@@ -5,7 +5,7 @@
  */
 
 #ifndef MFD_STMFX_H
-#define MFX_STMFX_H
+#define MFD_STMFX_H
 
 #include <linux/regmap.h>
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
