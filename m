Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F5B29D21
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 19:36:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NsJqrrXN4klR1AatOi8KzZoWJ8/0J1qC3/G8FYtkMSw=; b=E+IwQM0uhpDE5ChYew/bn/W809
	IRDcDB8moDsT6bHnOBeRtWmxgMu7EDo/x97JAKeeNi2yzG1V3ycgHkg7RBLv1Sl1X3KjgQ0XJ7lp4
	AtDDHF/mdBgfyY2PljKWXLHzNCkQnaY/CJfVw7b95L4pN5KhjWV2IAmwXk6xKTrSJiRqHDtGpJXSe
	qzNfFN4E3AUBULv5+6nkViHY2uivwyESRjGEAN03Rt/PoEooy+vVTPXX2Pd1IwVQXKefHKieCZ8YL
	aTynaXOdNdwWQJ67VPlCdR6FS0vxx4wu2pPAlT3SNTXCPJzcrExmP4AUa1QfQZYxocOWqPX8vTtuu
	4j50O/Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUE6u-0001XO-IS; Fri, 24 May 2019 17:36:04 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUE66-0000nq-LJ
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 17:35:16 +0000
Received: by mail-pf1-x443.google.com with SMTP id s11so5715467pfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 10:35:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=WjG/oYBVCTJ2cGSnVCWqwlxIc3B5k8jAV6xmXnGg2uk=;
 b=DWnMfzRx8uWzIrexmTH6icT77P0bzj4A6Bl6Me/8fyKJ8+Eh3WN52ltUnTzvTw5zRC
 HqrcyTxeWw74Fbnf4SkuWYKwDcySDL0v94ERXknwIAdQeEPQRTsFFy3CDrDfEMrsobFu
 +u6eSxb32WMlbSljrRidcbVprKanMJhy03X3qbq8Oad4e4OzTBhD7CyEW9JdLKtYDhhn
 vdKgLO8Ndg/mEc0nizAxhj4aLYpounInK92BylqJ4S8KAb4IaOEx2GtsMfkVQA54T0sK
 9bb6sTPJaVA4Z6ZIDVcJhHa4666uS8PNjQM4icyA/sRqP7SZb86pbQUM1wNKkcdjxGpW
 XFbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=WjG/oYBVCTJ2cGSnVCWqwlxIc3B5k8jAV6xmXnGg2uk=;
 b=qYVwphJdgienrGNBZ2uW/zfGBDRjQtnd+zPP5TGgWzivlrLCN/bjw+Jt0L7Z3tIdem
 39LwY0pmmfmOav+eq2d9FUFUtYhswsMroHRfCBdQlXOhBE3aQlmdulI1Ui6jnORncrxy
 RQBVlvWSZ0NV6aaS8HItS5tZ1+RlwmO03BxDkt4t7zS6Xr+PMTdX7SPDxGD7fTq4JAhE
 LGqY2IHym9+MAopdsb80Jpk0RDui7j77V4rP3OvyzIdcN+CE/8SdHoxOJWowVxy8zO4b
 Wk7pFyabyoH8oExvYGWfteDxyH0dnrzSzzwNYVk45GxFHC4WSnS8lNP6zJshf9ly6Xw5
 qsdA==
X-Gm-Message-State: APjAAAVfKjq6lthoLwZop0DNRoGh82eu7b/k9Shf8oa99hZlFiZyxnry
 eBkLlM73iMgiaPg9cArI9bls9w==
X-Google-Smtp-Source: APXvYqxF7Gh9lYjg7zMff3L3s+55twJiUlAXjsPmW0fDU2skcjVUANizUZ6SrVSwPuiqOGu0q2pGPg==
X-Received: by 2002:a17:90a:d992:: with SMTP id
 d18mr10956709pjv.74.1558719313700; 
 Fri, 24 May 2019 10:35:13 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k13sm2809575pgr.90.2019.05.24.10.35.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 10:35:13 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: acme@kernel.org
Subject: [PATCH v2 03/17] perf tools: Configure SWITCH_EVENTS in CPU-wide mode
Date: Fri, 24 May 2019 11:34:54 -0600
Message-Id: <20190524173508.29044-4-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190524173508.29044-1-mathieu.poirier@linaro.org>
References: <20190524173508.29044-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_103514_700165_EA735596 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

Ask the perf core to generate an event when processes are swapped in/out of
context.  That way proper action can be taken by the decoding code when
faced with such event.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 tools/perf/arch/arm/util/cs-etm.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/tools/perf/arch/arm/util/cs-etm.c b/tools/perf/arch/arm/util/cs-etm.c
index be1e4f20affa..cc7f1cd23b14 100644
--- a/tools/perf/arch/arm/util/cs-etm.c
+++ b/tools/perf/arch/arm/util/cs-etm.c
@@ -257,6 +257,9 @@ static int cs_etm_recording_options(struct auxtrace_record *itr,
 	ptr->evlist = evlist;
 	ptr->snapshot_mode = opts->auxtrace_snapshot_mode;
 
+	if (perf_can_record_switch_events())
+		opts->record_switch_events = true;
+
 	evlist__for_each_entry(evlist, evsel) {
 		if (evsel->attr.type == cs_etm_pmu->type) {
 			if (cs_etm_evsel) {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
