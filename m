Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E95A2FC7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 08:25:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=w25dYGSLlbKAtyJYFK4R1/bbaQMuRSMY+G/Tr7w18Sg=; b=u1Q
	w+XVIT+qVY9t7W8fGbbZL+VpPa8s/HeRCf2IXQEBWI5CuCVC8EMf/K7yqilkwy2jireIEXEG2Fj+E
	411b89UXNvo8Ca81W1uPYtITDdpl1vAZlce2DoXfg1w+q1uFtXnrXq4VV+P5XqBQq/n3Vcg87Kyvq
	9a5WLnaUUroOiaDG3f7RMsfcbJtnOyKgvgQWaoGqSBQ9+IJqH6pLR76dji7x5+j9u/VowEQp41F/N
	x4bR6nn9nrO4oPww2xg1fYomOKt+vmz7KeFZUrzfKYc71Ns8l7ZXzt7+nNnbZJ3iVGzMmYoDXQ5kI
	8Ha36NrqXQoeUrOtBIeyCP6BjidKVAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3aLI-0008QG-2c; Fri, 30 Aug 2019 06:25:04 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3aKz-0008PB-TC
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 06:24:47 +0000
Received: by mail-yb1-xb43.google.com with SMTP id y21so2068719ybi.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 23:24:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=CRg35i2KWpjsknTISfFxKQ/QZUyPHEq1p0YfyQly9p0=;
 b=JmcG7+8VBeJwdkL0srCfVuUiYENIyP2RgEaDEDY8NlPmzkibNggOUAP8bHIerZq4nH
 TytJBi2hvzuYvRS6ch+1FHJWP/9ZRoF+dSl1pwpgi01MAwvT+VUoJCFToIJq1k1dQInV
 NPJgo9t/Rrr4MGBBe8a5sfo/jCEVSLdYVySTe8YfkvTBQy/5eyaYRFB+ysOcpdhBcFSC
 vEgfu88Q+EQivdqkzfHQkPQWR+klffAdPQoZM/sIvDVO3m1CIKkqghA35Jz+wf9tJ00K
 VW+kuu2Maubrh4ZKtnq+mOWHW1YbTdlfLc9g7Gng9Vx4Z6Xi9OBTmKCwxsMH8F+9k2j3
 4mNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=CRg35i2KWpjsknTISfFxKQ/QZUyPHEq1p0YfyQly9p0=;
 b=fCFjvc2PiVK6B2xdivJXfpyCh7tXejwJhIzHuVNX92MnG16B6B6japxUeG3ZjnxKr+
 lX4/O5f6Fs0SoO4GtyKX8VryskUDlLlmtD+NJJcY4CGwb8AcM8cUPCeS6cirsEKIGrbV
 IKM5henZWwojDnjCBlJvViAbW8uo1dukebQ9y+ntbOxY477hgxJ/aBBJf87+xoaXKvUb
 AQdZTLPj04JEzXBIQYjbLxO8gerXgxDiudfJ0bjAH80L71/V/ai/kVM9ma9fLfB8CBpD
 w1PLkMxet90EICICzDJe+GhQtURyqd8e5LBgJqQUQDYXffGDXtSSyyGZp3a/fBMV4uoH
 ptjQ==
X-Gm-Message-State: APjAAAVGaBF5g28Xys90A0k/Kd+gmsHxaY2uJYg6anenVyiIbCI13or6
 pYIKrel8+0yJi1cxoyoV7TNV4g==
X-Google-Smtp-Source: APXvYqwlWNQGDdaoHm4ruUISqYzX0oZ1tMA0KTcAcnI6CC8hmRUBISY9eT6FQ8g7u2ShnwUYBrJG3Q==
X-Received: by 2002:a25:7904:: with SMTP id u4mr9798468ybc.73.1567146283332;
 Thu, 29 Aug 2019 23:24:43 -0700 (PDT)
Received: from localhost.localdomain (li1320-244.members.linode.com.
 [45.79.221.244])
 by smtp.gmail.com with ESMTPSA id r193sm976784ywe.8.2019.08.29.23.24.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 23:24:42 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mike Leach <mike.leach@linaro.org>, Robert Walker <Robert.Walker@arm.com>,
 Adrian Hunter <adrian.hunter@intel.com>
Subject: [PATCH v1 0/3] perf cs-etm: Add support for callchain
Date: Fri, 30 Aug 2019 14:24:18 +0800
Message-Id: <20190830062421.31275-1-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_232445_975645_10B83044 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
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

This patch seris adds support for instruction sample's callchain.

Patch 01 is to refactor the instruction size calculation; patch 02
is to add thread stack and callchain support; patch 03 is a minor fixing
for instruction sample generation thus the instruction sample can be
alignment with the callchain generation.

Before:

  # perf script --itrace=g16l64i100
            main  1579        100      instructions:  ffff0000102137f0 group_sched_in+0xb0 ([kernel.kallsyms])
            main  1579        100      instructions:  ffff000010213b78 flexible_sched_in+0xf0 ([kernel.kallsyms])
            main  1579        100      instructions:  ffff0000102135ac event_sched_in.isra.57+0x74 ([kernel.kallsyms])
            main  1579        100      instructions:  ffff000010219344 perf_swevent_add+0x6c ([kernel.kallsyms])
            main  1579        100      instructions:  ffff000010214854 perf_event_update_userpage+0x4c ([kernel.kallsyms])

  [...]

After:

  # perf script --itrace=g16l64i100

  main  1579        100      instructions: 
          ffff0000102137f0 group_sched_in+0xb0 ([kernel.kallsyms])

  main  1579        100      instructions: 
          ffff000010213b78 flexible_sched_in+0xf0 ([kernel.kallsyms])
          ffff00001020c0b4 visit_groups_merge+0x12c ([kernel.kallsyms])

  main  1579        100      instructions: 
          ffff0000102135ac event_sched_in.isra.57+0x74 ([kernel.kallsyms])
          ffff0000102137a0 group_sched_in+0x60 ([kernel.kallsyms])
          ffff000010213b84 flexible_sched_in+0xfc ([kernel.kallsyms])
          ffff00001020c0b4 visit_groups_merge+0x12c ([kernel.kallsyms])

  main  1579        100      instructions: 
          ffff000010219344 perf_swevent_add+0x6c ([kernel.kallsyms])
          ffff0000102135f4 event_sched_in.isra.57+0xbc ([kernel.kallsyms])
          ffff0000102137a0 group_sched_in+0x60 ([kernel.kallsyms])
          ffff000010213b84 flexible_sched_in+0xfc ([kernel.kallsyms])
          ffff00001020c0b4 visit_groups_merge+0x12c ([kernel.kallsyms])

  main  1579        100      instructions: 
          ffff000010214854 perf_event_update_userpage+0x4c ([kernel.kallsyms])
          ffff000010219360 perf_swevent_add+0x88 ([kernel.kallsyms])
          ffff0000102135f4 event_sched_in.isra.57+0xbc ([kernel.kallsyms])
          ffff0000102137a0 group_sched_in+0x60 ([kernel.kallsyms])
          ffff000010213b84 flexible_sched_in+0xfc ([kernel.kallsyms])
          ffff00001020c0b4 visit_groups_merge+0x12c ([kernel.kallsyms])

  [...]

Leo Yan (3):
  perf cs-etm: Refactor instruction size handling
  perf cs-etm: Add callchain to instruction sample
  perf cs-etm: Correct the packet usage for instruction sample

 tools/perf/util/cs-etm.c | 122 +++++++++++++++++++++++++++++++++------
 1 file changed, 105 insertions(+), 17 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
