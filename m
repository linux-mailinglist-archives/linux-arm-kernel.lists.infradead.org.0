Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D24EBBE7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 03:09:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0QvaWjQxnvQAEWBXLMwZHEyTww12v6iUzgzmxnjc0/8=; b=JwDBvqLI4GtEmbcBefUzNpaIZw
	uQ7GQ8JEQA2t4OUi8A10VywZtkaDvz/y/f6XCs1upAN/07ENO3RyM64BoJ1F8SHq2kYG9FwqOepn3
	eeKo+MdwRWVvhtixI6AsQrXSvcWTxbaSp4wJqEJ+gGd06Il8waVOaFW5KuPdOWN6NOZTiactfv1T8
	DuqPBOJLUAUv3/1PGKraxIFki8NaxIQTdfdhiNNjiACvNEaIcxYgMvI1tQsqleZaFjJZKknGKgqcP
	lr71wC5BtKApQihk5t777ek515OrfOG6rl12xlBRLIICOjLVoBRzqsVekCXVotOTBC1/0wgvkso4s
	wPPqzRXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQMNb-00037C-1Z; Fri, 01 Nov 2019 02:09:35 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQMMX-0002QM-0x
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 02:08:31 +0000
Received: by mail-yb1-xb41.google.com with SMTP id h202so3296906ybg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 19:08:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+iIRtubR+3wcJynWU+Kes2QJp/E/y+xxgrhDiusBOkw=;
 b=NC1q5M8jluovAv+CJVmfUvLK4FahIG39LJ6l6gjbCZNa0UpX/mFDwNFqHQiy1rePxC
 /lbNlkIbyZL58s39+0Wb2t5W1VYQ6Y0GCUYYdttaWTpE8t46toe9NpguBwwHVVOSaw01
 +fvDyEdd3LOlUWQsIxhWRiNIxniYiHEyi04hLDNX7S/Rma6Ub8dSPdWBA3vKjwhZ2Nse
 PqomKFz8PSBasrKVgjJNsSp+eHqcpecI8MOiLr2G1mHF1PIPxkCgFkSilH+tM1D7QREx
 iAtGvPl+1b1RtFLTVvsNP+F19SDMMjmPa50SD3+5SFhh2FlphPLBnDYHBI5bc/oJ67eF
 gd1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+iIRtubR+3wcJynWU+Kes2QJp/E/y+xxgrhDiusBOkw=;
 b=BF4zD3b/S9L9tOfBJb8MICLqCnJ0Hv3aPiva7zQetWU1EtHYj3mQIZLeAo88jLRUQs
 otVV3LVhxgYGIN5hGW1Q4Wg11ffVeWaOdm/w8pnFL4g1KyA1bFe1iQltjHik442tk9Qi
 hdzBBE67CfFOTcCv+CJE2Q7ukJs1DrvSC5iZA7yCKbuwIRTad8UsQ57meOaebSmtwlO/
 W6Qtvs+zrz+bqjM+EkrU6GKG82iiNs3V+Q3qF3KkJ9iSgiBrxZCbH02IMveuiF3ivwF7
 DbEmeex8LxgTA3KUMOR6djOr21Wovxusv1mrMMJ5S8762peJsAjWK2+Su3HfOhv2RSqM
 V8ZA==
X-Gm-Message-State: APjAAAXXOZIFBV1NR95efw2ym7wJZJYyuRPqOL4Q5nUgR7FZ7+VgyCVB
 aTv6qHkGWxqeO9gScCDLOXAu8A==
X-Google-Smtp-Source: APXvYqz424xHGG16+/K9JPBVe1fOQq/35yq0LWtrtLqUcROwmuCiXiEielnF0h1UJtanrtLPpBZZZA==
X-Received: by 2002:a25:c008:: with SMTP id c8mr7402086ybf.318.1572574106466; 
 Thu, 31 Oct 2019 19:08:26 -0700 (PDT)
Received: from localhost.localdomain (li1038-30.members.linode.com.
 [45.33.96.30])
 by smtp.gmail.com with ESMTPSA id m5sm3762076ywj.27.2019.10.31.19.08.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 19:08:25 -0700 (PDT)
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
Subject: [PATCH v2 4/4] perf cs-etm: Fix unsigned variable comparison to zero
Date: Fri,  1 Nov 2019 10:07:50 +0800
Message-Id: <20191101020750.29063-5-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191101020750.29063-1-leo.yan@linaro.org>
References: <20191101020750.29063-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_190829_247405_DDD942EE 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
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

The variable 'offset' in function cs_etm__sample() is u64 type, it's not
appropriate to check it with 'while (offset > 0)'; this patch changes to
'while (offset)'.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/cs-etm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index d9a857abaca8..52fe7d6d4f29 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -945,7 +945,7 @@ static inline u64 cs_etm__instr_addr(struct cs_etm_queue *etmq,
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
