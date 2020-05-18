Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E10211D83A7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 20:06:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EGdtPT1TwG+04leTrrdVQ9pSze2TvoMyWzw/JV3FAb8=; b=hFAV2XFzrPZ8HB
	mBpZXHYgzFCJtZVBsNBnDSEiLLAmKA4ZbxKUOSrOqZRh2nEiGjXblLzZbwTN6qG+iEk/FIwgzDZUD
	gQ9mXttb64zCtkdu3mKXbENYaZ5dOYvQ9Uohoyh4pFqXxrETDAl9LLa689RNwDWQNY8P/Paox2z8x
	E4vnmvwcSq6KrAJis/0Pf6oi2rQtNfl2f0v0sojHwBzryu6pDJFPRc0FRmcRxdFn6fblUwVeHU9K/
	42OVLOtgELTC2+kYQPq79INcIOUqqvyQ/InXbFxgQJbWGwW0AdBMeYJf5sxQr/mnymKWfZkSqBAtM
	7aAvwzOi6gADTlI1oHsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jak9v-0008Qv-9w; Mon, 18 May 2020 18:06:39 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jak6L-0003OH-Q9
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 18:02:59 +0000
Received: by mail-pl1-x641.google.com with SMTP id s20so4543648plp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 11:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lRmSiRVSYRvReMhh28RP4/vZKd6NlyKhQZ7NuWIDNS0=;
 b=ZDZpYpJeo6pTMJg73otjIXxupf4NOxLc3eJbCmx5qhl17gRTAOHA6aJ1NatGhw1XN8
 Zh5oRPtWLl3j/WpcZsGQUUQ/Nm56HpBhlyGXYz0PyVN9//u627UGxHe/LPgnc0pgaTgx
 t6tJRiBmIaVhyp+GsBqA+quAQZdcIs+eBdt23AzfSf7gXZbt7LEOrNRSzYS+3BXadUVl
 iwyY5jEf/CF6GbBGCTo4G/Begw7x+h6sa262NqlhwazqY+OEPm0lXR6W+yWVT7QExWeW
 yR2L4fgtEizaXkoFJQhKWv3AhoevDpML/oES1udTfVhTgbWxxCsRYd4rN0ufENBNkJtE
 61cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lRmSiRVSYRvReMhh28RP4/vZKd6NlyKhQZ7NuWIDNS0=;
 b=T+t1EpqekoE6MIg9J/4NkKbYisQgAqVedQDMviBQ4gS67kq9VVi4UlUwRk8T86teWu
 AS/sN4siBBXy89SxaQiFwGMKSoE9sxhEevh4EMXkn17bqpll0qwRbjwdvYDoCSuNzvb7
 zt+OZ474eD7ukDP1Efup7nDn/qU1pJmX9dNvvWAiB5LxhOBo4U2h5VMOnBpSrEJrHf4r
 vqvhXG+31cd4xGp22UoH3zUip2Ops93hGRiraaG6+aiFAAsTiE5Aa0ESScx29/KIGinQ
 P31E9VkBQSatmKW8f6nZXvHjo9hD807oiLOlyhWQSkvd/hzaKB8WpV1BDVwXA2vZgbAE
 jNWQ==
X-Gm-Message-State: AOAM5319WEep8c4/yL/90AfJpfunxGf/4iJRKLGsJR5uftA1lGAL1XPS
 haw4VnznO2D1xTXzBz1Lugjsbg==
X-Google-Smtp-Source: ABdhPJzV0PKf6kavOpovJEq9IGfpUxMsogNOF8aZXYQTItbGtVG3wVut+/ZGTMJqzGcJjrpVTYkCNg==
X-Received: by 2002:a17:90a:2306:: with SMTP id
 f6mr589090pje.231.1589824976798; 
 Mon, 18 May 2020 11:02:56 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id v3sm9212314pfv.186.2020.05.18.11.02.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 11:02:56 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 13/23] coresight: tmc: Fix TMC mode read in
 tmc_read_prepare_etb()
Date: Mon, 18 May 2020 12:02:32 -0600
Message-Id: <20200518180242.7916-14-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200518180242.7916-1-mathieu.poirier@linaro.org>
References: <20200518180242.7916-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_110257_939018_EBEF0B19 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>

On some QCOM platforms like SC7180, SDM845 and SM8150,
reading TMC mode register without proper coresight power
management can lead to async exceptions like the one in
the call trace below in tmc_read_prepare_etb(). This can
happen if the user tries to read the TMC etf data via
device node without setting up source and the sink first.
Fix this by having a check for coresight sysfs mode
before reading TMC mode management register.

 Kernel panic - not syncing: Asynchronous SError Interrupt
 CPU: 7 PID: 2605 Comm: hexdump Tainted: G S                5.4.30 #122
 Call trace:
  dump_backtrace+0x0/0x188
  show_stack+0x20/0x2c
  dump_stack+0xdc/0x144
  panic+0x168/0x36c
  panic+0x0/0x36c
  arm64_serror_panic+0x78/0x84
  do_serror+0x130/0x138
  el1_error+0x84/0xf8
  tmc_read_prepare_etb+0x88/0xb8
  tmc_open+0x40/0xd8
  misc_open+0x120/0x158
  chrdev_open+0xb8/0x1a4
  do_dentry_open+0x268/0x3a0
  vfs_open+0x34/0x40
  path_openat+0x39c/0xdf4
  do_filp_open+0x90/0x10c
  do_sys_open+0x150/0x3e8
  __arm64_compat_sys_openat+0x28/0x34
  el0_svc_common+0xa8/0x160
  el0_svc_compat_handler+0x2c/0x38
  el0_svc_compat+0x8/0x10

Fixes: 4525412a5046 ("coresight: tmc: making prepare/unprepare functions generic")
Reported-by: Stephen Boyd <swboyd@chromium.org>
Suggested-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-tmc-etf.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c b/drivers/hwtracing/coresight/coresight-tmc-etf.c
index d0cc3985b72a..36cce2bfb744 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
@@ -596,13 +596,6 @@ int tmc_read_prepare_etb(struct tmc_drvdata *drvdata)
 		goto out;
 	}
 
-	/* There is no point in reading a TMC in HW FIFO mode */
-	mode = readl_relaxed(drvdata->base + TMC_MODE);
-	if (mode != TMC_MODE_CIRCULAR_BUFFER) {
-		ret = -EINVAL;
-		goto out;
-	}
-
 	/* Don't interfere if operated from Perf */
 	if (drvdata->mode == CS_MODE_PERF) {
 		ret = -EINVAL;
@@ -616,8 +609,15 @@ int tmc_read_prepare_etb(struct tmc_drvdata *drvdata)
 	}
 
 	/* Disable the TMC if need be */
-	if (drvdata->mode == CS_MODE_SYSFS)
+	if (drvdata->mode == CS_MODE_SYSFS) {
+		/* There is no point in reading a TMC in HW FIFO mode */
+		mode = readl_relaxed(drvdata->base + TMC_MODE);
+		if (mode != TMC_MODE_CIRCULAR_BUFFER) {
+			ret = -EINVAL;
+			goto out;
+		}
 		__tmc_etb_disable_hw(drvdata);
+	}
 
 	drvdata->reading = true;
 out:
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
