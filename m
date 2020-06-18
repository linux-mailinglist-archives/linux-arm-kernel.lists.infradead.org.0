Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 030BE1FDF4D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:42:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SdgCs69WQfuoPOaw90ZMrZ2BK32sxq6Ec9E1uTO1KRg=; b=ZKYpvV6qZS/6U6
	CuKXibh24ravUCEX4vlW3Geq98YWKsGqsVtD/m1NC4DFHNjQWunSVCszJumKoF3mur3L1HHx7wgwx
	gmRyI4zK5m8s+ZGg/VQzMo6ttTVuBzykLnlzd6tFRPrJV9kmDaL0l8ri72FyGaR1xrv9ee56jolG3
	Rsh9osWTN2kkvQMXu5ThpalmdwQdHaM7iHPAkqxN31EiweJCnzqGfa8SNPrFs18YDe/4VielSxgB7
	E98dEUVR0YQBvtTKo4ii7vryhc7AmrW+BRc9l7RRrOW0a3FEZzwyimxIPHLk4l90RNbV4gKTQBYyF
	NcCayL9HNm9ieCje/Ykg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljZQ-0006VP-0x; Thu, 18 Jun 2020 01:42:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jljBP-0008HT-U0
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 01:17:38 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5BE8621D90;
 Thu, 18 Jun 2020 01:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592443055;
 bh=St+32PWtOnP3r5Q0VnSaOgp8ULPNXgJlQD252LrToqI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=d+ivjD8VWifDsUTjT5+6fbBgXBefpI5rTRhLbfbSWNa8YeLJOHhHfaGfuYUdbpBnu
 bE8RBcaXlbTAU1QFpJocupIRz2524gOvvk5zi0GEPEQODrdHQ7zTaWb6Lg0OpS8q+T
 g7ltwHb+oGGdoCFcDgRUaIl7E5g76RvgdLwFlMSg=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 047/266] coresight: tmc: Fix TMC mode read in
 tmc_read_prepare_etb()
Date: Wed, 17 Jun 2020 21:12:52 -0400
Message-Id: <20200618011631.604574-47-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618011631.604574-1-sashal@kernel.org>
References: <20200618011631.604574-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_181736_031859_E4295427 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <swboyd@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>

[ Upstream commit 347adb0d6385c3220dc01ab61807a5b1892901cc ]

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
Link: https://lore.kernel.org/r/20200518180242.7916-14-mathieu.poirier@linaro.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
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
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
