Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99FE31BEB1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 22:26:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=A0fkpznt1vm8/mEBIr3ktB6RGsDjEgEoRcE97CxHkPE=; b=Iu0nCtuECXNS//X0b8lGUNyRdh
	w0IBzakqs7wQhdM3QTmEVpVualBCoV+ZQ168qnnBUIy8pEXk4wUa4htiktuwn/cycbrUNQC9EbjgU
	qMuSMJLkT1iV8HzUJpDruXoVP1YIBucw7IAZn0xPugmj8OVO1r4Mrgg5B9xofCA/V4zkI/dR1DcjI
	nm0GFJK+i0/ulyOYRdEOdKHAcQTn27ITC308RdP6Q8Ys1U/wp67gGneD0J6Kqy0EWJ8P9mK/ZOz+9
	6EnKioe9jdwixMwdBATPlzjZvSGTcKfE4w76my8eY03QkRgKr50m0z6IBoXIaT/AQen0q2WeC0cV1
	cQv0p1Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQHWQ-0003CS-Fh; Mon, 13 May 2019 20:26:06 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQHW2-0002oe-LE
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 20:25:46 +0000
Received: by mail-ed1-x541.google.com with SMTP id w33so19371705edb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 13:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=X21mAOGoYN+8cZIHmSdtLL/CvV/fwCagbBZkiJttwK4=;
 b=jXSMryiWqISxtsYFYby3XTlqJ6RmmCgpop+OScSEXitjK2TiTG8wx6Ex48F0kjFwDd
 aGGOex0N06MkzF9dOFthoEDGDYUcQH+uwUAD1fVK2yE0mYT3gwAzgKtEu7KRHaF+YqZV
 x/zCRrN6+u1FI/0gumcbtWFw0r3nGGcUijtQ5rr9rzNaVxJdPjd13AeQ7ynk5JsY0BbF
 48IbkbQZiuY2cNAEAQc8ZeyS4dEXj+8rB3DA/08HS4+L5yVaFk9beEmINKfBb3tJsHr2
 JN2ZBgWr0met4KEriZBr/9wVAtusCf2zASo3kPD5Y966xN6j01heBCifmyvKwGYJe67B
 WCLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=X21mAOGoYN+8cZIHmSdtLL/CvV/fwCagbBZkiJttwK4=;
 b=alAX6zhrz2ZnbvaRUQk/L43luqa8sqzBuv8jCnkTW0a4eUdkqFtEeJeM3ZSY/SsrDG
 4bbk/M1Ea6taEsCkfrMDsVJibzJRMq7+pddVvNyHX16UHHQE3mwuiGl4Z1vokzMaagfC
 zB8RytZZ/vgcvFXHAar7zWfKDUdgg7UTVF+M/l3Fe3s47FXVjrOK0fmR40hVvxi+Hi40
 3HTHK44yDb28axB9zugXbGPY1scZPcllcTs4zarp8yMbfOQMFXUQcnNah39HoIHxZqW0
 WfhEVLqyw/CmNyH8GGWux1UfTYsabQdLKN6JkGoCJJg4652H8cr+FN0Mn1uw9AJzixpd
 dudQ==
X-Gm-Message-State: APjAAAUD+jcmC9w3PIT4SQD5ZeY2mOWL6JY8XyB0H1Sgqs12jYodlz8Z
 KOs2HJnE2tWI1G4PjdMPBzY=
X-Google-Smtp-Source: APXvYqyscfrrLasllLlS5bmvhzQfm4OxU9p693gex+v0fgr9f3QGjsYr3ie/NAK81+XhNPGmOxkvBg==
X-Received: by 2002:a17:906:c50:: with SMTP id
 t16mr23848218ejf.296.1557779141252; 
 Mon, 13 May 2019 13:25:41 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id k37sm4036076edb.11.2019.05.13.13.25.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 13:25:40 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] perf vendor events arm64: Map Brahma-B53 CPUID to
 cortex-a53 events
Date: Mon, 13 May 2019 13:25:21 -0700
Message-Id: <20190513202522.9050-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190513202522.9050-1-f.fainelli@gmail.com>
References: <20190513202522.9050-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_132543_241607_2C056EBC 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Catalin Marinas <catalin.marinas@arm.com>, John Garry <john.garry@huawei.com>,
 Will Deacon <will.deacon@arm.com>, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Arnaldo Carvalho de Melo <acme@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Ganapatrao Kulkarni <ganapatrao.kulkarni@cavium.com>,
 Namhyung Kim <namhyung@kernel.org>,
 Sean V Kelley <seanvk.dev@oregontracks.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Broadcom's Brahma-B53 CPUs support the same type of events that the
Cortex-A53 supports, recognize its CPUID and map it to the cortex-a53
events.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Acked-by: Will Deacon <will.deacon@arm.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: bcm-kernel-feedback-list@broadcom.com
Cc: linux-arm-kernel@lists.infradead.org (moderated list:arm pmu profiling and debugging)
Link: http://lkml.kernel.org/r/20190405165047.15847-1-f.fainelli@gmail.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/pmu-events/arch/arm64/mapfile.csv | 1 +
 1 file changed, 1 insertion(+)

diff --git a/tools/perf/pmu-events/arch/arm64/mapfile.csv b/tools/perf/pmu-events/arch/arm64/mapfile.csv
index da5ff2204bf6..013155f1eb58 100644
--- a/tools/perf/pmu-events/arch/arm64/mapfile.csv
+++ b/tools/perf/pmu-events/arch/arm64/mapfile.csv
@@ -13,6 +13,7 @@
 #
 #Family-model,Version,Filename,EventType
 0x00000000410fd030,v1,arm/cortex-a53,core
+0x00000000420f1000,v1,arm/cortex-a53,core
 0x00000000420f5160,v1,cavium/thunderx2,core
 0x00000000430f0af0,v1,cavium/thunderx2,core
 0x00000000480fd010,v1,hisilicon/hip08,core
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
