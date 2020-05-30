Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A481E9123
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 14:25:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=TCNqDkCmrP8iuPKSVuUZufCp5Wcm6QEUpylvT3osWZQ=; b=LEn
	c96bidYdSHnfPXNr0ExntUoVt3v8HgGGUBl+mt6T4xjNQm4OVPCoXuB6448kfeCfDqrvidgcFaYns
	yGF6hAbIPzti98cx2Q20Vs/bnAghD3OW7zADB7o2wI0dLkxloL00g58i+AQn8YCRw07SQOThenitl
	Xp+8M3pRWk8k1eZMPlkiaX8oBFk5jEccvFK42lYyPlsyls8vwoQmR9XggTHhWoLr2YQ1GH9qiIyu7
	iPavidASNRkjCoUZeMk8vXxm4P2tPhVrV3fww2F5UCSGU+hiNZ09P+dOQIpEYhoh/nmTt+u08PNs7
	lepbK1fRUYHK7i4mGU5453gUVYsnpGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jf0Xq-00080u-IO; Sat, 30 May 2020 12:24:58 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jf0Xi-00080R-Ar
 for linux-arm-kernel@lists.infradead.org; Sat, 30 May 2020 12:24:51 +0000
Received: by mail-pg1-x543.google.com with SMTP id j21so1242247pgb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 30 May 2020 05:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=qPBl8zyeRWMQE8qgQ1Ncwy5FHON+t2q5+yA52769q5M=;
 b=NYq78r4/cZDsKa/m5Ms0v4s70rWr2TgoJxRrvCqdHZsbTEfeAG9M5Tt9pyjuZm7Yku
 mW3TH4hQgoQ4ftTla/eE5uWhH4XMU3HRwWrrIX3HoYpDDeObNCVltrkB2gITbSMnpkYD
 39q0ehiY9eLUEFRXGjBYpY7Vj+CD2qx/ExFqVX5n6dRoSpYRnrOyYuVLx8CCc60UELOL
 Fm7aXLdZSIPhrYDNQFzMM3HP9mKEXPa8KdiiTu8MkINE1HeRIrp6VD1DbyMsaXCvZDqZ
 FF6/11liIlq/uulTv2unDewYQZ5rZUa3TGgGTmc0+LnWuO4kS20F9rqisLpmi/Xc8Uj1
 ifIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=qPBl8zyeRWMQE8qgQ1Ncwy5FHON+t2q5+yA52769q5M=;
 b=nBpKNsd5baE+fGUhvDnQax4zbtrBLlzGHqQa7N6+IREN4jrHK+BJm8zxomYWRE3fvP
 R8l8DkOtXgZYaASVNl+zI+XCTJjQu4XfyPYTSoppE6KsWfmw1bS5omB4kihXgDoSIcT5
 zbfWwLlbzV5JZbFCs4TB28052TauE39MabP35ZCZg0IFJMm3X3FfULVasHIxmmR76R5d
 lpeLnzJCBW/cgp/WGJY90q29N2VeQnA0jz1yfl6xymBPjGsGxLcqxHX4/kVrypuKOKC6
 EvuwfWD3qQbZXsvUw6Db80qBsDEBGOs3lFd/Qt/B1r5ZJQY9ksEuXRNEeJobYEIKmW50
 89TA==
X-Gm-Message-State: AOAM5339MNktzQ0gYvZXT94uWMyGto2SCvNHeImRVsNlL0jEJ+/DRNhu
 viyQvq0niYv5ESd9WICmYEWxFg==
X-Google-Smtp-Source: ABdhPJwA+cZT20tCgDf0rfl5Ccg26j7UUiBcsUgAeKjv7j1PZ+lQFKzjf2nQOiOdZTl7EN6xByt+Rg==
X-Received: by 2002:aa7:9252:: with SMTP id 18mr13106400pfp.17.1590841488879; 
 Sat, 30 May 2020 05:24:48 -0700 (PDT)
Received: from localhost ([2400:8904::f03c:91ff:fe8a:bbe4])
 by smtp.gmail.com with ESMTPSA id 140sm6787881pfy.95.2020.05.30.05.24.46
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 30 May 2020 05:24:48 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Will Deacon <will@kernel.org>, James Clark <james.clark@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Namhyung Kim <namhyung@kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Andi Kleen <ak@linux.intel.com>,
 Jin Yao <yao.jin@linux.intel.com>, Ian Rogers <irogers@google.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Al Grant <al.grant@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>
Subject: [PATCH v8 0/3] perf arm-spe: Add support for synthetic events
Date: Sat, 30 May 2020 20:24:39 +0800
Message-Id: <20200530122442.490-1-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_052450_405014_62B6F31D 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

This patch set is to support synthetic events with enabling Arm SPE
decoder.  This patch set is based Xiaojun Tan (Hisilicon) and
James Clark (Arm)'s previous patches who have contributed much for
the related task.

This patch set has been checked with checkpatch.pl, though it leaves
several warnings, but these warnings are deliberately kept after
reviewing.  Some warnings ask to add maintainer (so far it's not
necessary), and some warnings complaint for patch 02 "perf auxtrace:
Add four itrace options" for the text format, since need to keep the
consistency with the same code format in the source code, this is why
this patch doesn't get rid of checkpatch warnings.

This patch set has been rebased on Perf tmp.perf/core branch with
latest commit 9300acc6fed8 ("perf build: Add a LIBPFM4=1 build test
entry").  The patches has been tested on Arm N1 machine (by James)
and on Hisilicon D06 platform (by Leo).

Changes from v7:
* Added James's tested-by tags;
* Rebased on Perf tmp.perf/core branch.


Tan Xiaojun (3):
  perf tools: Move arm-spe-pkt-decoder.h/c to the new dir
  perf auxtrace: Add four itrace options
  perf arm-spe: Support synthetic events

 tools/perf/Documentation/itrace.txt           |   6 +-
 tools/perf/util/Build                         |   2 +-
 tools/perf/util/arm-spe-decoder/Build         |   1 +
 .../util/arm-spe-decoder/arm-spe-decoder.c    | 219 +++++
 .../util/arm-spe-decoder/arm-spe-decoder.h    |  82 ++
 .../arm-spe-pkt-decoder.c                     |   0
 .../arm-spe-pkt-decoder.h                     |  16 +
 tools/perf/util/arm-spe.c                     | 823 +++++++++++++++++-
 tools/perf/util/auxtrace.c                    |  17 +
 tools/perf/util/auxtrace.h                    |  15 +-
 10 files changed, 1135 insertions(+), 46 deletions(-)
 create mode 100644 tools/perf/util/arm-spe-decoder/Build
 create mode 100644 tools/perf/util/arm-spe-decoder/arm-spe-decoder.c
 create mode 100644 tools/perf/util/arm-spe-decoder/arm-spe-decoder.h
 rename tools/perf/util/{ => arm-spe-decoder}/arm-spe-pkt-decoder.c (100%)
 rename tools/perf/util/{ => arm-spe-decoder}/arm-spe-pkt-decoder.h (64%)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
