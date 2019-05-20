Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E56F923A37
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:37:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mx6GwJNjLfoDhbxH03TQFJXzHcG1PUI5iZQRfdpdoTs=; b=GtCMs6nP2ZsiSu
	5Ai9SgUC6toeDsuC+mhRynfYATWdzz2H2pXtvCIGrr02/KzAs+tdbq2PkEJredJFc25oTbTwpQQwq
	PNFvVuA9MaPUwbU2elX6xu6aBLVMdQVwIE7pnQefFojZdVx3rCF07q2Zj57q+rnAWC2Q3f6lMQ5sH
	gPFGBI7scT+yaFA4/yEgz8csSbICuZhS3uIji2gNXkO0Dvabvo2EmpADHd8WMG+Y3J7cCxcQcTItw
	jC83LVZvU+NbVx2XJq6bfzZIKyoThxkPDnE03eYo/4ehd9KAL7P9WKyjE7OJn8g5am/Qx2QwRoS3H
	SnnyDlEgUIMFGRRwZixQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjPd-00052J-Vy; Mon, 20 May 2019 14:37:13 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjPI-0004i9-W6
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:36:54 +0000
Received: by mail-wr1-x443.google.com with SMTP id g12so14615909wro.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:36:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4npsL1gYy3DFnvEepqLNlJ3V1RQHIdG7lq5wqMtTwM0=;
 b=ZRfoMlzMEhDw3sGXZxEs18iVoc5lXxuYdnqjiUL552hHvl5ayEwePUV/ntxl3EHA9/
 igU8mLm9/JFKs3iOuTeOvOdVGXdVR+sZH5LFf25ifq1bE4IpB6E08k7345p8TLG1otDL
 Hk0nlU7QUlGpBc8Bt7k8Fm4lCphc1g1XsD3uscsRO/8++4gBqnF6bmlNA3BDz22w2aa2
 aHPTwt9YN8Rc/9Ujl7EJA4POTcaUq+APg9ap5q1rWqtUZDYlrrRxgjv9Lb+Jmu1SVfHL
 A7bDta7ZN1JG/bkFLy+xMUizuCEATNztLoihLU659lDE5kBr0fs5aWo1cRRknisoqnQj
 lGYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4npsL1gYy3DFnvEepqLNlJ3V1RQHIdG7lq5wqMtTwM0=;
 b=Biv7x+d2pUKjN/w0SfF85BMQp0UYBPo97ZhplQCgUQ8/TT4fohz/it94Mn3UI6fxeH
 pD83repBpmEXCT21HMCpSODqAciQM16wptQs6ypxZQbmDsskynYjPpVqS8s2MZC7pHXj
 3K5wiasch2zmy8zfZ/2oXZPrk5/iG+i3LzDzuLFoi4pQFq21qCLu4oQ0x7pmlWgVdMdD
 /VHIfT98OlG2yNgjuunRbWxacfQiSJ6oryodNemPzWsTxOpgCjNlR9oaq4QedwtWF0wP
 Rc8/9z7cfAPFaF1krBpzoKHPPCKfiqHtuj5lfXhqwQEdIax2ucn3kvRuWBkRKCtbeaYt
 tRKA==
X-Gm-Message-State: APjAAAWQnnuIAOQdS+esqLYGrrbZFT6PypOxNfa/dAAY+7j4MIWolEXR
 Q+6RWJknblCcxv6BTT2Dujvdcg==
X-Google-Smtp-Source: APXvYqxKsltkR7WZxpYrM3u00RJA0YEAGaWz0c/nIe/fO+ZdbSL3eXm1IP7pth6VLC2j2O/fPC247Q==
X-Received: by 2002:a05:6000:43:: with SMTP id
 k3mr45874502wrx.234.1558363011204; 
 Mon, 20 May 2019 07:36:51 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a10sm20518729wrm.94.2019.05.20.07.36.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:36:50 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: ulf.hansson@linaro.org
Subject: [PATCH 1/2] mmc: meson-gx-mmc: update with SPDX Licence identifier
Date: Mon, 20 May 2019 16:36:46 +0200
Message-Id: <20190520143647.2503-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520143647.2503-1-narmstrong@baylibre.com>
References: <20190520143647.2503-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_073653_044204_AEE1F5A8 
X-CRM114-Status: GOOD (  14.08  )
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
 drivers/mmc/host/meson-gx-mmc.c | 15 +--------------
 1 file changed, 1 insertion(+), 14 deletions(-)

diff --git a/drivers/mmc/host/meson-gx-mmc.c b/drivers/mmc/host/meson-gx-mmc.c
index c5a8af4ca76b..e27e272b54d5 100644
--- a/drivers/mmc/host/meson-gx-mmc.c
+++ b/drivers/mmc/host/meson-gx-mmc.c
@@ -1,22 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Amlogic SD/eMMC driver for the GX/S905 family SoCs
  *
  * Copyright (c) 2016 BayLibre, SAS.
  * Author: Kevin Hilman <khilman@baylibre.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of version 2 of the GNU General Public License as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, see <http://www.gnu.org/licenses/>.
- * The full GNU General Public License is included in this distribution
- * in the file called COPYING.
  */
 #include <linux/kernel.h>
 #include <linux/module.h>
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
