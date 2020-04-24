Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 851F11B7361
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 13:41:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YkOcn3M4Jf7rC7O9AF2j0g/+MxduUnDIimqVxAeFywI=; b=XE21uhTEIQ7Rv4
	fGOEyeCLIqibDGBkDZ01PKyoG6/wH9Ct4bpkvKD8Oe98aRP0dtUXx/dOAt/xFpX12I6j8uhzu1WbA
	MkmPDnxXWI0axIsJUsQuRPlw5z0p+ALwc+rNaenlxNLiv7DfXFRWRNS/0ZTwG2o/nbyF3YlIeMrnv
	Hfjx3OmOE111lyMTCxawra4h8IiuujQJOxa/lUCM5t99pGb2ightSo18Y3tdkKKKclYHMDWfZZYSs
	wMCbzCVPMgcWL3NRQmabcLWhajH9RHu+0/BcTzZDm4sQg6NtYchONcPen/moMvGQc//2Jo7JURC6F
	TYNHg9zYiDm9h9b8OQ7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRwiI-0000Zk-UI; Fri, 24 Apr 2020 11:41:46 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRwhn-0000Of-6h
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 11:41:17 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03OBWRX1023149; Fri, 24 Apr 2020 13:41:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=5Rg4znNj42bzqjnolZJ9lV8rYKa4nFxeh6irBMvctcs=;
 b=Cz/dBvho/0XMcgtyhgX+W9Q4pEgmNqeGCaUPo1EHOg6bNV9ptL7BHw1WnEvIE6Lf9XEP
 +ALfbyWp8T0ILDB6RGdtVPIjLIEK3w8TCsKtyLyA2iVk1qAxD1T/kabR55faLv1Wwb7+
 b2Y1rmm1MSweMa/CYsHoPvyACRCoeGlAgtjCYAjzvkrDKkJ2XCWvVUTr9FODH3X8fFX9
 bcEK5ybbmsAC2pQgNrf6tb57RTceHw8hcSFwsAbaGqHAd42x99+QIHiWgf8JcDD428zM
 q3n/3Jb9Dxtfof3ZxFRrNOBOR1P7ZHflgA5+pyj99aRNe85rQNv9yXzp6dZVJO9QhWSw RA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30fpp9bch9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 24 Apr 2020 13:41:04 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6A0DE100038;
 Fri, 24 Apr 2020 13:41:04 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 576082B3DA2;
 Fri, 24 Apr 2020 13:41:04 +0200 (CEST)
Received: from localhost (10.75.127.49) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 24 Apr 2020 13:41:03
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <rjw@rjwysocki.net>, <viresh.kumar@linaro.org>, <hugues.fruchet@st.com>,
 <mchehab@kernel.org>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <pavel@ucw.cz>, <len.brown@intel.com>
Subject: [RFC 2/3] cpufreq: governor: Use minimum load QoS
Date: Fri, 24 Apr 2020 13:40:57 +0200
Message-ID: <20200424114058.21199-3-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200424114058.21199-1-benjamin.gaignard@st.com>
References: <20200424114058.21199-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG5NODE2.st.com (10.75.127.14) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-24_04:2020-04-23,
 2020-04-24 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_044115_718044_2F06A392 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
