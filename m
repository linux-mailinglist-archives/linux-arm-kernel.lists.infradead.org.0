Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 666B4146DB5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 17:01:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YW8e7eqoK81qhtHj2zdvvqwdCELq5wfENqi+sE/kiNQ=; b=cBFxhvuznOe0QT
	cQ7vauFnpqftNIhxTKSa483IA1EYzfntvyvCrqugIMc8TU9RGxWQrxJJ/PFwlGlHaSxhDaq8KlEiK
	cMtnSghtMje6LRwyT3X3KAn7DkSNmGUHIE9/H6/MopdcVl6kqTl0KSdtlwr4aDjLfZx/kiPW9avg7
	qfSDc3KctMnYWe7Gz+7d0NQva7/jvUmv2E+Vx674UXaBBLaBfhjXT4rzHD/V2+JMv2Q0RWd8SiQQP
	erL+dSS2SVRWLg94nyWZBmsPAu24Lduf6tGKTnAHW3+2Hml7xTrd4sYvhZLESXolzWdkn6K6s51fH
	jbf5cUqhOyhw7mDe35IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuev7-0003yX-A7; Thu, 23 Jan 2020 16:01:25 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iueuZ-0003vs-HK
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 16:00:53 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1579795248; h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=eFeZtL7giiOcNKhy0ZgWz6ZZVkZcK/c5/KyFaL3YYBo=;
 b=cUkyIvIqFoaNpZ2ABieVpWB7om3nk3tv9e8jMqkNstDDFVpYorUvmDg04pKEZZBcVOKtER1Y
 8+s5vGPbfyKTUvL7hzfyD/nC0H1tT2nyER1K68+5aKuSfTGK1F0O0eQDsgJrUxeXd9xdbPBC
 Muod+lURD239Nt97QfWlMGT/hDE=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e29c32b.7f191b806b90-smtp-out-n02;
 Thu, 23 Jan 2020 16:00:43 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id D9995C447A1; Thu, 23 Jan 2020 16:00:42 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from blr-ubuntu-253.qualcomm.com
 (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 63103C43383;
 Thu, 23 Jan 2020 16:00:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 63103C43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Kees Cook <keescook@chromium.org>, Anton Vorontsov <anton@enomsg.org>,
 Colin Cross <ccross@android.com>, Tony Luck <tony.luck@intel.com>,
 Joel Fernandes <joel@joelfernandes.org>
Subject: [PATCH] pstore: Fix printing of duplicate boot messages to console
Date: Thu, 23 Jan 2020 21:30:31 +0530
Message-Id: <20200123160031.9853-1-saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_080051_634509_A093F8FC 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, Matthias Kaehlcke <mka@chromium.org>,
 Stephen Boyd <swboyd@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since commit f92b070f2dc8 ("printk: Do not miss new messages
when replaying the log"), CON_PRINTBUFFER flag causes the
duplicate boot messages to be printed on the console when
PSTORE_CONSOLE and earlycon (boot console) is enabled.
Pstore console registers to boot console when earlycon is
enabled during pstore_register_console as a part of ramoops
initialization in postcore_initcall and the printk core
checks for CON_PRINTBUFFER flag and replays the log buffer
to registered console (in this case pstore console which
just registered to boot console) causing duplicate messages
to be printed. Remove the CON_PRINTBUFFER flag from pstore
console since pstore is not concerned with the printing of
buffer to console but with writing of the buffer to the
backend.

Console log with earlycon and pstore console enabled:

[    0.008342] Console: colour dummy device 80x25
[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x51df805e]
...
[    1.244049] hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.
[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x51df805e]

Fixes: f92b070f2dc8 ("printk: Do not miss new messages when replaying the log")
Reported-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---
 fs/pstore/platform.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/pstore/platform.c b/fs/pstore/platform.c
index d896457e7c11..271b00db0973 100644
--- a/fs/pstore/platform.c
+++ b/fs/pstore/platform.c
@@ -505,7 +505,7 @@ static void pstore_console_write(struct console *con, const char *s, unsigned c)
 static struct console pstore_console = {
 	.name	= "pstore",
 	.write	= pstore_console_write,
-	.flags	= CON_PRINTBUFFER | CON_ENABLED | CON_ANYTIME,
+	.flags	= CON_ENABLED | CON_ANYTIME,
 	.index	= -1,
 };
 
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
