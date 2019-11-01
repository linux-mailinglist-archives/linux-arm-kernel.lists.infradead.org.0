Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F88EC32D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 13:50:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sWBJBk8AqhWqqP9TD/ouHbFlXhjaE+kOrFHU1r7qVRE=; b=nGcZgCtAYPbax/
	zsqQEszgntoKScpeyESkR9mJ/47yuuaOMb6TB2AwBkNCdZ7tuB47OOAtALu1Iwg5s0vSCPSqsGQYa
	QbrdyuOPEojIiFjpN1MYk1rrGIly/RQpvoP6a9MPwh28eEbepSrtwqmMWDYncQXgtGwRNqkDMtbLu
	m70gtFZ3LVh01PevQ64Sr3P4AQ80mI2aoQnbMkqpUNMy6tSNjAUVEXiEV1DGKzxqQ5vNLk8kLeZ+y
	3hrfkYH8Bh2HolxHcCogX4HFhyqbLKQFAshlBRE7FaaQxnZvRDh5wrqrYo6KtWFnakxEErgUO6CVe
	a10vYEsIEY88+91vvfmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQWNs-0000FH-4X; Fri, 01 Nov 2019 12:50:32 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQWGQ-0008MG-2Q
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 12:42:52 +0000
Received: by mail-lj1-x241.google.com with SMTP id q2so3562108ljg.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 05:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=N4h2w9DiO+4P3jPc0w1TT3xARdv8ATB93lgz8xw4vxA=;
 b=Jrlj7HYitgBzLfyKtrx/OO0IF424h6yFkDFrbEjosMTDF2aA+PaLiTLLafQdKZ3QMX
 5C6WwVKKXs3sGTYF7gik1JvKKrJkzNqF4vqrXVPLMoJUendQcB74HwPti5RNGmw3iPPm
 CvYF9p7XwadVMz+uKIdVanO9hfElGuWD/OUr8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=N4h2w9DiO+4P3jPc0w1TT3xARdv8ATB93lgz8xw4vxA=;
 b=Nfnv4vuhIm+SJwoXNbmkuN8ZTGI4dCSPtDcKRAYyraDYMGrURP/ASks7Zcn5kE3zXm
 HqbF6K3IOQbwcHxt+7ectQZPM98B5vO94WSzdLXRkmAsU8Ul+aFvnKpeTkHwwRJ6/yA3
 oZIP1yHdv/kBIosLxMG8Lb5VIfUGy0OAgt6yo2ZDZfCjmUDMgQnoXW2pr4YsPhK19ybJ
 XcpUezQtlJnQVQb0Tm439VgVh6kZuClXq+TtluhexO1X2DSg+O1zsb8D9rEJ3Y79U2kM
 3ilv8yX00wf4CIJLG6vU6waxE0KpJd5D7KhM3ZfCynP9L0UMTOGqfWdrlhVW8gNG8IB6
 nDLQ==
X-Gm-Message-State: APjAAAUxMaibvomyDP9usMH99RNccHJVRN4sA42gAo6U2Nks/tssDYil
 1M6Gifx2Ddy/ZOykTYmnk9soMg==
X-Google-Smtp-Source: APXvYqx8zrBcMLn5RPWXrg0GJJr4NEf4Bg+m/CRYcm4FtBa1jW4/OjCkrBiVlZ45AD2xz7SMOL17vQ==
X-Received: by 2002:a2e:a0c9:: with SMTP id f9mr8265025ljm.77.1572612168478;
 Fri, 01 Nov 2019 05:42:48 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id o26sm2458540lfi.57.2019.11.01.05.42.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 05:42:48 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v3 27/36] soc/fsl/qe/qe.h: update include path for cpm.h
Date: Fri,  1 Nov 2019 13:42:01 +0100
Message-Id: <20191101124210.14510-28-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191101124210.14510-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_054250_167283_02DF898A 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Scott Wood <oss@buserror.net>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

asm/cpm.h under arch/powerpc is now just a wrapper for including
soc/fsl/cpm.h. In order to make the qe.h header usable on other
architectures, use the latter path directly.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 include/soc/fsl/qe/qe.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/soc/fsl/qe/qe.h b/include/soc/fsl/qe/qe.h
index 9cac04c692fd..521fa3a177e0 100644
--- a/include/soc/fsl/qe/qe.h
+++ b/include/soc/fsl/qe/qe.h
@@ -17,7 +17,7 @@
 #include <linux/spinlock.h>
 #include <linux/errno.h>
 #include <linux/err.h>
-#include <asm/cpm.h>
+#include <soc/fsl/cpm.h>
 #include <soc/fsl/qe/immap_qe.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
