Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F9FD0A6C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 10:58:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sq1IDJYisr7c7szL8ob4cCb/NtNRJge+FVqjHAkHc1M=; b=YvANX6BeRvdlnY
	bQHPN19NXlVX52w3uI8Otgs3kKH9v2ZRPUT6D6fGgSxedLx7x7TtGUx33AybPk0uyCWfoIH1eex65
	WSVTffV71J6Akg56oQJHF6XZclq/7fRueUrGcYFiMGrE2sn65euFrZ8KkAHYkeTgkA9qgJM5Sk4Xz
	1FFfOR95tul1IlEUjwnWGje/fpszIw9urCkNVH+PlaFbJWUOSpNeWC39mJ6NMWsqan1iyBt23zTX2
	RCFfAvznRJuiX2/e81oTKjpax11BgDRqpTXmNm3mYyfgPUyUaLUYxLh3PAcypdqvA+wNll29uycWc
	NnC60qFvK2JVVKMUKJUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI7nQ-0003YH-AG; Wed, 09 Oct 2019 08:58:12 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI7n3-0003Jl-Fu
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 08:57:51 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 7DF0EA200A797F312905;
 Wed,  9 Oct 2019 16:57:43 +0800 (CST)
Received: from localhost.localdomain (10.67.212.75) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.439.0; Wed, 9 Oct 2019 16:57:34 +0800
From: John Garry <john.garry@huawei.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <alexander.shishkin@linux.intel.com>, <jolsa@redhat.com>,
 <namhyung@kernel.org>, <mark.rutland@arm.com>, <will@kernel.org>
Subject: [PATCH] MAINTAINERS: Add entry for perf tool arm64 pmu-events files
Date: Wed, 9 Oct 2019 16:54:33 +0800
Message-ID: <1570611273-108281-1-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.67.212.75]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_015749_713132_7BB239F5 
X-CRM114-Status: UNSURE (   6.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: f.fainelli@gmail.com, John Garry <john.garry@huawei.com>,
 linux-kernel@vger.kernel.org, linuxarm@huawei.com, zhangshaokun@hisilicon.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Will and I have an interest in reviewing the pmu-events changes related to
arm64, so add a specific entry for this.

Cc: Will Deacon <will@kernel.org>
Signed-off-by: John Garry <john.garry@huawei.com>

diff --git a/MAINTAINERS b/MAINTAINERS
index 296de2b51c83..6583b02790fe 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12767,6 +12767,13 @@ F:	arch/*/events/*
 F:	arch/*/events/*/*
 F:	tools/perf/
 
+PERFORMANCE EVENTS SUBSYSTEM ARM64 PMU EVENTS
+R:	John Garry <john.garry@huawei.com>
+R:	Will Deacon <will@kernel.org>
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+S:	Supported
+F:	tools/perf/pmu-events/arch/arm64/
+
 PERSONALITY HANDLING
 M:	Christoph Hellwig <hch@infradead.org>
 L:	linux-abi-devel@lists.sourceforge.net
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
