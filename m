Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C733810C77
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 19:51:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XF4+mDuO86mb3wY40mNU6uQgLv0ynaTSR99eIxiCuZo=; b=BVGaGZG5O2yCygY9EeocZ2Taf7
	Ki5VwMaeayxAfyCgeqwNmWMMcZV6jZltd0IoAPA+SetQ4mlwIWx8IIi8F6Ia1ryVtId1RmEYZot6s
	WvC5p93FdsTaVDeKuUepanQ+rxv4f8Jpf/j1Aznr/oYnM8t1UbLiJQ+1avfE8CCKynbDuCJ7BGNDJ
	q/1iWerEeMMI+efT14goh6vmeFJRBlT70oNsy+e+K9FUULFoUT2cCpFjXAAc2u/p+22Mi3EyNE5dG
	K29ERsfgeSR8T8a4UDCg++U8FRdyi0U+1g/pjzmbRH4AR/jWyx6O6Vl1bKByJ+umrje3M7xpotnom
	08IxDTPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLtOT-0005SY-H4; Wed, 01 May 2019 17:51:45 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLtNl-0004hz-Vj
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 17:51:07 +0000
Received: by mail-pf1-x444.google.com with SMTP id b3so8934862pfd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 10:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GN4+0p/L3u2M+HZm8tAOQv4Zavm+OMyyNRfyf0dzvkc=;
 b=HG2RZ5WtsrGHNFuixMjTIy/E9G+nJ4rhlf2m91uxf6UXeb/JQWpiDXRhlVGj1dqYDw
 oSGrHNuZoIWzUnMrjXakrVzZSRWWJ56ezNC3FucdOpBMFe5DZL003CyjELfXS68dc6Nx
 z3isFZzEMdfZd48ozIkQn61RjIaFJ/TTEqjVQ1bKs/XdExjjHnzypV98/DoEaOzkUhGi
 OWBlDXaRCKOuOyWBYS989WahbU6GKJM4sRwE2voaZffpPmd6qGPj+LfGrMNW/84/4gMN
 dWFLmNc7GEMyeUJtFgVF/bEG0gjj6uIU7JofYTAp68TdAj+litdZyhGSaWiR0ZU8UiDF
 gLpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GN4+0p/L3u2M+HZm8tAOQv4Zavm+OMyyNRfyf0dzvkc=;
 b=Gqt0v9dXcU3MOmXhJ5gtcTOMf6yy6GotsJJ7uHqt3DB+Hsa9n7UYi+NgHh6w+qwZo3
 rAyjYF4uIZtpshfD0hfYLeMi+Ql3W4lGKqbp76miEg2jQ6Urd6fV3v+67UhXASA01XID
 BetdyfaPs9mqwMqRZx0bKUGYPR7EYPD4j7qjZ4loWe2Ry14sZCsZuKjGnyRxcuk5FRuf
 zXQRfH4sdENf2U5rjrheLtx3Oc3oseZCxrYbDloiaSyw5B+cdq2joVoNV+b/etE3qK17
 lEEra4US9PytbtEp9RyJx05L3e2AvHunD8jlpVuQdjZQC0y//I+wFuo9XIsh8qI/tUEf
 IboA==
X-Gm-Message-State: APjAAAVp6BpJhEOHfYxP9/3E8+pp+a1I32ULWMBjrt5FaqPL5tnSLmVn
 7yhzbGp8j2i5XhuwUwS7gxFkblfoJrE=
X-Google-Smtp-Source: APXvYqxZs/xTBlSjNg6yMNakfp8siAz7y2deSsjuERET4y1PUiynLfo5PfM5ZTTXd1ddkaUwFyw+SQ==
X-Received: by 2002:a63:8f49:: with SMTP id r9mr68233116pgn.306.1556733060968; 
 Wed, 01 May 2019 10:51:00 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id h189sm84126158pfc.125.2019.05.01.10.50.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 May 2019 10:50:59 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/5] perf tools: Properly set the value of 'old' in snapshot
 mode
Date: Wed,  1 May 2019 11:50:51 -0600
Message-Id: <20190501175052.29667-5-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190501175052.29667-1-mathieu.poirier@linaro.org>
References: <20190501175052.29667-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_105102_535536_DCB79126 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

In snapshot mode the value of the 'old' pointer needs to be adjusted when
'head' has wrapped around in order to get the latest information in the
buffer and be compatible with the generic AUX ring buffer mechanic.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 tools/perf/arch/arm/util/cs-etm.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/tools/perf/arch/arm/util/cs-etm.c b/tools/perf/arch/arm/util/cs-etm.c
index 911426721170..4e73fe1a6978 100644
--- a/tools/perf/arch/arm/util/cs-etm.c
+++ b/tools/perf/arch/arm/util/cs-etm.c
@@ -541,11 +541,19 @@ static int cs_etm_find_snapshot(struct auxtrace_record *itr __maybe_unused,
 				unsigned char *data __maybe_unused,
 				u64 *head, u64 *old)
 {
+	bool wrapped;
+
 	pr_debug3("%s: mmap index %d old head %zu new head %zu size %zu\n",
 		  __func__, idx, (size_t)*old, (size_t)*head, mm->len);
 
-	*old = *head;
-	*head += mm->len;
+	/*
+	 * If the last byte in the ring buffer isn't zero, the head has
+	 * wrapped around.
+	 */
+	wrapped = !!(data[mm->len - 1]);
+
+	if (wrapped)
+		*old = *head - mm->len;
 
 	return 0;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
