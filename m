Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C537019E492
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 12:37:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hKj/BruaWjO8fIp6S5FvRHI3GUz/HwcxBrNKDWkqkRs=; b=HQ5ikTN5k+9c4E
	VqGGWY9FRZrypkXSpyMNmiioZ06R2z+xz2W+yVFzf3oWZtvF8/qfv7HQPvhv8r+t0UwuDbLME2FuM
	nQsrsicZrExVJa4k2pv8oMPtUMfsIBk1S1BPTAkPaHR96TnJbPE9hPsN5X6C7SAfBDwXYL1/m9OtY
	4IYYpemsGd8riltdReurI35FKgcWJ4l7AMNviG4cZGRIKeGLcT+N9nKUcdbePHkTtLXh40dKoGD6u
	6fr1ZVmCmFQvM3XAYnId8Ij0g/XXhBNJLiUNgiCQLxQmB+fV+bimPtQDg+2P44Kv0EmauKO3jaLTB
	QocBaugslXyWeYqNBR8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKgBR-0002Cv-UO; Sat, 04 Apr 2020 10:37:49 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKgBJ-0002C2-IM; Sat, 04 Apr 2020 10:37:43 +0000
Received: by mail-pf1-x441.google.com with SMTP id 22so4935758pfa.9;
 Sat, 04 Apr 2020 03:37:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=9e3YjywRlT9unLTEqN08LmJN3s3Ftr6vaLOvEkkDfWs=;
 b=cMhho21ovWgHDV3FaLA06KOpuRyaeGEebizvDrE2bktmRABorboNdJKEDiixgudSw/
 g7YVkmLsY6y7kr59iq2fzfv6HLmd9i5a4cA0SG9hhi4FYwcaxYg1qL3NqpAtGYZ2ucal
 aoXxn7KC7W34kwAW3+TJczxk6zzMyxWrMyK6Kg1fcpgSh9gVzJo+MnKn6hhMfMjK/1VJ
 jmNCATOSRVHESlkVtMh1mBQuoYcDhwBFgJuOAQFwR0aLlMWcWIsbjie6KBrIhtbHKOPH
 HLnhQyypFy8QvlYatlftg9bLuUHNUglCprJse5gk0+CZVkoEUrQKQI9FYfU4ho+7uAsY
 JOcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=9e3YjywRlT9unLTEqN08LmJN3s3Ftr6vaLOvEkkDfWs=;
 b=K3AGotjmX8qVLNaggs2s09YPEqn4bx30ZjSfzK7VMxEgMUj0y+i54MCL4bZMDSlXYU
 KHEXUBfvx9nCJOVa7aLqJEB/upo4Fgr2mUuY7K+WuKSfLl85W8SqmYI4iy5zHpJcCvjg
 PNeW+MyXQ2uMRH/fMIonXUFmMIrXorGkagkclYKat+RtwFkfj2u024SrkLzCqY7ex+Kb
 yZbq/bdAp6HOe/WdtS0e0BgslqpyP277CPLiOn9hk7odnWtGW+MgMDOMo7Im0V9wfg2v
 E5NBxLZFfxo4E7EpU3melfJ85rfvXKNrbbHybO7uGw66OiarWMO5r4YE4ygPqmxy2Np7
 rg2g==
X-Gm-Message-State: AGi0PuYHXwC7/4hRYDPD0p62xyP/4+8MNBoRC6snQqQNYNWOo3zIu9G+
 DXGOm2zzqRwv8JJOiJdAdBY=
X-Google-Smtp-Source: APiQypIdV/cxtmiWWQdClIs7ou/+T/O54jGMKfa4HBQfw3T/QzNaY+mxHIEu+x9ivWzjNyyH4GTSOA==
X-Received: by 2002:a63:b954:: with SMTP id v20mr11630510pgo.381.1585996659225; 
 Sat, 04 Apr 2020 03:37:39 -0700 (PDT)
Received: from nishad ([106.51.232.103])
 by smtp.gmail.com with ESMTPSA id x4sm7382302pfi.202.2020.04.04.03.37.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 04 Apr 2020 03:37:38 -0700 (PDT)
Date: Sat, 4 Apr 2020 16:07:31 +0530
From: Nishad Kamdar <nishadkamdar@gmail.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Joe Perches <joe@perches.com>
Subject: [PATCH] USB: mtu3: Use the correct style for SPDX License Identifier
Message-ID: <20200404103728.GA6011@nishad>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_033741_631659_231107E6 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [nishadkamdar[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-usb@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch corrects the SPDX License Identifier style in
header files related to MediaTek USB3 Dual Role controller.
For C header files Documentation/process/license-rules.rst
mandates C-like comments (opposed to C source files where
C++ style should be used).

Changes made by using a script provided by Joe Perches here:
https://lkml.org/lkml/2019/2/7/46.

Suggested-by: Joe Perches <joe@perches.com>
Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>
---
 drivers/usb/mtu3/mtu3.h         | 2 +-
 drivers/usb/mtu3/mtu3_debug.h   | 2 +-
 drivers/usb/mtu3/mtu3_dr.h      | 2 +-
 drivers/usb/mtu3/mtu3_hw_regs.h | 2 +-
 drivers/usb/mtu3/mtu3_qmu.h     | 2 +-
 drivers/usb/mtu3/mtu3_trace.h   | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/usb/mtu3/mtu3.h b/drivers/usb/mtu3/mtu3.h
index 6087be236a35..d49db92ab26c 100644
--- a/drivers/usb/mtu3/mtu3.h
+++ b/drivers/usb/mtu3/mtu3.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * mtu3.h - MediaTek USB3 DRD header
  *
diff --git a/drivers/usb/mtu3/mtu3_debug.h b/drivers/usb/mtu3/mtu3_debug.h
index e96a69234d05..fb6b28277c9b 100644
--- a/drivers/usb/mtu3/mtu3_debug.h
+++ b/drivers/usb/mtu3/mtu3_debug.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * mtu3_debug.h - debug header
  *
diff --git a/drivers/usb/mtu3/mtu3_dr.h b/drivers/usb/mtu3/mtu3_dr.h
index 5e58c4dbd54a..760fe7d69c6b 100644
--- a/drivers/usb/mtu3/mtu3_dr.h
+++ b/drivers/usb/mtu3/mtu3_dr.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * mtu3_dr.h - dual role switch and host glue layer header
  *
diff --git a/drivers/usb/mtu3/mtu3_hw_regs.h b/drivers/usb/mtu3/mtu3_hw_regs.h
index 8382d066749e..bf34f784f84b 100644
--- a/drivers/usb/mtu3/mtu3_hw_regs.h
+++ b/drivers/usb/mtu3/mtu3_hw_regs.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * mtu3_hw_regs.h - MediaTek USB3 DRD register and field definitions
  *
diff --git a/drivers/usb/mtu3/mtu3_qmu.h b/drivers/usb/mtu3/mtu3_qmu.h
index 9cfde201db63..66e1c0ab5a99 100644
--- a/drivers/usb/mtu3/mtu3_qmu.h
+++ b/drivers/usb/mtu3/mtu3_qmu.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * mtu3_qmu.h - Queue Management Unit driver header
  *
diff --git a/drivers/usb/mtu3/mtu3_trace.h b/drivers/usb/mtu3/mtu3_trace.h
index 050e30f0fbd4..1b897636daf2 100644
--- a/drivers/usb/mtu3/mtu3_trace.h
+++ b/drivers/usb/mtu3/mtu3_trace.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /**
  * mtu3_trace.h - trace support
  *
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
