Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1FC81F54B2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 14:26:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6oImU8EOx0wNFBOs6NO7CYlMIDRXH2/fDufXBlEpjSw=; b=pdA5X7N0cu3J6o
	T2RKJ9zjfXjDO3DzCsfeh8H+sGLhAutFjUrm50PSahDwwu33W2ZF0aCmTTaWGh30Xnnvyh9uDkIjK
	f9GDkYXmiegMZIvoPQ5f/Eg6IgWU5/B2IqOGOe25ip17UwkW1nm2+DZFVBZkmLMHXJXahr1o2kHv7
	zyetn+7H9p9y3+twLjVyGmATUuNS1R8eSfXdFFc4OlbMTyqP9FprvDqBDo6dVCmNkZhhhElksinjE
	KbTtxn8lwIkaDembHmjX7Faxi56t1yl8bObuVy/6tvF1NQfe9snhh3I8uJJqUviw9Wou3EErqePDT
	Tuz7qGs4e2JZlBYIBmUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiznu-0000Mz-12; Wed, 10 Jun 2020 12:26:02 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jizn7-0007mJ-Du
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 12:25:16 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05ACI9fo011911; Wed, 10 Jun 2020 14:25:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=zLwEj7MqWWxOTNW8GUFQe1h25GWD27n/XUQYErjbCu4=;
 b=T8HZuzc35YFPNmd9RYJdN0RxeUHNbBUfiVbuwcWWUqe+Jl1MQAHpIV2HjmfERUJsi92t
 ZuMAp+gAOXXHJOaH5aRJWd8wN8YxoycXNpk0p5XoV0Uq98dartXq2FlKWb4a6fzYztwb
 5CX4SgDTXB2k3i3m/g1NgKeWYB5fTSJiytFzgF4NQ5Dwz6o/+lCb7idQHYnRR8e03h91
 VvvcPm+i/ZPTA33zrmzddBDHk2gN/ULHzkDMDO7suJxMzFEuzBA48IRhN6nr83no2BZl
 j7SBWBK6EqVKqalc9LK1ADMrDT8MAQclNhQbE8Q4x+iaQMug4YhzvTae5g1DkpvdX/mj SQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 31g0wvw0m6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 10 Jun 2020 14:25:03 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 99ECE10002A;
 Wed, 10 Jun 2020 14:25:02 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 8256F2106E9;
 Wed, 10 Jun 2020 14:25:02 +0200 (CEST)
Received: from localhost (10.75.127.51) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 10 Jun 2020 14:25:02
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <hugues.fruchet@st.com>, <mchehab@kernel.org>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>
Subject: [PATCH v6 0/3] DCMI set minimum cpufreq requirement
Date: Wed, 10 Jun 2020 14:24:57 +0200
Message-ID: <20200610122500.4304-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG7NODE2.st.com (10.75.127.20) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-10_07:2020-06-10,
 2020-06-10 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_052513_797951_34F49146 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

version 6:
- come back to version 4 and follow Valentin's suggestions about notifier

version 5:
- add a mutex to protect dcmi_irq_notifier_notify()
- register notifier a probe time

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
 drivers/media/platform/stm32/stm32-dcmi.c          | 138 +++++++++++++++++++--
 3 files changed, 139 insertions(+), 8 deletions(-)

-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
