Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E68A31B368D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 06:49:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:To:
	Subject:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nx48UsQeEJ4TtRs1bmruG5oA/puRy8wbNflcR1lVCu4=; b=FjQ7+R04e6JWru
	7L4P/ACoOW4usR/dTUKQ0Q2YW/eqjLbVwg4aL+EfvXftn0xTJSKJAnsWKq0bLI8JhlU8LkwUEAf8/
	Ph9tdafMiyxiCpgY/vUeyubgtq8oY9YClMo+cxaKevcOTkJR7ZuDJFlRJ2SwDZG20/Vum15YAibL+
	YKIVmWC58/fXFHJC7kO7MizIZ8wYtwurU9YSr35AxKsfiHvJONfp38bnrMOp0NHUJrpSKNk10vbV9
	y7LK558fW9cIwtgSfh/ZSdbZ4NToNGkmWzWot+uLnaGIPfsShrw5eA8NtIDsIbgH4TAvw741fb4fy
	zhq4TQQmbHRMW+rz2d9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR7Jn-00072Q-WE; Wed, 22 Apr 2020 04:49:04 +0000
Received: from relmlor1.renesas.com ([210.160.252.171]
 helo=relmlie5.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR7J3-0006ep-MD; Wed, 22 Apr 2020 04:48:20 +0000
Date: 22 Apr 2020 13:48:16 +0900
X-IronPort-AV: E=Sophos;i="5.72,412,1580742000"; d="scan'208";a="45382387"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
 by relmlie5.idc.renesas.com with ESMTP; 22 Apr 2020 13:48:16 +0900
Received: from mercury.renesas.com (unknown [10.166.252.133])
 by relmlir6.idc.renesas.com (Postfix) with ESMTP id 78D7841C00DA;
 Wed, 22 Apr 2020 13:48:16 +0900 (JST)
Message-ID: <878siounvz.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH 3/4] ASoC: intel: haswell: don't use snd_soc_rtdcom_lookup()
User-Agent: Wanderlust/2.15.9 Emacs/25.2 Mule/6.0
To: Mark Brown <broonie@kernel.org>
In-Reply-To: <87d080unyx.wl-kuninori.morimoto.gx@renesas.com>
References: <87d080unyx.wl-kuninori.morimoto.gx@renesas.com>
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_214817_848050_899F25EA 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.160.252.171 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Cezary Rojewski <cezary.rojewski@intel.com>,
 Jie Yang <yang.jie@linux.intel.com>, alsa-devel@alsa-project.org,
 Jaroslav Kysela <perex@perex.cz>,
 Liam Girdwood <liam.r.girdwood@linux.intel.com>,
 Richard Fontana <rfontana@redhat.com>, Shunli Wang <shunli.wang@mediatek.com>,
 YueHaibing <yuehaibing@huawei.com>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Jiaxin Yu <jiaxin.yu@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 Vijendar Mukunda <Vijendar.Mukunda@amd.com>,
 Stephen Boyd <swboyd@chromium.org>, linux-mediatek@lists.infradead.org,
 Eason Yen <eason.yen@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Takashi Iwai <tiwai@suse.com>,
 Ravulapati Vishnu vardhan rao <Vishnuvardhanrao.Ravulapati@amd.com>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

We shouldn't use snd_soc_rtdcom_lookup() as much as possible.
It works today, but, will not work in the future if we support multi
CPU/Codec/Platform, because 1 rtd might have multiple same driver
named component.

intel haswell driver is using it, but we can avoid it easily
by having component pointer at hsw_pcm_data.
This patch removes snd_soc_rtdcom_lookup() from this driver.

Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
---
 sound/soc/intel/haswell/sst-haswell-pcm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/sound/soc/intel/haswell/sst-haswell-pcm.c b/sound/soc/intel/haswell/sst-haswell-pcm.c
index c183f8e94ee4..15e94dae45de 100644
--- a/sound/soc/intel/haswell/sst-haswell-pcm.c
+++ b/sound/soc/intel/haswell/sst-haswell-pcm.c
@@ -108,6 +108,7 @@ struct hsw_pcm_data {
 	struct snd_pcm *hsw_pcm;
 	u32 volume[2];
 	struct snd_pcm_substream *substream;
+	struct snd_soc_component *component;
 	struct snd_compr_stream *cstream;
 	unsigned int wpos;
 	struct mutex mutex;
@@ -696,7 +697,7 @@ static u32 hsw_notify_pointer(struct sst_hsw_stream *stream, void *data)
 	struct snd_pcm_substream *substream = pcm_data->substream;
 	struct snd_pcm_runtime *runtime = substream->runtime;
 	struct snd_soc_pcm_runtime *rtd = substream->private_data;
-	struct snd_soc_component *component = snd_soc_rtdcom_lookup(rtd, DRV_NAME);
+	struct snd_soc_component *component = pcm_data->component;
 	struct hsw_priv_data *pdata = snd_soc_component_get_drvdata(component);
 	struct sst_hsw *hsw = pdata->hsw;
 	u32 pos;
@@ -798,6 +799,7 @@ static int hsw_pcm_open(struct snd_soc_component *component,
 	pm_runtime_get_sync(pdata->dev);
 
 	pcm_data->substream = substream;
+	pcm_data->component = component;
 
 	snd_soc_set_runtime_hwparams(substream, &hsw_pcm_hardware);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
