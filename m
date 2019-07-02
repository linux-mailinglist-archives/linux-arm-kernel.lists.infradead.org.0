Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46CF75CDAE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 12:37:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CVNU8lIxMfPtQF8L+Qp05QyJpMN663JOFdNZ2RQviH8=; b=HMi+jHNhpPhKAHqGXhnSenUByX
	+TcHhs9uxChyLgby2iO+GfuYK6lnD56npNL/uDH5tXVpacAX1N4Rjvw5ywc0FPy+7QDMpZ/LOxDS+
	LSiQjJqUvjDdxrq2rpmaFF6i87OGw+VLa3gmeWW+MRhcX2PlurhVEnETvEdiE6o1kqwdACa9VjdEC
	ZdKqgWdS7jsCzikOvorM9yoymynH6YdCDJCkzKaijhokNayZ8uEu9c8MElDWVdApV8Fc1NcmWjX9U
	peGzoqju9Jz6ijx16Jl1ur9WXxwWtMlcLHEcqCjZpd4LIly70wm3aIcoDm/ltoNG7YpKKe5sfsVxf
	xFHEQcsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiG9j-0004jh-Uc; Tue, 02 Jul 2019 10:36:59 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiG8F-0003kS-5P
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 10:35:28 +0000
Received: by mail-oi1-x241.google.com with SMTP id e189so12577168oib.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 03:35:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=j8r6zV3IEktEeBidDu6w6MpwFi6YkkHS02O0zUC0bQU=;
 b=Qjjisz9+e7yYwO6xLzJxQ9HbSJNib4eLc/3vLq48/xqqic/aAX4AvVAU/q5Zop1wmJ
 XkmTke4IVTLDngJtze/ZkDjaA1QU2R2D/kHisk1UxjpNfhZtzV+/+629pPbm+Ug4uQB3
 4FUiB7Cc9UYcJjXd+1RdHn98NgTgP+CyF3zfcn8HHtP4zbskHeNvhiTO+SBYh8XED2gK
 tgRH9S+HRPx4neVupbgOI+Jf8yoEA/nT9Hu9YsNGYeST0SZxaf7/1ytrlD2AQQgeCoI8
 QHpmQwLSW44gvSGD2fR7zcUfA5vt3FIfsqKNmFUkJO+2QCNdtXC1KzICntwRsWO7lm+s
 l/Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=j8r6zV3IEktEeBidDu6w6MpwFi6YkkHS02O0zUC0bQU=;
 b=qystm71C6Kca62tWmm8TVeHeow6n8MrsD9WtFTB13B4Q8K1beMy65xwZDXMVKp7QL7
 +M03ieQJ1z+NOmqiHpy3QPsK19QxH28B9qyF8R+BKERQ1l01T1mniemG3Ajb9Mtxdkc4
 BaQCH8XhuCXU8IbvDanzpEzZaNNvaVmg/6iIlFw3qknDLbmkLzqdlv1VQSaWgVGg+ZNt
 R3RDisGnYGGIeZtZ6TaRAnp4p1ENQZOsvNQLzCYSyv8DZTiNf5dmSe08TU/EpLapalbg
 O5mP4rEDVSOAgIHIr5sFI8uLVeiaxm6mrREfy7kHEzosg80KfFJ0kF9j9jBbBs7N2vBB
 x7Ig==
X-Gm-Message-State: APjAAAUmG9VkrKxwov9fskvrVTRbOIv7uk6ZDsHGiD/JM8cWsGGcrxEl
 y7DZNKSCKdPtZH3hvPtxqFkSzA==
X-Google-Smtp-Source: APXvYqxFBE3kxigBHHifCwiRVBNPGG9/R+BcMI2vSqv/pA1AkddGPDPye+08h6Sn5ZFJoOKfqS3Zvg==
X-Received: by 2002:a54:4615:: with SMTP id p21mr2435033oip.22.1562063726111; 
 Tue, 02 Jul 2019 03:35:26 -0700 (PDT)
Received: from localhost.localdomain (li964-79.members.linode.com.
 [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id 61sm5139805otx.8.2019.07.02.03.35.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 03:35:25 -0700 (PDT)
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
Subject: [PATCH v1 05/11] perf trace: Smatch: Fix potential NULL pointer
 dereference
Date: Tue,  2 Jul 2019 18:34:14 +0800
Message-Id: <20190702103420.27540-6-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190702103420.27540-1-leo.yan@linaro.org>
References: <20190702103420.27540-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_033527_523134_E38F38A0 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
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

Based on the following report from Smatch, fix the potential
NULL pointer dereference check.

  tools/perf/builtin-trace.c:1044
  thread_trace__new() error: we previously assumed 'ttrace' could be
  null (see line 1041).

tools/perf/builtin-trace.c
1037 static struct thread_trace *thread_trace__new(void)
1038 {
1039         struct thread_trace *ttrace =  zalloc(sizeof(struct thread_trace));
1040
1041         if (ttrace)
1042                 ttrace->files.max = -1;
1043
1044         ttrace->syscall_stats = intlist__new(NULL);
             ^^^^^^^^
1045
1046         return ttrace;
1047 }

This patch directly returns NULL when fail to allocate memory for
ttrace; this can avoid potential NULL pointer dereference.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/builtin-trace.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/tools/perf/builtin-trace.c b/tools/perf/builtin-trace.c
index f3532b081b31..874d78890c60 100644
--- a/tools/perf/builtin-trace.c
+++ b/tools/perf/builtin-trace.c
@@ -1038,9 +1038,10 @@ static struct thread_trace *thread_trace__new(void)
 {
 	struct thread_trace *ttrace =  zalloc(sizeof(struct thread_trace));
 
-	if (ttrace)
-		ttrace->files.max = -1;
+	if (ttrace == NULL)
+		return NULL;
 
+	ttrace->files.max = -1;
 	ttrace->syscall_stats = intlist__new(NULL);
 
 	return ttrace;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
