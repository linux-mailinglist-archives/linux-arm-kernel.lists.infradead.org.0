Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B35D10CD1A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 17:50:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=c7Kx99Mwv2mAwbOvwEEE5A6V9br9PceW7Rg01ETrSNk=; b=Gju
	2ktt+LRqdRQ4PJ3dAshCdAXuk/qryc9GBR4GLnvUrTXbXnfTibJySpLw4rlv0YnLjsOO9zKlNcH50
	TFuTJnwvivDgrF8Hk92h3jPtbrC7PpwGLuLD/RJH3geR3P7A09rxxW3VDZeNce0SgfV+NKg4XIJV6
	FXjcq4XqvwIKZbcasSwsW2P80njyxmMsILzkWs8AHQlJtnTFrzWlb2BHv0DtdFLV+H+maQ0B9Nz81
	WlTiYPXC+e9I59y4liYN2iU/fGfDZhohyzrgfBYctuwyYboLfHwJhg1nzGBHiSxhotzanrpkFnN1U
	NH49BwGrZ1aCMVkER5AlUfPFb+pWdIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaMzo-0004Bf-9z; Thu, 28 Nov 2019 16:50:24 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaMzV-0003eQ-8y
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 16:50:06 +0000
Received: by mail-pf1-x441.google.com with SMTP id y206so4752963pfb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 08:50:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=EtE8iKMLU92GTDMRpW8v47ZiBzkWYQrI/Nlmh1qlqtI=;
 b=U5lyywLacpPKT3VSRWffB5xGzZlwvL7QfYD2llP5vXMTtclbt0nXxmMcA5ZI1/9IqM
 chS4Z4CZD8QFx4b6MXGL1v/hxEI4VCILZmT5WJopEXVqF2UcHqF7Nz6wN+RjY2Jxkn0+
 qTluI143uuBq1MQTyA5biPlZFRMQJQUWWKRp2BaMz1IRunAdCPsckYo7n/9Xau0awiKv
 jpHwOFpzbKGUqW5cOhHq35ek0/m4TcN3h0TuguyDPBTQn/o/Is9zO8njacIPrC+YtJFV
 Ayge8ThTWtiLeOSlIU2Z5UHWK9vGxF9uYYElaMFNt20oAnhO43uCbibm2SURbWQnh2ml
 Zc4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=EtE8iKMLU92GTDMRpW8v47ZiBzkWYQrI/Nlmh1qlqtI=;
 b=M0WmMxP5VrmrKndDRpeQWoO+WznN2hXwNqyhWjV9WNpemD2RK+J6wi7CD+0zguWBp0
 ERtDz7gbhuC/c/oale88gRUURCwY4xf0JKUDYOwh0vrzDZpNl6g+6rJ3kJz0ihgArwXz
 rgz4xLn00sUd80QlxHL+aUc06qI0QDKDGVROHwIKIkkekZvabbpCHKY7W0alIXDCnYiL
 UYPismtLYZ9Ij7Hj7C+zYmnphgD3Vp6Hk76pClKD/wO0LRg8sQOE0F226FY102QMbQEt
 B0HXQ0XsYUoGezFzvCObgP/9Do6cdiiCnDcy5VLr3UB/ixWcei+l3LQSbhPXQDVbeVc1
 mqGg==
X-Gm-Message-State: APjAAAX3gfmgeliXfug8Am1k12qb4/beFnfnmj1xRqOY+xQvvZNi83Bu
 5WJusYycXwXJhYYd4E9aqJaHxQ==
X-Google-Smtp-Source: APXvYqzFXuuCNpa2wOGk/uugNpRHYlw73qwmWN31RQc253nISwTs7bcJPSadlmNYCemZ4rYYyRvD0Q==
X-Received: by 2002:a63:1360:: with SMTP id 32mr11710857pgt.3.1574959804400;
 Thu, 28 Nov 2019 08:50:04 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id a15sm2450343pfh.169.2019.11.28.08.50.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 08:50:03 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19][PATCH 00/17] candidates for stable 4.19.y
Date: Thu, 28 Nov 2019 09:49:45 -0700
Message-Id: <20191128165002.6234-1-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_085005_335930_2802194F 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a retake of this set [1].  The patches are destined to 4.19.y and have
been applied and compiled to 4.19.86.  All the content in this set is already in
5.3.y.

Thanks,
Mathieu 

[1]. https://lkml.org/lkml/2019/11/15/1105

Alexandre Torgue (1):
  pinctrl: stm32: fix memory leak issue

Arnaud Pouliquen (1):
  mailbox: stm32_ipcc: add spinlock to fix channels concurrent access

Fabien Dessenne (1):
  mailbox: mailbox-test: fix null pointer if no mmio

Gabriel Fernandez (4):
  clk: stm32mp1: fix HSI divider flag
  clk: stm32mp1: fix mcu divider table
  clk: stm32mp1: add CLK_SET_RATE_NO_REPARENT to Kernel clocks
  clk: stm32mp1: parent clocks update

Hugues Fruchet (2):
  media: stm32-dcmi: fix DMA corruption when stopping streaming
  media: stm32-dcmi: fix check of pm_runtime_get_sync return value

Lionel Debieve (2):
  crypto: stm31/hash - Fix hmac issue more than 256 bytes
  hwrng: stm32 - fix unbalanced pm_runtime_enable

Loic Pallardy (1):
  remoteproc: fix rproc_da_to_va in case of unallocated carveout

Olivier Moysan (3):
  ASoC: stm32: i2s: fix dma configuration
  ASoC: stm32: i2s: fix 16 bit format support
  ASoC: stm32: i2s: fix IRQ clearing

Pierre-Yves MORDRET (1):
  dmaengine: stm32-dma: check whether length is aligned on FIFO
    threshold

Wen Yang (1):
  ASoC: stm32: sai: add missing put_device()

 drivers/char/hw_random/stm32-rng.c        |  8 +++++
 drivers/clk/clk-stm32mp1.c                | 28 +++++++++--------
 drivers/crypto/stm32/stm32-hash.c         |  2 +-
 drivers/dma/stm32-dma.c                   | 20 ++++--------
 drivers/mailbox/mailbox-test.c            | 14 +++++----
 drivers/mailbox/stm32-ipcc.c              | 37 +++++++++++++++++------
 drivers/media/platform/stm32/stm32-dcmi.c | 23 ++++++++++++--
 drivers/pinctrl/stm32/pinctrl-stm32.c     | 26 ++++++++++------
 drivers/remoteproc/remoteproc_core.c      |  4 +++
 sound/soc/stm/stm32_i2s.c                 | 29 +++++++++---------
 sound/soc/stm/stm32_sai.c                 | 11 +++++--
 11 files changed, 127 insertions(+), 75 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
