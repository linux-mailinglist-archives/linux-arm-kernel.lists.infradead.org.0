Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C39150060
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 02:53:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tvoJZllsX+1tiP+Aim08Rngl9W2sgcaSsMxTaOSk/TQ=; b=Wr/bDUXfmEQ23TlRMyx5nQ/MT7
	w7QzBtXbOI/jCoAljvfbuZNYLMyAwl0da+qqmx61rqJ6VJIsPiT5R8XSqX1tCTmmP1xBNKJEpuRwN
	o1Y2oQ1RD3W4XE0DRDkpQ29H4mAEsN8f3Qof6wK7CLAOb0ACl3Nf5cGlSqpLZ/m3KC1bHdj1kmvoJ
	PN3lGec/t+vOTpPuauf9qpQwMxMYFT9Y79l+S2OzsoFwQar+BE0M2ugdzkVWN3Z8KkScg0h6J07jR
	ua0X8UlnBlLqXUv0a3TuHl2zm5Q1m6jj6MbX8FFJjjKtg8w6IzjEhJxcbvaIEbFg5h8dIoPfvChMy
	ou2DahRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyQvI-0008BJ-Ei; Mon, 03 Feb 2020 01:53:12 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyQut-0007x9-6Z
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 01:52:48 +0000
Received: by mail-pg1-x544.google.com with SMTP id 4so6928436pgd.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 02 Feb 2020 17:52:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZtN+IROjimT43JRsQbvVHYEPbYXMl/SFxC9S1PE8YyU=;
 b=Y/IXNJ12F5S6PUOYu/CZK9rJNDd7h11FIFLQ6fKVTLwqXoftlCYeAQGUyGJtZSi6pB
 Q/7W679nH+eykxUvg09VFHGK4rfp5+qGQqh9QwLW4I7l86iA5HcjqYP7ycxUw7v81ouh
 3fp/JKM1xdEPaP6ffdUZgYtbR96NiLt8DbxVnoWFb7ctHHxb0ub6mrlGRV7gk6MvcoYv
 SYPEs9ZPpjGVjWauFH3wBvTfNGGWt8YhXYPm0Ga/pVKN+IwpabPHTW4th67NK6/r2KzL
 +McB5oY0WhM9f9TW6LyiAT3Bqp9VQJaom3LJ7NEBeH3lEb860qdeSqKCCWrciqTkNtyX
 wIww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZtN+IROjimT43JRsQbvVHYEPbYXMl/SFxC9S1PE8YyU=;
 b=Bfmm6Q36cbYKvFN1JwKAk6ssyMtND/OIsAXEVN86tB5fTFy9TzIF5qAsRkC3gMgPJ5
 8EzY9YiBFr9knHBOBPa1AJN/WFX9b1dpAuEkFWiOJIMUS9IJwND9BRGJe3gkb3Qs53ad
 DLWRYVRvukGAhuYUt/HJ4umWXy0TcI3eFV1GVR2XoehIZeZdUuaxzhRfy5iZXkHjt0Fn
 kD1IobJRPbY01fxhlys026/yT73pKWG173iu1WJlTpzCFfzMXOzB8GjfeqZt/L2rLFYj
 AEHpJX9P5stJ6+zFzY15wmAbMX1Q+6MhgrqiZcP8gYff63ZXjNEVGFjUzoIXcVUl16r7
 2E4Q==
X-Gm-Message-State: APjAAAUoPfPDQp8BdGqUgX4A5yeZpSv0rw0zcTuWuNv4qX54cRmHyrPD
 aGPt74WkuRTodqkooI3uY/rR9A==
X-Google-Smtp-Source: APXvYqzEiR+0CTK6680g0QGF4i1TNS4yfGIjltdxtCdltKTWyfljfcUy9Xmi9qNXIujbFFNHEv8fkA==
X-Received: by 2002:a63:5962:: with SMTP id j34mr23492237pgm.421.1580694766237; 
 Sun, 02 Feb 2020 17:52:46 -0800 (PST)
Received: from localhost.localdomain (li1441-214.members.linode.com.
 [45.118.134.214])
 by smtp.gmail.com with ESMTPSA id y38sm17348308pgk.33.2020.02.02.17.52.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 17:52:45 -0800 (PST)
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
Subject: [PATCH v3 2/5] perf cs-etm: Continuously record last branch
Date: Mon,  3 Feb 2020 09:52:00 +0800
Message-Id: <20200203015203.27882-3-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200203015203.27882-1-leo.yan@linaro.org>
References: <20200203015203.27882-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_175247_271642_EED3D1F5 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

Every time synthesize instruction sample, the last branch recording
will be reset.  This is fine if the instruction period is big enough,
for example if use the option '--itrace=i100000', the last branch
array is reset for every sample with 100000 instructions per period;
before generate the next instruction sample, there has the sufficient
packets coming to fill the last branch array.

On the other hand, if set a very small period, the packets will be
significantly reduced between two continuous instruction samples, thus
the last branch array is almost empty for new instruction sample by
frequently resetting.

To allow the last branches to work properly for any instruction periods,
this patch avoids to reset the last branch for every instruction sample
and only reset it when flush the trace data.  The last branches will
be reset only for two cases, one is for trace starting, another case
is for discontinuous trace; other cases can keep recording last branches
for continuous instruction samples.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/cs-etm.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 3dd5ba34a2c2..3e28462609e7 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -1153,9 +1153,6 @@ static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
 			"CS ETM Trace: failed to deliver instruction event, error %d\n",
 			ret);
 
-	if (etm->synth_opts.last_branch)
-		cs_etm__reset_last_branch_rb(tidq);
-
 	return ret;
 }
 
@@ -1488,6 +1485,10 @@ static int cs_etm__flush(struct cs_etm_queue *etmq,
 		tidq->prev_packet = tmp;
 	}
 
+	/* Reset last branches after flush the trace */
+	if (etm->synth_opts.last_branch)
+		cs_etm__reset_last_branch_rb(tidq);
+
 	return err;
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
