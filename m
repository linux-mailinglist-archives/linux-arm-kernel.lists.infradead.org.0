Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A026AAC6EF
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 16:22:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ITTZWNjF2ADrS8D58oh7vTuf6Np3WSs1MSUKkbOsYfs=; b=crUzMj+kw1MgK0
	BAZhz0pjrh3qpubkp1oOjRMZh0CKZPe9Uy1MqsE4auITVEFX5W9KhuGVcqEOYFZUUdHv1AJ1Vo5mx
	SxZwQsnviuddJQn5NgVZx4BX8gUdyTxfJtAOsV5+lQyJ7B+gH3uJKrmXOh5Gy6LL/xrFq+C01z9Z1
	A4l1qiZqnacvJEw6MkPWOhu4/7pxnQb6q0TLaDo7mxzejCeTOIHpJRVYehCPlJXVp77/lGDnAmh4F
	mZKLBh1lSwbCh5bACYw1B5GMmszXICaQhk5b2hmBfBta+n5rJqKSKG8MmPLGCeSefIaaSpKqM8cVT
	TzarC5naKgLlbk05KJ/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6bbC-0000KZ-MA; Sat, 07 Sep 2019 14:21:58 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6baz-0000K3-5i
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 14:21:46 +0000
Received: by mail-pf1-x444.google.com with SMTP id y72so6399692pfb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 07 Sep 2019 07:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=37f65CGSJoP5CdiEV3OM1izP7iVH496FryBwntyj2lE=;
 b=kd2Jm8GWBwhE0xBsXqluIUDsHy3ux5Uah19P8x1QssYTZ7XOIo2cgdBen3lsB4iAzi
 GxzL7vD+k2SFNpg1arMm994weRfs2X6FMIquW6W4ydxo4q9yoYfSMZRtfQ6M+oS/u/vF
 kADroW4mHS/N7l1mDDls1fsTnUAhLurplEoMWKDmVj6jeiwDf8kxztNLbFqXfs5aI9tV
 q8Fxs8UsewZLwzQ+YBW3v4wqD1vxOKLpYYiUkWi0od/uDfyqY++qRzWmRxYmGDI+1RkX
 iNzbAD07V+680gKbBNMTKfFxmsFIaZIXUmoVpQADvYJpGS1rHpA8XK7GXf5huN9sBncC
 1KeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=37f65CGSJoP5CdiEV3OM1izP7iVH496FryBwntyj2lE=;
 b=qNZD1bNgqDVY6UwAcpcKpantvKjnEzhi658R8PTgG/z5TdlKljfGfPPrIKJfFMPNgN
 1MHSRH6jv6f8Feh3EtKcKp6HURexGZjRKrNXQpNYgSzRa9+bCmw6qkpiMhD1SJyzCfNb
 61spBSkEMz8T/k9IuP5CjizQ/GzuhQkJ4OeTQ4WMTvBXSpx0NchMBNWcLpEvEPAKXCUQ
 ZjJ4EKGxfVvldzaauJSDf4wl66LrDkCZhgeEML7N5AFbMj+oPSg/A79iMSjqr10ZbWqM
 OABkIF+igIz9OGRO78FXrhUz5jhYjFcq/9Gs2cia3LJKma7HP3JSo7RI939hoVCEiMKs
 352w==
X-Gm-Message-State: APjAAAUqlyHK1BTF2zZTPFEs/eXqCuy0A9JTSy+XuF88ejuXoq7F7SW5
 IueQAGDK7BEw9DdfFU+rLrw=
X-Google-Smtp-Source: APXvYqyQ8yChFWgK1RcParrAaabjchntsUg1BuEJKCxSZHEr5B5JusC6goDwYFQpBhcT+SahP2PZgA==
X-Received: by 2002:a63:ee04:: with SMTP id e4mr12741439pgi.53.1567866103127; 
 Sat, 07 Sep 2019 07:21:43 -0700 (PDT)
Received: from nishad ([106.51.235.3])
 by smtp.gmail.com with ESMTPSA id i9sm25547693pgo.46.2019.09.07.07.21.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 07 Sep 2019 07:21:42 -0700 (PDT)
Date: Sat, 7 Sep 2019 19:51:36 +0530
From: Nishad Kamdar <nishadkamdar@gmail.com>
To: Hyun Kwon <hyun.kwon@xilinx.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joe Perches <joe@perches.com>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: [PATCH] media: xilinx: Use the correct style for SPDX License
 Identifier
Message-ID: <20190907142132.GA7166@nishad>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_072145_242592_69F2BF0F 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [106.51.235.3 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishadkamdar[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch corrects the SPDX License Identifier style
in header files related to Video drivers for Xilinx devices.
For C header files Documentation/process/license-rules.rst
mandates C-like comments (opposed to C source files where
C++ style should be used)

Changes made by using a script provided by Joe Perches here:
https://lkml.org/lkml/2019/2/7/46.

Suggested-by: Joe Perches <joe@perches.com>
Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>
---
 drivers/media/platform/xilinx/xilinx-dma.h  | 2 +-
 drivers/media/platform/xilinx/xilinx-vip.h  | 2 +-
 drivers/media/platform/xilinx/xilinx-vipp.h | 2 +-
 drivers/media/platform/xilinx/xilinx-vtc.h  | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/xilinx/xilinx-dma.h b/drivers/media/platform/xilinx/xilinx-dma.h
index 5aec4d17eb21..2378bdae57ae 100644
--- a/drivers/media/platform/xilinx/xilinx-dma.h
+++ b/drivers/media/platform/xilinx/xilinx-dma.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Xilinx Video DMA
  *
diff --git a/drivers/media/platform/xilinx/xilinx-vip.h b/drivers/media/platform/xilinx/xilinx-vip.h
index f71e2b650453..a528a32ea1dc 100644
--- a/drivers/media/platform/xilinx/xilinx-vip.h
+++ b/drivers/media/platform/xilinx/xilinx-vip.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Xilinx Video IP Core
  *
diff --git a/drivers/media/platform/xilinx/xilinx-vipp.h b/drivers/media/platform/xilinx/xilinx-vipp.h
index e65fce9538f9..cc52c1854dbd 100644
--- a/drivers/media/platform/xilinx/xilinx-vipp.h
+++ b/drivers/media/platform/xilinx/xilinx-vipp.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Xilinx Video IP Composite Device
  *
diff --git a/drivers/media/platform/xilinx/xilinx-vtc.h b/drivers/media/platform/xilinx/xilinx-vtc.h
index 90cf44245283..855845911ffc 100644
--- a/drivers/media/platform/xilinx/xilinx-vtc.h
+++ b/drivers/media/platform/xilinx/xilinx-vtc.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Xilinx Video Timing Controller
  *
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
