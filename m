Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 578AD16F9C4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 09:40:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sYetTSop332gxR2dX9T+RyDfrD9aKnRnm3hebsRcDWE=; b=gxRHbh5JjvRt0B
	0JI9ySB/uM9BvoQtxNIoaGKBl+ePTVTLT5Bevig3zEJbAwomx+3qdBoPKG83ueHKT1ro92+7HAnr7
	8YR/CqMzzmpomxzo3ZmFe8DD/rUkH7cEC4BOvpYnluMlWuQoyWgmwPFUEqomGN/8c9+EFS7zRS999
	qa3m0G4vMavY/pf1DFAQwnb1gGY1VOSk1kDlnYpnIjF2Ox5vZbaEub6M/B0zktJNw79lHaQDXs0lY
	7MbB75kbxHDmGH8dWNjQT/ABMctKkSikMqd+7xMqaln2Dmtp4hXKRT873WNHbQXfDS+n2obqYuPEV
	F6CKocwOD4eRZTDGtBkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6sFO-0003c6-VB; Wed, 26 Feb 2020 08:40:50 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6sF7-0003aR-I6
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 08:40:37 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01Q8ckpw015436; Wed, 26 Feb 2020 09:40:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=qYNCz7bGkBTTaNO03CNPss3EnrpQ6PC4YPTkV05TJOM=;
 b=Bp6LWZeUbDd9/bjJiGIWsKryeSmrlLTP2fafPjXcT7aN+tjxBggpXGZGWspFxamZ6RfQ
 m27AcW+IxkOOZNtVkOxrSAuEwpLT6MWfMYq1by0Bjz8lsFhnki+xSCo6LuruVekSUH42
 jpjl/360ynLmkp9m92Xesb9v45xZuFmosJsM+NniCidYkvAWY/6deH4Z8I6ja0xPJchg
 mqPV+6TrHaepw9Z5b+qBOT6NdoGugev5i+KaNUbgG48d8FXTxnhCeS7irPHGrlIFrVOq
 6AZBi1THuUtTsi9XwSEo4dviPrq9OxZJ9rNXucFl60kOXXebHWegQEHpYrS147GajNkD ig== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2ydcnj2h2a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 26 Feb 2020 09:40:23 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 02F9910003B;
 Wed, 26 Feb 2020 09:40:17 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E67DB2AC906;
 Wed, 26 Feb 2020 09:40:16 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 26 Feb 2020 09:40:16 +0100
From: Ludovic Barre <ludovic.barre@st.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 0/4] mmc: mmci_sdmmc: fixes and improvements
Date: Wed, 26 Feb 2020 09:40:10 +0100
Message-ID: <20200226084014.5242-1-ludovic.barre@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG5NODE1.st.com (10.75.127.13) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-26_02:2020-02-25,
 2020-02-26 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_004034_057492_2C776ED8 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 srinivas.kandagatla@linaro.org, Ludovic Barre <ludovic.barre@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series fixes some problems:
-dma api debug warning to segment size check.
-dma_unmap_sg missing on not prepared request.
-Clear busyd0end irq flag when a R1B busy is completed.
-Initialize pwr|clk|datactrl_reg with their hardware values at probe.

Ludovic Barre (4):
  mmc: mmci_sdmmc: fix DMA API warning max segment size
  mmc: mmci_sdmmc: fix DMA API warning overlapping mappings
  mmc: mmci_sdmmc: fix clear busyd0end irq flag
  mmc: mmci: initialize pwr|clk|datactrl_reg with their hardware values

 drivers/mmc/host/mmci.c             |  4 ++++
 drivers/mmc/host/mmci_stm32_sdmmc.c | 21 +++++++++++++--------
 2 files changed, 17 insertions(+), 8 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
