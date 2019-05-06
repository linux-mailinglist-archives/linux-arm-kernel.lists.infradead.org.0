Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B62FE14A15
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 14:44:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QWhtYh1JaiVXjwwfXLpxy/7/pt54FQH/frQ2g76R/pg=; b=RZ9GmTaK5gcnL+
	x3+zx+JwkKzNmE9IlpjpBg2AEqnbvJtDA1JswKXOuRUyHw2CUVYxGjzcbE3ms9bZfYC6Z5pg8iSZ2
	FvDxYkLb1/rqemJ4zOA9PHIssA964R94IHupv2NeX1XiAIK281c5wrQhktwq2N1pCniirGCEqjkRn
	8qZyZhljKX4RDvsgKvLmNFCnDeVwVjcJhpQjsM/KqcqFrvRzBlq+RMgsYq/15oxdKzpT6/5fU4iKD
	LGFc4FFNyFFzhjgc1CbbAsBcoD/7aC/Hwnb+YCOwCRkd7WP2Fz+gjU9EAq3kq5Z4bplYyBTrDZ9yT
	YVtHhn6kCKV+mJuartSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNczC-0004Rp-VT; Mon, 06 May 2019 12:44:50 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNcym-00045a-0Y
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 12:44:25 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x46CaDeE002530; Mon, 6 May 2019 14:44:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=eY0+5DYyMAqjb4Zccz3yB8/8lAlH/xHNJKu3nTKjXys=;
 b=pjrJrSZzywdlkGypwgTqgKHAqYlReBsynnO7GW5AnMK8onxlK8YjoWvcVJ84fv2OQrTz
 L1Um5HbKcgktE+wuAm1fbZkXgrVao4DL/LWf8BtWyMQaCOrS31WCZPdQV7EKgxqty0+r
 Wq5GzkV+b7YE+a6n7kzwjPwrfmZEOauza6uuHyh2cH8tuNPP9djkxN8iV0eubHoBw0L6
 g5cQSg9ITcAfuMPaHoFMYMj1Kb7iYpoIUcHf71++lsnJT+u+nzK3HkFtQFt7vRl+OATa
 mG+Ldc7CzUWHyG7KgV2f+qL1EhhnNU09eiFNBQ9RvG7+OQWFuUhJ3Oo3Jf1xEWbHNMj/ zw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2s94cb9en8-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 06 May 2019 14:44:13 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 38EE33D;
 Mon,  6 May 2019 12:44:12 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D69A32586;
 Mon,  6 May 2019 12:44:11 +0000 (GMT)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 6 May 2019
 14:44:11 +0200
Received: from localhost (10.201.23.16) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 6 May 2019 14:44:11
 +0200
From: Olivier Moysan <olivier.moysan@st.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <perex@perex.cz>,
 <tiwai@suse.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <alsa-devel@alsa-project.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-kernel@vger.kernel.org>, <olivier.moysan@st.com>,
 <arnaud.pouliquen@st.com>
Subject: [PATCH 1/3] ASoC: stm32: spdifrx: update pcm hardware constraints
Date: Mon, 6 May 2019 14:44:04 +0200
Message-ID: <1557146646-18150-2-git-send-email-olivier.moysan@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557146646-18150-1-git-send-email-olivier.moysan@st.com>
References: <1557146646-18150-1-git-send-email-olivier.moysan@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.16]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-06_08:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_054424_351747_BED644EC 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

- Set period minimum size. Ensure at least 5ms period
up to 48kHz/16 bits to prevent underrun/overrun.
- Remove MDMA constraints on period maximum size and
set period maximum to half the buffer maximum size.

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
---
 sound/soc/stm/stm32_spdifrx.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/sound/soc/stm/stm32_spdifrx.c b/sound/soc/stm/stm32_spdifrx.c
index b4c3d983e195..aa83b50efabb 100644
--- a/sound/soc/stm/stm32_spdifrx.c
+++ b/sound/soc/stm/stm32_spdifrx.c
@@ -845,7 +845,8 @@ static struct snd_soc_dai_driver stm32_spdifrx_dai[] = {
 static const struct snd_pcm_hardware stm32_spdifrx_pcm_hw = {
 	.info = SNDRV_PCM_INFO_INTERLEAVED | SNDRV_PCM_INFO_MMAP,
 	.buffer_bytes_max = 8 * PAGE_SIZE,
-	.period_bytes_max = 2048, /* MDMA constraint */
+	.period_bytes_min = 1024,
+	.period_bytes_max = 4 * PAGE_SIZE,
 	.periods_min = 2,
 	.periods_max = 8,
 };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
