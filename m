Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4DCA29D34
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 19:36:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VttRSLiEE0LtuPSsqDCakK58E1GHEYUCEP4zFVD3p+c=; b=DAhiF6VUY4YNWV5ygPuoXAnPE4
	JSXjoqsUk92Hinv5RDRJRREhX9z+hRUPHgKyTd7gePXeNLjjJe0gVglAMGVqL43r0NUDvTV02sLnf
	KWYaVLDZwF/GPXfgVgGh+us1F1wUpZbX9pw63JeR0Ks9jgOFKDeWXoOOAy2i/ybxlYy5SdEUodlb9
	MIGKN2rEKIdN22fmGhAmZIAslnOK9rhQotNbv2c4Owe9ncWkUyeH9tCzGd9oLbDfkJAF9JXSKQT08
	70gANLTj2ClQchD2U7/xT7d7kvuGR7C1MdkkJ0uHS8N1zgrr5d9a8iVkFm5F8jaKWZvepBgdDCSci
	H7qEMphQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUE7e-0002Z5-EF; Fri, 24 May 2019 17:36:50 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUE6C-0000v0-SQ
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 17:35:26 +0000
Received: by mail-pg1-x544.google.com with SMTP id t1so5427739pgc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 10:35:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=7YTfrf6ViED9PHS/WoXTw1GGLuSsLDg5zA9R4pOhAT0=;
 b=m9E8LQQ0ybYokosZ3FSWl1NYHaoqKBGO55JdtR6b2j3oJPAh2zWI/+9SV+B04nUOmw
 uFYT4ipZZ6J4Rm3Vly6dQxTffTpuUeitYvmKsjHeXGqajJvyeQTRtmo9IssPppm6kxrR
 JQ951ByVITyZUq/x2q6BWNBukN9XTjUCFiA2pr/+KbWsZ3p5qQK2f4resF+5uEN1ASS+
 Txv8DMke5Wiio4bPoYD5syR2CWeEX2VvAKnVQOu9ATh7KZNnoigkP20IU//nVD76sQ0I
 vg1txyvZrw4Zsl9BiwrFWCTi+w2yJx4fzmllJiZBakHyC+XFLlD3UiqBARB2cN3T+bQS
 RvLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7YTfrf6ViED9PHS/WoXTw1GGLuSsLDg5zA9R4pOhAT0=;
 b=cY8e1TNM2aC3cmvSXBgCjQsoeMMPRJh90uevjtZPwH+WaJTOcDqr0l8a6gcZj2HnRp
 lqZy75OJyc7PdEGW+zI1F43RDgjLcs/M8o/AGFvMZ1MARRvjLxnXVqhfiiYM8XaMxB4k
 i/wI6/MD+2PC0AXyakgsdlNpGVw4suzdhA7fTZ01ZZGq92lq+7UF4+7BHT3W8DIt2vdK
 MBeL8OUUXgGKq5gdA3QOfCewOGKpWBH2qziCVeJx4upCHmV9EaAxUU6J4cGZDfv0+H9V
 HnH+m0z45+g61jGyc5fFQnRW0anqLCCQXPg2aHpvrHWvqnbmhKHBvJ+kRMT1kHjA7uO4
 9umg==
X-Gm-Message-State: APjAAAXI9t4vcSUYrJzPnIPjrxCuB6ehizgk1nSgF28SMTl4bMgbAV0/
 r6NLBQ8l8iVfFf0Ij3sgDiEBjA==
X-Google-Smtp-Source: APXvYqyV3WL42bi9D41wkG05D+u93adpt/IhjVbA91moQ87g9r+rMF9jvPDc/IC8fJUZYHgjjwUKqQ==
X-Received: by 2002:a17:90a:1a84:: with SMTP id
 p4mr11101867pjp.15.1558719320267; 
 Fri, 24 May 2019 10:35:20 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k13sm2809575pgr.90.2019.05.24.10.35.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 10:35:19 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: acme@kernel.org
Subject: [PATCH v2 08/17] perf tools: Fix indentation in function
 cs_etm__process_decoder_queue()
Date: Fri, 24 May 2019 11:34:59 -0600
Message-Id: <20190524173508.29044-9-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190524173508.29044-1-mathieu.poirier@linaro.org>
References: <20190524173508.29044-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_103521_338150_72E48B97 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: suzuki.poulose@arm.com, peterz@infradead.org, coresight@lists.linaro.org,
 linux-kernel@vger.kernel.org, alexander.shishkin@linux.intel.com,
 mingo@redhat.com, leo.yan@linaro.org, namhyung@kernel.org, jolsa@redhat.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixing wrong indentation of the while() loop - no change of functionality.

Fixes: 3fa0e83e2948 ("perf cs-etm: Modularize main packet processing loop")
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 tools/perf/util/cs-etm.c | 108 +++++++++++++++++++--------------------
 1 file changed, 54 insertions(+), 54 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index a74c53a45839..68fec6f019fe 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -1578,64 +1578,64 @@ static int cs_etm__process_decoder_queue(struct cs_etm_queue *etmq)
 
 	packet_queue = cs_etm__etmq_get_packet_queue(etmq);
 
-		/* Process each packet in this chunk */
-		while (1) {
-			ret = cs_etm_decoder__get_packet(packet_queue,
-							 etmq->packet);
-			if (ret <= 0)
-				/*
-				 * Stop processing this chunk on
-				 * end of data or error
-				 */
-				break;
+	/* Process each packet in this chunk */
+	while (1) {
+		ret = cs_etm_decoder__get_packet(packet_queue,
+						 etmq->packet);
+		if (ret <= 0)
+			/*
+			 * Stop processing this chunk on
+			 * end of data or error
+			 */
+			break;
+
+		/*
+		 * Since packet addresses are swapped in packet
+		 * handling within below switch() statements,
+		 * thus setting sample flags must be called
+		 * prior to switch() statement to use address
+		 * information before packets swapping.
+		 */
+		ret = cs_etm__set_sample_flags(etmq);
+		if (ret < 0)
+			break;
 
+		switch (etmq->packet->sample_type) {
+		case CS_ETM_RANGE:
 			/*
-			 * Since packet addresses are swapped in packet
-			 * handling within below switch() statements,
-			 * thus setting sample flags must be called
-			 * prior to switch() statement to use address
-			 * information before packets swapping.
+			 * If the packet contains an instruction
+			 * range, generate instruction sequence
+			 * events.
 			 */
-			ret = cs_etm__set_sample_flags(etmq);
-			if (ret < 0)
-				break;
-
-			switch (etmq->packet->sample_type) {
-			case CS_ETM_RANGE:
-				/*
-				 * If the packet contains an instruction
-				 * range, generate instruction sequence
-				 * events.
-				 */
-				cs_etm__sample(etmq);
-				break;
-			case CS_ETM_EXCEPTION:
-			case CS_ETM_EXCEPTION_RET:
-				/*
-				 * If the exception packet is coming,
-				 * make sure the previous instruction
-				 * range packet to be handled properly.
-				 */
-				cs_etm__exception(etmq);
-				break;
-			case CS_ETM_DISCONTINUITY:
-				/*
-				 * Discontinuity in trace, flush
-				 * previous branch stack
-				 */
-				cs_etm__flush(etmq);
-				break;
-			case CS_ETM_EMPTY:
-				/*
-				 * Should not receive empty packet,
-				 * report error.
-				 */
-				pr_err("CS ETM Trace: empty packet\n");
-				return -EINVAL;
-			default:
-				break;
-			}
+			cs_etm__sample(etmq);
+			break;
+		case CS_ETM_EXCEPTION:
+		case CS_ETM_EXCEPTION_RET:
+			/*
+			 * If the exception packet is coming,
+			 * make sure the previous instruction
+			 * range packet to be handled properly.
+			 */
+			cs_etm__exception(etmq);
+			break;
+		case CS_ETM_DISCONTINUITY:
+			/*
+			 * Discontinuity in trace, flush
+			 * previous branch stack
+			 */
+			cs_etm__flush(etmq);
+			break;
+		case CS_ETM_EMPTY:
+			/*
+			 * Should not receive empty packet,
+			 * report error.
+			 */
+			pr_err("CS ETM Trace: empty packet\n");
+			return -EINVAL;
+		default:
+			break;
 		}
+	}
 
 	return ret;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
