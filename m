Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D84011E6934
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 20:20:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3TShsw7TrJ9zBkKYOnAUTLOHAjfaew6o7Fx6FW+0QvM=; b=ReV
	PfEQT+TdwEWuplXxGV6ELKBwXCMUkKi1N8Mj4Kg9ryniWS676oYZ6dNkWDpgEoTa7V0qX9/JzeVUc
	8OLgRE3ccVNRKIp89J+xGBM1SQb+l9/cj0e/GzwZs/snwwYNFSFtgTRJyV65QHCJc12pC7QAdeMV2
	khRQ/99Dvg9wp7HFvHwSrUi4Hc/naN1UFHJtm4b2l+guIA5Qbweh1pXwf0KAE7lPRhNLEjkJG30Jt
	s1jeBuUD2bvtlGi6iVJykdnnX9dY4KA+NbfunwdEMdNVAa5TIIJRkO+IdbU+bxiop0H7WpatUGajE
	j7GZecB3qwnWEsrmf04AKaNPyaXdUHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeN8o-0004op-Sz; Thu, 28 May 2020 18:20:30 +0000
Received: from rnd-relay.smtp.broadcom.com ([192.19.229.170])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeN8a-0004nx-TT
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 18:20:18 +0000
Received: from mail-irv-17.broadcom.com (mail-irv-17.lvn.broadcom.net
 [10.75.242.48])
 by rnd-relay.smtp.broadcom.com (Postfix) with ESMTP id 042F130D897;
 Thu, 28 May 2020 11:20:16 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 rnd-relay.smtp.broadcom.com 042F130D897
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
 s=dkimrelay; t=1590690016;
 bh=OMwH5PlSdBCTh+TgNNXxVNVUH+PkcvF0SwghNsWFLvg=;
 h=From:To:Cc:Subject:Date:From;
 b=fEoi258tdQ2UsqTvPaDSxg0TZe/gRjRptwVyKNO8zlgoASLxCzJV22AFSKkBZAoSJ
 wxsrPN23eIKFpaprQFWhjR1xPxLy1l+IshoaAgPMC1j3sn+IW9coKB1mtyjAWLTMB+
 GpDrJstRjEjGJJHcqF+Le9+15o5IwNtZ16wF2ReM=
Received: from lbrmn-mmayer.ric.broadcom.net (lbrmn-mmayer.ric.broadcom.net
 [10.136.28.150])
 by mail-irv-17.broadcom.com (Postfix) with ESMTP id 96627140069;
 Thu, 28 May 2020 11:20:15 -0700 (PDT)
From: Markus Mayer <markus.mayer@broadcom.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH 1/3] cpufreq: brcmstb-avs-cpufreq: more flexible interface for
 __issue_avs_command()
Date: Thu, 28 May 2020 11:20:12 -0700
Message-Id: <20200528182014.20021-1-mmayer@broadcom.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_112016_997700_9294EC7C 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.19.229.170 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Broadcom Kernel List <bcm-kernel-feedback-list@broadcom.com>,
 ARM Kernel List <linux-arm-kernel@lists.infradead.org>,
 Markus Mayer <markus.mayer@broadcom.com>,
 Linux Power Management List <linux-pm@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We are changing how parameters are passed to __issue_avs_command(), so we
can pass input *and* output arguments with the same command, rather than
just one or the other.

Signed-off-by: Markus Mayer <mmayer@broadcom.com>
---
 drivers/cpufreq/brcmstb-avs-cpufreq.c | 30 +++++++++++++--------------
 1 file changed, 14 insertions(+), 16 deletions(-)

diff --git a/drivers/cpufreq/brcmstb-avs-cpufreq.c b/drivers/cpufreq/brcmstb-avs-cpufreq.c
index 4f86ce2db34f..c8b754694a5e 100644
--- a/drivers/cpufreq/brcmstb-avs-cpufreq.c
+++ b/drivers/cpufreq/brcmstb-avs-cpufreq.c
@@ -195,7 +195,8 @@ static void __iomem *__map_region(const char *name)
 	return ptr;
 }
 
-static int __issue_avs_command(struct private_data *priv, int cmd, bool is_send,
+static int __issue_avs_command(struct private_data *priv, unsigned int cmd,
+			       unsigned int num_in, unsigned int num_out,
 			       u32 args[])
 {
 	unsigned long time_left = msecs_to_jiffies(AVS_TIMEOUT);
@@ -225,11 +226,9 @@ static int __issue_avs_command(struct private_data *priv, int cmd, bool is_send,
 	/* Clear status before we begin. */
 	writel(AVS_STATUS_CLEAR, base + AVS_MBOX_STATUS);
 
-	/* We need to send arguments for this command. */
-	if (args && is_send) {
-		for (i = 0; i < AVS_MAX_CMD_ARGS; i++)
-			writel(args[i], base + AVS_MBOX_PARAM(i));
-	}
+	/* Provide input parameters */
+	for (i = 0; i < num_in; i++)
+		writel(args[i], base + AVS_MBOX_PARAM(i));
 
 	/* Protect from spurious interrupts. */
 	reinit_completion(&priv->done);
@@ -256,11 +255,9 @@ static int __issue_avs_command(struct private_data *priv, int cmd, bool is_send,
 		goto out;
 	}
 
-	/* This command returned arguments, so we read them back. */
-	if (args && !is_send) {
-		for (i = 0; i < AVS_MAX_CMD_ARGS; i++)
-			args[i] = readl(base + AVS_MBOX_PARAM(i));
-	}
+	/* Process returned values */
+	for (i = 0; i < num_out; i++)
+		args[i] = readl(base + AVS_MBOX_PARAM(i));
 
 	/* Clear status to tell AVS co-processor we are done. */
 	writel(AVS_STATUS_CLEAR, base + AVS_MBOX_STATUS);
@@ -338,7 +335,7 @@ static int brcm_avs_get_pmap(struct private_data *priv, struct pmap *pmap)
 	u32 args[AVS_MAX_CMD_ARGS];
 	int ret;
 
-	ret = __issue_avs_command(priv, AVS_CMD_GET_PMAP, false, args);
+	ret = __issue_avs_command(priv, AVS_CMD_GET_PMAP, 0, 4, args);
 	if (ret || !pmap)
 		return ret;
 
@@ -359,7 +356,7 @@ static int brcm_avs_set_pmap(struct private_data *priv, struct pmap *pmap)
 	args[2] = pmap->p2;
 	args[3] = pmap->state;
 
-	return __issue_avs_command(priv, AVS_CMD_SET_PMAP, true, args);
+	return __issue_avs_command(priv, AVS_CMD_SET_PMAP, 4, 0, args);
 }
 
 static int brcm_avs_get_pstate(struct private_data *priv, unsigned int *pstate)
@@ -367,7 +364,7 @@ static int brcm_avs_get_pstate(struct private_data *priv, unsigned int *pstate)
 	u32 args[AVS_MAX_CMD_ARGS];
 	int ret;
 
-	ret = __issue_avs_command(priv, AVS_CMD_GET_PSTATE, false, args);
+	ret = __issue_avs_command(priv, AVS_CMD_GET_PSTATE, 0, 1, args);
 	if (ret)
 		return ret;
 	*pstate = args[0];
@@ -381,7 +378,8 @@ static int brcm_avs_set_pstate(struct private_data *priv, unsigned int pstate)
 
 	args[0] = pstate;
 
-	return __issue_avs_command(priv, AVS_CMD_SET_PSTATE, true, args);
+	return __issue_avs_command(priv, AVS_CMD_SET_PSTATE, 1, 0, args);
+
 }
 
 static u32 brcm_avs_get_voltage(void __iomem *base)
@@ -593,7 +591,7 @@ static int brcm_avs_cpufreq_init(struct cpufreq_policy *policy)
 	/* All cores share the same clock and thus the same policy. */
 	cpumask_setall(policy->cpus);
 
-	ret = __issue_avs_command(priv, AVS_CMD_ENABLE, false, NULL);
+	ret = __issue_avs_command(priv, AVS_CMD_ENABLE, 0, 0, NULL);
 	if (!ret) {
 		unsigned int pstate;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
