Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4E0EC339
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 13:52:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7be2hYMFCfpNgvt/FyT8pcBaKMujucwjjxoWyIkB8lc=; b=KNDvGGhYRGOJas
	igDoAbu0xgyNSMiHsFgU5dsVj6jo8RZIYNHEe9Vm7H6yGFGkGTgTdDOXcUj0q8UDi5wBqHbP7/v8j
	mnh5HKmBaedcezbkVOukPB3/dSqxLGJEzaYwgehrrVEP9fAET4KuHawiMWkn+KPtX+K9HbfHHgk+P
	YlIO7dJ7m0HPd3nEfwYtbVGRXM4EaCxG4SNIDGm8TTeFGvp5FAwk5zeZho5fFm00dWuDUZd9zRa8p
	vMFo3VGqMCeV2RnGIjXT4xb9IRX1mpfoayY1pfZF1I+sZ2zceISbpBVE99dtmNWg9NPm2tVkjUmbm
	VUBvgIKz0Ena3O6FuxQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQWPy-0002D6-4F; Fri, 01 Nov 2019 12:52:42 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQWGa-0008Vl-Fy
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 12:43:02 +0000
Received: by mail-lf1-x141.google.com with SMTP id v4so7127384lfd.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 05:43:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gyqRKyTXLr3cbd727hzyVbLDXzQNlutZJPmZlRbflNM=;
 b=aJggUxwL9FLbxqyLFcy7mPAsdu7B5NE3B0CcDXY5Xq3/1jU1wpEbTBIRlA5TdkovvK
 YrBP1OnWco5wWah9kA7xb6Uul3pCywE5VSldtrcZOf0D9aO5FvHxB4ekLfnZtOcOgaQa
 KXg1qmuWEC/xejE1gjB3RPnrIhT61rNL3oNHA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gyqRKyTXLr3cbd727hzyVbLDXzQNlutZJPmZlRbflNM=;
 b=SBHJEhH2uRp+bm41qjh4SRyjoqzdhEaQYKfRXG9pgZYTSLYezqVWk+BgiM4Jz0Q9Le
 X5dhAwW8pJxtpMxrMzbold3NjiqmZXlonoru+BQuC6e8AFzB74t27rJeUyH/BzKxj4Ms
 iEHn8uRWipNQkuVKMS0deabjNnp3d0fG+x6nVcjORR5Zq4B6wjvSJ+W/bIVCVfhIASuD
 C0KiWskyOEmszaU2SZq4qoYwD/HD/2MjWO25jpRROcMRIxGBTr2x+ww44d8RqN4HxWTp
 MB/4kxhf30wExSK1n9Oyb+5G3QOecRJkjde6q5gxnWf5S9peNXkTZj2Vd9+wbfvz82+7
 LMCQ==
X-Gm-Message-State: APjAAAW9IFjzFtMySA5pYdqFVjVQ9Bxr+H7PQC5pt312yRUYaUlA0cFG
 D/kzKfG869T66E3XTPhCqIMVdQ==
X-Google-Smtp-Source: APXvYqy4fEEOS681BI9of8caQte+TOAv9T+4kQxBaUmvtiH4cO+gztE83kQOLok3stailVX2gSWAwA==
X-Received: by 2002:ac2:420a:: with SMTP id y10mr7037550lfh.65.1572612177646; 
 Fri, 01 Nov 2019 05:42:57 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id o26sm2458540lfi.57.2019.11.01.05.42.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 05:42:57 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v3 35/36] net/wan: make FSL_UCC_HDLC explicitly depend on PPC32
Date: Fri,  1 Nov 2019 13:42:09 +0100
Message-Id: <20191101124210.14510-36-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191101124210.14510-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_054300_585611_01371E89 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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
Cc: netdev@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, FSL_UCC_HDLC depends on QUICC_ENGINE, which in turn depends
on PPC32. As preparation for removing the latter and thus allowing the
core QE code to be built for other architectures, make FSL_UCC_HDLC
explicitly depend on PPC32.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/net/wan/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wan/Kconfig b/drivers/net/wan/Kconfig
index dd1a147f2971..78785d790bcc 100644
--- a/drivers/net/wan/Kconfig
+++ b/drivers/net/wan/Kconfig
@@ -270,7 +270,7 @@ config FARSYNC
 config FSL_UCC_HDLC
 	tristate "Freescale QUICC Engine HDLC support"
 	depends on HDLC
-	depends on QUICC_ENGINE
+	depends on QUICC_ENGINE && PPC32
 	help
 	  Driver for Freescale QUICC Engine HDLC controller. The driver
 	  supports HDLC in NMSI and TDM mode.
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
