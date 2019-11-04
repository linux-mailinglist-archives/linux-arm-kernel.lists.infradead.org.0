Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C5DEE163
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 14:37:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wp8yQjHGM2HPkZY5gXpD4hlgrjBi90qhKcNrs7whNrc=; b=GlE9SQWF3EPn/Y
	jNoTdKw4TuCLAmh/tSQ8GOKOI26QyOHVAxNBSExo2MlSxcV8WEVWo9O0QJS20O+W9FoWcnuTTHRZj
	7HROqMEVMg13EiTAKYTW1fnF1Uu6vWEN9vg8YjrJDNeACCCgWUdseqqsP+xzvS/Y0WPRVzgPsdSg+
	lwE6fTCinUwg1SzVUg3+ubA2vrzX1iGeppD5i8yerYi8BE1rlcGsKA/4KeZ6cyTdvx2CSETqvTeRF
	y323wNQHqiRCDO9y4JYOlzVe1glMIARDVEN/lOCRg+OyR3nH+RKI5i2iMLzz+FVfU0j/hkp3IMzji
	sPZPMmv1KTBk6af7IAGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRcXv-00049J-Fg; Mon, 04 Nov 2019 13:37:27 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRcXl-00045D-Ji
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 13:37:19 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA4DWFkJ026453; Mon, 4 Nov 2019 14:37:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=0V0+n6EoG5ZZ+IdpLsOxLEtGg4+FYYg6VUMRseHZqHA=;
 b=MRlR2bfvQfp6TmzTJF+TAOFdz7iv72iApjX1BtIml+gWAdhk6XTdhD5zMwAGlWJn7hiX
 72UnCam408Cz3k86Sv/6Df6UmeXtjiQTeCRxKGJMKJ0rAzRPuIFznZ0ivwESy9yDBJUD
 6WHkjeIAnKqOqsl2s79PQbqLg+RiaU2K9BglSVceDVFx7HykUvbMsjVgTpgNtL4REiSc
 LeGoYL3b7+3oeUNsdWMVjNhPBDxOlAaJyibOnJo0Yg67CVkpH7C8j+9f/wHfBRmPn/7q
 1NycHLFlHspA50/WNl2EZ+FGz2bCxW4Dd+L3nMHohxAZip2sbdKxUu+PEI3F769J0Rma hA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2w10f19mg4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 04 Nov 2019 14:37:06 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 496CB100042;
 Mon,  4 Nov 2019 14:37:06 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1C5C12FF5DB;
 Mon,  4 Nov 2019 14:37:06 +0100 (CET)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 4 Nov 2019
 14:37:06 +0100
Received: from localhost (10.201.21.218) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 4 Nov 2019 14:37:05
 +0100
From: Olivier Moysan <olivier.moysan@st.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <perex@perex.cz>,
 <tiwai@suse.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <alsa-devel@alsa-project.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-kernel@vger.kernel.org>, <olivier.moysan@st.com>,
 <arnaud.pouliquen@st.com>
Subject: [PATCH] ASoC: stm32: sai: add restriction on mmap support
Date: Mon, 4 Nov 2019 14:36:54 +0100
Message-ID: <20191104133654.28750-1-olivier.moysan@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.201.21.218]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-11-04_08:2019-11-04,2019-11-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_053717_966442_E7ADD31E 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: benjamin.gaignard@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Do not support mmap in S/PDIF mode. In S/PDIF mode
the buffer has to be copied, to allow the channel status
bits insertion.

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
---
 sound/soc/stm/stm32_sai_sub.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/sound/soc/stm/stm32_sai_sub.c b/sound/soc/stm/stm32_sai_sub.c
index a4060813bc74..48e629ac2d88 100644
--- a/sound/soc/stm/stm32_sai_sub.c
+++ b/sound/soc/stm/stm32_sai_sub.c
@@ -1218,6 +1218,16 @@ static int stm32_sai_pcm_process_spdif(struct snd_pcm_substream *substream,
 	return 0;
 }
 
+/* No support of mmap in S/PDIF mode */
+static const struct snd_pcm_hardware stm32_sai_pcm_hw_spdif = {
+	.info = SNDRV_PCM_INFO_INTERLEAVED,
+	.buffer_bytes_max = 8 * PAGE_SIZE,
+	.period_bytes_min = 1024,
+	.period_bytes_max = PAGE_SIZE,
+	.periods_min = 2,
+	.periods_max = 8,
+};
+
 static const struct snd_pcm_hardware stm32_sai_pcm_hw = {
 	.info = SNDRV_PCM_INFO_INTERLEAVED | SNDRV_PCM_INFO_MMAP,
 	.buffer_bytes_max = 8 * PAGE_SIZE,
@@ -1270,7 +1280,7 @@ static const struct snd_dmaengine_pcm_config stm32_sai_pcm_config = {
 };
 
 static const struct snd_dmaengine_pcm_config stm32_sai_pcm_config_spdif = {
-	.pcm_hardware = &stm32_sai_pcm_hw,
+	.pcm_hardware = &stm32_sai_pcm_hw_spdif,
 	.prepare_slave_config = snd_dmaengine_pcm_prepare_slave_config,
 	.process = stm32_sai_pcm_process_spdif,
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
