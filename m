Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 766794C1C3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 21:53:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=309LGKIWOQYTneX0DX1snKD+Q5cFSKdBh9fyAUltbL0=; b=NA6
	JgM2JClRTU1qL5AK9alMis5vf8fP7SLCR2Bwulv2LGD28CInZop6Jk4Mtcpw8CAySpktv8JFq2BJB
	8jAk4JcLih5d/grK9cVMcYbm0ondfSgNXRc1rNfcCmdfhVDPbaiR5gx+kbhepVKENRzgczuCNj1X2
	vh2KP8jCMRyKNSq3oIl450ZAO2lkPMdKuQ0dIAx13aA2tOs8qq6/AvvKLlqWtDSd8QYkiX3AMSrUZ
	jgu/b10qmMsfQqQbODp7TE1WEIdU4nHsTdVsrsiLmBC0v0GE0UQ2Gvfs720Qf56wqjt8L0aSmzV/z
	N63XbbD3jiFU7pbrUN8Fpv2IFDL5TZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdgeT-0006Mo-7q; Wed, 19 Jun 2019 19:53:49 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdge1-0006Ku-Jy
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 19:53:23 +0000
Received: by mail-pg1-x542.google.com with SMTP id v9so217681pgr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 12:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=+C+5RIv2tzHmDrluCr+Qw7s1x0vsN56orohj+RSQQ3I=;
 b=zOKlVzxdjmK/OrmguzsSiasnK4aR4m91L4ksCiUXug4iGjIXGWayLj6brnA2ROCsRM
 H1HKSLvHxk5riEDvr/MSCh6/kJjF55bB0tzS7biEOz8r+Doo07sfcnirDD1bYoNx6OJ4
 pRxPyt8HwJ4/KfcaTedM9Wc+6SfJ7DvwYHhCqE7ydzQz80BQOyVXV72NdV0SA0uuN8hL
 0PwibEeTdRLbJxuzq3H/TIidUCqLlFMIN+nIj0qMPdwprxwJmtQN1iATZOfRfiugksIz
 gSouGBs2nZ5KRS7mGCf40KuxtS+Q2a9hZgwuMifVrc+v+uYSSMxeokSFyvSyqdERZDYq
 eBgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=+C+5RIv2tzHmDrluCr+Qw7s1x0vsN56orohj+RSQQ3I=;
 b=KbfGVC9f6pWbJIb2b3Ag2JQhZiVysnKW3g2ERKmb7bI2+gzIGxLzFIllaLCkTJwTd3
 ocQUFKq1Wo1ZKFgEWYq2dWTWXM9JpHVMRah3ZlMwio+Js4v9npv83D2EMWlGai98DvMP
 H+7OXfELaLQx+VahAYgmYt+n2sxLuhM5dYmifh8zcDmZiXp8VOhYF1yCtfXgALA5saPQ
 /LPafQvFkq5t8F3X1S5xLLQp7zI3YcT3JUhxPwLK0xxgiEnYxV8riRQBNywaWM1qJmTh
 gWYG0kO5j9GOVok1iqFDrvCox6kZBxoK9X6Qtlvoc7Ho12BnbttvQxsi7wL0qe8KhKXh
 9kIQ==
X-Gm-Message-State: APjAAAV1vVvW2vSn1wB50BzqcjqueGFcIfH27/ThsyFegbjtzLSf7ir6
 5gwc7ZziiMDa6Xp8kY7PCMtWzw==
X-Google-Smtp-Source: APXvYqxir/ElnMnrBkFoE29noWIGkBIP3CuOXzYPe+NI3wYtN4lJ/GImIJolpCySKcdMHhxJ709rHw==
X-Received: by 2002:a63:5a1f:: with SMTP id o31mr9174359pgb.254.1560974000366; 
 Wed, 19 Jun 2019 12:53:20 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j14sm21615993pfn.120.2019.06.19.12.53.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 12:53:19 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 00/28] coresight: next v5.2-rc5 (V2) 
Date: Wed, 19 Jun 2019 13:52:50 -0600
Message-Id: <20190619195318.19254-1-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_125321_663703_649FA0ED 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Here is the rest of the collection - it applies cleanly on your 
char-misc-testing branch (538eca25ff8f).

Thanks,
Mathieu


Arnd Bergmann (1):
  coresight: platform: add OF/APCI dependency

Dan Carpenter (1):
  coresight: Potential uninitialized variable in probe()

Suzuki K Poulose (25):
  coresight: Rename of_coresight to coresight-platform
  coresight: platform: Make memory allocation helper generic
  coresight: Make sure device uses DT for obsolete compatible check
  coresight: Introduce generic platform data helper
  coresight: Make device to CPU mapping generic
  coresight: Remove cpu field from platform data
  coresight: Remove name from platform description
  coresight: Cleanup coresight_remove_conns
  coresight: Reuse platform data structure for connection tracking
  coresight: Rearrange platform data probing
  coresight: Add support for releasing platform specific data
  coresight: platform: Use fwnode handle for device search
  coresight: Use fwnode handle instead of device names
  coresight: Use platform agnostic names
  coresight: stm: ACPI support for parsing stimulus base
  coresight: Support for ACPI bindings
  coresight: acpi: Support for AMBA components
  coresight: acpi: Support for platform devices
  coresight: Add dummy definition for of_coresight_get_cpu()
  coresight: tmc-etr: Do not call smp_processor_id() from preemptible
  coresight: tmc-etr: alloc_perf_buf: Do not call smp_processor_id from
    preemptible
  coresight: tmc-etf: Do not call smp_processor_id from preemptible
  coresight: etb10: Do not call smp_processor_id from preemptible
  coresight: etm3x: Smatch: Fix potential NULL pointer dereference
  coresight: tmc: Smatch: Fix potential NULL pointer dereference

Wei Yongjun (1):
  coresight: replicator: Add terminate entry for acpi_device_id tables

 drivers/acpi/acpi_amba.c                      |   9 +
 drivers/hwtracing/coresight/Kconfig           |   1 +
 drivers/hwtracing/coresight/Makefile          |   3 +-
 drivers/hwtracing/coresight/coresight-catu.c  |  22 +-
 .../hwtracing/coresight/coresight-cpu-debug.c |   3 +-
 drivers/hwtracing/coresight/coresight-etb10.c |  25 +-
 drivers/hwtracing/coresight/coresight-etm3x.c |  24 +-
 drivers/hwtracing/coresight/coresight-etm4x.c |  20 +-
 .../hwtracing/coresight/coresight-funnel.c    |  25 +-
 .../hwtracing/coresight/coresight-platform.c  | 815 ++++++++++++++++++
 drivers/hwtracing/coresight/coresight-priv.h  |   4 +
 .../coresight/coresight-replicator.c          |  36 +-
 drivers/hwtracing/coresight/coresight-stm.c   |  78 +-
 .../hwtracing/coresight/coresight-tmc-etf.c   |   6 +-
 .../hwtracing/coresight/coresight-tmc-etr.c   |  23 +-
 drivers/hwtracing/coresight/coresight-tmc.c   |  37 +-
 drivers/hwtracing/coresight/coresight-tpiu.c  |  17 +-
 drivers/hwtracing/coresight/coresight.c       | 164 +++-
 drivers/hwtracing/coresight/of_coresight.c    | 297 -------
 include/linux/coresight.h                     |  61 +-
 20 files changed, 1203 insertions(+), 467 deletions(-)
 create mode 100644 drivers/hwtracing/coresight/coresight-platform.c
 delete mode 100644 drivers/hwtracing/coresight/of_coresight.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
