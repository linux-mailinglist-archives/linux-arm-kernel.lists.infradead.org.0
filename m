Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B160F1FBBE7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 18:40:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=PPR3U94SrAeYxhMcJwU82c92Z2oN50Hxi7NqZn+2wDo=; b=B7U
	JrOnj89K2jlc2aKZbcgEfOIaTe7mM55hzZkJBb9GpTQ55Vs7+zKrgZokZjC/Kq+g7yf+bPWKoodyU
	wYbRVXbzZinN7clsPwOVqWiLVOOUVzCo2uYc+sYaNXKnJORI7OoPz028i+tRFIFuAlwqW8tiAM90U
	J2KiIqS74htMb59deBLxWujVwDwHCoJoPjuCatDyGY8Ys2xFeCG6y1Z9YDnIW8K8vbiBo3RrMEpJc
	2Zsy9WuH1OK9fOp5JAsivMhpWDRJHPKtUnTQdAIyd3rreb1Kj43DOh72B+NKw7nm3/JE9sklg3Osi
	Gw9xkerHLJ8qUBzgADzNVkg71+FfMfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlEdJ-0008P7-Qz; Tue, 16 Jun 2020 16:40:21 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlEd9-0007nW-3u
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 16:40:12 +0000
Received: by mail-wm1-x343.google.com with SMTP id r9so3505862wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 09:40:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=9YnYFHSDFso0fOXJihLtGhBF6BHm2kdc2yEvgjFZSLo=;
 b=IfhLyJyMNmzDSSV/StjX50lByTvyQPH5cwg/i2ouZ3scawz9Ws2ZXbzUj3sMoGFYkp
 z9bmwLiPc/i836ZAYwG1k/EczuGLtoSrgEtgmsEu3+N0Pd1N20aUmG/qEnQVjyYpphCk
 tJdD3IF8QPe+YLX8zFovV5c9zHil/g8wUjp2K3k04v8et2E95wbSpaEMrAM1wrPdMVsw
 /r9hZXrrEIp4wSLDjIAgUZ9v4pwNz3nO9IUhrbcS9as/9HdK0SQf1DgTW4xLhosImMUU
 6yAM3NLdzbN60IPeaEQHOL4vlQp/FqcfHspanV/ThlWgxjK+66IzuZYtXZH24gdI9075
 wQWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=9YnYFHSDFso0fOXJihLtGhBF6BHm2kdc2yEvgjFZSLo=;
 b=coXHdWM8xqS0A2xEpy5+DqtoC6J2Pg3TtkWcgczGNLXHhwWv+pPwMyJoCwhvsL0QgQ
 RKL3fUlx3lWmMXRdhrZUwmtVNn5sQMHlZnoImZ/+o13YOA8X1phxw7dv2c9k24NFqPNY
 dtfVVFFvP7aIP3tbZCAw9Mzp+PKyLX/oo2GYA/pZyb2frfG9JhQE/B22xNlFZB5GWu2z
 rTtp45nZ5TRoRGOC4bSqNcftJGnWdXGPkdW4Vw5TFKSjyLOUvjRYrOZlxFtD+J2uHxi5
 HyoF3C5icZzfUNKud0nkEldd3zHxlrQHGFQwORRWwF2v7LueVsTlVjVPlCQPUrYQcRwD
 EnIA==
X-Gm-Message-State: AOAM5328Tq67IZljRQnsT8A8yt+FPA+KjYPVqQCmN26D5UN2DfzYf3W8
 o7Jzq1GkN6CRucg5HEEfPEhM/xAyfHs=
X-Google-Smtp-Source: ABdhPJwOW/ZcdzOtmgDO7T7j7fpeFuwagPUWSfa/Hl/yBeEfz5zBBT5h5oAt0PPG2VgQ6j/9Xifpxw==
X-Received: by 2002:a7b:c761:: with SMTP id x1mr4341190wmk.90.1592325608924;
 Tue, 16 Jun 2020 09:40:08 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6801:1801:dc9e:c297:59e5:dbd9])
 by smtp.gmail.com with ESMTPSA id g82sm4843866wmf.1.2020.06.16.09.40.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 09:40:08 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
 coresight@lists.linaro.org, mathieu.poirier@linaro.org
Subject: [PATCH v5 0/5] Update CoreSight infrastructure to select a default
 sink.
Date: Tue, 16 Jun 2020 17:40:01 +0100
Message-Id: <20200616164006.15309-1-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_094011_193293_DE61C472 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: corbet@lwn.net, Mike Leach <mike.leach@linaro.org>, suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset provides an infrastructure to allow for the automatic
selection of a sink during CoreSight tracing operations.

Currently starting tracing using perf requires a sink selection on the
command line:-

sudo ./perf record -e cs_etm/@tmc_etr0/ --per-thread uname -a

After this set (and the follow-up perf change set) the infrastructure will
be able to select a default sink:-

sudo ./perf record -e cs_etm// --per-thread uname -a

This matches with the default operation provided with perf and intelpt.

Where no sink is specified at the start of a trace session, the CoreSight
system will walk the connection graph from the source ETM, to find a
suitable sink using the first encountered highest priority device.

The CoreSight infrastructure is updated to define sink sub_types to
differentiate between sinks with built in buffers (ETB / ETF) - BUFFER
type, and those that use system memory (ETR) - SYSMEM - types.

SYSMEM types are considered higher priority.

When two sinks are found of equal priority, then the closest sink to the
source in terms of connection nodes is chosen.

The automatic sink selection will also operate if an ETM is enabled using
sysfs commands, and no sink is currently enabled. A last_sink attribute is
added to trace sources that is set to the value of the sink used when a
source is enabled via sysfs. This is set in both default and user enabled
sink scenarios.

Applies to Linux 5.8-rc1

Tested on Dragonboard DB410c.

Changes since v4:
1) Added reviewed-by etc that were missing from previous sets.
2) Added last_sink attribute to source devices.
3) Added documentation patch to update docs for default sinks.
4) Moved comment fix patch into separate misc fixes set.

Mike Leach (5):
  coresight: Add default sink selection to CoreSight base.
  coresight: tmc: Update sink types for default selection.
  coresight: etm: perf: Add default sink selection to etm perf.
  coresight: sysfs: Allow select default sink on source enable.
  documentation: coresight: Update CoreSight document for default sink.

 Documentation/trace/coresight/coresight.rst   |  48 ++--
 .../hwtracing/coresight/coresight-etm-perf.c  |  17 +-
 drivers/hwtracing/coresight/coresight-priv.h  |   2 +
 drivers/hwtracing/coresight/coresight-tmc.c   |   3 +-
 drivers/hwtracing/coresight/coresight.c       | 205 +++++++++++++++++-
 include/linux/coresight.h                     |   6 +
 6 files changed, 261 insertions(+), 20 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
