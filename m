Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 847A3D3B8C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 10:48:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S2+kmN1m8oCW3TiVZA9qPUedHlcDjSWvkyh9lSVnx+E=; b=nxiI+6gvL+ZfUi
	wGRMK0qdJbC9Ty7639veD/krB+ARzTxeY4MKVn+fcOU6aYub0b9JUDMeg3Pj9O7Onup0QfvPway0z
	iTOIClSt3D5kng8VJnsSHT3HB5wEwQKAbShX4JzFIiWapcMi/YZwYe+6YHCG/Jdvs/8ulVLvDT0wC
	XlQG7k1QfLni7x7wfJJJ9Fzv/0/Gdsgw99WXhtiy/lfdltN+HGxG0W1zuu20BQaPEQI12eEGNN4ig
	oe5E5hsHYijlYLu8JsEffU00nO+KkFH+A/J3wXwbyJ0Dvde+19IThutO1anHV8DS9j6+5MuU1bBGJ
	fElcol1hUePqQjxuQ49A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIqbG-0006fh-4P; Fri, 11 Oct 2019 08:48:38 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIqb7-0006eg-Nv
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 08:48:31 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9B8jVnm018619; Fri, 11 Oct 2019 10:48:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=dn57trJDwkZf1zTqrirKMCOuNO/LkBA2sd55GnG6NrU=;
 b=PKMm3t0OsAVAyHFmAAlnAP0bWm6GHiWzxQmRPaq1eXJD1wgLj5zdV8OvDjkWAtvgOdYR
 8ii3smM+kk5ljgpYs+HOATNvoJG1BIBTlvlNi5mpmQjjy+hfac7Q8+qFBWsipIUzfiHj
 O0ALWBKDhiIs4PSeevSExUmfbcjbPTMd5lPnaRXzk8LUox7HIeg4Ld0GtTL/O9sWaZhb
 UL0yG/OJC35RRR8oSNysU+ktBDANlgq1OsXl4f7LdpTdr0esEJfaJtfJI1RY7S67PXY1
 s6wuaRxaW+wNtVD/l8xUtM5vlCPjHopuYdMhPFBHRgcJB9yizr6MDxRfp/d7ERK2ZhpC EA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vegahhecn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 11 Oct 2019 10:48:20 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A6F1710002A;
 Fri, 11 Oct 2019 10:48:19 +0200 (CEST)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 19BF12AF4B7;
 Fri, 11 Oct 2019 10:48:19 +0200 (CEST)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 11 Oct
 2019 10:48:19 +0200
Received: from localhost (10.201.21.218) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 11 Oct 2019 10:48:18
 +0200
From: Olivier Moysan <olivier.moysan@st.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <perex@perex.cz>,
 <tiwai@suse.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <alsa-devel@alsa-project.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-kernel@vger.kernel.org>, <olivier.moysan@st.com>,
 <arnaud.pouliquen@st.com>
Subject: [PATCH] ASoC: stm32: spdifrx: retry synchronization in sync state
Date: Fri, 11 Oct 2019 10:48:16 +0200
Message-ID: <20191011084816.14279-1-olivier.moysan@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.201.21.218]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-11_06:2019-10-10,2019-10-11 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_014830_137889_29D89F21 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When STM32 SPDIFRX is in sync state, allow multiple
synchro attempts, instead of exiting on first unsuccessful
trial. This is useful when spdif signal is not immediately
available on input. This also allows Pulseaudio to check
iec capture device availability when no signal is present.

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
---
 sound/soc/stm/stm32_spdifrx.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/sound/soc/stm/stm32_spdifrx.c b/sound/soc/stm/stm32_spdifrx.c
index cd4b235fce57..3fd28ee01675 100644
--- a/sound/soc/stm/stm32_spdifrx.c
+++ b/sound/soc/stm/stm32_spdifrx.c
@@ -351,6 +351,8 @@ static int stm32_spdifrx_start_sync(struct stm32_spdifrx_data *spdifrx)
 		     SPDIFRX_CR_CUMSK | SPDIFRX_CR_PTMSK | SPDIFRX_CR_RXSTEO;
 		cr_mask = cr;
 
+		cr |= SPDIFRX_CR_NBTRSET(SPDIFRX_NBTR_63);
+		cr_mask |= SPDIFRX_CR_NBTR_MASK;
 		cr |= SPDIFRX_CR_SPDIFENSET(SPDIFRX_SPDIFEN_SYNC);
 		cr_mask |= SPDIFRX_CR_SPDIFEN_MASK;
 		ret = regmap_update_bits(spdifrx->regmap, STM32_SPDIFRX_CR,
@@ -666,7 +668,7 @@ static irqreturn_t stm32_spdifrx_isr(int irq, void *devid)
 	struct snd_pcm_substream *substream = spdifrx->substream;
 	struct platform_device *pdev = spdifrx->pdev;
 	unsigned int cr, mask, sr, imr;
-	unsigned int flags;
+	unsigned int flags, sync_state;
 	int err = 0, err_xrun = 0;
 
 	regmap_read(spdifrx->regmap, STM32_SPDIFRX_SR, &sr);
@@ -726,11 +728,23 @@ static irqreturn_t stm32_spdifrx_isr(int irq, void *devid)
 	}
 
 	if (err) {
-		/* SPDIFRX in STATE_STOP. Disable SPDIFRX to clear errors */
+		regmap_read(spdifrx->regmap, STM32_SPDIFRX_CR, &cr);
+		sync_state = FIELD_GET(SPDIFRX_CR_SPDIFEN_MASK, cr) &&
+			     SPDIFRX_SPDIFEN_SYNC;
+
+		/* SPDIFRX is in STATE_STOP. Disable SPDIFRX to clear errors */
 		cr = SPDIFRX_CR_SPDIFENSET(SPDIFRX_SPDIFEN_DISABLE);
 		regmap_update_bits(spdifrx->regmap, STM32_SPDIFRX_CR,
 				   SPDIFRX_CR_SPDIFEN_MASK, cr);
 
+		/* If SPDIFRX was in STATE_SYNC, retry synchro */
+		if (sync_state) {
+			cr = SPDIFRX_CR_SPDIFENSET(SPDIFRX_SPDIFEN_SYNC);
+			regmap_update_bits(spdifrx->regmap, STM32_SPDIFRX_CR,
+					   SPDIFRX_CR_SPDIFEN_MASK, cr);
+			return IRQ_HANDLED;
+		}
+
 		if (substream)
 			snd_pcm_stop(substream, SNDRV_PCM_STATE_DISCONNECTED);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
