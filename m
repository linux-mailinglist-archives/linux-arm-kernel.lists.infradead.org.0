Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE2323911
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:01:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ASmqfC5jKFtE19VIJ0iiZeO2uqMu0T8rLsNEOM0sEO8=; b=aRfInUk5/cyBtE
	0p/88tuaK6vSliambzV0iWnmV9HjS2uk2WYNULX06nv6yBNCcHVETLTVHOscoBABkd5iCb2bPtrnF
	HT22zUUasL9Qm1X8Bd6+qbCEF3dcD0P5Q7Pa7KNtC1mnNL4aBYfI4HzVJ/HTMWCA4sCBT5jRh03MG
	PjOfR+Q1wOBjl9VcrQbWWm7HDoxpjfpOKuRkG/BRAh6kiYrSQjDYYYeTo2SBD6jtQhGUoXyhqFPoA
	QKxEgz+NNPHgPy8OixdcKilNAAG+Cb+6umbg6yMuRFsJFVQZLSrVPbFamwdDzPHn4oy0FkzrDewcs
	+i7p3+xuAY/EDeJ9+ZQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSiqZ-0001Bx-4Q; Mon, 20 May 2019 14:00:59 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSiqP-00019y-Kj
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:00:51 +0000
Received: by mail-wr1-x443.google.com with SMTP id r7so14702642wrr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=P9mL4O5UKxgeQ6YgVpvHFfuhwxbNZ5YHPxsK8gfhi68=;
 b=Ecr0J2lDt2WmB+uNkzfbXRDF2lIXqOPdSPEi+quISw8aJCpu/hEJKP37CfN8xM90pe
 rzVEFd+Tzm2bAyEl6wpifclLxw3NffujRuFHLXDRRYia+I5y1IxRM9L49Yxby7G5s1MN
 2PZalXgXFXiht3BlfnASJn8b49sFcV/0p01o9F6ZgCjGZ0e+X0Ii6vyE/ScTE0L7qYuk
 ELp35CNOva/X/T2xbpw5hQOBlnElKoBDK1canzWOAa2Y8Vvu4MMrSuGq8MqOZf5yY3pT
 XqtsEZnrHo1q1MAMwa244hkx4zx8xQjOLZBbDSgzbSdI98vhFwbRuwRNpWSFDH2v+HXw
 ntIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=P9mL4O5UKxgeQ6YgVpvHFfuhwxbNZ5YHPxsK8gfhi68=;
 b=AJ5g5tsRVHQdEuQSclOzm0ivgToOsLFszIP7diFk5MGoPuKxDd/AMQ/mzaOIF6/k0Z
 DI7cy5g3JnBV/22NpD4vHguvqBL0AFa1FZnfmeJHoq9oPHAA4pcmj/nJfc0MnQF8yIHa
 qqd7yXPUAk93wG9fiMWD3/mltQZtMkzmfjxYHsUauhk8f8hoiPoWxQFiighc3YpW5UnS
 l9QrlOSPmFHXZvTgiWnglvRqDkv3ZUABOlLVL0hMSyuGWMI0GZlzXHfeS5Q6/zTNkk6C
 97yxfTCQYMRjvxUeHoel3yfy0UTVDWLgORTPxDqlWTkpgxrwdbAkIyiF7ewuRo8buCtP
 vSJg==
X-Gm-Message-State: APjAAAUcnqCrw/YkJyl3qX5UPatRncmprRRuUbv8BivtOZcPc65yOLca
 J/SoBuc+QsmOywSuxZ1TX0qTkg==
X-Google-Smtp-Source: APXvYqxMh33+I8kq6JhPQH8T+UhQDbExP4qPLZU0cohanQu1ilJqgxLnPPggT85p1cjHMhE/I9oTXA==
X-Received: by 2002:adf:ec8c:: with SMTP id z12mr36015735wrn.209.1558360848054; 
 Mon, 20 May 2019 07:00:48 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id x2sm5292076wrs.39.2019.05.20.07.00.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:00:47 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH] firmware: meson: meson_sm: update with SPDX Licence identifier
Date: Mon, 20 May 2019 16:00:45 +0200
Message-Id: <20190520140045.29125-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_070049_684470_14A50116 
X-CRM114-Status: GOOD (  11.68  )
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
 drivers/firmware/meson/meson_sm.c       | 8 +-------
 include/linux/firmware/meson/meson_sm.h | 8 +-------
 2 files changed, 2 insertions(+), 14 deletions(-)

diff --git a/drivers/firmware/meson/meson_sm.c b/drivers/firmware/meson/meson_sm.c
index 29fbc818a573..4ef8c04ef80c 100644
--- a/drivers/firmware/meson/meson_sm.c
+++ b/drivers/firmware/meson/meson_sm.c
@@ -1,15 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Amlogic Secure Monitor driver
  *
  * Copyright (C) 2016 Endless Mobile, Inc.
  * Author: Carlo Caione <carlo@endlessm.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * version 2 as published by the Free Software Foundation.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program. If not, see <http://www.gnu.org/licenses/>.
  */
 
 #define pr_fmt(fmt) "meson-sm: " fmt
diff --git a/include/linux/firmware/meson/meson_sm.h b/include/linux/firmware/meson/meson_sm.h
index f98c20dd266e..7b855deb1b15 100644
--- a/include/linux/firmware/meson/meson_sm.h
+++ b/include/linux/firmware/meson/meson_sm.h
@@ -1,13 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2016 Endless Mobile, Inc.
  * Author: Carlo Caione <carlo@endlessm.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * version 2 as published by the Free Software Foundation.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program. If not, see <http://www.gnu.org/licenses/>.
  */
 
 #ifndef _MESON_SM_FW_H_
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
