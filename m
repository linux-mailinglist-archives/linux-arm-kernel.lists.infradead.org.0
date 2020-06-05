Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 781AF1EF899
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 15:05:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0ksIcomKEUKkjVynK5Cr6qWfNUC0zEciTj1DL8ENUqI=; b=qhYRO9xTvSdpVu
	410NlTuEKAyJ10th9a1bsFxF3t+nt28wzl9ToVkCC7NRsFHvZGFf2N9gUuTURlf82Xu2ytmEVCQSF
	9mjdrpBwDMAN2QtU9yK3oXPE554qTMcrqcsPD+rp7hamoyo2cuL1J4k2ApwPMwVMbeIOQmGlMKE+y
	oJVq87hgmtxNzXv0DxxSqvlbSRDBtKYFw7T0H7x7/as4dUuptJl0WgbcNXnrr1XgBFbJQI7FBPmaf
	5ihVGqsi9hW4pP6sGMd6x+1lamnGcXPAb8F3pxQFC0nUuvd66CYI7mEtbFkKJysk/R1Cc7Zciq0/F
	NjHZ6ixKDkhAoXpeOLxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhC2W-0002HC-UU; Fri, 05 Jun 2020 13:05:40 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhC2L-0002Fz-CH
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 13:05:31 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 055D2RnM005857; Fri, 5 Jun 2020 15:05:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=8N3eVj4nAPochlinsyGa/KTizCaO/PHeruM6iKW/aDc=;
 b=SLS407qU1Z9F+tF6q5vFRFJR785CroSIa1H4SlRTUAq1DcayxdSrZILrWXbQvkSs38as
 t4BhMYV2SEcX97GziY6PhSm9leR3QDIQAi1rUPHO0B6PEY7t2zLWMP9OWTeOYGoLDp6J
 A1vkrJhJjTzfrXze2kPk0DgOOSdtNCGx71Mn8x4RNLykjeyvKsJZTcj6zpir65+5RQu3
 GC29ctnlyt4vw2TEx7qzJ/0qH5BMIRcWIgep/5nDXGw4ZYemdk3OcW1bC1cUzaTi1sw9
 TL+fuoQL2jboRji1sapVjuS14HJ1voCn/af6zC4LQ49o850gcYm81Njn/YiIr8r+jIET Tw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 31fasmbkcp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 05 Jun 2020 15:05:22 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id EA26A100034;
 Fri,  5 Jun 2020 15:05:21 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B435B2C50BF;
 Fri,  5 Jun 2020 15:05:21 +0200 (CEST)
Received: from localhost (10.75.127.47) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 5 Jun 2020 15:05:21
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <hugues.fruchet@st.com>, <mchehab@kernel.org>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>
Subject: [PATCH v4 0/3] DCMI set minimum cpufreq requirement
Date: Fri, 5 Jun 2020 15:05:16 +0200
Message-ID: <20200605130519.4184-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG5NODE1.st.com (10.75.127.13) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-05_04:2020-06-04,
 2020-06-05 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_060529_857206_1657C4E9 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 valentin.schneider@arm.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series allow to STM32 camera interface (DCMI) to require a minimum
frequency to the CPUs before start streaming frames from the sensor.
The minimum frequency requirement is provided in the devide-tree node.

Setting a minimum frequency for the CPUs is needed to ensure a quick handling
of the interrupts between two sensor frames and avoid dropping half of them.

version 4:
- simplify irq affinity handling by using only dcmi_irq_notifier_notify() 

version 3:
- add a cpumask field to track boosted CPUs
- add irq_affinity_notify callback
- protect cpumask field with a mutex 

Benjamin Gaignard (3):
  dt-bindings: media: stm32-dcmi: Add DCMI min frequency property
  media: stm32-dcmi: Set minimum cpufreq requirement
  ARM: dts: stm32: Set DCMI frequency requirement for stm32mp15x

 .../devicetree/bindings/media/st,stm32-dcmi.yaml   |   8 ++
 arch/arm/boot/dts/stm32mp151.dtsi                  |   1 +
 drivers/media/platform/stm32/stm32-dcmi.c          | 122 +++++++++++++++++++--
 3 files changed, 123 insertions(+), 8 deletions(-)

-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
