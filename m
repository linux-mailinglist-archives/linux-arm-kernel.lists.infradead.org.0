Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E8529D1C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 19:35:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=b9nngQsXXYQaTwtFs7X/JVZ4TFYA/yGFNVwz07jhmjo=; b=nUZ5VGEZPfQs2hjDNVI33+b4FS
	cOTr++LAdXTA9D+d7cEpLxvbtZn2XtgjDZUwI9pytTduSg95BAkKIoJvUkpekPfSkie9v1pEeN0MP
	AJ7eTL8TG6N2h3qKudtKbdMyLU6G0NAixTGTqg/swzeHvp+RyKzJaMdCu8/S1hpGwj0cjq7NWFjC/
	2WBkcHKicvzpXTYkYNTKD9LqGNRGesaCrDBxS6/gomf2WmixfKQcZNWHgHrAvqFR+eWnqlyBkY4n9
	fVtGvucOq/7vRJ8ysqK1bZyEbGAqU1HxPvfiCbXZFDYqDKbivgBSVAJR8tsB3fAl4esFg8E8DZZOI
	Inu+xZUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUE6j-0001R9-PM; Fri, 24 May 2019 17:35:53 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUE65-0000mw-B6
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 17:35:15 +0000
Received: by mail-pl1-x642.google.com with SMTP id d21so4439595plr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 10:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=AZrEN/YdY4eKrQn36wY+GaRgnWiV23bSY81bJ8wnh7E=;
 b=D22qwMvxOv68Jbk8yGerAluLOCfagxSd4heu50CTNyczmf41/1BNWjQMJwAiayGx2w
 qna3aSLLtC3xLyupFWvVT7naW+d+e1y5Jb6lFKfizD75fsj9V76HNrx0EFkc59NmO6kS
 AURwwe0cV2bsPjZZTMNQhrO5T3YXKt1KvZq41Hs/XBgPWU4PdtApkKWnl/wGSazNJOgL
 Wq1U7spG/CMFNPo0fFMCCBTYui7aKgYhJG3HsJdYrT2P92gO25WICbl0fmzR1i/oiSjK
 XcsCe9xrrWhkZDqkGbGB++UPBC1yyr7dpNn5+Qt/s2k3zN40BWcdgkPKJsid2aSBYyFs
 6c1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=AZrEN/YdY4eKrQn36wY+GaRgnWiV23bSY81bJ8wnh7E=;
 b=F14lnnaSMTcZjTNJEUHMHknvdgmIFl4KXzZ29Fcg5ioqVHnVhJRTvecRK7yOZUTunF
 lFwVlXCOsS89SEuzcNHSMgFyHu3YhoWO90vKOQZ/ZQUqnZQF8H/Psbn0f/u+gxUG6Hqa
 PiXSI15tWwY/KxXuwBEtVk1/V1Nwrs8flMHDQXtJilcPhtRoiPcngQj9MP36wshYBsYK
 B2EV//vt+qAxjaMThkJ9jCDV+6r3xdVDP4A4Ikd9K635wyDqqUm9orERJZNAGihwAP1n
 15bsGjRfC5Kq9MP/9VGAvE9z3RkoQ+leG5qm1ApYwsh1mTfbOv3o+DTOVCCMWo60Zyoy
 Wimg==
X-Gm-Message-State: APjAAAVytS4KY7891rSX0Q7C6mYYrZxE84+X6s66qkbBdP4RYiM3tVqz
 vPaPqrOshp94emB/MNO9eAfJmg==
X-Google-Smtp-Source: APXvYqwUBzZ6H+lMKMIO13AhW+29cTXVJ5SN2damyrB7ZoRjJtvjkzvqncjxfVou260HauO/dYNT0w==
X-Received: by 2002:a17:902:a70f:: with SMTP id
 w15mr38056183plq.222.1558719312533; 
 Fri, 24 May 2019 10:35:12 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k13sm2809575pgr.90.2019.05.24.10.35.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 10:35:11 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: acme@kernel.org
Subject: [PATCH v2 02/17] perf tools: Configure timestsamp generation in
 CPU-wide mode
Date: Fri, 24 May 2019 11:34:53 -0600
Message-Id: <20190524173508.29044-3-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190524173508.29044-1-mathieu.poirier@linaro.org>
References: <20190524173508.29044-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_103513_381790_81FBBB11 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

When operating in CPU-wide mode tracers need to generate timestamps in
order to correlate the code being traced on one CPU with what is executed
on other CPUs.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 tools/perf/arch/arm/util/cs-etm.c | 57 +++++++++++++++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/tools/perf/arch/arm/util/cs-etm.c b/tools/perf/arch/arm/util/cs-etm.c
index 3912f0bf04ed..be1e4f20affa 100644
--- a/tools/perf/arch/arm/util/cs-etm.c
+++ b/tools/perf/arch/arm/util/cs-etm.c
@@ -99,6 +99,54 @@ static int cs_etm_set_context_id(struct auxtrace_record *itr,
 	return err;
 }
 
+static int cs_etm_set_timestamp(struct auxtrace_record *itr,
+				struct perf_evsel *evsel, int cpu)
+{
+	struct cs_etm_recording *ptr;
+	struct perf_pmu *cs_etm_pmu;
+	char path[PATH_MAX];
+	int err = -EINVAL;
+	u32 val;
+
+	ptr = container_of(itr, struct cs_etm_recording, itr);
+	cs_etm_pmu = ptr->cs_etm_pmu;
+
+	if (!cs_etm_is_etmv4(itr, cpu))
+		goto out;
+
+	/* Get a handle on TRCIRD0 */
+	snprintf(path, PATH_MAX, "cpu%d/%s",
+		 cpu, metadata_etmv4_ro[CS_ETMV4_TRCIDR0]);
+	err = perf_pmu__scan_file(cs_etm_pmu, path, "%x", &val);
+
+	/* There was a problem reading the file, bailing out */
+	if (err != 1) {
+		pr_err("%s: can't read file %s\n",
+		       CORESIGHT_ETM_PMU_NAME, path);
+		goto out;
+	}
+
+	/*
+	 * TRCIDR0.TSSIZE, bit [28-24], indicates whether global timestamping
+	 * is supported:
+	 *  0b00000 Global timestamping is not implemented
+	 *  0b00110 Implementation supports a maximum timestamp of 48bits.
+	 *  0b01000 Implementation supports a maximum timestamp of 64bits.
+	 */
+	val &= GENMASK(28, 24);
+	if (!val) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	/* All good, let the kernel know */
+	evsel->attr.config |= (1 << ETM_OPT_TS);
+	err = 0;
+
+out:
+	return err;
+}
+
 static int cs_etm_set_option(struct auxtrace_record *itr,
 			     struct perf_evsel *evsel, u32 option)
 {
@@ -118,6 +166,11 @@ static int cs_etm_set_option(struct auxtrace_record *itr,
 			if (err)
 				goto out;
 			break;
+		case ETM_OPT_TS:
+			err = cs_etm_set_timestamp(itr, evsel, i);
+			if (err)
+				goto out;
+			break;
 		default:
 			goto out;
 		}
@@ -343,6 +396,10 @@ static int cs_etm_recording_options(struct auxtrace_record *itr,
 		err = cs_etm_set_option(itr, cs_etm_evsel, ETM_OPT_CTXTID);
 		if (err)
 			goto out;
+
+		err = cs_etm_set_option(itr, cs_etm_evsel, ETM_OPT_TS);
+		if (err)
+			goto out;
 	}
 
 	/* Add dummy event to keep tracking */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
