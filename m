Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 817D71E2531
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 17:17:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t/ugHG5EHiJNs4rUPqVASMPfc3kLmpuxoB4ZslUz5h4=; b=BMlDIurS9jiuXm
	RI9DPCu1SAg5WN3bTFpxXTpDL2jrBFzKrhtC+MYpJoM49ILscCTtwN2xpPmupl4EqlRHQIpE6hdGx
	QNoCEryCLUhlPSDPY/AnQpi+Q2669N5NjILlxElMISLENMNugqKY7CS5U9xOexewj6/zjvMRrZbYI
	v1K7TySB/p2hMsLrZLwhOWp6Sn+4zn+I3gf/b0qKDOEioXVEpt1vyYGOAlciKurcIoCWrMqnrD2Co
	8yU8xLQwUUZXubCg6cYkpawrG2gbeRl/hKhjv6aHAnw6pBDvpDOKXIXdb/CvL0qhWvu3z9gPp2JyO
	meX+5KKlIbHYFFQs+IHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdbKG-0000JJ-UA; Tue, 26 May 2020 15:17:08 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdbJo-0000AO-Tq
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 15:16:43 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04QFBuJc017743; Tue, 26 May 2020 17:16:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=799GJcMpL2LNU/Tm5lFInudYnzHhcFshxvnKZptqkbM=;
 b=oxdsZGrxKp0SO7XEMvJ8Yvlq8g0WKFQAg87HbE/QqERMb5eh488/eNTbrNOOUJLEXHYL
 sw1sp0a1SkfYe/2vG7UEfAZwPaOSFyhjaLCrJ/T2TqkEBt2g73TRIOK2N9Kiyf22HbaV
 rdLb35QPuV6UkPY/VkTxVMU1XuqBZxKObokv3xdNIS397Fr5O1KTaArl1Sjk2FF3Ps3D
 zYFGs7PvV58mjc9MePvXw8mgt3OOa09IZcFzTcUV+1HC37y2coTiqNppxUf+O9/lwQxg
 KGvlbBjS3ZaVbrTI+GIXwn3gJPR1G+AYDrdFUyGKxVsROhOKVMR6mPSJsjg5MRvsK3Qj Dw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 316rya8feu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 26 May 2020 17:16:26 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4E8E010002A;
 Tue, 26 May 2020 17:16:25 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 312E02C1D9F;
 Tue, 26 May 2020 17:16:25 +0200 (CEST)
Received: from localhost (10.75.127.49) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 26 May 2020 17:16:24
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <rjw@rjwysocki.net>, <viresh.kumar@linaro.org>, <hugues.fruchet@st.com>,
 <mchehab@kernel.org>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <pavel@ucw.cz>, <len.brown@intel.com>,
 <valentin.schneider@arm.com>, <vincent.guittot@linaro.org>
Subject: [RFC RESEND 0/3] Introduce cpufreq minimum load QoS
Date: Tue, 26 May 2020 17:16:16 +0200
Message-ID: <20200526151619.8779-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG2NODE1.st.com (10.75.127.4) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-05-26_02:2020-05-26,
 2020-05-26 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_081641_422925_345AE0D8 
X-CRM114-Status: GOOD (  11.83  )
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

A first round [1] of discussions and suggestions have already be done on 
this series but without found a solution to the problem. I resend it to
progress on this topic.

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

Benjamin 

[1] https://lkml.org/lkml/2020/4/24/360

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
