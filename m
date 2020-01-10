Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F07F7136E95
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 14:49:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4PezzkR5LXjy5QqP2lH5aMFJ1g9PQbElP5+zTEqqMkg=; b=Gv0BHFkiD/V8Wu
	phy5sLfNACVifVU7ReIvy2RBnuljb94xWoEE21zehsjtdTzpsn8QLm6OtL1dcKbNxUzKlI1+hQfWw
	8BUp4rI5eX6/dKVOJ4TDsacyO8Z8WVIeZOzxVhFHK+N2UJbrncoRbL9hqE5+tpl7hhwTkKGNqXKts
	G9GyhkNlBYWDIHicWlxvs0KM/jGBgyqrvCs51RzMvPReNtVB4tis1RrefTrNWZhFSJO6mr+T7azJC
	yfANELcvVZgjPI/4Tj3YXQH8MpVICi065jxpAhFLga7f6FKM4lv9gE/dMRb7OVlGWNFkSRa7WeB/f
	m7ZisPnZUxZw4HNF/UDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipufE-0004FB-Qg; Fri, 10 Jan 2020 13:49:24 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipueu-0004C6-Eq
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 13:49:06 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00ADlvUT031939; Fri, 10 Jan 2020 14:48:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=zLvBdV8AvZgbP8WkIebIBG/cvEHM5DSXs1Wl2vg4MqU=;
 b=y/QdE59gExw45tdziCH74wFRu+2KDn4J9MOVkfswTMKwWYC+YpiqaGkeel7xrc9ShTbg
 SqbJq3oqD69ZhyxLnLJ1lKuYwddUYPJxnebal/jJPcTr4TlmS9ifrJPRO00VSrJppAUg
 VjXompE+cid1rUC/dJgwL5iCB+UfvbK57zWt4QzjvLiaH0Nb+skscxPkVWLOgJObtEES
 HJd+alHc8uekj4MBtlzLCKMtaXUnA8PJ/B1CEZuFsSfhYoUTcbF7znleMrQ4teZ0vVBb
 MOW0HQ8InFYFL2MRNDge1GPV6nvRGpYkUT7TEHRhXY2mK2M5o/dbtXB2VMcvwjTPnbOq BQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xakur7dt7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 10 Jan 2020 14:48:57 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D7DE2100034;
 Fri, 10 Jan 2020 14:48:56 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C46BC2BC7C9;
 Fri, 10 Jan 2020 14:48:56 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Fri, 10 Jan 2020 14:48:56 +0100
From: Ludovic Barre <ludovic.barre@st.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 0/9] mmc: mmci: sdmmc: add sdr104 support
Date: Fri, 10 Jan 2020 14:48:14 +0100
Message-ID: <20200110134823.14882-1-ludovic.barre@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG7NODE3.st.com (10.75.127.21) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-10_01:2020-01-10,
 2020-01-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_054904_873651_2DEB94E9 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 srinivas.kandagatla@linaro.org, Ludovic Barre <ludovic.barre@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To support the sdr104 mode, sdmmc variant needs:
-Hardware delay block support for sdmmc variant
 with tuning procedure
-Voltage switch callbacks
-sdmmc revision 2.0

Ludovic Barre (9):
  mmc: mmci: sdmmc: replace sg_dma_xxx macros
  mmc: mmci: sdmmc: rename sdmmc_priv struct to sdmmc_idma
  mmc: mmci: add a reference at mmc_host_ops in mmci struct
  mmc: mmci: add private pointer for variant
  dt-bindings: mmc: mmci: add delay block base register for sdmmc
  mmc: mmci: sdmmc: add execute tuning with delay block
  mmc: mmci: add volt_switch callbacks
  mmc: mmci: sdmmc: add voltage switch functions
  mmc: mmci: add sdmmc variant revision 2.0

 .../devicetree/bindings/mmc/mmci.txt          |   2 +
 drivers/mmc/host/mmci.c                       |  39 ++++
 drivers/mmc/host/mmci.h                       |   8 +
 drivers/mmc/host/mmci_stm32_sdmmc.c           | 199 +++++++++++++++++-
 4 files changed, 241 insertions(+), 7 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
