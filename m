Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3810E15917F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 15:05:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lyc1dvGXygKj1xRveIA+bWmNycar9+wZIAMdyJ5QNiM=; b=pji7Bcn//BSMgFx76Z3EXtS5aD
	BZSJx3KjqvdHYqeVAI1FRazzEShDJaPGk8myUciqlwADmmkeH0XDYxQ0EmeMNXgcpQU0BjI4D92K0
	fPXElEJhnxVIuaMBx6u7M38Ahka6zKrXazScB2oPqoIrWXwWhsLIy3X5bVm2b2VpixivqZ9/SNZ0N
	YjOaOc1su93LU5I1XIpk0FQoGjH0Y3F4e99xkBHQXNt6Ct8mE9dOt61Z7iQSCZHF99WyQ6hXWSObv
	3UGOV57qoTSa4P0WWN2xT8EwZn8GjVJsYs4sCEEcEbOCNHYamOLk0GICQnRh9ZqIqcKlE7xgcd0ZN
	kpshoouA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1WA8-00032P-9w; Tue, 11 Feb 2020 14:05:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1W9s-00030E-DZ
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 14:05:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 087E030E;
 Tue, 11 Feb 2020 06:04:57 -0800 (PST)
Received: from e121896.warwick.arm.com (e121896.warwick.arm.com [10.32.36.33])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 BC6073F68F; Tue, 11 Feb 2020 06:04:55 -0800 (PST)
From: James Clark <james.clark@arm.com>
To: jolsa@redhat.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/4] perf tools: Add support for some spe events and
 precise ip
Date: Tue, 11 Feb 2020 14:04:41 +0000
Message-Id: <20200211140445.21986-1-james.clark@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200210122509.GA2005279@krava>
References: <20200210122509.GA2005279@krava>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_060500_500122_628D76EB 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: nd@arm.com, James Clark <james.clark@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jirka,

Oops. I've removed all the changes to evlist.c and evsel.h


James

Tan Xiaojun (4):
  perf tools: Move arm-spe-pkt-decoder.h/c to the new dir
  perf tools: Add support for "report" for some spe events
  perf report: Add SPE options to --itrace argument
  perf tools: Support "branch-misses:pp" on arm64

 tools/perf/Documentation/itrace.txt           |   5 +-
 tools/perf/arch/arm/util/auxtrace.c           |  38 +
 tools/perf/builtin-record.c                   |   5 +
 tools/perf/util/Build                         |   2 +-
 tools/perf/util/arm-spe-decoder/Build         |   1 +
 .../util/arm-spe-decoder/arm-spe-decoder.c    | 225 ++++++
 .../util/arm-spe-decoder/arm-spe-decoder.h    |  66 ++
 .../arm-spe-pkt-decoder.c                     |   0
 .../arm-spe-pkt-decoder.h                     |   2 +
 tools/perf/util/arm-spe.c                     | 756 +++++++++++++++++-
 tools/perf/util/arm-spe.h                     |   3 +
 tools/perf/util/auxtrace.c                    |  13 +
 tools/perf/util/auxtrace.h                    |  14 +-
 13 files changed, 1089 insertions(+), 41 deletions(-)
 create mode 100644 tools/perf/util/arm-spe-decoder/Build
 create mode 100644 tools/perf/util/arm-spe-decoder/arm-spe-decoder.c
 create mode 100644 tools/perf/util/arm-spe-decoder/arm-spe-decoder.h
 rename tools/perf/util/{ => arm-spe-decoder}/arm-spe-pkt-decoder.c (100%)
 rename tools/perf/util/{ => arm-spe-decoder}/arm-spe-pkt-decoder.h (96%)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
