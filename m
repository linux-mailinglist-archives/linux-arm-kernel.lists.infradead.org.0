Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6914369D87
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 23:14:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yRLuOfZFKCLwdpMc+fXeZcfStGjeYwUcOPBvtfagefY=; b=XYDMRm8zoqC07/
	9+VbTLM40lD8lHg7U8O+F1Z/mUIWvm2N/Jg+5PK7xRimmfuwlTxkv8cW0uMjWo/MNXAWQxyfzTiSz
	b/gjq7CQxzxsk+qBgOAKRZWhkeb0LoHyIfFsOjm+PHX8l57jPOBM2Yzc+vAyQd+VZxDyAus98CeWL
	L7cyt2XWX73n2pGf2K2G97JsswRIRQqf0EzRQnp8OGLo5rF3ZOVFjYfArUc2QrktYL4A7oooGgwH7
	fNc3m1V768rIxaBmFvTxsh81Rmnf8wl8Ly9FArhOy2H2LvZHp2lQd7jHkSGOEbxY3nnSYV2Ti2wao
	FQ1ohHjctPwc/QAVUQuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn8Is-0000xg-52; Mon, 15 Jul 2019 21:14:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn8Ig-0000xC-7q
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 21:14:23 +0000
Received: from quaco.ghostprotocols.net (179-240-129-12.3g.claro.net.br
 [179.240.129.12])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8E3AB20665;
 Mon, 15 Jul 2019 21:14:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563225261;
 bh=njW0bB1LOwlsjkJq3l6wKORuSwdcELkmmTcNsV37EB0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=1mSZYFK5WSO+eBV1AXjSMPlXe3f9G1xVTSpAdyKImqwH8yxwXwboLiioFoUWpcYRT
 2N4IfAKCn+D5xbBxRi80oZPfWaFaJXGTqVumMeNrfgJpHrwwgHKfO68Ufkf6JYhXyv
 xtb63FWRM1B0dIJjJVVF8Eun3BTRHDA9sXDCyiT0=
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 25/28] perf cs-etm: Remove errnoeous ERR_PTR() usage in
 cs_etm__process_auxtrace_info
Date: Mon, 15 Jul 2019 18:11:57 -0300
Message-Id: <20190715211200.10984-26-acme@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190715211200.10984-1-acme@kernel.org>
References: <20190715211200.10984-1-acme@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_141422_301048_25708DF3 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Arnaldo Carvalho de Melo <acme@redhat.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki Poulouse <suzuki.poulose@arm.com>, Clark Williams <williams@redhat.com>,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 linux-perf-users@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Peter Zijlstra <peterz@infradead.org>, Jiri Olsa <jolsa@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: YueHaibing <yuehaibing@huawei.com>

intlist__findnew() doesn't uses ERR_PTR() as a return mechanism
so its callers shouldn't try to extract the error using PTR_ERR(
ret) from intlist__findnew(), make cs_etm__process_auxtrace_info
return -ENOMEM instead.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Suzuki Poulouse <suzuki.poulose@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Fixes: cd8bfd8c973e ("perf tools: Add processing of coresight metadata")
Link: http://lkml.kernel.org/r/20190321023122.21332-2-yuehaibing@huawei.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/cs-etm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 67b88b599a53..2e9f5bc45550 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -2460,7 +2460,7 @@ int cs_etm__process_auxtrace_info(union perf_event *event,
 
 		/* Something went wrong, no need to continue */
 		if (!inode) {
-			err = PTR_ERR(inode);
+			err = -ENOMEM;
 			goto err_free_metadata;
 		}
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
