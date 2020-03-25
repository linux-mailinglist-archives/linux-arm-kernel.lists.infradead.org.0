Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F989192B40
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 15:35:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dBVOMWCbbS/bZZC6dq4BMxw695l8UDylw83802x8CII=; b=s+UZHeo2WA3wK3
	ONCPiAJqvFZ1aW+h6MFxII8ggOpfzdRg8iyudTRzIf83HWpsRYX+WNf3nRXJwJVbPpMgl2i2uOS5j
	AG3JiFvmvgQ+F+IAKTWZGlubKMircyU+fvZmXDV07Pz7aT1AxsVog4VvjyPeTyRYjt8vEW555MEGh
	J1yTii90mmBVbKG4gnwxpdFXmixc85TLRVb1Y5hqU63c0816+jOxQwJWHCA7q7PCdHXl2WqjR9N+6
	dLDDriY4FxgDXpGxbULEpJoQCvqzl97U0a/qaxUBfxOnA6PrntN9PFD5efa6ePz2sA6UicRiT4Roe
	GnI2qI0+MKsIpBG3ACBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH77S-0006fn-Qw; Wed, 25 Mar 2020 14:34:58 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH771-0006Xb-BN
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 14:34:32 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02PEXpoT028153; Wed, 25 Mar 2020 15:34:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=VEAFtOcNCvy1cdPVdvmkbIGYrS+dcDQPVJdYDZN9sAE=;
 b=Qnz3PVl1O1O6t5UoRQDG0sZ7dh0akxGExXfSZJW0wxquZTC5KBhR1INkYQzgO6c73ZTc
 LE0VH97DiiSaPMdTcHiBuZUVlLUs5sHLRYIK54CnKELEG59c5Es9y+qjbpL8iB3V7TPr
 qFTkl3WzPB6CG+xpedT+Fc6IfWaby3EIdsflItj8fJWyFnGyzY73G5OlNR91UBS3vpvd
 o1nScjliW7MO75YgsAak0tHGLrReXqNZ0apZrBTSSZE5BS5vdglqqqm+wOZLjHO2Xy9S
 D7O+lKfD9gV4TuYMKHRlqmFsCqLNm3hnqH/6ams+yaYHZmwnC1a/Luyi2bhgdVngUMzP +w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yw995p99d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 25 Mar 2020 15:34:22 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id EE701100038;
 Wed, 25 Mar 2020 15:34:21 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E0C562B2527;
 Wed, 25 Mar 2020 15:34:21 +0100 (CET)
Received: from localhost (10.75.127.50) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 25 Mar 2020 15:34:21 +0100
From: Ludovic Barre <ludovic.barre@st.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH V2 2/2] mmc: mmci: initialize pwr|clk|datactrl_reg with their
 hardware values
Date: Wed, 25 Mar 2020 15:34:09 +0100
Message-ID: <20200325143409.13005-3-ludovic.barre@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200325143409.13005-1-ludovic.barre@st.com>
References: <20200325143409.13005-1-ludovic.barre@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG2NODE3.st.com (10.75.127.6) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-25_07:2020-03-24,
 2020-03-25 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_073431_723931_A686D14B 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

In mmci_write_pwr|clk|datactrlreg functions, if the desired value
is equal to corresponding variable (pwr_reg|clk_reg|datactrl_reg),
the value is not written in the register.

At probe pwr|clk|datactrl_reg of mmci_host structure are initialized
to 0 (kzalloc of mmc_alloc_host). But they does not necessarily reflect
hardware value of these registers, if they are used while boot level.
This is problematic, if we want to write 0 in these registers.

This patch initializes pwr|clk|datactrl_reg variables with their
hardware values while probing.

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
---
 drivers/mmc/host/mmci.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/mmc/host/mmci.c b/drivers/mmc/host/mmci.c
index 647567def612..f378ae18d5dc 100644
--- a/drivers/mmc/host/mmci.c
+++ b/drivers/mmc/host/mmci.c
@@ -2085,6 +2085,10 @@ static int mmci_probe(struct amba_device *dev,
 	else if (plat->ocr_mask)
 		dev_warn(mmc_dev(mmc), "Platform OCR mask is ignored\n");
 
+	host->pwr_reg = readl_relaxed(host->base + MMCIPOWER);
+	host->clk_reg = readl_relaxed(host->base + MMCICLOCK);
+	host->datactrl_reg = readl_relaxed(host->base + MMCIDATACTRL);
+
 	/* We support these capabilities. */
 	mmc->caps |= MMC_CAP_CMD23;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
