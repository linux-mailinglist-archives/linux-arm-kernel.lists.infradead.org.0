Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB2317C1A9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 16:25:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LUcNwXLiWStpt66pWUMTeqFvQuUSTCa4HBcjNWBHHMo=; b=EFU6epG0+UMe+7myIfpaj2Lxt6
	gu2/JDVIHC0KLDyTnGq3jAZm8pErgaVp9I6wjLmuCE5rOWk4D5RPlUz9eqsyK6r+MxDoaFITf8HZe
	9lIIe6tq7R4J9Ux9jfNgaS8sx+/NWcyYBGjSWCwLxscr8otIT52AznPLBCsYcj58RZ/ER/c0Grbmw
	YWG/6s40p7eegUTVJeW0J3BXWwOunykUHRpFrRlCYc74cYIgD/XzG9ailJbXFdx0HD6fvzdtytfE8
	LWheTkkoMrB+q+Qr1T1gkosFzE5+p3Y7hXmP0m8gj6rS5jPb9kMa1RzDY1v6/gsFZu16TAxU9L9CT
	FTDWAjLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAErC-0003gf-0b; Fri, 06 Mar 2020 15:25:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAEr5-0003fl-6x
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 15:25:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5F33F30E;
 Fri,  6 Mar 2020 07:25:36 -0800 (PST)
Received: from e121896.warwick.arm.com (e121896.warwick.arm.com [10.32.36.26])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 E65D23F237; Fri,  6 Mar 2020 07:25:34 -0800 (PST)
From: James Clark <james.clark@arm.com>
To: mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v6 0/3] perf tools: Add support for some spe events
Date: Fri,  6 Mar 2020 15:25:17 +0000
Message-Id: <20200306152520.28233-1-james.clark@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200228160126.GI36089@lakrids.cambridge.arm.com>
References: <20200228160126.GI36089@lakrids.cambridge.arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_072539_298697_235D4D63 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: nd@arm.com, James Clark <james.clark@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

Yes I think this is something I can look into. For now I have removed
that last patch because the current patch set already works very similarly anyway
and allows people to use SPE in perf:

    ./perf record -e arm_spe_0/branch_filter=1/
vs
    ./perf record -e arm_spe/branch-misses/pp

Also I don't have access to any big.LITTLE hardware with SPE so wouldn't be able
to test collating all the SPE PMUs.

Thanks
James

Tan Xiaojun (3):
  perf tools: Move arm-spe-pkt-decoder.h/c to the new dir
  perf tools: Add support for "report" for some spe events
  perf report: Add SPE options to --itrace argument

 tools/perf/Documentation/itrace.txt           |   5 +-
 tools/perf/util/Build                         |   2 +-
 tools/perf/util/arm-spe-decoder/Build         |   1 +
 .../util/arm-spe-decoder/arm-spe-decoder.c    | 225 ++++++
 .../util/arm-spe-decoder/arm-spe-decoder.h    |  66 ++
 .../arm-spe-pkt-decoder.c                     |   0
 .../arm-spe-pkt-decoder.h                     |   2 +
 tools/perf/util/arm-spe.c                     | 747 +++++++++++++++++-
 tools/perf/util/auxtrace.c                    |  13 +
 tools/perf/util/auxtrace.h                    |  13 +-
 10 files changed, 1032 insertions(+), 42 deletions(-)
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
