Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8852FB61C2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 12:47:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uzE1xJVSJRgS7rPOw5bvyen970IZLtghrMv6SMuWPBs=; b=V1t4phL10rdFSM2A4cuUZI1TXo
	kx6qMW7nPK3LnpCaDdhZBTTkBCdMyltQ8HHGSyPJwwHz+iAQNR4/9bNIuoeiPvSVJ3ba9HfxEUieU
	y0NSZhhGyOuZIf8fvs7gtf0yibGETwT6w3EKdwJpwzOaatJYRaI10V2If0Mn3UkSwuSXxuMxfz6Sq
	GGj/v/d162EZyWCJVKfUgigh9H43FfCyiFIq3s3rfOq+zzp7wvPi57k7XMqcJelxSoI1teGyu4UVx
	PjbC0gaPPDcJtlYgPdjMOHJzpROVeCfjVsdMC3ozjWtUa1abuvNFy6C6rUFxgEHCAv2uqQekpp2OF
	C0gHEmHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAXUv-000186-0X; Wed, 18 Sep 2019 10:47:45 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAXUE-0000UZ-Mn
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 10:47:04 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190918104700euoutp028cc6e93d437603c168a444a7183706b0~FgpSzVZSv3145031450euoutp02D
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 10:47:00 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190918104700euoutp028cc6e93d437603c168a444a7183706b0~FgpSzVZSv3145031450euoutp02D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568803620;
 bh=jo8NfcFsM8ji+aA0mcIGGdLDNGkm0zm4tpKoJrabSrY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CTrkaf5I2LFLe+b0XBhJjavasYCLap3TqC3EL56dXR0IdTy270pElDrT8PDZMVWfu
 nlzhs0ZsvIIFoZ/ujrIULQeWc+H7pSZZC0awRWJ749YTBtI18KL0msSr+G3oukWkK4
 xoUjO8ewVLfyOjwxaC3FMxInN0XkGGE9EXH37zG8=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190918104659eucas1p268d83ad670640425cfc782c6a87e1dda~FgpSDt1CI2378523785eucas1p2Q;
 Wed, 18 Sep 2019 10:46:59 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id D3.B4.04309.32B028D5; Wed, 18
 Sep 2019 11:46:59 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190918104658eucas1p2c1f07d3e8b915d8c3a448b80d2af5df0~FgpRPSm0y2379323793eucas1p2S;
 Wed, 18 Sep 2019 10:46:58 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190918104658eusmtrp251a8c7bd204d9283fc9fada0282614bd~FgpQ-n90U1555615556eusmtrp2V;
 Wed, 18 Sep 2019 10:46:58 +0000 (GMT)
X-AuditID: cbfec7f4-ae1ff700000010d5-0b-5d820b23ff2b
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 41.2C.04117.22B028D5; Wed, 18
 Sep 2019 11:46:58 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190918104657eusmtip1bc8fbffa86f46a4eab0e900e30467598~FgpQVzh8b0585005850eusmtip1H;
 Wed, 18 Sep 2019 10:46:57 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: broonie@kernel.org
Subject: [PATCH v1 3/9] ASoC: wm8994: Add support for setting MCLKn clock rate
Date: Wed, 18 Sep 2019 12:46:28 +0200
Message-Id: <20190918104634.15216-4-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190918104634.15216-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSXUgUYRSG/WZ2dkZzbHaUPJhobUkU5E91MaCUWheDZAne9KPllpNK/rWj
 VlYomvlTamm2JoZl4aqR2mpLa1TLqi0luG1toqlkJl1YYrVaRpq5jtXde573fTnng4/CWS3h
 RSWlZgjqVFWyUu4i0z/72bd53Yq82EDTFZazWU0Yd7+6leCq3o/LOVuBDnF13X0EZ7G0kdx3
 WxHG6T70E1y15QnG3eseITn71FOCK3jcTXJdnwsJzto4jYW68W32PDlvqBkheV1zsZxvv5PD
 a2oXEF/W0Yx4u84nijzgEhIvJCdlCeqA7XEuiU97+8j0MsUpfZse5aIvdAlypoDZBqW2T7IS
 5EKxTCOCyvwWuTRMI/gyN0VIgx2BXTuL/la0PfO4ZGgRGM1j6F+laqCdcKTkTBCU9pQtNTyY
 VTBUW7zUwJk5DCbna2QOw52JgtcTRqwEUZSM8YNym68D00wwXB3OxaVtvnC3zbiknZkQ+PZy
 dOlYYPQkWAw3ZFJoFwzVW5a1O0yYO0hJe8OCoQ6TCvkILj0aIqXhMoJ35pvLDwqGLrOVcFyB
 MxuhtTNAwmFQOmeTOzAwbjAwqXBgfFFW6DW4hGkousBK6fXwq1mDSdoLLo4vyKQIDw9mwIFZ
 phzBzMipy8i35v+qmwg1I08hU0xJEMQtqcJJf1GVImamJvgfTUvRocXv0/vbPP0Qdc4dMSGG
 QkpX2vgiN5YlVFni6RQTAgpXetBR53JiWTpedTpbUKcdVmcmC6IJraZkSk/6jNPoQZZJUGUI
 xwUhXVD/dTHK2SsX1YW+6Q3spOsPJQa3aCfYylvPLbTr+ahhS3b4NfvbmPIdVdbo8Mi4MxWR
 Tla1vdBPuO0T16BZSwS++jpWP73ybPHOfU2uEQ2zx0Tznu7q0WFN9e6c99Gd+2MVW78p9m4z
 dGFho8cjBme949fHGK6PDP5QzPPPT2zob4qP5oyNaz4qZWKiKmgTrhZVfwC7XBIZOgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupgkeLIzCtJLcpLzFFi42I5/e/4XV0l7qZYg6uTRS2uXDzEZLFxxnpW
 i6kPn7BZXGndxGgx/8g5Vovz5zewW3y70sFksenxNVaLGef3MVmsPXKX3eLz+/2sFq17j7Bb
 HH7TzmpxccUXJgc+jw2fm9g8ds66y+6xaVUnm8fmJfUe0+f8Z/To27KK0ePzJrkA9ig9m6L8
 0pJUhYz84hJbpWhDCyM9Q0sLPSMTSz1DY/NYKyNTJX07m5TUnMyy1CJ9uwS9jP2nz7EX9AlW
 bNuwjbGB8QNvFyMnh4SAicTyo3+Zuxi5OIQEljJKPNqzga2LkQMoISUxv0UJokZY4s+1LjaI
 mk+MEtPXTmEHSbAJGEr0Hu1jBLFFBMQkbs/pBBvELNDFLPF+xy9WkISwgJ9E87QHjCBDWQRU
 JfqvyIOEeQWsJabcaWCGWCAvsXrDATCbU8BG4tOFBywgthBQzYJj0xgnMPItYGRYxSiSWlqc
 m55bbKRXnJhbXJqXrpecn7uJERgL24793LKDsetd8CFGAQ5GJR5eibMNsUKsiWXFlbmHGCU4
 mJVEeANq62OFeFMSK6tSi/Lji0pzUosPMZoC3TSRWUo0OR8Yp3kl8YamhuYWlobmxubGZhZK
 4rwdAgdjhATSE0tSs1NTC1KLYPqYODilGhgVaiceVbvDaNek5n3E5zFbjaWdmN51/UU/o6sE
 ZFX/1uza2ry1JX+up8u5XfOO6i2y5DhRZjdpluqcC7t2rG9gV9zZyPm0vCtvVu9c/9/97fKs
 JoE+547wXf95lZFrwXNHe3+/CxwiUulKhp/W7xXo/z6f+0qGGaeFDouo/cxfxre9UkPWKCix
 FGckGmoxFxUnAgAmziw7mwIAAA==
X-CMS-MailID: 20190918104658eucas1p2c1f07d3e8b915d8c3a448b80d2af5df0
X-Msg-Generator: CA
X-RootMTR: 20190918104658eucas1p2c1f07d3e8b915d8c3a448b80d2af5df0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190918104658eucas1p2c1f07d3e8b915d8c3a448b80d2af5df0
References: <20190918104634.15216-1-s.nawrocki@samsung.com>
 <CGME20190918104658eucas1p2c1f07d3e8b915d8c3a448b80d2af5df0@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_034702_906886_75ED0E5D 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, ckeepax@opensource.cirrus.com,
 b.zolnierkie@samsung.com, sbkim73@samsung.com, patches@opensource.cirrus.com,
 lgirdwood@gmail.com, krzk@kernel.org, robh+dt@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Extend the set_sysclk() handler so we also set frequency of the MCLK1,
MCLK2 clocks through clk API when those clocks are specified in DT for
the device.

Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
 sound/soc/codecs/wm8994.c | 30 +++++++++++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/sound/soc/codecs/wm8994.c b/sound/soc/codecs/wm8994.c
index d5fb7f5dd551..b6b0842ae1fc 100644
--- a/sound/soc/codecs/wm8994.c
+++ b/sound/soc/codecs/wm8994.c
@@ -2372,12 +2372,30 @@ static int wm8994_set_fll(struct snd_soc_dai *dai, int id, int src,
 	return _wm8994_set_fll(dai->component, id, src, freq_in, freq_out);
 }
 
+static int wm8994_set_mclk_rate(struct wm8994_priv *wm8994, unsigned int id,
+				unsigned int *freq)
+{
+	struct wm8994 *control = wm8994->wm8994;
+	int ret;
+
+	if (!control->mclk[id].clk || *freq == wm8994->mclk[id])
+		return 0;
+
+	ret = clk_set_rate(control->mclk[id].clk, *freq);
+	if (ret < 0)
+		return ret;
+
+	*freq = clk_get_rate(control->mclk[id].clk);
+
+	return 0;
+}
+
 static int wm8994_set_dai_sysclk(struct snd_soc_dai *dai,
 		int clk_id, unsigned int freq, int dir)
 {
 	struct snd_soc_component *component = dai->component;
 	struct wm8994_priv *wm8994 = snd_soc_component_get_drvdata(component);
-	int i;
+	int ret, i;
 
 	switch (dai->id) {
 	case 1:
@@ -2392,6 +2410,11 @@ static int wm8994_set_dai_sysclk(struct snd_soc_dai *dai,
 	switch (clk_id) {
 	case WM8994_SYSCLK_MCLK1:
 		wm8994->sysclk[dai->id - 1] = WM8994_SYSCLK_MCLK1;
+
+		ret = wm8994_set_mclk_rate(wm8994, dai->id - 1, &freq);
+		if (ret < 0)
+			return ret;
+
 		wm8994->mclk[0] = freq;
 		dev_dbg(dai->dev, "AIF%d using MCLK1 at %uHz\n",
 			dai->id, freq);
@@ -2400,6 +2423,11 @@ static int wm8994_set_dai_sysclk(struct snd_soc_dai *dai,
 	case WM8994_SYSCLK_MCLK2:
 		/* TODO: Set GPIO AF */
 		wm8994->sysclk[dai->id - 1] = WM8994_SYSCLK_MCLK2;
+
+		ret = wm8994_set_mclk_rate(wm8994, dai->id - 1, &freq);
+		if (ret < 0)
+			return ret;
+
 		wm8994->mclk[1] = freq;
 		dev_dbg(dai->dev, "AIF%d using MCLK2 at %uHz\n",
 			dai->id, freq);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
