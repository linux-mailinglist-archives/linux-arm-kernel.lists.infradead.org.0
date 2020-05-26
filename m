Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 765311E252D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 17:16:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YkOcn3M4Jf7rC7O9AF2j0g/+MxduUnDIimqVxAeFywI=; b=HwmX9cvFmv9fr/
	ITyBgWt2Nq6T4uvpbDLBJPnQruWSAL0MffV9qj8hYITAGsFgfKzEf0zUqp9e6r438tV+ONTi+ImLE
	DetDs1uq9m+jPS0v+lNVpbnnhggw8FNJhmWuKrO+c0W0VaJ/KeJ5HNnu9+fTSF0Jr8+gTqNfRE/OK
	3d9N2OlKrCsl5Yp7q6J7UsA0ewUJbjDrOp/wq3tYEWZJmZKgt39p090YhLZZTiASJczB8YWZxST3r
	BOrPOefaNl7zo7MJWlWSUpWBEM8ImU9JHgOO93UvqtXur6vqjg4gwXcHfTx9kQGuz9OOpxC41H2vB
	P77oRTorGDj4JStPZYbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdbJz-0000Bb-0d; Tue, 26 May 2020 15:16:51 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdbJo-0000AP-VO
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 15:16:42 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04QFBxuh017911; Tue, 26 May 2020 17:16:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=5Rg4znNj42bzqjnolZJ9lV8rYKa4nFxeh6irBMvctcs=;
 b=ZJ2hInnnSvYQ638CgiFTDp+jSj5/oidFxGSA9sSM2XMhqc62QR9HNVaLncNLEIXTlN5p
 ER9JTb3KxLPPCnv5R6HHhsfzXAGop93eNUX31yoR0c2iZM0IAnNWdbuG+Ctsxra/WIJn
 PT0L9XDXZYuKr4OgrITF+Pv2aLdTkzkexmC9L6OGQbIAuaZXL4x8M5gOdj0yN7Uku2/J
 poaJN/R1cRZtm2XPk/C6fkZmtuoTfbN3MPkGMk8uYvcX1X5AvnwPGeEZEfZlOs9UKl/Z
 mgTu5n1NvqKFkTQpFm6riYPd9ag77GGTFGfTR5wQltucbYf6AMumYRWBUOUzviSprDg8 Wg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 316rya8ff0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 26 May 2020 17:16:28 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C6EF510002A;
 Tue, 26 May 2020 17:16:27 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B5EF32C1DA0;
 Tue, 26 May 2020 17:16:27 +0200 (CEST)
Received: from localhost (10.75.127.51) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 26 May 2020 17:16:27
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <rjw@rjwysocki.net>, <viresh.kumar@linaro.org>, <hugues.fruchet@st.com>,
 <mchehab@kernel.org>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <pavel@ucw.cz>, <len.brown@intel.com>,
 <valentin.schneider@arm.com>, <vincent.guittot@linaro.org>
Subject: [RFC 2/3] cpufreq: governor: Use minimum load QoS
Date: Tue, 26 May 2020 17:16:18 +0200
Message-ID: <20200526151619.8779-3-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200526151619.8779-1-benjamin.gaignard@st.com>
References: <20200526151619.8779-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG5NODE2.st.com (10.75.127.14) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-05-26_02:2020-05-26,
 2020-05-26 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_081641_427442_AD39083F 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make sure that the returned load is above the system-wide minimum
load QoS.
Devices could set this specific QoS to inform governors about their
need in terms of CPU load when computing it from idle time isn't accurate.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 drivers/cpufreq/cpufreq_governor.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/cpufreq/cpufreq_governor.c b/drivers/cpufreq/cpufreq_governor.c
index f99ae45efaea..1494e5e4c788 100644
--- a/drivers/cpufreq/cpufreq_governor.c
+++ b/drivers/cpufreq/cpufreq_governor.c
@@ -118,6 +118,7 @@ unsigned int dbs_update(struct cpufreq_policy *policy)
 	unsigned int ignore_nice = dbs_data->ignore_nice_load;
 	unsigned int max_load = 0, idle_periods = UINT_MAX;
 	unsigned int sampling_rate, io_busy, j;
+	unsigned int qos_min_load;
 
 	/*
 	 * Sometimes governors may use an additional multiplier to increase
@@ -225,6 +226,10 @@ unsigned int dbs_update(struct cpufreq_policy *policy)
 
 	policy_dbs->idle_periods = idle_periods;
 
+	qos_min_load = cpufreq_minload_qos_limit();
+	if (qos_min_load > max_load)
+		max_load = qos_min_load;
+
 	return max_load;
 }
 EXPORT_SYMBOL_GPL(dbs_update);
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
