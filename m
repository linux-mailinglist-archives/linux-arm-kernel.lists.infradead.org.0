Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A3E32BD9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 11:13:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J/52+BRnmerWOK+Dec613GTq45ElPXiVMX6iXNfqPPM=; b=h/oAehKpe1EMV8
	BeiznKWm0nQOwxreCAwVYjZRPqK37nUKZ4BMROG1SoW7+aFJwM3jUAHr9Fi/laqPM1fkoneP3APJ0
	IeEYw6BQABAkVpUObObViGpKXRhRouFE9JOgINbd0OGJAa2uChOZoG11AL2AYkp8pKXtvigYB10pz
	whAHhK9TlkBLqOu7csyXd0oetkWiby3jE2umVUQY+xElZd5pFN0wW24dvB7XixUTrwdd5yP2+9v0O
	dZ5ZPDwIhNuxw5/KNe1p5R6V7RA9Fk4axYJqKyYHoxkh3xXvghSQcb1GNLe8ndXNJoJn4gQlnEyRh
	kEYSzXSbv7OOaH2KMNHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXj1m-0001XC-Cv; Mon, 03 Jun 2019 09:13:14 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXj1f-0001WV-Qe
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 09:13:09 +0000
Received: by mail-lj1-x242.google.com with SMTP id e13so15384320ljl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 02:13:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=p2w7Kl57iLHckjKus0ozI/d6mjFcbpIqopjV/HxyM1s=;
 b=LErR/q1Cw7oedcRjmOCVzqcAxs8gPx/T7/buH9Lwg8mSGR8eAtJ2kTcwFRHivjn5Ex
 kEjWaZ0dS19gIlRmtSTi0+74wxiQjf4cTAxf6mfbrFI1L/VVIf/lavH55pIQidTKt0LG
 2bOOWaw3tWlDzpGQXwdZjUkhHrTMpQohW7T04THJ1XaQ294z0vbUDDvwYtL4a72rZ7KG
 7x2a+G2Gwx/2N46KE1z6HifQw3qO52VIzGyZMI0hqpYVvdNJTb4Zob+fSBJTFrWEwMFa
 uMVDaQRSfaZWNnyGyJJqBArLdT7HZuOV1TPrk5K2dQgjo5cyiopk3TKCtcAeZbSyhF7P
 7NYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=p2w7Kl57iLHckjKus0ozI/d6mjFcbpIqopjV/HxyM1s=;
 b=eZ6k8EJZEFHCKmnspd5lrb7fuQwHp+XuLl/TQTusc7t0JJXsxiT6OVhlCZJ3BZ0203
 RAaBS8ax4f6MAuLg4ekTv563pE1gBI6fBE4EHDbaxNZISOBRG2R8x2JwKaYQykD58z00
 q4zlsYhpaAkRtiD6HewKdPjCdzYXqUtaZ891wbHWq8a4dpWDfsWbBoJOA6lucjzRNd7R
 E9TZ22ZI8N4EJql7fkqDnhNVG99+NAXE4hMDTYpndsB/TD/wGcvUjXagz5tSZu/KA9IU
 8THabGo9JOu+0zmDeXWKBEJw6kYGzB2SeYDGYpJ8ZucXLeFwiELNqjRytjhv15WKDnzQ
 4xlg==
X-Gm-Message-State: APjAAAVsHgHRfzJcLPORD6T9PRQ3lV5zzDk3QWhOIL4r7aXtZD1vnOWI
 b5y/7ac9sOozewrZIj/lVNmdLg==
X-Google-Smtp-Source: APXvYqzH+12IqYjeDa9Cf9SfS3k+UN9FSA/zr7tE4XHHnE6+zYlsVHzadgAxfalAVmWokf3dCikz8w==
X-Received: by 2002:a2e:5b94:: with SMTP id m20mr3452661lje.7.1559553185375;
 Mon, 03 Jun 2019 02:13:05 -0700 (PDT)
Received: from localhost (c-1c3670d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.54.28])
 by smtp.gmail.com with ESMTPSA id v2sm3030127lfi.52.2019.06.03.02.13.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Jun 2019 02:13:04 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: mark.rutland@arm.com, marc.zyngier@arm.com, daniel.lezcano@linaro.org,
 tglx@linutronix.de
Subject: [PATCH 1/3] clocksource/arm_arch_timer: mark arch_counter_get_* as
 notrace
Date: Mon,  3 Jun 2019 11:12:56 +0200
Message-Id: <20190603091256.25012-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_021307_923802_03882AA8 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mingo@redhat.com, Anders Roxell <anders.roxell@linaro.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When CONFIG_FUNCTION_GRAPH_TRACER is enabled we end up in this circular
call trace since function arch_counter_get_cntvct() isn't marked with no
trace:

[   17.914934] Call trace:
[   17.915211]  ftrace_return_to_handler+0x194/0x288
[   17.915551]  return_to_handler+0x1c/0x38
[   17.915855]  trace_clock_local+0x38/0x88
[   17.916159]  function_graph_enter+0xf0/0x258
[   17.916465]  prepare_ftrace_return+0x60/0x90
[   17.916772]  ftrace_graph_caller+0x1c/0x24
[   17.917093]  arch_counter_get_cntvct+0x10/0x30
[   17.917417]  sched_clock+0x70/0x218
[   17.917723]  trace_clock_local+0x38/0x88
[   17.918026]  function_graph_enter+0xf0/0x258
[   17.918332]  prepare_ftrace_return+0x60/0x90
[   17.918649]  ftrace_graph_caller+0x1c/0x24
[   17.918963]  arch_counter_get_cntvct+0x10/0x30
[   17.919286]  sched_clock+0x70/0x218

Rework so that function arch_counter_get_cntvct() is marked with notrace.

Fixes: 0ea415390cd3 ("clocksource/arm_arch_timer: Use arch_timer_read_counter to access stable counters")
Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 drivers/clocksource/arm_arch_timer.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/clocksource/arm_arch_timer.c b/drivers/clocksource/arm_arch_timer.c
index b2a951a798e2..f4d5bd8fe906 100644
--- a/drivers/clocksource/arm_arch_timer.c
+++ b/drivers/clocksource/arm_arch_timer.c
@@ -149,22 +149,22 @@ u32 arch_timer_reg_read(int access, enum arch_timer_reg reg,
 	return val;
 }
 
-static u64 arch_counter_get_cntpct_stable(void)
+static u64 notrace arch_counter_get_cntpct_stable(void)
 {
 	return __arch_counter_get_cntpct_stable();
 }
 
-static u64 arch_counter_get_cntpct(void)
+static u64 notrace arch_counter_get_cntpct(void)
 {
 	return __arch_counter_get_cntpct();
 }
 
-static u64 arch_counter_get_cntvct_stable(void)
+static u64 notrace arch_counter_get_cntvct_stable(void)
 {
 	return __arch_counter_get_cntvct_stable();
 }
 
-static u64 arch_counter_get_cntvct(void)
+static u64 notrace arch_counter_get_cntvct(void)
 {
 	return __arch_counter_get_cntvct();
 }
@@ -947,7 +947,7 @@ bool arch_timer_evtstrm_available(void)
 	return cpumask_test_cpu(raw_smp_processor_id(), &evtstrm_available);
 }
 
-static u64 arch_counter_get_cntvct_mem(void)
+static u64 notrace arch_counter_get_cntvct_mem(void)
 {
 	u32 vct_lo, vct_hi, tmp_hi;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
