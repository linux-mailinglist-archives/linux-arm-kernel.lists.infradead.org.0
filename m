Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82DD223A24
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:35:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p46iClWzck+LzmnZNrmBfty+jG75ur4/FpTDnPEutxA=; b=j0IoaSBfPEpE64
	IW4BK5Q31UGniClEnAkWni02oVYucdtX9QBgtMYRcbbEcdNhRHOn721R0u8YCDpAG64I/Voi1PYgD
	GjiCxykRZ40ujpt4N6Vis2VLBlLduyKrWner1kjMSasCtwSGy8V874NEvr89VYWkK7VVmqav9Wvh3
	QGjaQxsREXXzcmQGwtdP69mnLE4Uz0xUUpGh5YNKPGv2sD7w74BX6XxCDTf9RGT82QQc00UWJOD/c
	17GBYks64HR8j37IP1aVZgdgDZQai2K5FXuI234zc0vgQ/Z+mOatwMil91NAJalVw8ilar+KfX9f3
	tzsLy00mhTFoPbr4B1Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjNu-0003Cq-Im; Mon, 20 May 2019 14:35:26 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjNS-0001iY-Ma
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:35:01 +0000
Received: by mail-wm1-x344.google.com with SMTP id n25so12889570wmk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:34:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bKRlBkskczdPPqv9G18ixpX6ovvQaVIENR175SCnaOw=;
 b=w4TOcDtrhR68jFkglzFkuS/h0l6AA7RAFMFTc1ZKS2SiFvUY5b5VaQTv8FiFD4pL6o
 xt1kKjn8KBaqQjp116lcsnPrEWIe7GjJLqo1tyGpZm6ENdDJ5uZVg9KbI3fqBHLuIReF
 dcBjR/OXXgHxFPBfGo7cx7D5iZY3WIcxzSxzmGfIbYwDJLT4wPAbkYwGnNzcJ7iEe00L
 tvB2S8ulKpTgKYHf6t8VTYikHcaKg2PMtZq8stskss9rc5cBWAeqknOpQ7CAab7TzMmb
 LO5SbbDoyb++CX868C4YmbfL3MhoR+Uy+Kr5d62dDx9k3DwpoWW52l5zxf191TFDBEH5
 +DkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bKRlBkskczdPPqv9G18ixpX6ovvQaVIENR175SCnaOw=;
 b=eRo4ed2GmkbM9xjdM/JNeNWs2SacdQse0RRPv+FYflTzR+XXTYTb3Y1O0izDFQsBSJ
 clG59o+lP9WU3hQYjXuFZghFLpiEd/q+tNZD5u7PEKhqWi3dAphrbHFTC0psOAYPalN4
 +DVFm6Q/J68sYOWKYESPAzhHdOaahN2UNbgwNNRdP84UK6SLa1z/bD9rLIS/ja96WBe7
 3D24Q/hmJcVCBiPR0jGjlHVlfhbXDSr+edxOL5GKbdESvOALRpOZrUOIo/pBquNfXWJb
 lC9sEf1k+jDoClgIKVTHmykfvHRf2togf3XmYbiX6XSG1AJQ5xKzplCvgxA1fEkb7B34
 mGZA==
X-Gm-Message-State: APjAAAU48RcOrD/Onj1svnckhSAsk7UJPiAPA9qy6x1iKvtSg6kAwhOp
 +nS5I1Thhp9OAiRi7a37sE+G0Q==
X-Google-Smtp-Source: APXvYqx+UgKQ5uSpmtMVwgvlCWIXdlNSISmktEc+Chtb/r17fmqYen2EMJgEmkH9LBS7MXaGKdgbdA==
X-Received: by 2002:a1c:c5cf:: with SMTP id v198mr12197070wmf.84.1558362897089; 
 Mon, 20 May 2019 07:34:57 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id c2sm12756186wrr.13.2019.05.20.07.34.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:34:56 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: davem@davemloft.net
Subject: [PATCH net-next 1/2] net: stmmac: dwmac-meson: update with SPDX
 Licence identifier
Date: Mon, 20 May 2019 16:34:49 +0200
Message-Id: <20190520143450.2143-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520143450.2143-1-narmstrong@baylibre.com>
References: <20190520143450.2143-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_073458_734642_804C7D65 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: netdev@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-meson.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-meson.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-meson.c
index 7fdd1760a74c..5ae474ebaaed 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-meson.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-meson.c
@@ -1,14 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Amlogic Meson6 and Meson8 DWMAC glue layer
  *
  * Copyright (C) 2014 Beniamino Galvani <b.galvani@gmail.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program. If not, see <http://www.gnu.org/licenses/>.
  */
 
 #include <linux/device.h>
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
