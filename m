Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FC25CDB4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 12:37:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bRbfnyE1KksNNr+qT3eBqvXq+6Gx8/jq7RsIv4pfsCY=; b=EWzYeCSshyGh1GY/Y6THsmp6LG
	AMtRXj/LNY2S0vBbzGAXQKd+048CfUrCQq0/NhwsEPX/KgPTjUiEerfPf74WjaitcV7ql6ujcKuXK
	0hOA6amTby6dpNDA2cJFuWjeRXpWYp+fJk3RB/oe3hQc2+7eJuSE1EBqQYEeswYmgUCEQl4IkoJsn
	0ne9Vhxdsr3Lwx7n7nCosRXScEy1RcMb6jW6wRn328MbHA288K2ktEFtatzvK+o6tENw0p7+958kI
	Z5LNe/SDVuPr0kVHqfAAzgIwetD4w5owH8KDeFEe9qhHck+X7CL5Icx6hFh0sIm9LNygqdY7h4tFH
	nr64+qqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiGAe-0005T2-6M; Tue, 02 Jul 2019 10:37:56 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiG8c-00044T-L9
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 10:35:52 +0000
Received: by mail-oi1-x244.google.com with SMTP id w7so12607368oic.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 03:35:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=zTwTfXNgxTmrGRUjBKcfiXIJvV7RcQHKF6DIe75zo+I=;
 b=qmeaKVWdYJMzo5niBo8eJXFwzM8pytrY9m8n2B5/m28fbL9VJT6KWdOOE86JBx8ntL
 +vff4tW/HcSWI7kaAKHhD3u+0ivKHodubYbUbLUSilYabfc3gbGl+4nWUvaSCp+zj0ay
 QqIfGyD6iwhac5mxyv5FSMGGKbIK/XJMfsOKX7YTs0KXvUGx3Xqz2PBqs9avL+DCOH1T
 u2Rw3lY5ZSgrrfRnnMQ3rc/w8GuoaGJeh8U3W4jhpwrnZBbWCuFQ9EE2Jjd6sudTm7VX
 aH3e9GH6StNynB4j47dNPlpAEuRgXbbHp7/vr3dv9cCdgf8TtuiNQ3k71NfaNui1NR6/
 8FrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=zTwTfXNgxTmrGRUjBKcfiXIJvV7RcQHKF6DIe75zo+I=;
 b=dXx9K70lq0dVuB7hEudJSlS7O0Pc+nelwRFPWw6QvfIR8i3VI4dTCpxvKzdE3Rlmtf
 cL+snt7mS7bLYgt9RMszwQ8+kWG3SNahbzZbHAXHdzabDviaLe9EY8NGyUiVRIyWay33
 HHjn4P6Ox0lOV6vDy7zeJtbWt/Qrxq8twFmNj6aARMfOGS4/X6OudMI7CVif1Oz/AFlF
 mmDE6TZZ7NFI+hyGtPEhDTbitdHvT9/eEgEM4S1SDNB33y2j2jNQNB4xOU1u7Ach3yQd
 nSBkO6dk2ZEWq06tq52ARKNJC9pXn2QrEokZudwmPVIuQdvRZVGi929frWV3UNameFiR
 7OPw==
X-Gm-Message-State: APjAAAUyIWK01DC2a9+Yf7OMaXHq7/j7NcXW7jmu3Akr/ZWRbFNBrMJg
 Aao7cX+M7cbTXGZoJ6KgQxHnmg==
X-Google-Smtp-Source: APXvYqzadH2JYmTLt475KdiZ+RY+YlPJ1tAhSwr9KnjUX2mXMzimmxW9XG9aSGOZZ3INH1wy364PFg==
X-Received: by 2002:aca:5241:: with SMTP id g62mr2474775oib.41.1562063749790; 
 Tue, 02 Jul 2019 03:35:49 -0700 (PDT)
Received: from localhost.localdomain (li964-79.members.linode.com.
 [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id 61sm5139805otx.8.2019.07.02.03.35.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 03:35:49 -0700 (PDT)
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
Subject: [PATCH v1 08/11] perf session: Smatch: Fix potential NULL pointer
 dereference
Date: Tue,  2 Jul 2019 18:34:17 +0800
Message-Id: <20190702103420.27540-9-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190702103420.27540-1-leo.yan@linaro.org>
References: <20190702103420.27540-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_033551_191258_56C128D4 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
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

  tools/perf/util/session.c:1252
  dump_read() error: we previously assumed 'evsel' could be null
  (see line 1249)

tools/perf/util/session.c
1240 static void dump_read(struct perf_evsel *evsel, union perf_event *event)
1241 {
1242         struct read_event *read_event = &event->read;
1243         u64 read_format;
1244
1245         if (!dump_trace)
1246                 return;
1247
1248         printf(": %d %d %s %" PRIu64 "\n", event->read.pid, event->read.tid,
1249                evsel ? perf_evsel__name(evsel) : "FAIL",
1250                event->read.value);
1251
1252         read_format = evsel->attr.read_format;
                           ^^^^^^^

'evsel' could be NULL pointer, for this case this patch directly bails
out without dumping read_event.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/session.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/tools/perf/util/session.c b/tools/perf/util/session.c
index 54cf163347f7..2e61dd6a3574 100644
--- a/tools/perf/util/session.c
+++ b/tools/perf/util/session.c
@@ -1249,6 +1249,9 @@ static void dump_read(struct perf_evsel *evsel, union perf_event *event)
 	       evsel ? perf_evsel__name(evsel) : "FAIL",
 	       event->read.value);
 
+	if (!evsel)
+		return;
+
 	read_format = evsel->attr.read_format;
 
 	if (read_format & PERF_FORMAT_TOTAL_TIME_ENABLED)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
