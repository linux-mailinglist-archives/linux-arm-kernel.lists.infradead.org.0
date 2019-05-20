Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D3823A41
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:37:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D+kyH+AuyD7lzsK5e0ABpjwGxQC5QCJ7ByMzy9EfJ6U=; b=FZxqsQG1/1Hdbn
	dTgiehOw3HLlqYisE5ECJ7BhTHV6P4vy6AER0zXXeh4IhSC2EKEneB/nnD+yGuBUamOKXzro/rceB
	o3yEyIQREcVRUec4IRa3rNuqo1tciUg5zfVrkGbGVa0GD8yja7BqwychQPfMi27bfxYotUjJbcaa4
	R2/h2RMFpq6HVMiqNz9r8SmKzgJQ2JtbU/YzLI3XB4UeytQKFgmXTRfwTFVTSWC8Tao/ZipmL9yOJ
	QE1T9aQa3elOOhiguGVUPVt+psjuP4cUwqmEf3lwfPfE2rSmXTXD3PtMUrHVXbL1w2EEZkhUhq/8d
	HC4nFQ5ohxZv4f86Ss7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjPo-0005B8-Qp; Mon, 20 May 2019 14:37:24 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjPJ-0004iD-Lt
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:36:54 +0000
Received: by mail-wr1-x443.google.com with SMTP id d18so14911578wrs.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Xr+p9+oV/45aNpqnSTpfxQs3ZF3NmaIezU85bCSPol8=;
 b=Ch2584po8Kd0TeHViJj7L0nIvT3rohiPNenEsT1/KQd2Cq+nUFmot2P1/acoSMtXZt
 ZZ1v1fIWMXGtUUgXqUhOmKFs6G7uD/oHDoFEceeJUG4DBNaEiRlYDGKTcCHYjkTmsg3E
 3jOE30AxuUojQ9wQfdLPxEf6P1JWTxYq2uedN7nf/p2PbF9oDyekGNk+DjS3GVrXWm0z
 FM06h/C/Ykt0UErAijScXMAEDedzRUTsjPtLTYz0QpbUjEnPOqMdUNLkR614+CmS08vx
 17y4i+yPTUjuSk78DZ21Ewa6UhHfqgIM/izYdsJqmWhWccbbIK+6ccT8qLVYLZlhKGgV
 AMiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Xr+p9+oV/45aNpqnSTpfxQs3ZF3NmaIezU85bCSPol8=;
 b=eNwxmoBKsHrUVg1wLUnUByz31hI786obAfqAeSWhqzOjWPKfuiVDsQslCE5w5Rxqqt
 SHowR3S+xhKrJriWO0S23sZ5ewJ1wwhNTPecpQ6y2NI6ySSglZMAttwZXFIJZxjqlL28
 tRhzSDAzrCKyuCcmfwHgi9RboJF5+if39PylQTFwx/J71PVdHaZcLwAUtosnbIA/qA0n
 ExAzTpTkzvrKsHOhnfJBygfYewPeT+/RuppcSfJqb7NoK8E0kJ3N/Ad3xCzGzWHR43bO
 ukaWGQpjgjRC2aUvfjTPH13bAs9cfGVkKB+LV6Xxmb2og3BRQ1LkutLU5Skd5IHzA6Y0
 txgQ==
X-Gm-Message-State: APjAAAXmCI26dJkVpi+RDbd7Mfux7jKRXRh5E1cOzuZC6tSCNQvJYAW5
 7PTGi/F6XEcHrvU2Og0NQMP69Q==
X-Google-Smtp-Source: APXvYqzmmeDy34jQY80IKaTb1i3fodpM6cHRtDfLjCzQsNb17ZPb7mhlh0dJ7te7e7NWiXdVL2lH4Q==
X-Received: by 2002:a5d:5192:: with SMTP id k18mr32363253wrv.229.1558363012289; 
 Mon, 20 May 2019 07:36:52 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a10sm20518729wrm.94.2019.05.20.07.36.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:36:51 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: ulf.hansson@linaro.org
Subject: [PATCH 2/2] mmc: meson-mx-sdio: update with SPDX Licence identifier
Date: Mon, 20 May 2019 16:36:47 +0200
Message-Id: <20190520143647.2503-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520143647.2503-1-narmstrong@baylibre.com>
References: <20190520143647.2503-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_073653_709355_7B410B61 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/mmc/host/meson-mx-sdio.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/mmc/host/meson-mx-sdio.c b/drivers/mmc/host/meson-mx-sdio.c
index b61de360f26f..b2a7288cdec8 100644
--- a/drivers/mmc/host/meson-mx-sdio.c
+++ b/drivers/mmc/host/meson-mx-sdio.c
@@ -1,14 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  * meson-mx-sdio.c - Meson6, Meson8 and Meson8b SDIO/MMC Host Controller
  *
  * Copyright (C) 2015 Endless Mobile, Inc.
  * Author: Carlo Caione <carlo@endlessm.com>
  * Copyright (C) 2017 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or (at
- * your option) any later version.
  */
 
 #include <linux/bitfield.h>
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
