Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B970CC8FC
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 11:17:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aZ7O5lg6SJOWFrTmSbUSX7D10tm2S4KfZNuMFUyOIm4=; b=m9FP22BzWQqpjHspwzeaVUB8dF
	VUCVcAqEofVp6BKmMQVAXl1kLe8pCtG3XBeU5BODqNkTtPIdWDkKZmKtuarSLwUmqGuyAQTyTg0ni
	bm0ah0/Ukpl7sCcstBIVxqgf8y3Wl/aWl3lUSNn4Vir6igN6VGgs8mYrpKw2IlHeSvWyNEOTcAdPN
	UUfnQpxXM0PSTKUuhLnpqPPPTs7t6YEMuiv/NApHLWn9IYeI6g5B4ErhKO+Cd6quRRSEowM57lB5E
	NpjU4ujXoXCp7mY1iVD8uoCEZVbtn6fPOpD6mviM1tOuw9HVE/Wf+zDfBdeJvSCiSFlG7hSQblvTP
	CMkGK05Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGgBq-0003l8-J2; Sat, 05 Oct 2019 09:17:26 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGgBB-0003WU-2S
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 09:16:46 +0000
Received: by mail-qt1-x841.google.com with SMTP id u22so12099047qtq.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 02:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=5GP/KNw0NThi+xFyZyJwWXss0a8iqQMvGrS8dpQzhPU=;
 b=SEchh8dj4qcptxwJcOAo15ZrP0Q38g28a7exn9iyxXlFmNigonCzvKJmR+iRVs6LuZ
 pe8vklnaBfIYulObSewcnQQrqBuQJxJ/I2cyRFnh6KS/FnGui180xTOP+SyKzW1iYnlj
 b8+1/rcEni7xHn3+XNgwn8KKOMfaJMNhwG+nOI08nLatBTQSM5ZkymsT7UYadFZ2DsSN
 MvNrj0HDFMuVxFYIEnrKrucUC0Hh0WP5clNjK8Kgi1JpHRsbonXOoluIQqsOgn6FecLj
 rr+pjsUMIgoJfiL40lAgaeKoosOETz0+sdryR0vpnXdwZxjelYcPk80c9bX0jldErFH5
 4+cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=5GP/KNw0NThi+xFyZyJwWXss0a8iqQMvGrS8dpQzhPU=;
 b=It8siLGRh/cBu9QftzIk3y7oe2YWAPn4UTsliWNLlZ+NE3wO3vUcWDmjnlNTV7Pyb+
 WcjW7aUFmOJqIxDAw1sBJnaeNkmE/xz/0PBew+pftachTebEMOlPBQfbiTHUG5d2xJ6P
 KcyAZ4iILnVfNepQFu6JptYoZ+wd1b1CMejTwroB49gahW6VUnCSbvgqqQfTiB+Y3Geb
 QXEfaeN5lOhBhxQ0jmpqBlvJlYqttDnHBDC4hDycDgFeOLqB/G/IQSjkJ6V5OqY7DUtz
 QBgkQlGugskIZkYT3UaRnLzMDWLdPU+aAgn4r9LSARXL4QPhdeBF7n4Wrh24cb2xGW3T
 zG9g==
X-Gm-Message-State: APjAAAXCfDc1KxdOvPfzjfjcuTD0STWvtLcPPHEd7pMlzbDm+j7BIIzp
 6dd6MmpElYSEx+TTWy0UR/LG9Q==
X-Google-Smtp-Source: APXvYqzhobfhJR9iZNT/7J/wkRNUnhC1SUXWRX+wzS4iEfjknKRdpnGJm4K35HqAbQl+qFW8jWsGxQ==
X-Received: by 2002:ac8:1701:: with SMTP id w1mr20870585qtj.24.1570266999647; 
 Sat, 05 Oct 2019 02:16:39 -0700 (PDT)
Received: from localhost.localdomain (li937-157.members.linode.com.
 [45.56.119.157])
 by smtp.gmail.com with ESMTPSA id u132sm4384621qka.50.2019.10.05.02.16.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Oct 2019 02:16:39 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mike Leach <mike.leach@linaro.org>,
 Coresight ML <coresight@lists.linaro.org>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>
Subject: [PATCH v3 1/6] perf cs-etm: Fix unsigned variable comparison to zero
Date: Sat,  5 Oct 2019 17:16:09 +0800
Message-Id: <20191005091614.11635-2-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191005091614.11635-1-leo.yan@linaro.org>
References: <20191005091614.11635-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_021645_165391_F10F3059 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
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

If the u64 variable 'offset' is a negative integer, comparison it with
bigger than zero is always going to be true because it is unsigned.
Fix this by using s64 type for variable 'offset'.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/cs-etm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 4ba0f871f086..4bc2d9709d4f 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -940,7 +940,7 @@ u64 cs_etm__last_executed_instr(const struct cs_etm_packet *packet)
 static inline u64 cs_etm__instr_addr(struct cs_etm_queue *etmq,
 				     u64 trace_chan_id,
 				     const struct cs_etm_packet *packet,
-				     u64 offset)
+				     s64 offset)
 {
 	if (packet->isa == CS_ETM_ISA_T32) {
 		u64 addr = packet->start_addr;
@@ -1372,7 +1372,7 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
 		 * sample is reported as though instruction has just been
 		 * executed, but PC has not advanced to next instruction)
 		 */
-		u64 offset = (instrs_executed - instrs_over - 1);
+		s64 offset = (instrs_executed - instrs_over - 1);
 		u64 addr = cs_etm__instr_addr(etmq, trace_chan_id,
 					      tidq->packet, offset);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
