Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED22E1C38AF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 13:56:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+cJuBR5IX1aRgDvVie9kmMN/UZpmnJOJ3hUeCkV0i/U=; b=JYJ
	Vc1Xj+gfnFNpe4D4mJEhUzBf1V1Lpzh7RB4WD6fbY/2whXyIWV2mHjXW4A7FUeANjqQF3zAYO1eCN
	5CB2CFd3kyrwXPf6d4Z7j3HD6mxzuZSGH0Mnp2UwtqTABEsiOMBCd53N4j0jTH1R5xQkldJ2pAphP
	iyRxyETvPaAN634oQWmIFisIERD8t/vylgW7HD5GUTEAknk8v+n2e1BpgcoaMDimEvLP2qixTrcuY
	5URYOzx/X4nV0ckc68CDSTsfh6r/vc339GrkCa/G+Vm9PoJ61KvqqS3h1aW5tRqKBlo9RFEwo7lhX
	O6gqIMuMm37FX3HX+/HJLLsgcy2eMMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVZiN-0002w2-5o; Mon, 04 May 2020 11:56:51 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVZiD-0002uE-Hg
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 11:56:45 +0000
Received: by mail-pg1-x541.google.com with SMTP id r4so8353784pgg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 04:56:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=E/O/xlSGOBaRIcRWlWmBws8CpSsXMJGISjIPWe4h7js=;
 b=ngd+sBI4q9GztVXWyhv9u/d2H1/CxJIw+a63h0woPZPHqRYtaEMRyoTABmtAEpBk7w
 gGpg1reWhWTDlAxQ/uFzDU16JAz7HqudOL/ysc8AA3xH8ZeGfiGk9F1nbnRVEFz94TMP
 o3sjN5FlskSywRbv9BHUMPuGQve3A4t3wYWbLZJapZi+PU5KopwfUKP8PUe7fLQMcxDQ
 MH8uuLxG8rwxyg44NBAL6Y58q5Y8YOoYE4Up7rc/dDtDCpr1FYRng3GNcAXLsrjJKxqn
 D9WMQUwlH/2lM4IITPHx380hoWMq+PHzAxg1uZaXC7nUPnl4VIA16jHBJvEBMvBURw3N
 V/Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=E/O/xlSGOBaRIcRWlWmBws8CpSsXMJGISjIPWe4h7js=;
 b=KtsFDEcw8buvA+9HBqxKxTdwVB0fiFqPbqLva+ZeKlJu4cd63CEb5tdcq4ZCHvUpRC
 NG4sV4B3PzuQN8pTl1mtGfOtaJ/77d5vM2OEnes1gxqnugip9hW+f4pJDEo53UwGgWN3
 m5l4f9tcECROOwhYO+8Dla1gTJqOitWmW2iZdp+tfh05Lmv5CmU+JK7mOLqg1Bx4oEde
 AehrpvE8yo4PcnS01+EzoDHCAQDq79pYmHyLlPCnsnqSX4DMwJC33JjYV3++ACoNJJ8J
 xCNZFdgOHMUf1vLcHFPJiZ0JTLhwu91gymgiy7WtS7kjf9cPbmN9xRc2BL3UGQhrQ+YX
 RJJQ==
X-Gm-Message-State: AGi0PuZ1Z+OrPY5IIeIlHgywVl/PT3zZIEYASEEOZhZ3yCggSxG6NKfs
 6NfCwJFKvABTLWeoSgYax4KoLo/qfEs=
X-Google-Smtp-Source: APiQypIBTkeD1NgnxriwtF7GJh8g6aRYPENbMctnD2pRVoMa4Dnc/oOm1I4oIFUtEG/jJvssWE19jQ==
X-Received: by 2002:a63:df54:: with SMTP id h20mr16304752pgj.169.1588593398370; 
 Mon, 04 May 2020 04:56:38 -0700 (PDT)
Received: from localhost ([2400:8904::f03c:91ff:fe8a:bbe4])
 by smtp.gmail.com with ESMTPSA id o63sm7014010pjb.40.2020.05.04.04.56.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 04 May 2020 04:56:37 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 James Clark <james.clark@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Al Grant <al.grant@arm.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>
Subject: [PATCH v7 0/3] perf arm-spe: Add support for synthetic events
Date: Mon,  4 May 2020 19:56:22 +0800
Message-Id: <20200504115625.12589-1-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_045643_657387_49664CAC 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [2400:8904:0:0:f03c:91ff:fe8a:bbe4 listed in] [zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
decoder.  Since before Xiaojun Tan (Hisilicon) and James Clark (Arm)
have contributed much for this task, so this patch set is based on their
privous work and polish for the version 7.

The main work in this version is to polished the core patch "perf
arm-spe: Support synthetic events", e.g. rewrite the code to calculate
ip, packet generation for multiple types (L1 data cache, Last level
cache, TLB, remote access, etc).  It also heavily refactors code for
data structure and program flow, which removed unused fields in
structure and polished the program flow to achieve neat code as
possible.

This patch set has been checked with checkpatch.pl, though it leaves
several warnings, but these warnings are delibarately kept after
reviewing.  Some warnings ask to add maintainer (so far it's not
necessary), and some warnings complaint for patch 02 "perf auxtrace:
Add four itrace options" for the text format, since need to keep the
consistency with the same code format in the source code, this is why
this patch doesn't get rid of checkpatch warnings.


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
