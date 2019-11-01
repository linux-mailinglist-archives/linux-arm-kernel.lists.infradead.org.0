Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5EBEBBE3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 03:08:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cTtKclSpFDtVQbJHwn8gdkLdluQnjfilba7j19olHRI=; b=cwf
	z0USkFo1fJ8+nBAE0dixOHmgR25V2ySFIjxtA5JbO+zjpKEaOQVSxsjaAFkusTsvDDJpU3hifQf+y
	coUfUWUJQKspdO4KqeaX9B/M4AROnERIWzfN0ynNay3tjEVQ9W6AZen9enSjTMZkGYb6ojxb9VQWe
	j1BfelHD3cfk8XY8dSo6nDf4ruo/cGECWcWpMXMEu4j78s2XMHyLyfal59njBSyf0RUqe0Gb/vFZs
	wO4rkn+1ZRAbuThqG+xgZBtLc4QGkegdm5wkX3BWLBK4HMLVsiATR46P2kITBq1F/aSBAW17lUpUU
	tcGcoP0lfD23tuLGBH1bl4eYqiDOu1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQMMS-0002C5-MY; Fri, 01 Nov 2019 02:08:24 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQMMB-00028m-0y
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 02:08:08 +0000
Received: by mail-yw1-xc41.google.com with SMTP id a83so1553204ywe.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 19:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=A/ta4o63hQ96fBCgzb5RGLjMhlxTMZ+PcK5dvaw+Anc=;
 b=C/NqR3xxIKG4023ZzRSgbk9XuoVpmk3xyEfEYwHqucSMXZYPUKg00oCcEmNmSjoPdq
 m6MafLbKbrsEgumWyIYlHPe99C9Hz4w//Rj9WvnYYpaDmEjfeCw2EeTkZPYvKZq5HyoF
 gHGgl6NLx+bfgPniQGFNrqJtrKZIqzNq4TQfRrf6OvSFO6d8io5xr/dUcjz38TfDWYqE
 deP9D6rYbVTI7ueuTY2YUeoHJe1++HLc/NMt9EF/YyBG5leyN4w6gL4PMVErIXo/OxJZ
 7gRDQNMnBDE2UsqBvZ1y5yY6WeP4514WIK9HOADV1vw9P9IE3XY7fqZYE9TlDcSmLe8d
 YN3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=A/ta4o63hQ96fBCgzb5RGLjMhlxTMZ+PcK5dvaw+Anc=;
 b=eMm6bOWTXIFKt+1e09MtpdSOe7VxRsdpPrWEXaIiCDJLmh0vkEgqHf2SLRfPbbw00A
 oAvqfmA3tLIYccvcHOBh1wJiwqhCJjt3sfugxO/a9Em9hoOM3/rLNUablb4VqWjnUJsn
 2t0VCxJsKZIZQbWb37jWxCLGrTr9VRoEHEYZMAGCNOQwPIzHOUZggU4VRdKsgUz3ujhn
 rD2ad5WF6eEbXfvK/zj/wrzXaOedjupvPuFa9KKnihBvadopQyAcXSQwob2zsYiIalaU
 7YRg0hrZ4M0sc0Wr+UybOEgW4eLwEkXOZR7LrTCBd1eXDzpsZhFjR7I+EKtayDCmgkWK
 n8JQ==
X-Gm-Message-State: APjAAAUtu1clT9UQ3Trl6Jx8dpTStmpnH0nmgrm/OZAk/qB+zkc9QmZW
 Xe3bip2juodG+LK2p4+MfPTPbQ==
X-Google-Smtp-Source: APXvYqyxpCWVDWsP19hRctcE2z7o5p5vtcKC3m638NJPhzYms8Uqdwj7fvtQQudg7Ye0vVxrqI3+2A==
X-Received: by 2002:a81:5b46:: with SMTP id p67mr6513588ywb.228.1572574084527; 
 Thu, 31 Oct 2019 19:08:04 -0700 (PDT)
Received: from localhost.localdomain (li1038-30.members.linode.com.
 [45.33.96.30])
 by smtp.gmail.com with ESMTPSA id m5sm3762076ywj.27.2019.10.31.19.07.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 19:08:03 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mike Leach <mike.leach@linaro.org>, Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Coresight ML <coresight@lists.linaro.org>,
 Robert Walker <robert.walker@arm.com>
Subject: [PATCH v2 0/4] perf cs-etm: Fix synthesizing instruction samples
Date: Fri,  1 Nov 2019 10:07:46 +0800
Message-Id: <20191101020750.29063-1-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_190807_129857_0985EF5D 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series is to address the issue for synthesizing instruction
samples, especially when the instruction sample period is small enough,
the current logic cannot synthesize multiple instruction samples within
one instruction range packet.

To fix this issue, patch 0001 avoids to reset the last branches for
every instruction sample; if reset the last branches when every time
generate instruction sample, then the later samples in the same range
packet cannot use the last branches anymore.

Patch 0002 is the main patch to fix the logic for synthesizing
instruction samples; it allows to handle different instruction periods.

Patch 0003 is an optimization for copying last branches; it only copies
last branches once if the instruction samples share the same last
branches.

Patch 0004 is a minor fix for unsigned variable comparison to zero.

To verify my changing for synthesizing instruction samples, I added
some logs in the code, and reviewed the output log manually for
instuctions samples.  The below commands are tested on DB410c board:

  # perf script --itrace=i2
  # perf script --itrace=i2il16
  # perf inject --itrace=i2il16 -i perf.data -o perf.data.new
  # perf inject --itrace=i100il16 -i perf.data -o perf.data.new


Changes from v1:
* Rebased patch set on perf/core branch with latest commit 9fec3cd5fa4a
  ("perf map: Check if the map still has some refcounts on exit").


Leo Yan (4):
  perf cs-etm: Continuously record last branches
  perf cs-etm: Correct synthesizing instruction samples
  perf cs-etm: Optimize copying last branches
  perf cs-etm: Fix unsigned variable comparison to zero

 tools/perf/util/cs-etm.c | 137 ++++++++++++++++++++++++++++++++-------
 1 file changed, 115 insertions(+), 22 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
