Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CED2410C73
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 19:51:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=E1PtMfje7KYzmkCoIno/ecmfVXaVDFuBveSDT/U0sE4=; b=BAXGcakCw23su3X6vYCuWsR1ua
	eRtdO10zgUhHKP/yiMGe9NBJkZk+lGTMnDqwMFpo8gaURHvMpDDKk5FI9nTRopNcNfImU+Tz4g5G1
	Rah25HvXDRNmOLDUradHsXIh9qgmZodkx+yxmmlplfIBkRwxDQossMnlsY6TRtFmfy89vwl/V2G/B
	4URksgYfrV8dItegjaXnactwDot96hxHV4ufYuVVQCXakncVsrlnLAUh5gPkZS0dWGVwoDcLtdLLw
	aHFdXWn+LwMn4q2AEBeTIVt/7M5f+8GZEQTmCx4MSnVXZONvG/dCNlqIwhn0k4IiohrReSS41kk7y
	7has5qvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLtO7-00050N-Kv; Wed, 01 May 2019 17:51:23 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLtNi-0004eI-A1
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 17:50:59 +0000
Received: by mail-pg1-x542.google.com with SMTP id h1so8608514pgs.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 10:50:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=kd687xUfwu2tTznDRHQYY7AXXvI5mbA8Lm//P4XllGs=;
 b=TdQLrpAxbsn7JSIJqhHxxBvYgGNzuUXavpKLvm1grU4ZRRhw7JWRRMbWIoiTF3fP1O
 c+I1WSvaw4TkPLsnZRB/v10bmDIV1NjgQSyglyaZXbyFo3W9URSDuxec4lu1JyhkehZf
 YtowvaMMisC5FNl+UchX0C1bLwrZtNhz3BE5L/5d0xyMzFrtS7vGqULHs7ryrGnqIeY7
 0ONmVoyslv6x9nYY+UwDbxJ5X2iQ1F6siObRGNP3YhikO27TDketjkOKMZxQkAqBtbRK
 0++Z5PHj6Sg2EEDPii2B89ve9JHvVYFfdNPtrTUGNea2nXRZ+oZq1ui7ED2KUsK+5b0c
 pN1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=kd687xUfwu2tTznDRHQYY7AXXvI5mbA8Lm//P4XllGs=;
 b=hri7VdmRcbfBCHMA6FN5o4iK6+aY6/hLvNVydQ+38VbRWm62bQwmVgYBaIdfHdT8he
 PhTAG+Rja3HRmoiknHxz6gZ3c/fMS2kxxs3XHgAEv/3AjHrjkJi7ZXOa9nXujIjB9WvH
 E/GUfm/PYBDD6aC5bfH11SUCK1Mudr6ah02mVSOEXOgbCYslOuHk9kUSe9QRWBA3gb2R
 sDp8IfLmsZurKmArDDbb9PaMp59MT5NMTP+mnWNebGEX2Iuv8iRSLlzq6zALuh/gq8LK
 i/2RQiUvhdhQFtuIezfMjbBrKciJ9QdahrTbp4foj91viVp33lOnArPil4sEou1wLp9o
 GGlw==
X-Gm-Message-State: APjAAAVq5n/kIUSs0rrWoOaPFaBQXYqS/2fMZLGpzX7rEDtjHRhmBlaw
 B+Z2BkNILlkX+YMeiHQ6pQBHrGGuX3I=
X-Google-Smtp-Source: APXvYqx3YWQtgjwkex5mg+Droum0Eqo+dOHJSDMk6e2/4G89/M8qZ7uI5GfHKW27Ymk6/7UiBg0DeQ==
X-Received: by 2002:a65:5106:: with SMTP id f6mr75725834pgq.253.1556733057477; 
 Wed, 01 May 2019 10:50:57 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id h189sm84126158pfc.125.2019.05.01.10.50.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 May 2019 10:50:56 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/5] coresight: tmc-etf: Fix snapshot mode update function
Date: Wed,  1 May 2019 11:50:49 -0600
Message-Id: <20190501175052.29667-3-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190501175052.29667-1-mathieu.poirier@linaro.org>
References: <20190501175052.29667-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_105058_414518_1624D748 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: corbet@lwn.net, alexander.shishkin@linux.intel.com,
 coresight@lists.linaro.org, suzuki.poulose@arm.com, acme@kernel.org,
 peterz@infradead.org, mingo@redhat.com, mike.leach@arm.com, leo.yan@linaro.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When working in snapshot mode function perf_aux_output_begin()
does not set the handle->size because the size is expected to be
deduced by the placement of the "head" and "old" pointers in user
space.  As such there is no point in trying to adjust the amount
of data to copy to the ring buffer.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-tmc-etf.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c b/drivers/hwtracing/coresight/coresight-tmc-etf.c
index 7694833b13cb..d3025634f5e6 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
@@ -497,9 +497,11 @@ static unsigned long tmc_update_etf_buffer(struct coresight_device *csdev,
 	/*
 	 * The TMC RAM buffer may be bigger than the space available in the
 	 * perf ring buffer (handle->size).  If so advance the RRP so that we
-	 * get the latest trace data.
+	 * get the latest trace data.  In snapshot mode none of that matters
+	 * since we are expected to clobber stale data in favour of the latest
+	 * traces.
 	 */
-	if (to_read > handle->size) {
+	if (!buf->snapshot && to_read > handle->size) {
 		u32 mask = 0;
 
 		/*
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
