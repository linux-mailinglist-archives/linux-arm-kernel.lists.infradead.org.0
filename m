Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5FC15005A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 02:52:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=q/nP6F5RIyja5p1pkkuBQqCfgZv1IoIC6SfKM8X4QrQ=; b=kpO
	M76Q5IKeKfoWRLYzzvUOhKuz3+aDbd1m3RQou4iSRkq8S7yWI/IZfcU6UOKcDiKoPdAlauJj13WX4
	qm35APxR24McVFFyOqU6k5mHvVBbN7RJSp4vrxYUXZmtHvU2AnsiEX90Yg0UXq1Ye/LCgOKC8KvtV
	OjiRXlTGqlm5ZZsX4t1yXgJ9P3L/WMVnUFCl0JDm3mSJZwmqyxNvMUUbywhRUGWFJAvpXChWP68Z7
	+X5flVvP/6KatNPNfp0A6F8WBCmh4HiKGOx4rzc01iwSbyKuOhqiEQ/vh0B1d+N4ZqjMHnIAevfkS
	LjPhKMAEwcVQ6C1oGn9INQHzq/JxYiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyQuk-0007jS-8v; Mon, 03 Feb 2020 01:52:38 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyQuc-0007id-D0
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 01:52:33 +0000
Received: by mail-pg1-x542.google.com with SMTP id l24so6939258pgk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 02 Feb 2020 17:52:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=ZiZzXgFFYfVLqsOFrcF9kT69hQ1R19EZVXuDA6GrIHs=;
 b=Nvtjv9wfYlFsYgkgZwOXN/3fh58yXTRzeeGI/vrHA2OtF3MgRKOus3uWZDfSIHD4/j
 saz44zAXa5kXX+9rto2vkpklXNpMSQ5s0kYQ7xmyWfStSPPXn2gUNpG4Rlp+uYJdPdsr
 L4flCZI4VVV8Lx2i8QHaxYPPC/SaQeatGTSlySyH1y7RRlNY642e36rzLoyPpStPZQDO
 cdccR2nY7E9MWuyba7YN4VctTQsZGVf9WuHTcM/g+fP1LpqBZmtojfepX0FyoiVKTCSE
 yizo6R7A8N6VRuNNRpsg2Q0yrVgy5IKY4TYutrUh7ukld2ISABEJobbKZO9VLuks1T3h
 ZCZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ZiZzXgFFYfVLqsOFrcF9kT69hQ1R19EZVXuDA6GrIHs=;
 b=i5XBHIdQ9QjKhsLh3GmZlJWubkXMxUFfMpboykLukChVZXhJlVq9FIK5/nXRkcWnqD
 Rkz+WcHjB03Q1prdxu3QAof4q7iR2kJ65gjd/sk6SarU+S9Uzj+prYdQbpVsBOQP6xAj
 Np99f8+pGcT3czwL0Ud/Lq/9FIc4H4e3o3tSkPiEWrv/HHzosQ+ySGcLDeMi2VEmIGyp
 OXlanWtd4p2nS1xWQpTFLUY8D3YRVPE0J97dNvNVt8n6iXwnljbYSqxLamAbrUttFTSY
 1sQ0kSzwCc+fKIqr2yF78dHoi6m+1HL9MhiOaWo3+fxGK/C86YXZx+OrNvDXitkeMCR7
 QXzQ==
X-Gm-Message-State: APjAAAUpXG/hr9YXQlZXZHTFFbFgMO0aYmSOQV8s9ehsbPyIFopctbBI
 3Ma7vmIPN4G+BgRtXi0FYUGLEA==
X-Google-Smtp-Source: APXvYqxWZZDHjTaMPRW6uSIFzGF3LauAyqo7quszdHdzQvYb9TKezHOAcjyfmqGck6uaIum0XO4x0g==
X-Received: by 2002:aa7:848c:: with SMTP id u12mr21352468pfn.12.1580694747534; 
 Sun, 02 Feb 2020 17:52:27 -0800 (PST)
Received: from localhost.localdomain (li1441-214.members.linode.com.
 [45.118.134.214])
 by smtp.gmail.com with ESMTPSA id y38sm17348308pgk.33.2020.02.02.17.52.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 17:52:26 -0800 (PST)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mike Leach <mike.leach@linaro.org>, Robert Walker <robert.walker@arm.com>,
 Coresight ML <coresight@lists.linaro.org>
Subject: [PATCH v3 0/5] perf cs-etm: Fix synthesizing instruction samples
Date: Mon,  3 Feb 2020 09:51:58 +0800
Message-Id: <20200203015203.27882-1-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_175230_472828_9ED07C04 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Let's restart this work [1], this patch set is the dependency for
support callchain for Arm CoreSight, which will be sent out in another
patch set.

This patch series is to address issues for synthesizing instruction
samples, especially when the instruction sample period is small enough,
the current logic cannot synthesize multiple instruction samples within
one instruction range packet.

Patch 0001 is to swap packets for instruction samples, so this allow
option '--itrace=iNNN' can work well.

Patch 0002 avoids to reset the last branches for every instruction
sample; if reset the last branches for every time generating sample, the
later samples in the same range packet cannot use the last branches
anymore.

Patch 0003 is the fixing for handling different instruction periods,
especially for small sample period.

Patch 0004 is an optimization for copying last branches; it only copies
last branches once if the instruction samples share the same last
branches.

Patch 0005 is a minor fix for unsigned variable comparison to zero.

This patch set has been rebased on the latest perf/core branch; and
verified on Juno board with below commands:

  # perf script --itrace=i2
  # perf script --itrace=i2il16
  # perf inject --itrace=i2il16 -i perf.data -o perf.data.new
  # perf inject --itrace=i100il16 -i perf.data -o perf.data.new

Changes from v2:
* Added patch 0001 which is to fix swapping packets for instruction
  samples;
* Refined minor commit logs and comments;
* Rebased on the latest perf/core branch.

Changes from v1:
* Rebased patch set on perf/core branch with latest commit 9fec3cd5fa4a
  ("perf map: Check if the map still has some refcounts on exit").

[1] https://patchwork.kernel.org/cover/11222259/


Leo Yan (5):
  perf cs-etm: Swap packets for instruction samples
  perf cs-etm: Continuously record last branch
  perf cs-etm: Correct synthesizing instruction samples
  perf cs-etm: Optimize copying last branches
  perf cs-etm: Fix unsigned variable comparison to zero

 tools/perf/util/cs-etm.c | 142 ++++++++++++++++++++++++++++++++-------
 1 file changed, 118 insertions(+), 24 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
