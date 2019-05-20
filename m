Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7855223A52
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:38:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KP5sLrJcMpP6UF5yv44anZ+UTxRrKi2uQTlKRdiXycY=; b=uIN7kkiijngSqZ
	fqgkaHplA9aU9l+8CrkVLzYAGjL1X5iBFcRDPvyhTGlBdPYu9io41vW8okwT00SP2nBLHLLxvIwAQ
	0+LPgVojFO4RyBzozVXNUe72jXjFbVaP4Ps7O0/DGFE5MiO8AOV/oQ9RRj51t2sOi2Ki9Zf5aPp+v
	1/M66uoWGwBXZWIEwn7yTE/uIsjmb6tIfxNyqvz6G4Cemewt05MV4jXZRW/Nv39hFEljgum9dQaHD
	/16EaXb8rjwCa3fx2eCQaKuL9q88jfmd33gmGz2tlmYkrh6h0kLYDNyiFZqhf1lF1wbadSFnEB+WG
	xpwYb6d32kZpSlSXA1cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjQe-0006DH-BO; Mon, 20 May 2019 14:38:16 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjQ2-0005e0-24
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:37:47 +0000
Received: by mail-wr1-x444.google.com with SMTP id d18so14914560wrs.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:37:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5ZPnH+BSeytSJ0GzOG2PZj66Szf087YxbYc0Zzf9tB8=;
 b=MloCGBgGxmhC2AaJM4Yfyd9GITmWu9zFDTbO0fVXOuDtj+0FDjtDlEQZ5AoxX5SCSd
 itJXLYDU561D2JCwVaVAiLN6GFz03Sq52sPXt62EuKqal8J7BoIF8gQT/DqeRHtn9ID/
 FzsBMFXaLYGTp3Q/4Zbln/rx0qKGlcurMKpoi1mI/+59w/EfheL5nNynShbxJ4KFYb6m
 gh3tYN8JI6ueVnUchBx/GrVIdy3mlpeBn71R9/fX4eTDJH+D+3K59rKLkgPzz0NDUWuo
 55R78ydOZh/yA2/R+TLJxo2fiQWGYMZ3USs2tNH6K+d95efcYxNh9ylR05L2NKna3BSR
 vcew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5ZPnH+BSeytSJ0GzOG2PZj66Szf087YxbYc0Zzf9tB8=;
 b=FeEOdAavbQ0/43tHA/F6CN+b9rM0l5HBdsK4UKlsemEzIZwv9HuY1YkFwY6HpHMeCp
 X3kXj6z3Q5bEjjJ5VSzjWu86Cid6T6S3BSyoCcxTvUgV2NHIYfNwSub7BC51O5Cm1+l6
 NjTSCHd6UIAA6PRtDguh6O2fNTJmaFzd0X1jjFuN8kIcvLJfRIe35ghEsLI/ujhXPQ3Y
 SNpynYn/VkwaF0W4w4bIy0JXJ60KXV+/R1EUUVyUBo4IqOKla1a4a7Ct2+T6jQ5IBTjH
 GVerB5JWGta/YhR/cc3Qantc6g3HyzvqrMipJmT0xgzDJRTMmY5NEzbUMFSQreZlTZna
 5/Iw==
X-Gm-Message-State: APjAAAUGRIiF2F8fsrdkQr7MdclgIx+shAjWqLj9Nsb/R0CioJZ6QIiN
 e9/Wc1AsOuOTqYD3//z2GZS7FA==
X-Google-Smtp-Source: APXvYqzn+2uf2+vPE7LkPQ4jzhij7vsiv9pt5JZaDxuWn8nRN1eEdiKjEx6MY2xGwB4nxy2ND/GeQg==
X-Received: by 2002:adf:dc4a:: with SMTP id m10mr45656409wrj.0.1558363056611; 
 Mon, 20 May 2019 07:37:36 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id b136sm19076204wmg.1.2019.05.20.07.37.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:37:36 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: srinivas.kandagatla@linaro.org
Subject: [PATCH 2/2] nvmem: meson-mx-efuse: update with SPDX Licence identifier
Date: Mon, 20 May 2019 16:37:32 +0200
Message-Id: <20190520143732.2701-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520143732.2701-1-narmstrong@baylibre.com>
References: <20190520143732.2701-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_073738_177662_DE6C29BE 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/nvmem/meson-mx-efuse.c | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/nvmem/meson-mx-efuse.c b/drivers/nvmem/meson-mx-efuse.c
index a085563e39e3..2976aef87c82 100644
--- a/drivers/nvmem/meson-mx-efuse.c
+++ b/drivers/nvmem/meson-mx-efuse.c
@@ -1,16 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Amlogic Meson6, Meson8 and Meson8b eFuse Driver
  *
  * Copyright (c) 2017 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of version 2 of the GNU General Public License as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
- * more details.
  */
 
 #include <linux/bitfield.h>
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
