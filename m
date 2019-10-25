Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37516E4B82
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 14:49:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DY8IOBXM4zl5n+kM2ysCHsX5A+2VpLmcZ6xdMQ9qcWc=; b=JR8y+ryaSz7d8D
	8ipbIO6IGIhqGAMTNy0XJCM0eDdwMFk2N8DGAGiOXOMOaoT+rfHXMNg2HllECp+SxWb25BPqmTxFt
	387EN+nxfZl4ANpXShRkDL4C34UTbEkTI9aupHqgjdYKLIvQZIT2ZMyhZa7/uvoh3U1Kt8UuNoMyE
	vDPBUusRShXes0gJOvLyVKztuywsowNl6tgzvr0aNiFtrNxcL18XwrTWGFKWvDJDqbKskcCwpsQTQ
	hs11FQqB7b/plfqRv3xRBnXVP4RD9Hm73iyzz8JUhML15AEC73PfO4mStcf5+uRvslcCBh8Kq1aAp
	ShcAoAWA8Wutt2Yv4/lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNz1c-0004v0-Hb; Fri, 25 Oct 2019 12:49:04 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNyuM-0006bZ-7C
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 12:41:36 +0000
Received: by mail-lf1-x142.google.com with SMTP id y6so1635997lfj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 05:41:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OvUZNskoObmKKJYsbx/wH8iXu8sDYM+jDByiAdju3Rg=;
 b=O1Zrkhgig/GHdHnwKsmpqtbkvDL3Y1rbK+JGj+Cs0DZWtFaWKeld23eELOlF+fW35i
 ahKQ49AZ8AKtvvJqeiZLjoI7J8pcRbGnauSMHAK4OFjos9Ny65vqjsTi7H7vouL3ATlL
 cOrkitUQVw23vF5rAUldJcjlmIvXqFsHyVYjo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OvUZNskoObmKKJYsbx/wH8iXu8sDYM+jDByiAdju3Rg=;
 b=uLgfHSvJZ8dNkOGKIWonsUXW+YxhDGBTg4DGr1CnyHPi1FsYGZX7j0FUXEfqHbTiSc
 nzr1s+hBJXNjWR5FCXFMu9qhwQ4QC7vOmm+L9vR0YP5CjdouFI5YAHnV3tpnZ51LvRdK
 v9/NOpd+Up0O2JigrBAtxYU6cbfkQ9BxNt5gTs8jnYQHSwliKibcrMnm8MnPkccxVTxk
 2PnEmsKwUkWQHx9FObh8maIheNPhUggtqYIjY0+O9st0hD2BoUBB8A3sfch2NJ4DM9xy
 D66lXeoyuM6hvpl6rLJpHpmWdjIB6qDI3Slca6VfTn3vxiM4CPNg0lvKtDKClgzRN01W
 SgMw==
X-Gm-Message-State: APjAAAWLRlEZOu+K8TdbXA+HYxbzaA1XtQihHEjYwC8ypaKi8K9PiDM7
 w96NocQRMOs2oQN4ZnyM74nVng==
X-Google-Smtp-Source: APXvYqzaZam+cJPG9bi7OgeGhos6Wma0vuM3s9YGw4M43Jx9w05f90bLjSb8WkcVyEkm6MHVqZnaoA==
X-Received: by 2002:a05:6512:40e:: with SMTP id
 u14mr2657599lfk.73.1572007292444; 
 Fri, 25 Oct 2019 05:41:32 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id 10sm821028lfy.57.2019.10.25.05.41.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 05:41:32 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v2 23/23] soc: fsl: qe: remove PPC32 dependency from
 CONFIG_QUICC_ENGINE
Date: Fri, 25 Oct 2019 14:40:58 +0200
Message-Id: <20191025124058.22580-24-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191025124058.22580-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_054134_320182_747936E5 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
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
Cc: Valentin Longchamp <valentin.longchamp@keymile.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Scott Wood <oss@buserror.net>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The core QE code now also builds for ARM, so replace the FSL_SOC &&
PPC32 dependencies by the more lax requirements OF && HAS_IOMEM.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/fsl/qe/Kconfig b/drivers/soc/fsl/qe/Kconfig
index cfa4b2939992..0c5b8b8e46b6 100644
--- a/drivers/soc/fsl/qe/Kconfig
+++ b/drivers/soc/fsl/qe/Kconfig
@@ -5,7 +5,7 @@
 
 config QUICC_ENGINE
 	bool "QUICC Engine (QE) framework support"
-	depends on FSL_SOC && PPC32
+	depends on OF && HAS_IOMEM
 	select GENERIC_ALLOCATOR
 	select CRC32
 	help
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
