Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4178136EB5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 14:50:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5iFosE+uiLQf0PY8kgNoNrvk+MT8xiiMY+wWYRBiBfg=; b=mGdm2rw/5BlNBn
	ZBl83FyaJ9urUFVzgkbl5tLcpBDa3NeNjbveqN+RS+TFqDfeXbO9xgLrOYjtSht8FELi8aa/pQVoH
	50wVGpia3/6yE3LkN9+1J3m3M6r2+L44MotT3DB1Np9mNL0aR08fBEZo2zNigJJM4NtmCCF+KS2I3
	5yWuqlbN+IxbxI8zM7NsLcsx2G/kW3gDa/wO/dJ0R1ZgM3R2nSEyNE+orlxvYI1peVxMwW9fbGcQ+
	PMkmmiXCrVSJhH3S+rPPU7n0mD2s842mD7WUJNlNIVrS7C1t2mS9D+AAoaGzFt2g3q/GWoI+VSz7F
	iGeqpF4M81JM/KZIWNrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipugS-0006Rn-6p; Fri, 10 Jan 2020 13:50:40 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipuev-0004Cv-O2
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 13:49:07 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00ADlv1C031938; Fri, 10 Jan 2020 14:49:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=2rv368pE4g4zz6kp57DPDD0CXhY4gWUUealEUKO5UXo=;
 b=tGZWjzq6gmURDGy/RZyFBmHTnznoiMQXTOM3m7qoVdNeZreVSZCIFgc0KDnPVRudiTMP
 ddH63AhNU/c8mqHF0uUhq95+6yCrlDi5Ex1gAqHB81X8X8XCCxEcWZZhb7tTvWeX1b+e
 hroPNgzEEcVZUVwiY8gD5DMfHNPHtV9TPhsH0yyYUdjC9ETCmG0WUdo0oZfzFpGslJcP
 rhNaiH6+ybPPbTLILVlgD5/6dUAM/lMws/hHH/ebonMfEe6kki2cB0fKQlHlnCCPeeFc
 ZOennkDslmBPtL+TNQVJ47Fbpz/wEYdBu+Gdf7l1DQpj51E9vp2FvjCu1T5SZZPNEAfL Rg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xakur7dtg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 10 Jan 2020 14:49:01 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3EA7510002A;
 Fri, 10 Jan 2020 14:49:01 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 2EFCC2BC7D1;
 Fri, 10 Jan 2020 14:49:01 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Fri, 10 Jan 2020 14:49:00 +0100
From: Ludovic Barre <ludovic.barre@st.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 4/9] mmc: mmci: add private pointer for variant
Date: Fri, 10 Jan 2020 14:48:18 +0100
Message-ID: <20200110134823.14882-5-ludovic.barre@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200110134823.14882-1-ludovic.barre@st.com>
References: <20200110134823.14882-1-ludovic.barre@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-10_01:2020-01-10,
 2020-01-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_054906_094253_F0C83B25 
X-CRM114-Status: GOOD (  13.25  )
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

In variant init function, some references may be allocated for
variant specific usage. Add a private void* to mmci_host struct
allows at variant functions to access on this references by
mmci_host structure.

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
---
 drivers/mmc/host/mmci.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mmc/host/mmci.h b/drivers/mmc/host/mmci.h
index 55acc0971a44..ddcdfb827996 100644
--- a/drivers/mmc/host/mmci.h
+++ b/drivers/mmc/host/mmci.h
@@ -410,6 +410,7 @@ struct mmci_host {
 	struct mmc_host_ops	*mmc_ops;
 	struct mmci_host_ops	*ops;
 	struct variant_data	*variant;
+	void			*variant_priv;
 	struct pinctrl		*pinctrl;
 	struct pinctrl_state	*pins_opendrain;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
