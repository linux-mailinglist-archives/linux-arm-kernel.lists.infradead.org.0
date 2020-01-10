Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D8B136EB6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 14:51:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YCO8sPrPYSAERWkefcM2ml4JLisVQM+IiF7JalrrLKU=; b=Oobqt/Md2jBEKl
	sHUhxnwpOu9xAYSA92tHq9sA7qeHHLSZCelwmnW+fjiop9LQhZJ8uPAfJpu1onV9W4a+E8x1KwXwm
	Uqe9qiSa5NK9+2yWzbpYUiHejzV0AcufcQtk6nQrEFtGoQMQkB+PluC/lkluWiEtP/3mMAnsRGGD0
	QVBhqm4J6XapITSjnHJQH5GGnAPU+J5/oASeesz7+v+4TvYgkVfNk5mp7UvMW0zq/h3aaaDiVaxat
	Rd1cld2+t0pc3BnNRTwMD/Fyq8do241fK2Xu8Q5RW09/uMDIdZOAz3Mku8J7O7MV0qhPListjQZSU
	rI7qtatyVtQ//MLc4atw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipugi-0006gt-J0; Fri, 10 Jan 2020 13:50:56 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipuew-0004E2-Jq
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 13:49:08 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00ADm0QM013161; Fri, 10 Jan 2020 14:49:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=Huk5zIYk1Jr66peEpN7YfxHE+3Lw48xMpcF+1ILPSFg=;
 b=y5FHZFwC60GfYbX2wLYBGkKivAyyLBeQqD5ruWFDTrwFDW/yTV87uBg5iELY0DVPxFlu
 eXajl9xPhXYo9art8g3R/cWeGO87teWN0QsP0SeMYBTMV710u96o351rLDF1rx5q0x8Q
 iZhyHyMJu5IOxW4tHcHsZxeNOpboInXf1s45d6SxgJM08k6EqUxs24CRTjTZVSmTYjF4
 yETToIyKjJMFRHJbBesvphqFA2LAaZD0R/IhZw+vFX9cFEYY5AvftffTI81mHylZeB8P
 XrVKAX5sEQ9m2naR6pdnzraOEj16TM5b87fchiSWye8hIr3YWdwgYeZTHIjjQvk3c+Ys NA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xepyt8w0g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 10 Jan 2020 14:49:02 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 40DE210002A;
 Fri, 10 Jan 2020 14:49:02 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 325372BC7D1;
 Fri, 10 Jan 2020 14:49:02 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Fri, 10 Jan 2020 14:49:01 +0100
From: Ludovic Barre <ludovic.barre@st.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 5/9] dt-bindings: mmc: mmci: add delay block base register for
 sdmmc
Date: Fri, 10 Jan 2020 14:48:19 +0100
Message-ID: <20200110134823.14882-6-ludovic.barre@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200110134823.14882-1-ludovic.barre@st.com>
References: <20200110134823.14882-1-ludovic.barre@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG6NODE2.st.com (10.75.127.17) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-10_01:2020-01-10,
 2020-01-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_054906_969433_9AF63B90 
X-CRM114-Status: GOOD (  14.34  )
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

To support the sdr104 mode, the sdmmc variant has a
hardware delay block to manage the clock phase when sampling
data received by the card.

This patch adds a second base register (optional) for
sdmmc delay block.

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
---
 Documentation/devicetree/bindings/mmc/mmci.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/mmci.txt b/Documentation/devicetree/bindings/mmc/mmci.txt
index 6d3c626e017d..4ec921e4bf34 100644
--- a/Documentation/devicetree/bindings/mmc/mmci.txt
+++ b/Documentation/devicetree/bindings/mmc/mmci.txt
@@ -28,6 +28,8 @@ specific for ux500 variant:
 - st,sig-pin-fbclk       : feedback clock signal pin used.
 
 specific for sdmmc variant:
+- reg			 : a second base register may be defined if a delay
+                           block is present and used for tuning.
 - st,sig-dir             : signal direction polarity used for cmd, dat0 dat123.
 - st,neg-edge            : data & command phase relation, generated on
                            sd clock falling edge.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
