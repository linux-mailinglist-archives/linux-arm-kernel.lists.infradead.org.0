Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9700B5CDA7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 12:35:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=r/BipNOpVBGmBKYkgfQUHBMvTMs624/WwRxqxze4Pzg=; b=mfVo01WFmczLYoXs6ZMIF2vaDh
	kwdRXXLsk6dG32+zDjUyLFUPi+hcSwwK4ziRODuflMaW3ChueSNh2em4yEcbEzzdxhbwI9PfAFZu3
	bWV3VXiz6XJ+zirlKLkR0VwDKaGBpOKp5V0nZ4WoTW0EiOV7asDJWPJaQggEwk/qipeMge1QOGg88
	aRX7l8HfZJdBlekiG/v+X2Ulm/gQ1OQFprJxoVOMn/7yLxhxvHXG2AhlcxhN8myTeiuIuyj9uWkAq
	3r6wqVxr1frYjQ2kk3oA1D20Gt6NjNWZNwhNTuQM9vAKu66lg25ImyQOxLBb2mSn7qMi5iTwYzxch
	yPLP5PUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiG8i-0003sR-63; Tue, 02 Jul 2019 10:35:56 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiG7r-0002KY-PE
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 10:35:05 +0000
Received: by mail-ot1-x342.google.com with SMTP id e8so16623007otl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 03:35:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=KMNCKIxUd7C3QCEkBdcu4g6ofRmUIVRG/BHPe4FFBiI=;
 b=b3Ynb3mmyQPqXrGhUFTeBcfcKHtyocPl8Z41p2F8I32GBNu0jF2BwO2+v3JgI33/vX
 jdTP5yPdtLr0AmtRijQulnFrapU3F7Wo1t9ouWCA8DB3JJmF+5U2+qFa/t67GXudzCMz
 ly/Us9RlBLH/YWRpgziYH+onbCeHqjhF+Jsx8f+BdbQnJpk0sZsc1lMdFG2vqOxBUmi3
 zREazE8Zg6hRzYOeK/wcN6BSghqPHghcuZXM/aLU82P664LzADeiNUaoRo96TUXapNFl
 VMQxHdl/BOL+DLppX1ABrQiPd4KpJ6Qar4Ka5KVHxxtBxrd0PruJ1D9m2pAFFESgzNds
 V19Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=KMNCKIxUd7C3QCEkBdcu4g6ofRmUIVRG/BHPe4FFBiI=;
 b=FQVF6d4G9Jg2pd8PUs0g+CqepuFxP0btFrHP1s9SNfvRfWg8Pylj3pcp4zJyLO1iq3
 D+HCRcSVqnPMyXTw+ZzpJ4cg0cH74FIVksaUzY370Gx+nTW5AtD08VBev/QBOvqpRNJk
 ijd574kFUlsyI9vp4KizYYhCPwxgelJxfNDWLGMR2WgNccjZxXjDRQrgSSDqWVT1uZRg
 W5rYgyJaBkjIRr1Na5j/t0AYFlA4daM4jcxjh1pNcTMP/XgmWIHLn8w6duRKqNGT6DJb
 DXGvM3B2dubDi22AzRL8/PX/3zeSLzthTpOivjhiswjh35ktYFp9QSGFb1/B5XTjut3W
 RXvw==
X-Gm-Message-State: APjAAAXzuzB7xKd6FlP4MXklkeZqdZa8z/HIBI54ouh9Wa9CHtH1V+bN
 EG2YSMlbSdou2gV2C1O2jsZ+9A==
X-Google-Smtp-Source: APXvYqwRW1eo9HwE7l93QclNUXgFCxIkpcB0HGbeFgij2hTMSad7SU3toR850JGxhkFCj/Cfl4JFQA==
X-Received: by 2002:a9d:6ac9:: with SMTP id m9mr19994522otq.242.1562063701875; 
 Tue, 02 Jul 2019 03:35:01 -0700 (PDT)
Received: from localhost.localdomain (li964-79.members.linode.com.
 [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id 61sm5139805otx.8.2019.07.02.03.34.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 03:35:01 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Andi Kleen <ak@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Davidlohr Bueso <dave@stgolabs.net>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Jin Yao <yao.jin@linux.intel.com>, Song Liu <songliubraving@fb.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Changbin Du <changbin.du@intel.com>,
 Eric Saint-Etienne <eric.saint.etienne@oracle.com>,
 Konstantin Khlebnikov <khlebnikov@yandex-team.ru>,
 Thomas Richter <tmricht@linux.ibm.com>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 02/11] perf stat: Smatch: Fix use-after-freed pointer
Date: Tue,  2 Jul 2019 18:34:11 +0800
Message-Id: <20190702103420.27540-3-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190702103420.27540-1-leo.yan@linaro.org>
References: <20190702103420.27540-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_033503_988958_8DBAEF19 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Based on the following report from Smatch, fix the use-after-freed
pointer.

  tools/perf/builtin-stat.c:1353
  add_default_attributes() warn: passing freed memory 'str'.

The pointer 'str' has been freed but later it is still passed into the
function parse_events_print_error().  This patch fixes this
use-after-freed issue.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/builtin-stat.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/perf/builtin-stat.c b/tools/perf/builtin-stat.c
index 8a35fc5a7281..de0f6d0e96a2 100644
--- a/tools/perf/builtin-stat.c
+++ b/tools/perf/builtin-stat.c
@@ -1349,8 +1349,8 @@ static int add_default_attributes(void)
 				fprintf(stderr,
 					"Cannot set up top down events %s: %d\n",
 					str, err);
-				free(str);
 				parse_events_print_error(&errinfo, str);
+				free(str);
 				return -1;
 			}
 		} else {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
