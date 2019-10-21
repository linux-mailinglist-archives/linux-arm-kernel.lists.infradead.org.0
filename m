Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 137A9DE57E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 09:48:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=z0bshTcymt8U4s7aJKRLGe/SByKFN5Kq7Dn3x5u4Aos=; b=Z9u
	MYLBdCkp5r4BRHfk0D0Z3JNi9jHZYiTmDJMhMPIRqJ1zenA71DCqDd0Ybr+vJm3kjeP+iypEuKnKw
	NfMzU1kyaQGNr4Zajbf6rjjCY68hf0tqu/402pqCl2ySsVKCvjH5Vq8lcgsmG0il+ttH+5DE1FMAI
	u2nIdAiSqOnVOC5LrHKpuMbcECIOzL9fWYJxxlwkp/NnEZxS5tbIPkH3Ljs+pD7IpoNCP4pL9s4Us
	vY9ADgDyBAjeZro7m/JKSGdk3okNG59kY8pYyQpm4eTkWLQcln8wkkPYSNTa2KjAv9ySxKMFyt72s
	sAGzM70J0xI9KrwVBf9JWFcESMZqwkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMSQe-0001by-FF; Mon, 21 Oct 2019 07:48:36 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMSQU-0001bJ-1F
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 07:48:27 +0000
Received: by mail-qk1-x741.google.com with SMTP id w2so11682293qkf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 00:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=JxBBg9Ywns2KSENNzDozRimWLdlAzERjFMqNNveI+HE=;
 b=Whs5Oqw3E1BNGGJx9IwRUe6mYoYJgqIDXMrLa69wGTimwenlmPnyxkdD96ImvDhgnz
 QNv9x87GEYuvI72Ufu+XBTd0z4tanRKZdRfzl7rAJYHLGZWm7umbbi1lICwM0bYbzlFi
 1V6vJFo/vPS2wYYa/HaEhP0zxvJBmT63OA1/gMqCjtJNRWrCBxXpnTjkEAUqquUln5j0
 +wPnClf9WTCtGcbTgdUSxzPkITq7gSqIX6gRERMY2f73wyc2hMZrBciki2PO3CEfmABL
 Bf1Mgm1iT1HyrJByLiYHMTlzHnDhnDKqvKFaqmjAGzkn8ctfXPELU1TpewmmBXF/b+X1
 P3mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=JxBBg9Ywns2KSENNzDozRimWLdlAzERjFMqNNveI+HE=;
 b=lD3cK+SmidDuvQ2DZQGTZG7FsDm2NR8T4Evj//8/QacsddQXJjZUpbyp8eaXRwKO8d
 9FphRPVU9OPaLqjT2L5IhU/UycIGCVT8VxWHI0+uDOXLvFR2KBS7w8uaiQRinhec6yPc
 tF8h7qyGairGJ1EzbBLQ7iQ6/f3Gpl0R3EdzIcz5FAHpVpC6beQG7fVQgj/n6c/spzEe
 bLiEjn6tLgWTIMxk1RjP98iRWRuSjFFOfohqH4ZvUSYaUN50FTtPjw0svrgllfA44DRX
 EBunze4KYK54p97/h9MsCgl9RRxqcJnn89re+7brR39Fu/B6GB2G/ppBYfJ4MTJqMGpY
 u/sw==
X-Gm-Message-State: APjAAAVfdnfF8dKRUWtUORuiOHweJeatIlX80HoQoQrf2gjSfRZsAWUo
 77tpvs19ITxoTDA2mOdondcp5g==
X-Google-Smtp-Source: APXvYqxoo8/8ejDNmP7miKhqcnWZEVADqLZQ00ERyOib7o5pAjWqGibbhSiVLUBXWrDkBggvtnjwWg==
X-Received: by 2002:a37:af46:: with SMTP id y67mr21443431qke.84.1571644104467; 
 Mon, 21 Oct 2019 00:48:24 -0700 (PDT)
Received: from localhost.localdomain (li937-157.members.linode.com.
 [45.56.119.157])
 by smtp.gmail.com with ESMTPSA id n17sm7980615qke.103.2019.10.21.00.48.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 00:48:23 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Coresight ML <coresight@lists.linaro.org>
Subject: [PATCH] perf cs-etm: Fix definition of macro TO_CS_QUEUE_NR
Date: Mon, 21 Oct 2019 15:48:08 +0800
Message-Id: <20191021074808.25795-1-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_004826_204676_00D81ECE 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Macro TO_CS_QUEUE_NR definition has a typo, which uses 'trace_id_chan'
as its parameter, this doesn't match with its definition body which uses
'trace_chan_id'.  So renames the parameter to 'trace_chan_id'.

It's luck to have a local variable 'trace_chan_id' in the function
cs_etm__setup_queue(), even we wrongly define the macro TO_CS_QUEUE_NR,
the local variable 'trace_chan_id' is used rather than the macro's
parameter 'trace_id_chan'; so the compiler doesn't complain for this
before.

After renaming the parameter, it leads to a compiling error due
cs_etm__setup_queue() has no variable 'trace_id_chan'.  This patch uses
the variable 'trace_chan_id' for the macro so that fixes the compiling
error.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/cs-etm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 4ba0f871f086..f5f855fff412 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -110,7 +110,7 @@ static int cs_etm__decode_data_block(struct cs_etm_queue *etmq);
  * encode the etm queue number as the upper 16 bit and the channel as
  * the lower 16 bit.
  */
-#define TO_CS_QUEUE_NR(queue_nr, trace_id_chan)	\
+#define TO_CS_QUEUE_NR(queue_nr, trace_chan_id)	\
 		      (queue_nr << 16 | trace_chan_id)
 #define TO_QUEUE_NR(cs_queue_nr) (cs_queue_nr >> 16)
 #define TO_TRACE_CHAN_ID(cs_queue_nr) (cs_queue_nr & 0x0000ffff)
@@ -819,7 +819,7 @@ static int cs_etm__setup_queue(struct cs_etm_auxtrace *etm,
 	 * Note that packets decoded above are still in the traceID's packet
 	 * queue and will be processed in cs_etm__process_queues().
 	 */
-	cs_queue_nr = TO_CS_QUEUE_NR(queue_nr, trace_id_chan);
+	cs_queue_nr = TO_CS_QUEUE_NR(queue_nr, trace_chan_id);
 	ret = auxtrace_heap__add(&etm->heap, cs_queue_nr, timestamp);
 out:
 	return ret;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
