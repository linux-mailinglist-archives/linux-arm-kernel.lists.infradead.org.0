Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B011FBBF8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 18:42:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rs0e1RvVOA/JNkHBAC1NCo/lHVUknQpL9pN1pRI9nNI=; b=Q6e
	6BRP1Ew8PT8Kea92sdwkmExcGKa2506BErj3Sqgu8HQLRGtsY8tQz2CS7g1LYcEGTE7yv39fbnSYE
	Ewv49nWneKPHaxn7tV7bTX7q91DRjLXmwsX2b3fgcWypJuWjLsGna19PPsiQzVT+GC0quwMmxU7m3
	pVsJPSLv5N4X4+7rq1rvcZJfxVfeA53SmFTjWhEQGVCcRonbpCtdAlhNOJeHDA28AVp3jYaZweesS
	HVeMsyAl6KeZPvPPVIPoG56OVf46eu9ZSXNaPR3KuNX0zVauOkjF3HoxRuvjbbp/cBg28UKNS68SN
	1m/6y6RQl7Y9D7uYr+vxODEmFGo4lNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlEf2-0001UG-Gu; Tue, 16 Jun 2020 16:42:08 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlEdh-0000Qz-CA
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 16:40:47 +0000
Received: by mail-wr1-x442.google.com with SMTP id t18so21488526wru.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 09:40:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=WHqB6EkNA8oBXEj884xpeOH1tWkcs/swUK4ixSzrRYk=;
 b=ZwrR2yXSRnzq8fJmaU/Ft19OuUL+JcebIVKx+K+K3inypyk4yqAXnwd9cGZzbt4QLp
 Zbw7psLTreM8ibN/64YUufoNJNT5qmZZrsk/G+9c94PTvgWKyKm6ni7pFmtiFXRcIZJM
 7WvGH+ybJ4B9Gl5UgcSLXxBfok6FcJ3vVlj9zZXrvDv7sPB9TVXZUSliEgQUXDAzt+yM
 2yaIrJcROu87DkTvWn2N1mC8nU2caj1S40X/ii+ozR57mM5Jl5Sv6o8rVrZVIEJ12rEW
 rgQAXlLtZfLiJ1LfbNqLJqN4Q0v6SVOoTQpMSYZoPBrBpbMnI6Z5Ki9no8XBgCYXR2Ju
 JyUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=WHqB6EkNA8oBXEj884xpeOH1tWkcs/swUK4ixSzrRYk=;
 b=rxVvLnZKZiDuqQbF5YcKQ5QiLYtl9REB5bwHqCU//+f/B2sWzNxrhjh+aPYgHt9nkP
 yyoe6KGJd+cERww8Ev81jJEFI4LVe+LrAmd1t+7crTZGgxAXMt/oAOvy3Ogh3O4IJm/p
 x2BAVq/EnaKg4rAdRSEcAVjFCFNaDpRRIyvLUZcNK8WZflpShPS8oJ/o3+wvuRN6AcI6
 BuKACBeq2CfnOihWmnBsvOBJoYmvtjBMeRJrtnUQLC2vWzZpcBw4D5NYO2psepXEFr1h
 oqyGmE76+C+jE6VyQ53BFdflKFrYAzpdobn3nvFtq4aoEF24s6uEoCgJNeR39QAEl8uE
 8Icg==
X-Gm-Message-State: AOAM533A9hi9HvA02O9vu4EMA8+Mg2IqCyGoWY46xvpbn/cgIt3l4QBm
 9uMLVxnpQ1j7m/erOjJWLy/kOw==
X-Google-Smtp-Source: ABdhPJxaHNhsXDQT25pKEGf6V6Lo5P8qsuBsEahEVvOej9W2mcExoGOTjer9hmAjpieqbvIf1v8x6w==
X-Received: by 2002:adf:97cb:: with SMTP id t11mr3964126wrb.314.1592325644013; 
 Tue, 16 Jun 2020 09:40:44 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6801:1801:dc9e:c297:59e5:dbd9])
 by smtp.gmail.com with ESMTPSA id s18sm36598946wra.85.2020.06.16.09.40.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 09:40:43 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: acme@kernel.org, linux-arm-kernel@lists.infradead.org,
 coresight@lists.linaro.org
Subject: [PATCH v5] perf: cs-etm: Allow no CoreSight sink to be specified on
 command line
Date: Tue, 16 Jun 2020 17:40:41 +0100
Message-Id: <20200616164041.15373-1-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_094045_432377_A70A5DDF 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: peterz@infradead.org, mingo@redhat.com, Mike Leach <mike.leach@linaro.org>,
 mathieu.poirier@linaro.org, suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adjust the handling of the session sink selection to allow no sink to
be selected on the command line. This then forwards the sink selection to
the CoreSight infrastructure which will attempt to select a sink based
on the default sink select priorities.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Tested-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/arch/arm/util/cs-etm.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/tools/perf/arch/arm/util/cs-etm.c b/tools/perf/arch/arm/util/cs-etm.c
index cea5e33d61d2..cad7bf783413 100644
--- a/tools/perf/arch/arm/util/cs-etm.c
+++ b/tools/perf/arch/arm/util/cs-etm.c
@@ -243,10 +243,10 @@ static int cs_etm_set_sink_attr(struct perf_pmu *pmu,
 	}
 
 	/*
-	 * No sink was provided on the command line - for _now_ treat
-	 * this as an error.
+	 * No sink was provided on the command line - allow the CoreSight
+	 * system to look for a default
 	 */
-	return ret;
+	return 0;
 }
 
 static int cs_etm_recording_options(struct auxtrace_record *itr,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
