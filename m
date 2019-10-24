Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2687EE364A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 17:16:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0QvaWjQxnvQAEWBXLMwZHEyTww12v6iUzgzmxnjc0/8=; b=VBol6otD9kPpVjjoO881KH0V9y
	uweeh6yVW/LyQcE9+AgRYDs3biSxIJr9w4p93q0AI411bb102IeOEX6oEidX5GB55OnOkOVU6Ug1R
	hxgigPBU0kh+c54n0uqbYH3JB4U6uTtWCrz4hejv2HRa1uTzWdNsrfLIgALEA9Ce2mS1Lvc3eeBjs
	cQRr3vKAMTSJ9630a+gCbJprNnQ1SyLNNF+cYZUMRZIY0hzDCtRxv5ktcHEEdb8b5po3amQCmeOO+
	WfOp9foIudJtnCDvdN8lZYLNSIeZSfCII38aGarELVVmj6MhDIeXk8pZVZYHUISztgYtajQlsR6SE
	fB9lrjEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNeqc-0003cb-W0; Thu, 24 Oct 2019 15:16:22 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNepw-00033b-1c
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 15:15:42 +0000
Received: by mail-qk1-x741.google.com with SMTP id f18so23146089qkm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 08:15:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+iIRtubR+3wcJynWU+Kes2QJp/E/y+xxgrhDiusBOkw=;
 b=KhtIu0dCBCIld0cRA5SUcUS0KOYjEc4cfXPg8KYjHxlBNZegNKIW0LE1dFWTzdCJXh
 XUQXG5Zc6ePCGNVe7v+Y7NRdYoXFxV8EinQmz7Z4e3MQPPmeDGTHMpOLD8gDxqYKn22I
 8hMZF9W4N4Dz6VQ48+unWncjtlnk+ljhv817Cs5eAP/8XOa7uUc3iPIyKfQ6XIfcnK/g
 HbBn+S0oxLTyyEsLnnmGIkyOom6kq3bS9L/dzVAZ3LvkNtMAa4fJzxcyKT+LZzu5o33I
 c6w4nBBsi08CAsqiaATFlWr5WDDf7fTODch3cCyRefSwjhMB6Onh+6g9Q1mDeqQVl+mK
 vbCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+iIRtubR+3wcJynWU+Kes2QJp/E/y+xxgrhDiusBOkw=;
 b=GFefBBZ7+HwasWKnIDP5hMpS2EIarDsLYaCCqLBNJWqtZ2FM8dGxcSKu85pJOXz+gt
 S/5ThK1vHF9UWIxRy8D+Ge+nmvqDYslzZWnj7qUT/tXyJQls2uS7p9gWjNsW7uJ0AQTx
 s3wYPDfIhkVo2QAkxYRlpRvYc4AStLA+IiA2Au6l1lV9PJoMY9GCNBunj5gtfgNIAI7s
 JKLrm8ZtZr4wgZkxrHeKUC9unQLxG8HCch+dm9wuVsM24LJcsGHij70Dxgq5NGcM/ljU
 MwGqkkkbCWzESP8lGvkGKTspC+M/iBC3zQA/WOyQVAoLr2TQEUQYH7eAgQkdg2EOualp
 zjIw==
X-Gm-Message-State: APjAAAXHTTMWBj9Pe+yzqhFqu1hUskN04tiD+arRXM2Ty+22vsuHZdCc
 7T6TctbEl/KNVgEV1xyrPLFgiQ==
X-Google-Smtp-Source: APXvYqy18zf3XosU8y4peGneBh50FW2Gynb+ZaBTGHs+TmE6Px6rp0nwka0P0vb4Yv2oZ65stPVprg==
X-Received: by 2002:a37:e50f:: with SMTP id e15mr14378854qkg.192.1571930138163; 
 Thu, 24 Oct 2019 08:15:38 -0700 (PDT)
Received: from localhost.localdomain (li937-157.members.linode.com.
 [45.56.119.157])
 by smtp.gmail.com with ESMTPSA id l5sm4346073qtj.52.2019.10.24.08.15.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 08:15:37 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Coresight ML <coresight@lists.linaro.org>,
 Robert Walker <robert.walker@arm.com>
Subject: [PATCH v1 4/4] perf cs-etm: Fix unsigned variable comparison to zero
Date: Thu, 24 Oct 2019 23:13:25 +0800
Message-Id: <20191024151325.28623-5-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191024151325.28623-1-leo.yan@linaro.org>
References: <20191024151325.28623-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_081540_247128_CC83A6DA 
X-CRM114-Status: GOOD (  13.28  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
