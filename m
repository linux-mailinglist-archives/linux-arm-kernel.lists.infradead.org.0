Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BAA5140CB4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 15:39:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BwvQrdZAMU1pa/UmCHLKiuZf/m0QS9SHhf5gP8I/l30=; b=JKf
	5LXBqX5dsh5zu9u0EFKTOQe2csd9ZABMrfv5gJmiE6ET63dJcu8eziNe0wheXzKLOeE9HoVmdlwKW
	CZOBOutQJT/uElZfna1RNEdpglqv+kDDkqY6/K8CaUd+tMPSlz4DOVV/PcrVW0oEDNMX5PI4XnLMU
	EO7ImNh/59tisdII8gt6zviDDZ1LZQ44MiGlk0DtfGFP+85ze5HoiG7+QQAb9VRx48VFXvi2sHDBJ
	cFigUJuKQ8+Gg+k8LWL4PJ3f6dAOk7yujytsEnUZl9Djbt7zc9gL7MiH+WXvKKIL42FYsehyFe1if
	UQ7tgKwEN3g3jk8FNqh573dTsvoT4Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isSmM-0006lk-K9; Fri, 17 Jan 2020 14:39:18 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isSm7-0006jX-Hx
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 14:39:05 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 0CB49AAC2;
 Fri, 17 Jan 2020 14:38:59 +0000 (UTC)
From: Mian Yousaf Kaukab <ykaukab@suse.de>
To: linux-arm-kernel@lists.infradead.org,
	mathieu.poirier@linaro.org
Subject: [PATCH RFC 00/15] coresight: make drivers modular
Date: Fri, 17 Jan 2020 15:39:55 +0100
Message-Id: <20200117144010.11149-1-ykaukab@suse.de>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_063903_741308_324E39FA 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: alexander.shishkin@linux.intel.com, paul.gortmaker@windriver.com,
 Mian Yousaf Kaukab <ykaukab@suse.de>, linux-kernel@vger.kernel.org,
 suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Goal of this patchset is to make coresight drivers modular and enable
them by default in the arm64 and arm defconfigs. This is work-in-progress
and completely untested. Mainly, module exit calls are incomplete or
missing. Posting here to get early feedback.

Please review.

Thanks you,

Best regards,
Yousaf 

Mian Yousaf Kaukab (15):
  Revert "drivers/hwtracing: make coresight-* explicitly non-modular"
  coresight: remove multiple init calls from funnel driver
  coresight: remove multiple init calls from replicator driver
  coresight: make API private
  coresight: rename coresight.c to coresight-bus.c
  coresight: combine bus and PMU init calls
  coresight: Makefile: regroup object files
  coresight: tmc-etr: add function to register catu ops
  coresight: etm-perf: remove unnecessary configuration check
  coresight: export global symbols
  coresight: add coresight prefix to barrier_pkt
  coresight: use IS_ENABLED macro for configuration symbols
  coresight: Kconfig: make all configurations tristate
  arm64: defconfig: enable coresight
  arm: config: enable coresight in v5 and v7 defconfigs

 arch/arm/configs/multi_v5_defconfig                |    8 +
 arch/arm/configs/multi_v7_defconfig                |    8 +
 arch/arm64/configs/defconfig                       |    8 +
 drivers/hwtracing/coresight/Kconfig                |   47 +-
 drivers/hwtracing/coresight/Makefile               |   23 +-
 drivers/hwtracing/coresight/coresight-bus.c        | 1368 ++++++++++++++++++++
 drivers/hwtracing/coresight/coresight-catu.c       |    9 +-
 drivers/hwtracing/coresight/coresight-catu.h       |    2 -
 drivers/hwtracing/coresight/coresight-etb10.c      |    9 +-
 drivers/hwtracing/coresight/coresight-etm-perf.c   |    4 +-
 drivers/hwtracing/coresight/coresight-etm-perf.h   |   13 +-
 drivers/hwtracing/coresight/coresight-etm3x.c      |   12 +-
 drivers/hwtracing/coresight/coresight-etm4x.c      |    7 +-
 drivers/hwtracing/coresight/coresight-funnel.c     |   34 +-
 drivers/hwtracing/coresight/coresight-priv.h       |   32 +-
 drivers/hwtracing/coresight/coresight-replicator.c |   34 +-
 drivers/hwtracing/coresight/coresight-stm.c        |    4 +-
 drivers/hwtracing/coresight/coresight-tmc-etf.c    |    2 +-
 drivers/hwtracing/coresight/coresight-tmc-etr.c    |   23 +-
 drivers/hwtracing/coresight/coresight-tmc.c        |    6 +-
 drivers/hwtracing/coresight/coresight-tmc.h        |    3 +
 drivers/hwtracing/coresight/coresight-tpiu.c       |    6 +-
 drivers/hwtracing/coresight/coresight.c            | 1338 -------------------
 include/linux/amba/bus.h                           |    9 -
 include/linux/coresight.h                          |   50 -
 25 files changed, 1602 insertions(+), 1457 deletions(-)
 create mode 100644 drivers/hwtracing/coresight/coresight-bus.c
 delete mode 100644 drivers/hwtracing/coresight/coresight.c

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
