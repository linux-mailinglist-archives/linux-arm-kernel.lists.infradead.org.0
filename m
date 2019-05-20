Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EED6223A7B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:41:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Doe80rgwi65noa0UtCLr0MuI7+GOdpQM/g07/5dsss=; b=OZrkMGbn4BBGkR
	HNjpwIbWweBY7ohIstjMPADeYNXMtLc8LOn8s0yYXfPuWIV4+EF77qPR+WMB2thcwhNlF0mn/olAY
	4xNZ6hnFzTEHFSyzqnYL68WMDROJj+JVFkzKdOLZVjlnl6/M7Q2LOooXZTdfL24g3N1b/T6n/lRr3
	f6LowhOGyXBi47ZvByYC1e+UPNdpUhtFy2+OJUEpDPzvptVpRW0EPqgK9Tes7yi8RRP0WLkk8iKe9
	nvyscz2eDRQuMy6C5BpIu9JY6FWj4JH4gekjjhalTVio0C0PXlI+Pdsi0yuoRFXgb7eY3Rjhk7NrF
	cps9xvDp7TCYZvn6Nf9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjTM-0002QK-Sd; Mon, 20 May 2019 14:41:04 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjQm-0006Wm-2f
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:38:38 +0000
Received: by mail-wr1-x443.google.com with SMTP id g12so14621673wro.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:38:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dvB2+EbZJAEiPxI5LMXTznof0qGaQVfAy18zyWtxPt0=;
 b=bdsY8zm8d9QrdoAErzkY6w5y5GhDLd+0CM0NghfSuvmTM9QjpQxPbHHyfyvQ8nK0FL
 i/5jXsplJdCFJSss1I7KvNwT9hfFKGCILpDqGemMvH4xnUy1lZVvi8spd/dIAXGDU0iL
 9Hu5/S7UJd0Q1VsUkyXgP0uRWSqGXL6AzzPYlSL/1Xm5mkSfDflDAqhuLM7Kh026i7hz
 jAJ0Is5haokKQbWyOGtPLA1jb5O7fH++Tn2kffKk7iuYW6dGenvh5rhvfeeJR+5wU1fZ
 wEV5a+eMNVz6DkQkFaIn0r/bmANWHz6Y9Y1dv7pe/bQOnSdyom6qDqM+JaWTvu4i4BXV
 OVag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dvB2+EbZJAEiPxI5LMXTznof0qGaQVfAy18zyWtxPt0=;
 b=D7xMUlVK5bzjqikD8vhysTMl1u16slg6TIhmPsd9a2dUXpnN0+5lxJOXU9XKTTV2Ao
 ZcP9Q9calMGzQEVoRaWJHgwOnQyqN5MtoDsGUeuRWPsjBRQfbM1esZmbLlKQ5f2ZLvTB
 +SSAUynK8duNR6R/iqeAaMsdQXA//fKBkai6LBLnEV1M5tewQNWJ8TD8/Dgv94BMozC5
 crEySqlFBdRlI2lW/EzZiuwwtbdT72YjqUMKb5U3F/i6Hq1h0y0mrIjFOxzd2B64QErv
 MVpYTr3OTG8kNxSBLw5vIVoztpfNzFConlW7bsDb0FbrRbPtrTFFVpbECw9wL0PQOyBl
 3JHA==
X-Gm-Message-State: APjAAAUtdbZ7vSyNCcOSyOmORwfXcqaUKdAPo9jJY6gvRUfRS8yp3HUd
 UhMeqqoow15NI4kTGu0utYpstA==
X-Google-Smtp-Source: APXvYqx5B6BX/GzQuGkYQP0Ny5r5a+UZNfs1rZNVD0lELNHvTd7wSCDsCUOigyVIJta2FxsByvsvPQ==
X-Received: by 2002:adf:f643:: with SMTP id x3mr7807032wrp.320.1558363102613; 
 Mon, 20 May 2019 07:38:22 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id y4sm12505976wmj.20.2019.05.20.07.38.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:38:21 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 10/10] ARM: mach-meson: update with SPDX Licence identifier
Date: Mon, 20 May 2019 16:38:12 +0200
Message-Id: <20190520143812.2801-11-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520143812.2801-1-narmstrong@baylibre.com>
References: <20190520143812.2801-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_073824_410610_6B91C6AC 
X-CRM114-Status: GOOD (  13.43  )
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm/mach-meson/meson.c | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/arch/arm/mach-meson/meson.c b/arch/arm/mach-meson/meson.c
index c8d99df32f9b..04ae414d88c9 100644
--- a/arch/arm/mach-meson/meson.c
+++ b/arch/arm/mach-meson/meson.c
@@ -1,16 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  * Copyright (C) 2014 Carlo Caione <carlo@caione.org>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
  */
 
 #include <linux/of_platform.h>
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
