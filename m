Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5959DDBFC4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 10:21:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QO6UTRepBtFb5R1s4HMuZ57VKwPCEtESJ8L6iIIEzZQ=; b=TU/jTCcElORV2h
	bUovsy2MgjaMlOGZFSd5Z3/+NwYrfcc0UzbWQnn/v64VSqUXB4F/nkGYHUc4CIKukPZS9pbA9YjIC
	EQvDNBosYqmU021HD2V8EFNhgGyKFdEwkTWd/VPIrlcm6TgoEo7AWor6uH3RZntSch/4nwPlcdmpT
	KS0NETI7YemSm2ZL+y+yQ7v2NktbBTmSKa6cSB/eCTAzzQq/Gxpfo+y1zymx9jYYeTXQU+DNzVlzc
	7gStqM+Va3eASoiXeuJjekRU4bufsASHAvizicA+6K7JvhZxwge/fFvVSGPbMSmrJGwWOA+6Pv2Fz
	FAPFSgwst4iBIIvNK2xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLNVr-0004rt-3V; Fri, 18 Oct 2019 08:21:31 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLNVi-0004rA-V7
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 08:21:25 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9I8GwCa004597; Fri, 18 Oct 2019 10:21:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=gSYSCXccs9DhicnJdZYsTLDwYosR5Ljw+yyIPovM2yU=;
 b=gWp0QO/xNev/cjQnwT7BcMX/uzKloJS6XRgjcniJ+d3Kf4TDpJwo/1oMtmJdh2db94wR
 T1i83m6RhCV6RzWz8POl7f/yGb/+3Iq+6qLMwizKUBnZTVtvCa+HGH1naGOIHuU/5E4V
 8BnDrs56NL4LC+//b/RXy9m9m7qxlG1hfksZsucmB9wptNE70mE0/JA0A0ppNtX/ryNy
 mh3OIgYSP8hlGKUvr/NweNThwU2lAHIgxzqqP+7aye6yw5Cj1JiRVdwdGjfxT9w1WLqA
 XVqQaX1Nj3iv2KgLGuk6M1iGQ6THYUuFi6XPP2HK1nzW5efBL8qanNyTJiUrkyYDBU/C Aw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vk3ya8y4q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 18 Oct 2019 10:21:09 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9EC42100034;
 Fri, 18 Oct 2019 10:21:08 +0200 (CEST)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 6F12E2B894D;
 Fri, 18 Oct 2019 10:21:08 +0200 (CEST)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.46) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 18 Oct
 2019 10:21:08 +0200
Received: from localhost (10.201.21.218) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 18 Oct 2019 10:21:07
 +0200
From: Olivier Moysan <olivier.moysan@st.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <perex@perex.cz>,
 <tiwai@suse.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <alsa-devel@alsa-project.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-kernel@vger.kernel.org>, <olivier.moysan@st.com>,
 <arnaud.pouliquen@st.com>
Subject: [PATCH] ASoC: stm32: sai: fix sysclk management on shutdown
Date: Fri, 18 Oct 2019 10:20:40 +0200
Message-ID: <20191018082040.31022-1-olivier.moysan@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.201.21.218]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-18_02:2019-10-17,2019-10-18 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_012123_471322_0C7CEDF5 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

The commit below, adds a call to sysclk callback on shutdown.
This introduces a regression in stm32 SAI driver, as some clock
services are called twice, leading to unbalanced calls.
Move processing related to mclk from shutdown to sysclk callback.
When requested frequency is 0, assume shutdown and release mclk.

Fixes: 2458adb8f92a ("SoC: simple-card-utils: set 0Hz to sysclk when shutdown")

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
---
 sound/soc/stm/stm32_sai_sub.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/sound/soc/stm/stm32_sai_sub.c b/sound/soc/stm/stm32_sai_sub.c
index d7501f88aaa6..a4060813bc74 100644
--- a/sound/soc/stm/stm32_sai_sub.c
+++ b/sound/soc/stm/stm32_sai_sub.c
@@ -505,10 +505,20 @@ static int stm32_sai_set_sysclk(struct snd_soc_dai *cpu_dai,
 	if (dir == SND_SOC_CLOCK_OUT && sai->sai_mclk) {
 		ret = regmap_update_bits(sai->regmap, STM_SAI_CR1_REGX,
 					 SAI_XCR1_NODIV,
-					 (unsigned int)~SAI_XCR1_NODIV);
+					 freq ? 0 : SAI_XCR1_NODIV);
 		if (ret < 0)
 			return ret;
 
+		/* Assume shutdown if requested frequency is 0Hz */
+		if (!freq) {
+			/* Release mclk rate only if rate was actually set */
+			if (sai->mclk_rate) {
+				clk_rate_exclusive_put(sai->sai_mclk);
+				sai->mclk_rate = 0;
+			}
+			return 0;
+		}
+
 		/* If master clock is used, set parent clock now */
 		ret = stm32_sai_set_parent_clock(sai, freq);
 		if (ret)
@@ -1093,15 +1103,6 @@ static void stm32_sai_shutdown(struct snd_pcm_substream *substream,
 
 	regmap_update_bits(sai->regmap, STM_SAI_IMR_REGX, SAI_XIMR_MASK, 0);
 
-	regmap_update_bits(sai->regmap, STM_SAI_CR1_REGX, SAI_XCR1_NODIV,
-			   SAI_XCR1_NODIV);
-
-	/* Release mclk rate only if rate was actually set */
-	if (sai->mclk_rate) {
-		clk_rate_exclusive_put(sai->sai_mclk);
-		sai->mclk_rate = 0;
-	}
-
 	clk_disable_unprepare(sai->sai_ck);
 
 	spin_lock_irqsave(&sai->irq_lock, flags);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
