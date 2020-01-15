Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4387113BDDF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 11:59:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0qQNnyKfBBr70pQ1hy8QJx2yo224WrZ3VV0GK8eD3pE=; b=nYX+OkuKwngQFp
	VZaYfcc+ErRb0uaNarKUeKlXS4W5QgiBZFJXW3Qlc7Vhia+c+gTLomfZTqCKGGm1HQ0FVhpL/T1fV
	0TcLkrcNclUl09lfvZ1fpECT5xVeV6fs5f4UDAoPWgBfhzLgOxPT/VidLZrgWOxuL6FZpfC7yA4mm
	FJPJ0v5S10fWHBT1AuvoF3hXEtTUr55zjaehbjg17t+wvkgixiTx72LyZ8YQJKfpBGDq5NpniMOAA
	gb2JWMXdrhRgjZdxjZQLo3qfYEhjUVfznOZUA7IpXfVemf7TF7pibk8zpB+HXNK7pURWWuyPsTRtb
	8sp4mpaxmN7W3rE+by4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irgOX-0002Da-PK; Wed, 15 Jan 2020 10:59:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irgON-0002Bp-M0
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 10:59:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7858131B;
 Wed, 15 Jan 2020 02:59:16 -0800 (PST)
Received: from e112479-lin.warwick.arm.com (e112479-lin.warwick.arm.com
 [10.32.36.146])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 308D83F6C4;
 Wed, 15 Jan 2020 02:59:13 -0800 (PST)
From: James Clark <james.clark@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/1] Return EINVAL when precise_ip perf events are requested
 on Arm
Date: Wed, 15 Jan 2020 10:58:54 +0000
Message-Id: <20200115105855.13395-1-james.clark@arm.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_025919_764044_2F6E8C27 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Al Grant <al.grant@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-kernel@vger.kernel.org, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, James Clark <james.clark@arm.com>,
 Namhyung Kim <namhyung@kernel.org>, nd@arm.com, Will Deacon <will@kernel.org>,
 Tan Xiaojun <tanxiaojun@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Since we're adding support for SPE in user space Perf, we've encountered an issue
where we would like some more feedback if SPE isn't available for an event.

At the moment there is a patch for perf where you can enable SPE by doing this:

    perf record -r branch-misses:p ...

Perf will have a hard coded list of events that can use SPE when ":p" is specified
and open the SPE PMU instead of the specified one. But if the event isn't in that
list, then Perf will attempt to open the normal event with precise_ip = 1.
That will succeed at the moment, but we'd like the kernel to say it's not supported
so there is a chance of showing a warning to the user.

This isn't just relevant to Perf though, there may be other tools that are already
setting this.

Therefore I'm looking for feedback on whether this would break backwards
compatibility with user space tools that are already setting precise_ip and
expecting it to not error out on Arm.

This change would also be beneficial for the case where if in the (distant) future
we do add some kind of precise support, there will be a chance of userspace
determining what is supported and what isn't.

Thanks
James

Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Arnaldo Carvalho de Melo <acme@kernel.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Tan Xiaojun <tanxiaojun@huawei.com>
Cc: Al Grant <al.grant@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org

James Clark (1):
  Return EINVAL when precise_ip perf events are requested on Arm

 drivers/perf/arm_pmu.c          | 3 +++
 include/uapi/linux/perf_event.h | 4 ++--
 2 files changed, 5 insertions(+), 2 deletions(-)

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
