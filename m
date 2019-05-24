Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3153729D2A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 19:36:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NwpqiSFkPxGrVgCwHVVkxqSL7+dn7P+H4GzUBMoW1DQ=; b=mLWR8IbsnGBLN+ByeqFWd0cZM6
	KHm1/s5heqJSCG0A4ADbrI5FYmtemyrsmYG7JdRmVz8Q+ig4J6djiNfC2j+GmU8JgyKcpaT28xB5p
	0ONZT7Sf8V0y72E/L+g8Kd3eyilHT5HxHm3STJcUOn68VxQesxMuM0WNrGQDr4SDrZGIfE9RxQjot
	V/bvlqzW4kj9sMDcH/MKWNKZYueMTamsoJbrbTImQK4cQLeHNB7GcJEsT22/rbyfqn7sQ0g8aH5fm
	fDKHIAIqRlBXZvctSdmf8UeSjeM9zp2rfymrDMyCbVinPWxLw7DT8GIixcuBlOs5lxC5BnhBa5snv
	A2c0XLvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUE7T-0002Kl-Hd; Fri, 24 May 2019 17:36:39 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUE6A-0000qo-2w
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 17:35:22 +0000
Received: by mail-pl1-x644.google.com with SMTP id g69so4440178plb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 10:35:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=TdCUaEZ68qpQ0pkU47NzIQOhdzi0053++FFZ3/d/RGQ=;
 b=FntvYFIAvQYhJ/apol1z9vxNQ/Gm+qEaV5pe3mOV5Y8mHC+C5tsGFzFRRfqZTSGr7U
 /+pIlw5zaR4AJttsxs6LqPHz7SWDIog4iUePidyBdPLxGuZzuZKqrGyYUt5CsP7S6K68
 IlSI7YP7ffh/pa97PS/2rI13ECfIUXnk3gi770orY5/xU2N02CUGrhc3Q0pVRaYYUHx+
 5owFn1/THbD834pSoGhKBWJieUVjmcC9YrPdosTVIcCE+fo0qMNbQS9GDMzHw/LFAQyF
 lWm9Cm1/xI++8KnAZa2riSRk0In388mG/bpRUJvp17Bkpxgzrl8BxMSxc4+dc8hVBsrx
 8QEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=TdCUaEZ68qpQ0pkU47NzIQOhdzi0053++FFZ3/d/RGQ=;
 b=EEzSBXrXj3dlHWPMzm0iYxUSHfU5STuwGt0ySRU7slLGejj0oKzmRKeKBc0sp+8dIr
 6EwEKE8Ns3Ewg1fAanyhGY87OHcgcEsHtm8qpHl+uR7TGy9pN0LUXLHObuogrNMfJFMr
 ucUCIcMLSnwR6NEzFFdJPm9vWaZh43bIp0FMNoCYpc7Rko3N27Bi8do0NEFsgufpieGj
 gz+tFuaiHwzloYLBiEGKXxDxza95nKTCABFroXYASqrh6Dwor4qLcSdNPpFYcSYCF2R3
 Uj5hhQWhjLtBs8V5IJRE7dz2PkE4mvcoqLPBQw80EFJ0GLhqa3tGzEJmWdHkO5QPhNd4
 32mA==
X-Gm-Message-State: APjAAAWZGYeIAzNe7lK3Z9c0NufYdpk0z+b6O8+bTVNQIje2XIyGultT
 G8X/GWCfbh5MnUQvlQvxvjO9fw==
X-Google-Smtp-Source: APXvYqw3NW/AAC+roI3nnd0ZNrupX9jWmQIuRM3DE85TINSeXq8cZjx9UQso74EyY8q4IZuWsq2mTg==
X-Received: by 2002:a17:902:2a28:: with SMTP id
 i37mr19562156plb.52.1558719317327; 
 Fri, 24 May 2019 10:35:17 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k13sm2809575pgr.90.2019.05.24.10.35.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 10:35:16 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: acme@kernel.org
Subject: [PATCH v2 06/17] perf tools: Refactor error path in
 cs_etm_decoder__new()
Date: Fri, 24 May 2019 11:34:57 -0600
Message-Id: <20190524173508.29044-7-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190524173508.29044-1-mathieu.poirier@linaro.org>
References: <20190524173508.29044-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_103518_859907_51CC3303 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

There is no point in having two different error goto statement since
the openCSD API to free a decoder handles NULL pointers.  As such
function cs_etm_decoder__free() can be called to deal with all
aspect of freeing decoder memory.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 tools/perf/util/cs-etm-decoder/cs-etm-decoder.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c b/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
index 39fe21e1cf93..5dafec421b0d 100644
--- a/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
+++ b/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
@@ -577,7 +577,7 @@ cs_etm_decoder__new(int num_cpu, struct cs_etm_decoder_params *d_params,
 	/* init library print logging support */
 	ret = cs_etm_decoder__init_def_logger_printing(d_params, decoder);
 	if (ret != 0)
-		goto err_free_decoder_tree;
+		goto err_free_decoder;
 
 	/* init raw frame logging if required */
 	cs_etm_decoder__init_raw_frame_logging(d_params, decoder);
@@ -587,15 +587,13 @@ cs_etm_decoder__new(int num_cpu, struct cs_etm_decoder_params *d_params,
 							 &t_params[i],
 							 decoder);
 		if (ret != 0)
-			goto err_free_decoder_tree;
+			goto err_free_decoder;
 	}
 
 	return decoder;
 
-err_free_decoder_tree:
-	ocsd_destroy_dcd_tree(decoder->dcd_tree);
 err_free_decoder:
-	free(decoder);
+	cs_etm_decoder__free(decoder);
 	return NULL;
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
