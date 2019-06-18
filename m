Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E44A4A138
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 14:56:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A6u2fnNhN0aErjiU9QOAPnbrKqHgMtso5tbQnWlCyR8=; b=dgAbIm+UfT7YfK
	c3tmyw8uuoYeO7C6w2Y1UmXiFxi4CQS39fjVume8Fte36EfXA27yvmKFll3bRi32YSNw+BGTjYtVU
	fRQmhrxVepQ1SQhBT9/hBtjgvfOWMjARxazEA7jERNnRV8Rw4V+9iwPH+/ES1PgjhC7xIQT1T3mDf
	YjiRh6Y1hPWsahJM7PGHRXK720LflacMOJdtwm1N3qLp1s2Jsn75MkAsrazwyBE4RPwwiFZE/NQoo
	rVpia0YG7FRDAEpor+VIfAQ+J275X0ANUT2aAwd5Pa5FRi3TFsGRLoLj1yYxdaDJ7oYfP2JsnL1s0
	j7+mkCumIrDwc5/igbQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdDeo-0001kn-35; Tue, 18 Jun 2019 12:56:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdDdL-0001jN-Iy
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 12:54:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 01B312B;
 Tue, 18 Jun 2019 05:54:43 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 127273F246;
 Tue, 18 Jun 2019 05:54:41 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
Subject: [PATCH v1 0/5] coresight: etm4x: save/restore ETMv4 context across
 CPU low power states
Date: Tue, 18 Jun 2019 13:54:28 +0100
Message-Id: <20190618125433.9739-1-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_055443_911188_B59F60D1 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some hardware will ignore bit TRCPDCR.PU which is used to signal
to hardware that power should not be removed from the trace unit.
Let's mitigate against this by saving and restoring the trace
unit state when the CPU enters low power states.

To provide a benefit to both self-hosted and external debuggers
we save/restore the entire state which includes etmv4_config data
and dynamic data such as inflight counter values, sequencer
states, etc.


Andrew Murray (5):
  coresight: etm4x: remove superfluous setting of os_unlock
  coresight: etm4x: use explicit barriers on enable/disable
  coresight: etm4x: use octal permissions for module_params
  coresight: etm4x: improve clarity of etm4_os_unlock comment
  coresight: etm4x: save/restore state across CPU low power states

 drivers/hwtracing/coresight/coresight-etm4x.c | 260 +++++++++++++++++-
 drivers/hwtracing/coresight/coresight-etm4x.h |  66 ++++-
 drivers/hwtracing/coresight/coresight.c       |   2 +-
 include/linux/coresight.h                     |   7 +
 4 files changed, 327 insertions(+), 8 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
