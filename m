Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9EA515BBF4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 10:44:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TBEa8atFCTRUNR7P53YN5fREaEGHAR+PPqmaY4y7CXI=; b=FXnYlUIstM+RGBgW3UDs/RFfHU
	GDbWt3ryulaDE2FNKrHA1IMAMxbgIPZ495aqDxkcHBp819PR06PpkvJwgBVGI+sAXWb5o2OG0LuXO
	B3Lw81n34ioCnatp1sygI/ZYnW9m4AIm6EPDX+TCoZMenOe24sCfvqhftAJZNjf6KuRru6cDn+tdl
	jZ0QhK3RffTGLgpnt+OK/9wSr3PCGROuWLVwTAzU7s/1y4JThcau4lc4mBafELxuxDX+kdppzbmqs
	po8xfcrUpGT9+E5JjtDvwFYEWChqNqC+mCGwtUvCqIXTV74qOt0pE0nZm1o/S58pjnDKeHGpdTiOm
	oXBnMUBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2B2p-0000Bs-Bv; Thu, 13 Feb 2020 09:44:27 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2B1r-0007yn-PN
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 09:43:31 +0000
Received: by mail-pf1-x441.google.com with SMTP id 4so2793496pfz.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 01:43:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rnMtiz3/CgXO54DRdrz4I+ZEIJZQA5oMvmzvY1V4tLU=;
 b=nNaASGbpcyA/9zyOeTcUx5XdEA1ycNW6vpkrnXkZTTKm1eSCnIbLSlf8wPfhylP1ER
 PpL2Z6yYPtFDsdKU4kZAb9Y6/a8XnXo67psfg8ynOJp+DZtlXalspNE7GS3Km0v1Y1xm
 bXf/TSes3k/ym47UMQfyqWxijpaLzbjY7+BQSPwB7glfpF2H1OLVVtwSEPPB2RZYqxFi
 TesxiA27IILgVeKGPaUguw3Ygk4LlfdBh9piGIiLT5Hn6aMXFLoYff8K8YJgY6qo2ymb
 1MU7HGTIqvgfugVI73jt0znV64nWlVveIez4P1ptf0j8l1etvnbkRy6Ik+1w0lAJI4bI
 qWrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=rnMtiz3/CgXO54DRdrz4I+ZEIJZQA5oMvmzvY1V4tLU=;
 b=qfeQAtt+T/2G5PU2AoPpBmsXQpGjFr0GKHYWTi8oHYlQUqWCImDnZwlftl34XTJza0
 kxWMsD7ixsn+EYIz3I8nQCJoS7rzY7yxCqpbXtku++m+LcCnQ8zwY4l0hlhuutQYlRXc
 UsptLEzZfL/J9xguAOR0+EvVLb3GGs30ljjEjC9tiYOfyH1voXJr1PCt1qxodTwY8/94
 Vc9++Km0MmBcHdua/rRlVbxJOzYluSgXjGqRLwSL2N/8ufVFUAUTwa1+YBBksnaW1GLS
 QBA0SI/ibqbqPlixb8mOiGaHHWCir3ARHFg2IdNEeEvZagpJ3rY4gnTJWNIEef2FymA0
 Qc0A==
X-Gm-Message-State: APjAAAXO3OLuPhu1DGlKeO1Vcsu+GGzUeLGH24YcZRJNfra89eA2160v
 5zEF2lTaLV+mSKCLODSf5zs3UA==
X-Google-Smtp-Source: APXvYqxYxedQckM5TgeRc/S2SpKyRfEZ1qP2Q7dKiYJa4K/q5fKHHR2QcJID9iGeHnn4omLEnVYg6w==
X-Received: by 2002:a63:9919:: with SMTP id d25mr16807304pge.22.1581587007240; 
 Thu, 13 Feb 2020 01:43:27 -0800 (PST)
Received: from localhost.localdomain (li1441-214.members.linode.com.
 [45.118.134.214])
 by smtp.gmail.com with ESMTPSA id 3sm2310277pfi.13.2020.02.13.01.43.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 01:43:26 -0800 (PST)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mike Leach <mike.leach@linaro.org>, Robert Walker <robert.walker@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Coresight ML <coresight@lists.linaro.org>
Subject: [PATCH v4 5/5] perf cs-etm: Fix unsigned variable comparison to zero
Date: Thu, 13 Feb 2020 17:42:04 +0800
Message-Id: <20200213094204.2568-6-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200213094204.2568-1-leo.yan@linaro.org>
References: <20200213094204.2568-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_014328_483209_C3B3281D 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The variable 'offset' in function cs_etm__sample() is u64 type, it's not
appropriate to check it with 'while (offset > 0)'; this patch changes to
'while (offset)'.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
Reviewed-by: Mike Leach <mike.leach@linaro.org>
---
 tools/perf/util/cs-etm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index aa4b6d060ebb..bba969d48076 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -962,7 +962,7 @@ static inline u64 cs_etm__instr_addr(struct cs_etm_queue *etmq,
 	if (packet->isa == CS_ETM_ISA_T32) {
 		u64 addr = packet->start_addr;
 
-		while (offset > 0) {
+		while (offset) {
 			addr += cs_etm__t32_instr_size(etmq,
 						       trace_chan_id, addr);
 			offset--;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
