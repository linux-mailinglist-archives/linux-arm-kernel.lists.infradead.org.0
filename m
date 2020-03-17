Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F21B2187E27
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 11:21:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hLk+lR5lIh9I9FYtbD/LCHtsZLCwBCnQ6PsF1A0GDgw=; b=ucrOFJs3P5Jnfjl+sT8ks+dWGk
	pI0r7KTRhLdiYtq60PY/hnd1PsdK43VAX/YTqoYETI09elxm87VXDuxoT/YBtS8p+jaapzf3qdxZM
	QMtZQoG83lMcb5uqIi7T7V4iMTm6mIswPTmaokXNsJsL/WO1Y1FNRjU1wCtbQGEiPhR7AZzWWasEm
	WGUeEZYYgzslDjZtENGyu9sVWBEuy2t3bCHibe3OrEB0kOPKZ7NGKF2b0jL5EIu842xzM/UxL3Xva
	t0lv3wt+ghZrXVSMdBlMDj0ovD4AYQmU04r7D8wAQCVr+mYBXZDE0BBZeYL/BBdOPO2U+wWbvl/51
	pzC9Lb6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE9Lb-0005w5-4Q; Tue, 17 Mar 2020 10:21:19 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE9KZ-000549-HH
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 10:20:17 +0000
Received: by mail-lj1-x241.google.com with SMTP id f10so22122067ljn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 03:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2bvQoM7fTBjp0klcuiM54Wdtln7AcxQr31yym9z34dg=;
 b=MZDRgS4BaT0SU4IYSBvCwUz5CUebXUPcrF+pOqrlQ1nhj3L6353fbCQP8jVC8mCPoM
 If2LSZ8A1bUp6I1JalHYrMfCENCwipMZawDM3C9DxuEvV2bOreSnHD4oq5016l48hXvd
 YBEq1jmeL7JcsMdn1Aiel7r7H6xkrbU4IoBKDGPRfUcNbWF5dpCJXyge6KD889Qvzcog
 feNv988Lw6Fj7ZZ1AqjZQ/hRPBcmFU+WvZ+OiyVIdU8yYLhyCE8KAsp8KJSBdZL0JiZ4
 gNwDURP5LVtLbziVRCqlTW+LOJPwTJVmDHi++ePSEnUbwOEOdMbJtFOa/h7wiAXm41Ux
 GeHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2bvQoM7fTBjp0klcuiM54Wdtln7AcxQr31yym9z34dg=;
 b=VENZpBav4LxmxjlB3J6SwndCVkLLQVqgZLlZwPu9yED4b4uhnaSnpbGWsy4EOrzyjR
 HPCmWJsv7/NAuS5Tf0wEhs61YoJ+CcgwefWv6Gd+dVFnxTQD9PQQ8nSYyG0b/bMJpRF8
 OpF0JYRqGVNSMhiLeD/UKe0C6NOBthbOSdQHKjNdgU7Tsau3PgqPE+Rv5TCmSibkv/ka
 3b7tsbfPOtc9DvCwhG0dssP3+FFmHB2nY39sRrp36vAvoqNz+qIl4TO0agZXMWGgLEBa
 jbR6Krh8MxQgCTVVOn3xnXHKbqH4lJdsJdxwngTX3qAZMGOFCT4sa/2yGWL8ufywt1TF
 T8BQ==
X-Gm-Message-State: ANhLgQ0MlOpnSrxYvLI20F0mmUXqG/Xk95w9+yxshaDSlTewME1omF7r
 Wl763oXaeocTL37ZXwIsrLC6H7bLglA=
X-Google-Smtp-Source: ADFU+vvszzeoWJVd3TcHDvI8WAFElfYnQkMXm+roHZR329HPbNexz7N9xlKt3WDG1FhhpHxuuB7jgA==
X-Received: by 2002:a2e:5844:: with SMTP id x4mr2279916ljd.40.1584440413435;
 Tue, 17 Mar 2020 03:20:13 -0700 (PDT)
Received: from localhost (host-176-37-176-139.la.net.ua. [176.37.176.139])
 by smtp.gmail.com with ESMTPSA id c20sm2189438lfb.60.2020.03.17.03.20.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 17 Mar 2020 03:20:12 -0700 (PDT)
From: Igor Opaniuk <igor.opaniuk@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH v1 5/5] input: Dual license file adding MIT
Date: Tue, 17 Mar 2020 12:19:47 +0200
Message-Id: <20200317101947.27250-5-igor.opaniuk@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200317101947.27250-1-igor.opaniuk@gmail.com>
References: <20200317101947.27250-1-igor.opaniuk@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_032015_608181_3A228433 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [igor.opaniuk[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Igor Opaniuk <igor.opaniuk@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Max Krummenacher <max.krummenacher@toradex.com>, linux-input@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Igor Opaniuk <igor.opaniuk@toradex.com>

Dual license file adding MIT license, which will permit to re-use
bindings and dependent device tree sources (that include this file
directly or indirectly via dt-bindings) in other non-GPL OSS projects.

Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>
---

 include/uapi/linux/input-event-codes.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/uapi/linux/input-event-codes.h b/include/uapi/linux/input-event-codes.h
index 0f1db1cccc3f..2f86c4554721 100644
--- a/include/uapi/linux/input-event-codes.h
+++ b/include/uapi/linux/input-event-codes.h
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
+/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note OR MIT */
 /*
  * Input event codes
  *
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
