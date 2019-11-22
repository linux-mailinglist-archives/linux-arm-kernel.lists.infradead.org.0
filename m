Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1E210758A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 17:15:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZdS/IQ03RdKu+8S/fw79uEjLHJPGOwGf6DzqjEtUa34=; b=TDY6TCX4CZg9p5
	5UT2kCobrqMcjh5KGRYK7bHK/Ydyh88eIrvDAJyM0fELb/BdmApkw8ySWdUs/AcpzbDPPrNKYfvPd
	zCoCYsLY4AafNC/gDC6xsUw9YXoN7ZCUWMO+/gclPB5KLLg4BA0xN6k29Xtk1zKc8SNjtqaicYjL6
	K3OJ3XIGcd/Sn4v2Ya7MnEpGdmfSTp3CY/vohSgTEzP/TYQ6/Fs2Jc+uN49goSw86nM9/AD48qK6j
	upcPt7RRIoUCxxcnc8GddPWf/4y0RAcR3A7DsgnwS36gXBUREMuT7+QsQr3+VD+sjOYizf8sLdFw8
	elsvmmQeU/y3CqBanKZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYBaF-00029g-OX; Fri, 22 Nov 2019 16:14:59 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYBa6-00028v-4y
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 16:14:51 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAMGD83m015416; Fri, 22 Nov 2019 17:14:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=q+AN9vpLp99KTf4oMHYu++uvf+aTBZJ7fWpmVfAwsSA=;
 b=IxKyGc9ou7D+Y0yLJolE3vkTsh6lhR8z5J9UPgqEeKf64aStCPXkdTCnuU8AteSIMwa0
 ys6FNaDyfM33C7PUQvv4QpfXhEg/YWtOb39Dhdg4ieDZ+YBzU+dGC/5pYri3CfptKsAw
 gj9xHv5Q5OVbK0EVg1O45F5JEXtb596YVGyLvTmmb9eXLIzIw98Jd6BjMk17LQObBRVr
 xL7CiX4AGyYQn2+jE+I1aP5RJ6eVBUsrScoWqxnbof2O2ZsC8ZkLIGklPJYkuLN0nUs9
 GnBQFoQW7IoXvSqF87hVh8RIq3z5H+qxPZ2TLD7XovJhGri/eD0W34UTJz1f8YJOYjy1 7A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wa9uvt3qk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 22 Nov 2019 17:14:39 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8903B100034;
 Fri, 22 Nov 2019 17:14:38 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1B9F92D378D;
 Fri, 22 Nov 2019 17:14:38 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Fri, 22 Nov 2019 17:14:37 +0100
From: Olivier Moysan <olivier.moysan@st.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <perex@perex.cz>,
 <tiwai@suse.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <alsa-devel@alsa-project.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-kernel@vger.kernel.org>, <olivier.moysan@st.com>,
 <arnaud.pouliquen@st.com>
Subject: [PATCH][RFC] ASoC: stm32: sai: manage rebind issue
Date: Fri, 22 Nov 2019 17:14:23 +0100
Message-ID: <20191122161423.8641-1-olivier.moysan@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG1NODE3.st.com (10.75.127.3) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-22_03:2019-11-21,2019-11-22 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_081450_642612_6337BE3A 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: srinivas.kandagatla@linaro.org, benjamin.gaignard@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The commit e894efef9ac7 ("ASoC: core: add support to card rebind")
allows to rebind the sound card after a rebind of one of its component.
With this commit, the sound card is actually rebound,
but is no more functional.

With the sound card rebind the simplified call sequence is:
stm32_sai_sub_probe
	snd_soc_register_component
		snd_soc_try_rebind_card
			snd_soc_instantiate_card
	devm_snd_dmaengine_pcm_register

The problem occurs because the pcm must be registered,
before snd_soc_instantiate_card() is called.

Modify SAI driver, to change the call sequence as follows:
stm32_sai_sub_probe
	devm_snd_dmaengine_pcm_register
	snd_soc_register_component
		snd_soc_try_rebind_card

---
The current patch allows to fix the issue for STM SAI driver.
However, most of the drivers register the component first.
So, this solution is perhaps not the right way to manage the problem.
This may probably be handled in ASoC framework instead.
---

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
---
 sound/soc/stm/stm32_sai_sub.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/sound/soc/stm/stm32_sai_sub.c b/sound/soc/stm/stm32_sai_sub.c
index 48e629ac2d88..eb35306a1232 100644
--- a/sound/soc/stm/stm32_sai_sub.c
+++ b/sound/soc/stm/stm32_sai_sub.c
@@ -1484,6 +1484,13 @@ static int stm32_sai_sub_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	ret = devm_snd_dmaengine_pcm_register(&pdev->dev, conf, 0);
+	if (ret) {
+		dev_err(&pdev->dev, "Could not register pcm dma\n");
+		return ret;
+	}
+
+
 	ret = devm_snd_soc_register_component(&pdev->dev, &stm32_component,
 					      &sai->cpu_dai_drv, 1);
 	if (ret)
@@ -1492,11 +1499,6 @@ static int stm32_sai_sub_probe(struct platform_device *pdev)
 	if (STM_SAI_PROTOCOL_IS_SPDIF(sai))
 		conf = &stm32_sai_pcm_config_spdif;
 
-	ret = devm_snd_dmaengine_pcm_register(&pdev->dev, conf, 0);
-	if (ret) {
-		dev_err(&pdev->dev, "Could not register pcm dma\n");
-		return ret;
-	}
 
 	return 0;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
