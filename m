Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 595EF10FFF6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 15:17:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KD9bgP4Y+tZRuUU45QbmCVy0fpQGzHXP13cqx8Xvqtw=; b=AEsRy6fglDNjPS
	EZQuC4VyetS1G22l2M4W0Dqbnoh5OpaDCToLKGwG7dNJUsrcZraGuVZqZCPxIJ9LcOXrHhn5gYi+Y
	gT1cpqm/Z+KHzJJMH+MWlcU1LjnXhaNBRdlnPYANXiv3tlJKhLHcrnoKryBJ92JOETzw6sElzUKE+
	q5Vn50gCPoYkJ1KXDEUqtvufM0XEP5OxB/uvgEhc0smPANZ73ey7Teb2+yQ8iK1hFYkIvIa6UnKUm
	EqCz0ZGv5q42fw0MF3lGijWAVm8zXszCO/YhvPnBPs0kY3KhyozkL6C0cWq//686lF4cMTl/fladu
	VPC3coHlAIUB8Qw1UUjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic8zM-00051K-4H; Tue, 03 Dec 2019 14:17:16 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic8z9-0004zN-TR
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 14:17:08 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB3EGmgs011509; Tue, 3 Dec 2019 15:16:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=X6SFhefHKL3s7V39AZGDRkkqo5eWgLZZ/k9fvJmXZdc=;
 b=WsOjrktz1I6R+x2e8lc2wW3G6RrWTXVa8oaUQtj49yz4w/TRFctal/2qVRMWe3w2HiSS
 c9Zi+z73zkl5hCbbKDsjfLKuX/xPiN1GPL2T4uFMbOgc2liZyarg7giVujX6tNq7qBZS
 cUP+48nfFsXVmbowFStrOQ4US8AexhzuPeNvnT7bk3mcr79+RqAqYBnG3ZsDBW0sVKuS
 5WF5qZ/ELzhK8lOK6pQjVQI5dO5xh6cF7Ah0JulW3SIArGLSYND4VCnlYrQpuAIIuXSJ
 3IAgQ3S95e41ihJ3NNW/e6/zy2b+gi+Hb0ANH1Pvp1BT4CqMHRkCmPVHfT/aLobdvKDJ 2w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wkeea010y-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 03 Dec 2019 15:16:49 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B141E100042;
 Tue,  3 Dec 2019 15:16:46 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 6BD542B9F94;
 Tue,  3 Dec 2019 15:16:46 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Tue, 3 Dec 2019 15:16:45 +0100
From: Olivier Moysan <olivier.moysan@st.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <perex@perex.cz>,
 <tiwai@suse.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <alsa-devel@alsa-project.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-kernel@vger.kernel.org>, <olivier.moysan@st.com>
Subject: [PATCH] ASoC: cs42l51: add dac mux widget in codec routes
Date: Tue, 3 Dec 2019 15:16:27 +0100
Message-ID: <20191203141627.29471-1-olivier.moysan@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG7NODE1.st.com (10.75.127.19) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-03_03:2019-12-02,2019-12-03 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_061704_434963_4E20DA07 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: apatard@mandriva.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add "DAC mux" DAPM widget in CS42l51 audio codec routes,
to support DAC mux control and to remove error trace
"DAC Mux has no paths" at widget creation.
Note: ADC path of DAC mux is not routed in this patch.

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
---
 sound/soc/codecs/cs42l51.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/sound/soc/codecs/cs42l51.c b/sound/soc/codecs/cs42l51.c
index 55408c8fcb4e..e47758e4fb36 100644
--- a/sound/soc/codecs/cs42l51.c
+++ b/sound/soc/codecs/cs42l51.c
@@ -214,12 +214,10 @@ static const struct snd_soc_dapm_widget cs42l51_dapm_widgets[] = {
 	SND_SOC_DAPM_ADC_E("Right ADC", "Right HiFi Capture",
 		CS42L51_POWER_CTL1, 2, 1,
 		cs42l51_pdn_event, SND_SOC_DAPM_PRE_POST_PMD),
-	SND_SOC_DAPM_DAC_E("Left DAC", "Left HiFi Playback",
-		CS42L51_POWER_CTL1, 5, 1,
-		cs42l51_pdn_event, SND_SOC_DAPM_PRE_POST_PMD),
-	SND_SOC_DAPM_DAC_E("Right DAC", "Right HiFi Playback",
-		CS42L51_POWER_CTL1, 6, 1,
-		cs42l51_pdn_event, SND_SOC_DAPM_PRE_POST_PMD),
+	SND_SOC_DAPM_DAC_E("Left DAC", NULL, CS42L51_POWER_CTL1, 5, 1,
+			   cs42l51_pdn_event, SND_SOC_DAPM_PRE_POST_PMD),
+	SND_SOC_DAPM_DAC_E("Right DAC", NULL, CS42L51_POWER_CTL1, 6, 1,
+			   cs42l51_pdn_event, SND_SOC_DAPM_PRE_POST_PMD),
 
 	/* analog/mic */
 	SND_SOC_DAPM_INPUT("AIN1L"),
@@ -255,6 +253,12 @@ static const struct snd_soc_dapm_route cs42l51_routes[] = {
 	{"HPL", NULL, "Left DAC"},
 	{"HPR", NULL, "Right DAC"},
 
+	{"Right DAC", NULL, "DAC Mux"},
+	{"Left DAC", NULL, "DAC Mux"},
+
+	{"DAC Mux", "Direct PCM", "Playback"},
+	{"DAC Mux", "DSP PCM", "Playback"},
+
 	{"Left ADC", NULL, "Left PGA"},
 	{"Right ADC", NULL, "Right PGA"},
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
