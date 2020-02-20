Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D7B1656E0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 06:28:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qrAY031ZtOSQcXTfHpJ0AwtTTpgvPCPX50ZNYYXvXCY=; b=VGHAQ1p/Rf+QaWjaZUZCBg2b4G
	b95g3bdboDjfKZ6zYJa6VBpZwNr95Gbtts2dcHKlE12KTIBgbmQjyDlwEcuy1h15EsTIvzqRY893b
	nIHKQuXxJkAtnJ1K4WVTNMwlW/vkZI8JWtx/43N4Y7XQKJnfdUi+p7sUmgY7yPHOvhg2TsnSR+rR8
	Q5xIRFmpaSk0ObNFapZMQIvYN+72kPIZ7qQHomXZokYF/27HGVbU8hnt3jGF3aYUPzEdJ4UftqoyC
	BDbshdoN8YhyY9iPMg1vdEh92408PNp/Kjaxb9upYUu6H56YnD6sw4S5ldyJHJyxAzD0TB4BmbY5e
	cmzXO3+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4eNo-0001er-L7; Thu, 20 Feb 2020 05:28:20 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4eNS-0001Up-07
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 05:27:59 +0000
Received: by mail-pj1-x1041.google.com with SMTP id fa20so381247pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 21:27:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Zv8Ik+PS8AssCatpWlWw7JuaIsf6nNBGZuIjVAxbnH8=;
 b=rlEkO17uvEGvk0dn8yYsc27klZVZJ/lkHWFe3Tku0KVIgUNR/WgssxdT5U2cdauGal
 BQ6N3c36LHNmKngNGkWNQCTyIqzU6khb8OlNQk6lt4dY50F85NTSPgGIwj99h4AbzaJa
 qHB7os3Xo3/0FqjRye3utyyccDi8vqbuh4NX/EXFEQBSs84EgQ/cjNWYc4+EcLGqlICl
 OAmszArsEqhORyIkzAh//uTx3P2ZyU2ihbyVGFPjxCqxE8VVs46TSY3d2bpfn8Ao4G0b
 UZyzjp7cBC1zfWHCfwzFLtfpdWQhfegmm9DYEJVfKXW2Zsk0o40iNWrcliCLpfRDA07U
 I2pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Zv8Ik+PS8AssCatpWlWw7JuaIsf6nNBGZuIjVAxbnH8=;
 b=H0U34jL6/HAxp6WgtjAHQKUWPnNqNtTpH5nTvqfa+ipvb/ZiskxAKuXe6tHQv1XiUM
 dzUx8SJkO2ZIiMv83vwfO5QIR10RrJHkPyLYSGJN5WsArLDp3I4+D3LKkMYabeLvaoMQ
 SZICUaxnSlbzvTkPWiWnEQVbNfQrM3FY4iK3xlQJmC2R4srk0oMAup6Hkx1/DwDJpAOH
 /5Z768vwQaDJNb5ZeFk/FHs0nEo8/0zdH3Uq7cXkBIBfnot5EVDPgB0R792UVqR5CJxs
 kxsSZDi7nkeUPApnBQd68G9nWkJQhiWShxnAwiwA5mwsfTibkjZObJ1tcDqKJ/fgzzRE
 yMWQ==
X-Gm-Message-State: APjAAAWfq3+nwykGeJASy3zt8YkYZpecZKnUDDyajC9sG9b7RNoI2QF8
 AOE1aqfHsj5O4lZu/JZbdiYmYg==
X-Google-Smtp-Source: APXvYqyIYFh1Pf2/bbGkCOJqBrt4jcgJOwR12yEA3k2ni6brJ5MNlfQnVOIdVKzAm4ej6NAaQSnPiQ==
X-Received: by 2002:a17:902:8a85:: with SMTP id
 p5mr30524442plo.154.1582176474820; 
 Wed, 19 Feb 2020 21:27:54 -0800 (PST)
Received: from localhost.localdomain (li1441-214.members.linode.com.
 [45.118.134.214])
 by smtp.gmail.com with ESMTPSA id l69sm1535663pgd.1.2020.02.19.21.27.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 21:27:54 -0800 (PST)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Mike Leach <mike.leach@linaro.org>,
 Robert Walker <robert.walker@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Coresight ML <coresight@lists.linaro.org>
Subject: [PATCH v5 1/9] perf cs-etm: Defer to assign exception sample flag
Date: Thu, 20 Feb 2020 13:26:53 +0800
Message-Id: <20200220052701.7754-2-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200220052701.7754-1-leo.yan@linaro.org>
References: <20200220052701.7754-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_212758_073890_E1A9218D 
X-CRM114-Status: GOOD (  19.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Currently, neither the exception entry packet nor the exception return
packet isn't used to generate samples; so the exception packet is only
used as an affiliate packet, and the exception sample flag is assigned
to its previous range packet, this is finished in the function
cs_etm__set_sample_flags().

This patch moves the exception sample flag assignment from
cs_etm__set_sample_flags() to cs_etm__exception(), essentially it defers
to assign exception sample flag to the previous range packet, thus this
gives us a chance to keep the previous range packet's original sample
flag.

So this patch is only a preparation for later patches and doesn't
include any change for the functionality; based on it, we can add extra
processing between the exception packet and its previous range packet.

To reduce the indenting, this patch bails out directly at the entry of
cs_etm__exception() if detects the previous packet is not a range
packet.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/cs-etm.c | 28 +++++++++++++++++-----------
 1 file changed, 17 insertions(+), 11 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index bba969d48076..48932a7a933f 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -1479,6 +1479,13 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
 
 static int cs_etm__exception(struct cs_etm_traceid_queue *tidq)
 {
+	/*
+	 * Usually the exception packet follows a range packet, if it's not the
+	 * case, directly bail out.
+	 */
+	if (tidq->prev_packet->sample_type != CS_ETM_RANGE)
+		return 0;
+
 	/*
 	 * When the exception packet is inserted, whether the last instruction
 	 * in previous range packet is taken branch or not, we need to force
@@ -1490,8 +1497,16 @@ static int cs_etm__exception(struct cs_etm_traceid_queue *tidq)
 	 * swap PACKET with PREV_PACKET.  This keeps PREV_PACKET to be useful
 	 * for generating instruction and branch samples.
 	 */
-	if (tidq->prev_packet->sample_type == CS_ETM_RANGE)
-		tidq->prev_packet->last_instr_taken_branch = true;
+	tidq->prev_packet->last_instr_taken_branch = true;
+
+	/*
+	 * Since the exception packet is not used standalone for generating
+	 * samples and it's affiliation to the previous instruction range
+	 * packet; so set previous range packet flags to tell perf it is an
+	 * exception taken branch.
+	 */
+	if (tidq->packet->sample_type == CS_ETM_EXCEPTION)
+		tidq->prev_packet->flags = tidq->packet->flags;
 
 	return 0;
 }
@@ -1916,15 +1931,6 @@ static int cs_etm__set_sample_flags(struct cs_etm_queue *etmq,
 					PERF_IP_FLAG_CALL |
 					PERF_IP_FLAG_INTERRUPT;
 
-		/*
-		 * When the exception packet is inserted, since exception
-		 * packet is not used standalone for generating samples
-		 * and it's affiliation to the previous instruction range
-		 * packet; so set previous range packet flags to tell perf
-		 * it is an exception taken branch.
-		 */
-		if (prev_packet->sample_type == CS_ETM_RANGE)
-			prev_packet->flags = packet->flags;
 		break;
 	case CS_ETM_EXCEPTION_RET:
 		/*
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
