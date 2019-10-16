Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CFCD94C4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 17:02:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fN70caW3hF12bonY8qTo22o4w0Fo6+rQqI0m71vRUlQ=; b=houXj0z6v2Iyz0
	Ok38BLZgYTVJvo9pnI/6pZz2pOt5v1ygiFh64rQ4Xbuf9NWOHfY3OoF59jFcQJrmXY4zjERzVMBv9
	P9EWIFYHTP0rB7etxp7/l45zXAPINYawTu0wKXywgm+PwQLWnsxSXHl7M/HciBDU4Dsrf1PBP7CAM
	sUOXljQFKOSzmQFKpOAfRrr+6F4Y3/0UIDpZ1QFv6ecTkkVeGqkz9Ac9gReUsdH44Af4fWMNbkcQP
	yUj7+YGbpJBpmVaIIr7snQz8Bqixkb/XiiJU9BnGRmUO9zHqpJpx0rExNRipXRj02n32/kBIP4ZJf
	qOUQvigVzSTZd4jtnbow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKkoU-0000M5-RR; Wed, 16 Oct 2019 15:02:10 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKknx-0008Vv-OQ
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 15:01:40 +0000
Received: by mail-wm1-x342.google.com with SMTP id b24so3127811wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 08:01:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VpdEp2zf81VBM+LhkWglZ2eMDIpA3da8iXPWPqvvAdE=;
 b=u2Li+8fGwbUzcPJxxvOBpyqCzMizq522pSUKcGfpCAvPVCu/xb71Ztqe3MF8EHlkzi
 C6Nw5hH7TGPzEgamiHkcD457loJHQ/duxoyhzL2Tga3I9niCXRQ+7pmFUmyaoCrBKprY
 Q3u5EO2sgi8Td29J42iRStmS4OZEPWXiu/nl1tenbyXtxClgcjV/UfVPH8mNCXPEJdd4
 jVQPJEl9tYPrcqzlpTEunFumnh90l7idaVo18Zec/sot0tX+APqKD8MRLeE44/yu3aZx
 7qxdFrqKnLMRh58jYl16fYI8zyCeEEyW1e1YJrHdrZnZGG8lrJp3HCs3toFJYdTGKHmI
 3LxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VpdEp2zf81VBM+LhkWglZ2eMDIpA3da8iXPWPqvvAdE=;
 b=jBYiflvsyA2EFUEF8n60KAv60PVIR4xVFTfc7QHA8t5JonKfd+oLk+aJWwjk/Lh5pY
 q/Ch+DQGjolLdAJ425RcIszXLUDUOVtbppWmqVO1lRvT1FdsYBVzRx3big4bATtb5Asc
 b1wf7iYiytxBQ1VmL3zmziNx+htcDh5K/8hR0SzbqMcGu/OkRqd8hmdyOHdXkWSHSBjV
 LZ5q0rg2zg3EvxG90Bpt4356xtTW+Jqdfm4B8V7HjQ9bCcNsp1qy609+H/jBQp9EAxTe
 dYjEu195GJh9zwU4Mmn7y4w07S7HbgCgKy8H7gtn44eZmamMTXMV1hYOjiUMiKNtRILK
 uPXQ==
X-Gm-Message-State: APjAAAWlMAMktX2Rg7oB8G87JN6y2TmNyHDbhbuMxsQMdKq5k5ThIOaC
 +bKaWxZVU28s8vsezjScUmc=
X-Google-Smtp-Source: APXvYqyZvGmYe2ePerNhQGEy2ZE8TMHhSrtbEr+lxIT94scGpIIN6fF6fq+EUVbBPdZWbs/d/PHvUg==
X-Received: by 2002:a1c:b4c1:: with SMTP id d184mr3583046wmf.37.1571238096285; 
 Wed, 16 Oct 2019 08:01:36 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id r18sm3215437wme.48.2019.10.16.08.01.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 08:01:35 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v5 01/11] crypto: Add allwinner subdirectory
Date: Wed, 16 Oct 2019 17:01:21 +0200
Message-Id: <20191016150131.15430-2-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191016150131.15430-1-clabbe.montjoie@gmail.com>
References: <20191016150131.15430-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_080137_792454_530F16EA 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since a second Allwinner crypto driver will be added, it is better to
create a dedicated subdirectory.

Acked-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 MAINTAINERS                      | 6 ++++++
 drivers/crypto/Kconfig           | 2 ++
 drivers/crypto/Makefile          | 1 +
 drivers/crypto/allwinner/Kconfig | 6 ++++++
 4 files changed, 15 insertions(+)
 create mode 100644 drivers/crypto/allwinner/Kconfig

diff --git a/MAINTAINERS b/MAINTAINERS
index c7b48525822a..9153c02e1f63 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -690,6 +690,12 @@ L:	linux-crypto@vger.kernel.org
 S:	Maintained
 F:	drivers/crypto/sunxi-ss/
 
+ALLWINNER CRYPTO DRIVERS
+M:	Corentin Labbe <clabbe.montjoie@gmail.com>
+L:	linux-crypto@vger.kernel.org
+S:	Maintained
+F:	drivers/crypto/allwinner/
+
 ALLWINNER VPU DRIVER
 M:	Maxime Ripard <mripard@kernel.org>
 M:	Paul Kocialkowski <paul.kocialkowski@bootlin.com>
diff --git a/drivers/crypto/Kconfig b/drivers/crypto/Kconfig
index 3e51bae191ec..610bb52d77d6 100644
--- a/drivers/crypto/Kconfig
+++ b/drivers/crypto/Kconfig
@@ -11,6 +11,8 @@ menuconfig CRYPTO_HW
 
 if CRYPTO_HW
 
+source "drivers/crypto/allwinner/Kconfig"
+
 config CRYPTO_DEV_PADLOCK
 	tristate "Support for VIA PadLock ACE"
 	depends on X86 && !UML
diff --git a/drivers/crypto/Makefile b/drivers/crypto/Makefile
index afc4753b5d28..90d60eff5ecc 100644
--- a/drivers/crypto/Makefile
+++ b/drivers/crypto/Makefile
@@ -1,4 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_CRYPTO_DEV_ALLWINNER) += allwinner/
 obj-$(CONFIG_CRYPTO_DEV_ATMEL_AES) += atmel-aes.o
 obj-$(CONFIG_CRYPTO_DEV_ATMEL_SHA) += atmel-sha.o
 obj-$(CONFIG_CRYPTO_DEV_ATMEL_TDES) += atmel-tdes.o
diff --git a/drivers/crypto/allwinner/Kconfig b/drivers/crypto/allwinner/Kconfig
new file mode 100644
index 000000000000..0c8a99f7959d
--- /dev/null
+++ b/drivers/crypto/allwinner/Kconfig
@@ -0,0 +1,6 @@
+config CRYPTO_DEV_ALLWINNER
+	bool "Support for Allwinner cryptographic offloader"
+	depends on ARCH_SUNXI || COMPILE_TEST
+	default y if ARCH_SUNXI
+	help
+	  Say Y here to get to see options for Allwinner hardware crypto devices
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
