Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D06323A77
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:40:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xeqXVHqk6zCJL8pIE188UD8PYd0Y1Qpze8V2f+3mm3g=; b=jMLimDdf0mUthm
	7Jpm+1cBSL++FUG1QPmeD6kagJhq+HP7/FZypb0epRwmGmZnGy0gg1OnSHc3bVxU16AgAotVqrraN
	L4XRzA90c4+fk4Bb+6MVAH2qUgIxOr/I68V0AQ6PXG+qYAPy/2nKjXAXlMCQQJiRFHfGcTz0LNbyE
	KNlRVbIdjGRQA0zb8olM+oe7R0MzDd4k2RIzVmpDFF0maLfTQgTEPefmd687Da4AI4pdkbp0s0HWR
	OZLqhXScDwCl0hjlq8I8V1a22uSXYgJd84Cbc4jD2KFLFYi6laKaH6bCI7NqRjfFk176foyDHGeTL
	R6Qi+RDCSaVETU48Kyiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjSr-0001js-SG; Mon, 20 May 2019 14:40:33 +0000
Received: from casper.infradead.org ([85.118.1.10])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjQp-0006Zs-8F
 for linux-arm-kernel@bombadil.infradead.org; Mon, 20 May 2019 14:38:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6ultmkYjgWhJ/xZHGxkX6N7CA7j/pBGMWJYUycDlyOs=; b=rICMQFkfUMQ0dFSr8kG9CAMCWl
 ksWX4CUDzepZBq32LaO+XEmpiva1kQe0iu/RLNX0rT7f0xoZAAtrzA7u/srf6zPplWMMZTWfusDu4
 gzKMdWDyaKkTjh4JDUfPFw/K5rKKyyFZBFB/bZFGLtU9Yv1lmCDBR1kUS4P5ltj4xLeoZWE+BAHXT
 hcUWaATNEsgJs4qJSDLUZwXTdeJlshnhRsCXR0Pzpoizp4fM70Z0K50QEsXR8A61zBNZvUTFOy6Dp
 sbBi8UTemmL79GmByhVXxOESAkLSxIpPvxkycur/OzUlfuLQI16SMMfWoPOylxIQJsstdGIqRmpv5
 W6SbPxCg==;
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjQl-0004Sr-91
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:38:25 +0000
Received: by mail-wr1-x442.google.com with SMTP id m3so1939410wrv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:38:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6ultmkYjgWhJ/xZHGxkX6N7CA7j/pBGMWJYUycDlyOs=;
 b=tpfLSV4cgjiX4q7HAr6FjjL+4hAE1a2rIdc3QDNDMtisfhHt2noyz4xFmhQW9wMIcT
 l50KHhcRb71FeUBVlXyVxQCYFdvkDPl/kfkuYrA5b0+vUmIK/O68PldpZ8qWqoW+X4UQ
 SdZ2M0ZHnUFpzfRNvbA8r+zDRhj12eEucC+T1lJBnNBt0iava/+NyjaXOUYYHxvF4Ftk
 XDxTzXNGW3SIWGIbST69maQJDj8SAXLLlxZH1BMgizsyEJmFIKZ21i4Icxms+dy9GkWd
 M9d/JAfVc181/AzipqUiOqoI4qD8RlHPIRMhzAWtpg29FDAHRr3wkk93Px41z/CPXAoV
 L68A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6ultmkYjgWhJ/xZHGxkX6N7CA7j/pBGMWJYUycDlyOs=;
 b=jxjKskmofeo6RH125E0OxxjuKyhvnN2HyWTBb4d5Z7ZThEv3Fwt0st5KJZPnw48FpO
 o4HntCVF/M0NOrvj+mx8jzpQc5IejqKcrVPEhtxm3kqNu8XtxYC9Zb288O8TxK3AM/fL
 IJyI/Y3Rl2mrxlMPENIOAVgIBor33pApJ1GGAP10IAVKn/EAB/cy26BzDpvArENcBrKd
 tWfCeTQ4EyJ4mpndY17iHrYJFhs7HeSI804hyIPVROjJbGp4vRNRLa6HWroHjkxq0ZbU
 Z6MWpE1SvMUtM0mDsd2tFYGrNns3MlxcizsdkDw97fQNHzbn6pfkoQuTjrDNReKY45Cy
 iNQg==
X-Gm-Message-State: APjAAAW5FFsS6DfzZo90BFlbpNLI14ZnZ3tnz2Wr2ycNazJsJMmthtgT
 DyZBI2Ncuo+WZSx9QKMwJranxaUusTLX0A==
X-Google-Smtp-Source: APXvYqzWgIrW0/dCRvdB6eUhF/nw2Ad+krPVAseHdSHHJyhHJ7FSI12d8sKvnebQHv1xTL/p6YvoeQ==
X-Received: by 2002:adf:8b83:: with SMTP id o3mr38659791wra.278.1558363101749; 
 Mon, 20 May 2019 07:38:21 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id y4sm12505976wmj.20.2019.05.20.07.38.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:38:21 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 09/10] ARM: debug: meson.S: update with SPDX Licence identifier
Date: Mon, 20 May 2019 16:38:11 +0200
Message-Id: <20190520143812.2801-10-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520143812.2801-1-narmstrong@baylibre.com>
References: <20190520143812.2801-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_153823_354561_EB63DF6E 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
 arch/arm/include/debug/meson.S | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm/include/debug/meson.S b/arch/arm/include/debug/meson.S
index 1bae99bf6f11..df158693a327 100644
--- a/arch/arm/include/debug/meson.S
+++ b/arch/arm/include/debug/meson.S
@@ -1,10 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2014 Carlo Caione
  * Carlo Caione <carlo@caione.org>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
  */
 
 #define MESON_AO_UART_WFIFO		0x0
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
