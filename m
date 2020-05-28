Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5F61E6939
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 20:21:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=m/q7dMSnYiC9/cjUM1tOlSryMYB2mQMQejGtiFrSAXg=; b=jnutnrwAmEy/vNiDo0lv0lPHkb
	vBygTESUmYHFNW67f495IcWzXO5NrUYWz2K0fi/WyWLXTA1eAKF9bfsgo+2ADkzcYbG6qGD1OX2Gy
	NF6Uc3/3wGqx/yowKMp3lpVGLo3gJdWuDDepl5hrlEjEAs1EuocIpCLIyttRjjlN+Pujs0BG/ognw
	hrJFQoQJvW4tgoMo/bvsdPam6mUGnrDIFrAPZeiFsbZj1qJRT+X5zH1TWPEUQPZ1DhGCWcWGj0g0q
	UyU7jkDTo6I/awtPxSB04ftazFdldzxhUZrrLKvtpTyW3dIQKQZQXrT6UhB+KTIOaKx6AkRHwt6xD
	L0BBG+Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeN9M-0005Fx-Fe; Thu, 28 May 2020 18:21:04 +0000
Received: from rnd-relay.smtp.broadcom.com ([192.19.229.170])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeN8p-0004yd-3i
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 18:20:32 +0000
Received: from mail-irv-17.broadcom.com (mail-irv-17.lvn.broadcom.net
 [10.75.242.48])
 by rnd-relay.smtp.broadcom.com (Postfix) with ESMTP id 2476B30D739;
 Thu, 28 May 2020 11:20:30 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 rnd-relay.smtp.broadcom.com 2476B30D739
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
 s=dkimrelay; t=1590690030;
 bh=/wzEsGsZX3oj///RlV8+bfcA1u7yygbmy2y0Yml+keA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=SojDiFWas3ner6nC5UWQYjADQd3hA+iUokOuq2TDm6bgGjE02VZFDS8oX+IEExpBi
 StWhIbmhgPYpZo19CXx6OqaOiZzbDxymSH8m47jEUy8IbKe2vZQNbnNB/mecLuJt8b
 hZUFlOCuyCZ+nYXREms5r4qIMSO2vGf7iv+MdxAU=
Received: from lbrmn-mmayer.ric.broadcom.net (lbrmn-mmayer.ric.broadcom.net
 [10.136.28.150])
 by mail-irv-17.broadcom.com (Postfix) with ESMTP id 6AA7014008B;
 Thu, 28 May 2020 11:20:29 -0700 (PDT)
From: Markus Mayer <markus.mayer@broadcom.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH 3/3] cpufreq: brcmstb-avs-cpufreq: send S2_ENTER / S2_EXIT
 commands to AVS
Date: Thu, 28 May 2020 11:20:14 -0700
Message-Id: <20200528182014.20021-3-mmayer@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200528182014.20021-1-mmayer@broadcom.com>
References: <20200528182014.20021-1-mmayer@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_112031_173723_38484275 
X-CRM114-Status: GOOD (  10.93  )
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

On suspend we send AVS_CMD_S2_ENTER and on resume AVS_CMD_S2_EXIT.
These are best effort calls, so we don't check the return code or take
any action if either of the calls fails.

Signed-off-by: Markus Mayer <mmayer@broadcom.com>
---
 drivers/cpufreq/brcmstb-avs-cpufreq.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/cpufreq/brcmstb-avs-cpufreq.c b/drivers/cpufreq/brcmstb-avs-cpufreq.c
index 79a0538a531a..3e31e5d28b79 100644
--- a/drivers/cpufreq/brcmstb-avs-cpufreq.c
+++ b/drivers/cpufreq/brcmstb-avs-cpufreq.c
@@ -506,7 +506,14 @@ static int brcm_avs_suspend(struct cpufreq_policy *policy)
 	 * AVS co-processor, not necessarily the P-state we are running at now.
 	 * So, we get the current P-state explicitly.
 	 */
-	return brcm_avs_get_pstate(priv, &priv->pmap.state);
+	ret = brcm_avs_get_pstate(priv, &priv->pmap.state);
+	if (ret)
+		return ret;
+
+	/* This is best effort. Nothing to do if it fails. */
+	(void)__issue_avs_command(priv, AVS_CMD_S2_ENTER, 0, 0, NULL);
+
+	return 0;
 }
 
 static int brcm_avs_resume(struct cpufreq_policy *policy)
@@ -514,6 +521,9 @@ static int brcm_avs_resume(struct cpufreq_policy *policy)
 	struct private_data *priv = policy->driver_data;
 	int ret;
 
+	/* This is best effort. Nothing to do if it fails. */
+	(void)__issue_avs_command(priv, AVS_CMD_S2_EXIT, 0, 0, NULL);
+
 	ret = brcm_avs_set_pmap(priv, &priv->pmap);
 	if (ret == -EEXIST) {
 		struct platform_device *pdev  = cpufreq_get_driver_data();
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
