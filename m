Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 449A2185C12
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 11:55:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MYm02ysnpI5FhzmuoxtQivuP1jV/zP8WixEC2gFT0EA=; b=npEnx4S8MkNY/i
	k8sfYqGCS7nCxq//nWDjmDZfVLD4lHp0tdGP1kMG94WLQysCz21NCcG5t3bBMeXvGfl+EDbmjcQkI
	2UOcx0kRQP2r3djuKNoGtgU/C95or5PUcyBCzaq2jojS99f8+5HRwqnE9sT+AdhMTtKI7GhGAMnuS
	bfUNSGNU4eQY0DXSTGyPieX2hC/14UGflLZSusZvjlKScYksaEtkNZecU4wwQs9cpDLPnaF41L5UW
	0zdfPL95iswQ+rGEVq5B8xo6yBCShLhaFdNkQWtO/nh9D7U+qrYQT8ozTFAyds2mSJ6g492uOqGY1
	wrEeqqtlcQSExE+U2CYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDQvU-0008Hk-S6; Sun, 15 Mar 2020 10:55:24 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDQvN-0008H6-Tl
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 10:55:19 +0000
Received: by mail-pl1-x644.google.com with SMTP id a23so6529294plm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Mar 2020 03:55:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=qIYlGm4yxuJWPGZE9jBq7SClwzl5SsZAe4AqIxxnJxw=;
 b=Ytc0lS9YIYTtXj0J3ndnY9qI6fhM69eKrhKeJ5hWX7SeOO/4qrOucPykSm86CZNO8A
 s/cwNwQwBvzidl9CI6IhyG44/yBrU+4+zrHEI7pMeo8jauUmWDcdGSe8oPOqm60mngsh
 IjaJvwxItnBtcLy7FjbinFyXmDxPa0hsdOOMGBuGw1NXGBey3CvcBlOWREWvIDBlKFM4
 pmc3VmBp9GHVODEGzIibmrVO83GA4HTOczijkd1We60WzCZSB4ufS30e9uZ9elP2uPdy
 F/11X6sogex+WjgabQT3H+1L767Pk8EzB003F5exqaqQIOCLNWzjBfMZy/XjkwdJ9sfd
 KIbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=qIYlGm4yxuJWPGZE9jBq7SClwzl5SsZAe4AqIxxnJxw=;
 b=IafwAvTfwlLu9cbvTzdNnuqOz20XZc7PjVZq7yCv3mvj2HAwQV3Qy4N2I3dpJWNnDs
 oNp7zOtGi+nIjUWTbyscBuudOGE/uN4B9sBYDGXmBQzw4w6+nDZ5CZbbCtwvM70fkmeO
 ObaKQrSgBJ3qE6UZ3VblwsvZ1jCjnlRpntAiRVFZxSPlZFevo6fm2VoZxQJ4mwVU0IQj
 ncemBkVIZEJpEz/3vnVgVJyYEmzbkBJbNGb24hHq6AkMQdeweFaTiZfDJOi8vF3Frex9
 w9p0ZML5L1XYLECl9K/d1aFonOooYlPX9G0bAY0XqsTqtfFLiguzSO/63cM9bf7BWbRs
 d9aQ==
X-Gm-Message-State: ANhLgQ0FEbBupUEHqFR5aZUWVh94ApGTJ0fmIsK0ZSgg8c9Q/IN9mMoj
 pNYq5Hn6JsZqwePn9CjWqzI=
X-Google-Smtp-Source: ADFU+vvvi9/IwQKAHenUTXb90ToqvygF+HzJRijet4tByzTJotX9aoip3MjS9Alg2JwZYozZzCUysA==
X-Received: by 2002:a17:90a:9a90:: with SMTP id
 e16mr19401817pjp.164.1584269715129; 
 Sun, 15 Mar 2020 03:55:15 -0700 (PDT)
Received: from nishad ([106.51.232.103])
 by smtp.gmail.com with ESMTPSA id j17sm18311949pfr.176.2020.03.15.03.55.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 15 Mar 2020 03:55:14 -0700 (PDT)
Date: Sun, 15 Mar 2020 16:25:07 +0530
From: Nishad Kamdar <nishadkamdar@gmail.com>
To: Peter Chen <Peter.Chen@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Joe Perches <joe@perches.com>
Subject: [PATCH] USB: chipidea: Use the correct style for SPDX License
 Identifier
Message-ID: <20200315105503.GA4440@nishad>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_035517_986716_CC1A9EE9 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [nishadkamdar[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-usb@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch corrects the SPDX License Identifier style in
header files related to ChipIdea Highspeed Dual Role Controller.
For C header files Documentation/process/license-rules.rst
mandates C-like comments (opposed to C source files where
C++ style should be used).

Changes made by using a script provided by Joe Perches here:
https://lkml.org/lkml/2019/2/7/46.

Suggested-by: Joe Perches <joe@perches.com>
Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>
---
 drivers/usb/chipidea/bits.h        | 2 +-
 drivers/usb/chipidea/ci.h          | 2 +-
 drivers/usb/chipidea/ci_hdrc_imx.h | 2 +-
 drivers/usb/chipidea/otg.h         | 2 +-
 drivers/usb/chipidea/otg_fsm.h     | 2 +-
 drivers/usb/chipidea/udc.h         | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/usb/chipidea/bits.h b/drivers/usb/chipidea/bits.h
index 98da99510be7..b1540ce93264 100644
--- a/drivers/usb/chipidea/bits.h
+++ b/drivers/usb/chipidea/bits.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * bits.h - register bits of the ChipIdea USB IP core
  *
diff --git a/drivers/usb/chipidea/ci.h b/drivers/usb/chipidea/ci.h
index d49d5e1235d0..644ecaef17ee 100644
--- a/drivers/usb/chipidea/ci.h
+++ b/drivers/usb/chipidea/ci.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * ci.h - common structures, functions, and macros of the ChipIdea driver
  *
diff --git a/drivers/usb/chipidea/ci_hdrc_imx.h b/drivers/usb/chipidea/ci_hdrc_imx.h
index de2aac9a2868..c2051aeba13f 100644
--- a/drivers/usb/chipidea/ci_hdrc_imx.h
+++ b/drivers/usb/chipidea/ci_hdrc_imx.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright 2012 Freescale Semiconductor, Inc.
  */
diff --git a/drivers/usb/chipidea/otg.h b/drivers/usb/chipidea/otg.h
index 4f8b8179ec96..5e7a6e571dd2 100644
--- a/drivers/usb/chipidea/otg.h
+++ b/drivers/usb/chipidea/otg.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2013-2014 Freescale Semiconductor, Inc.
  *
diff --git a/drivers/usb/chipidea/otg_fsm.h b/drivers/usb/chipidea/otg_fsm.h
index 2b49d29bf2fb..1f5c5ae0e71e 100644
--- a/drivers/usb/chipidea/otg_fsm.h
+++ b/drivers/usb/chipidea/otg_fsm.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2014 Freescale Semiconductor, Inc.
  *
diff --git a/drivers/usb/chipidea/udc.h b/drivers/usb/chipidea/udc.h
index e023735d94b7..ebb11b625bb8 100644
--- a/drivers/usb/chipidea/udc.h
+++ b/drivers/usb/chipidea/udc.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * udc.h - ChipIdea UDC structures
  *
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
