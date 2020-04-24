Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9A91B7360
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 13:41:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fN4/az1r2djDFiZdk/H4jjZCet1pYHeh4wehY1NaRvA=; b=Viq1a9ko00jKAz
	sUrdNzwnDk4HgasoOL7GlAg/nBZhOkjSo/xG/l6SRTGwN74PpDVy5c88wjt5KnRPG3bGlCHeLOxDh
	Nc4BPeEZLous+jbf1xZvgiw7L391a1yeqlaApfbZ/a0XqaRvisSq9EcwW70C12oNT9x3/+NeYUKlU
	uupHcrep2m/s5mO8TtRkjy58RDpFiLTiHwD03mE408I5PXVsIF6NbXhMCJVqcHnqguSitMO03I1Hj
	ranUEyPl96ZL70XXe8PSIYc9c4uGW02SB5UQ04kU7YwWsdh/tve8lGdKHhEpyXTtN6kPB8JYZkMtD
	U+nq6vQW0DaepfoDzCcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRwhx-0000Ql-5m; Fri, 24 Apr 2020 11:41:25 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRwhn-0000Og-6i
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 11:41:17 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03OBWhDp023182; Fri, 24 Apr 2020 13:41:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=48ijLv0H8aPna6VpnvuqVOGM5Dz2rM04kkZgD9MA9eE=;
 b=Es8C1862D8FqWo05sEOjdJfrZx2FT/J+PwwAg+M0K/cS4OlJmwyTpgq9bfrxqVlgXYbJ
 nbWRakh3o8x4jlwSeS4fVYqVs2VlcsBK7F3Mq1cX8TTF5AW8AQa+kosfClU56KGad1l/
 0OO1kRPI8GP5ap1G+lKH6UIhRPtSZ+BUb6L1nQU6ooLF8yVVZcLf6qetCgjmesTMtzh/
 rhyTj9i0zGv0p9dvY7D7PacBj0BDhyxRaNhrSQU5teiMSf15EkxwCrm4F3CORLnCnkiL
 fin6EzodcbFKmO5Lo4pHiV4uc0GTZmd6qU0bBVIGhvvdWD4X1gjbCPoG9Cco0G9oTbA1 1g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30fpp9bchc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 24 Apr 2020 13:41:05 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 25802100034;
 Fri, 24 Apr 2020 13:41:02 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1156C2B3DA0;
 Fri, 24 Apr 2020 13:41:02 +0200 (CEST)
Received: from localhost (10.75.127.49) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 24 Apr 2020 13:41:01
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <rjw@rjwysocki.net>, <viresh.kumar@linaro.org>, <hugues.fruchet@st.com>,
 <mchehab@kernel.org>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <pavel@ucw.cz>, <len.brown@intel.com>
Subject: [RFC 0/3] Introduce cpufreq minimum load QoS
Date: Fri, 24 Apr 2020 13:40:55 +0200
Message-ID: <20200424114058.21199-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG3NODE2.st.com (10.75.127.8) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-24_04:2020-04-23,
 2020-04-24 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_044115_706582_ADDDA5E7 
X-CRM114-Status: GOOD (  10.37  )
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

When start streaming from the sensor the CPU load could remain very low 
because almost all the capture pipeline is done in hardware (i.e. without 
using the CPU) and let believe to cpufreq governor that it could use lower 
frequencies. If the governor decides to use a too low frequency that 
becomes a problem when we need to acknowledge the interrupt during the 
blanking time.
The delay to ack the interrupt and perform all the other actions before
the next frame is very short and doesn't allow to the cpufreq governor to
provide the required burst of power. That led to drop the half of the frames.

To avoid this problem, DCMI driver informs the cpufreq governors by adding
a cpufreq minimum load QoS resquest.

Benjamin Gaignard (3):
  PM: QoS: Introduce cpufreq minimum load QoS
  cpufreq: governor: Use minimum load QoS
  media: stm32-dcmi: Inform cpufreq governors about cpu load needs

 drivers/cpufreq/cpufreq_governor.c        |   5 +
 drivers/media/platform/stm32/stm32-dcmi.c |   8 ++
 include/linux/pm_qos.h                    |  12 ++
 kernel/power/qos.c                        | 213 ++++++++++++++++++++++++++++++
 4 files changed, 238 insertions(+)

-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
