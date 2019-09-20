Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A6CB9040
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 15:04:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UlM+yZMa2MSAr0X89IamT/6MSKtPq76LL2DdYJ52HUw=; b=JCrDZ/Fcc00kQ3CivBv85Zw4MY
	3g9X+6Tx1rgaRNZ5ZVPZ/uBqCjJwxwEsGyafc89c9a0Rv7xh+ZdBP1I4pTVGfYrsGkmx6x6KVko3Z
	FhayEAWs/BxqJLwbiBHueQSQXSPZILv8RIA/74q55nIt09soCcSRh9/5X4aoFJ8RIDI+cpItKg9jn
	xst4U2cOb9NEcOq5FwyHSYCb87Q0Op8/60m0OZDQ9cdWHLcSCI2IPuto33isu033PJYvGzhKIGSgR
	2KPhkjO94GA7EQ01FdiabqbI3FRhshm7fZKF8NHGEz8SiL4tiYy3ZX7s4Gd0dYutm367oHsp4QXR/
	0Y3p2vZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBIZp-0003lD-Hc; Fri, 20 Sep 2019 13:03:57 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBIZD-0003FD-Hp
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 13:03:21 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190920130318euoutp02bad5b6e42beed4202a0d5fff30551ed6~GJy3hg7oV2404924049euoutp02Y
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Sep 2019 13:03:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190920130318euoutp02bad5b6e42beed4202a0d5fff30551ed6~GJy3hg7oV2404924049euoutp02Y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568984598;
 bh=vl5ukbhanInM0ZjlN2586DHL2dhCl7kr3dkl0Go81Z4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TutGf3/za4lA3P9uanFGz2tUXD5fekDNIJCtVB/pmEcZ3oL3aR72W/ANzrJLsoo2Q
 QERQfNA7TKpstvAu2CcsJuKU0ey+1uKm1GqzxiMk5g4SqYSL0WckUnC4ANCGarfIt6
 T3Er8u4KQ8nzMt9tULg1cnqBt9TJFe/j5axuxDJs=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190920130317eucas1p2c161f57c15e2a3085af15593dd836914~GJy22549z1573015730eucas1p2O;
 Fri, 20 Sep 2019 13:03:17 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 46.DC.04469.51EC48D5; Fri, 20
 Sep 2019 14:03:17 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190920130316eucas1p2de713006a13c62c0b895c2e33e0d14c7~GJy15tgpC1583815838eucas1p2t;
 Fri, 20 Sep 2019 13:03:16 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190920130316eusmtrp1397d5d5cc0aae0cfeb1d611957d82cc1~GJy1oE6Nf0476604766eusmtrp1T;
 Fri, 20 Sep 2019 13:03:16 +0000 (GMT)
X-AuditID: cbfec7f2-569ff70000001175-5e-5d84ce15a5e4
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id BB.01.04117.41EC48D5; Fri, 20
 Sep 2019 14:03:16 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190920130315eusmtip22332a7552dd261f3f1944790f207ef78~GJy07P_Tl1336913369eusmtip2x;
 Fri, 20 Sep 2019 13:03:15 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: broonie@kernel.org, krzk@kernel.org
Subject: [PATCH v2 03/10] ASoC: wm8994: Add support for setting MCLK clock rate
Date: Fri, 20 Sep 2019 15:02:12 +0200
Message-Id: <20190920130218.32690-4-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190920130218.32690-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrBKsWRmVeSWpSXmKPExsWy7djP87qi51piDW7sZre4cvEQk8XGGetZ
 LaY+fMJmcaV1E6PF/CPnWC3On9/AbvHtSgeTxabH11gtZpzfx2Sx9shddovP7/ezWrTuPcJu
 cfhNO6vFxRVfmBz4PDZ8bmLz2DnrLrvHplWdbB6bl9R7TJ/zn9Gjb8sqRo/Pm+QC2KO4bFJS
 czLLUov07RK4MmZt+89WcEi54u2GHpYGxm8yXYycHBICJhLzj+1hBbGFBFYwStztc+hi5AKy
 vzBKzN92kQnC+QyUWHSPCaZjctMZdojEckaJJ5ees8O1nNh3mRGkik3AUKL3aB+YLSKgLnF/
 RhMrSBGzwEsmiQlH14GNEhYIlHh/tIEFxGYRUJV4cfUrWJxXwFqi5+pvVoh18hKrNxxgBrE5
 BWwkXt5YBHXGNnaJKYesIGwXib9zfrFA2MISr45vYYewZSROT+5hAVksIdDMKNGz+zY7hDOB
 UeL+8QWMEFXWEoePXwTaxgF0nqbE+l36EGFHifkNs1hAwhICfBI33gqChJmBzEnbpjNDhHkl
 OtqEIKpVJH6vmg51mpRE95P/UOd4SHx6NZ8FEkD9jBJ/fzazTmCUn4WwbAEj4ypG8dTS4tz0
 1GLDvNRyveLE3OLSvHS95PzcTYzA9HP63/FPOxi/Xko6xCjAwajEw+txrCVWiDWxrLgy9xCj
 BAezkgjvHNOmWCHelMTKqtSi/Pii0pzU4kOM0hwsSuK81QwPooUE0hNLUrNTUwtSi2CyTByc
 Ug2Mq2dvT/J4o7t89dfQd9z/bhZK2Tsbev2yLotJ9HR0E+Gotg2Wkw9OndEjypY+5/zaxoD3
 E9fsDbEO6es+dvoJC2OF6IeZRmumyB3t95LkbJ005Uhgv0CpY0/91MCZ1mYFh2sr2h/M5Jab
 tn+TbdmrIpb/k7KKJxwM4n4cX7DwbqFE9Znf6b+UWIozEg21mIuKEwF7IZvvOwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupkkeLIzCtJLcpLzFFi42I5/e/4PV2Rcy2xBtNusVpcuXiIyWLjjPWs
 FlMfPmGzuNK6idFi/pFzrBbnz29gt/h2pYPJYtPja6wWM87vY7JYe+Quu8Xn9/tZLVr3HmG3
 OPymndXi4oovTA58Hhs+N7F57Jx1l91j06pONo/NS+o9ps/5z+jRt2UVo8fnTXIB7FF6NkX5
 pSWpChn5xSW2StGGFkZ6hpYWekYmlnqGxuaxVkamSvp2NimpOZllqUX6dgl6GbO2/WcrOKRc
 8XZDD0sD4zeZLkZODgkBE4nJTWfYuxi5OIQEljJK/FjRwtzFyAGUkJKY36IEUSMs8edaFxtE
 zSdGiVVdB1lBEmwChhK9R/sYQWwRAU2Jjnm3WUGKmAW+M0kceHySGSQhLOAvcXX7X7AiFgFV
 iRdXvzKB2LwC1hI9V3+zQmyQl1i94QBYPaeAjcTLG4vAaoSAak7v28s+gZFvASPDKkaR1NLi
 3PTcYiO94sTc4tK8dL3k/NxNjMBo2Hbs55YdjF3vgg8xCnAwKvHwehxriRViTSwrrsw9xCjB
 wawkwjvHtClWiDclsbIqtSg/vqg0J7X4EKMp0FETmaVEk/OBkZpXEm9oamhuYWlobmxubGah
 JM7bIXAwRkggPbEkNTs1tSC1CKaPiYNTqoEx0379qg9lB9/f/PzMa+/OW5d6vxbdYLlyi8Ou
 ZvKDuWoT2RdHbuCQ8Fq063rO+q/9CiuMyxhOP//33Y1ncTAHf8+jXMXwPW5b95xn/nx3e8Zu
 7StLrOPOvdz/T3xd1plMFoOZC/1tzmb+2Kqi58gy9zH/9geGNbKzP5SxT+8xfTVFl7fb58GF
 B0osxRmJhlrMRcWJAFGHBa+cAgAA
X-CMS-MailID: 20190920130316eucas1p2de713006a13c62c0b895c2e33e0d14c7
X-Msg-Generator: CA
X-RootMTR: 20190920130316eucas1p2de713006a13c62c0b895c2e33e0d14c7
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190920130316eucas1p2de713006a13c62c0b895c2e33e0d14c7
References: <20190920130218.32690-1-s.nawrocki@samsung.com>
 <CGME20190920130316eucas1p2de713006a13c62c0b895c2e33e0d14c7@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_060319_722392_7CBB4700 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 lgirdwood@gmail.com, robh+dt@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Extend the set_sysclk() handler so we also set frequency of the MCLK1,
MCLK2 clocks through clk API when those clocks are specified in DT.

Reviewed-by: Charles Keepax <ckeepax@opensource.cirrus.com>
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
Changes since v1:
 - getting of clocks moved from MFD to the CODEC's driver probe()
---
 sound/soc/codecs/wm8994.c | 48 +++++++++++++++++++++++++++++++++++----
 sound/soc/codecs/wm8994.h | 10 +++++++-
 2 files changed, 52 insertions(+), 6 deletions(-)

diff --git a/sound/soc/codecs/wm8994.c b/sound/soc/codecs/wm8994.c
index d5fb7f5dd551..f69545dced25 100644
--- a/sound/soc/codecs/wm8994.c
+++ b/sound/soc/codecs/wm8994.c
@@ -167,12 +167,12 @@ static int configure_aif_clock(struct snd_soc_component *component, int aif)
 
 	switch (wm8994->sysclk[aif]) {
 	case WM8994_SYSCLK_MCLK1:
-		rate = wm8994->mclk[0];
+		rate = wm8994->mclk_rate[0];
 		break;
 
 	case WM8994_SYSCLK_MCLK2:
 		reg1 |= 0x8;
-		rate = wm8994->mclk[1];
+		rate = wm8994->mclk_rate[1];
 		break;
 
 	case WM8994_SYSCLK_FLL1:
@@ -2372,12 +2372,29 @@ static int wm8994_set_fll(struct snd_soc_dai *dai, int id, int src,
 	return _wm8994_set_fll(dai->component, id, src, freq_in, freq_out);
 }
 
+static int wm8994_set_mclk_rate(struct wm8994_priv *wm8994, unsigned int id,
+				unsigned int *freq)
+{
+	int ret;
+
+	if (!wm8994->mclk[id].clk || *freq == wm8994->mclk_rate[id])
+		return 0;
+
+	ret = clk_set_rate(wm8994->mclk[id].clk, *freq);
+	if (ret < 0)
+		return ret;
+
+	*freq = clk_get_rate(wm8994->mclk[id].clk);
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
@@ -2392,7 +2409,12 @@ static int wm8994_set_dai_sysclk(struct snd_soc_dai *dai,
 	switch (clk_id) {
 	case WM8994_SYSCLK_MCLK1:
 		wm8994->sysclk[dai->id - 1] = WM8994_SYSCLK_MCLK1;
-		wm8994->mclk[0] = freq;
+
+		ret = wm8994_set_mclk_rate(wm8994, dai->id - 1, &freq);
+		if (ret < 0)
+			return ret;
+
+		wm8994->mclk_rate[0] = freq;
 		dev_dbg(dai->dev, "AIF%d using MCLK1 at %uHz\n",
 			dai->id, freq);
 		break;
@@ -2400,7 +2422,12 @@ static int wm8994_set_dai_sysclk(struct snd_soc_dai *dai,
 	case WM8994_SYSCLK_MCLK2:
 		/* TODO: Set GPIO AF */
 		wm8994->sysclk[dai->id - 1] = WM8994_SYSCLK_MCLK2;
-		wm8994->mclk[1] = freq;
+
+		ret = wm8994_set_mclk_rate(wm8994, dai->id - 1, &freq);
+		if (ret < 0)
+			return ret;
+
+		wm8994->mclk_rate[1] = freq;
 		dev_dbg(dai->dev, "AIF%d using MCLK2 at %uHz\n",
 			dai->id, freq);
 		break;
@@ -4456,6 +4483,7 @@ static const struct snd_soc_component_driver soc_component_dev_wm8994 = {
 static int wm8994_probe(struct platform_device *pdev)
 {
 	struct wm8994_priv *wm8994;
+	int ret;
 
 	wm8994 = devm_kzalloc(&pdev->dev, sizeof(struct wm8994_priv),
 			      GFP_KERNEL);
@@ -4467,6 +4495,16 @@ static int wm8994_probe(struct platform_device *pdev)
 
 	wm8994->wm8994 = dev_get_drvdata(pdev->dev.parent);
 
+	wm8994->mclk[WM8994_MCLK1].id = "MCLK1";
+	wm8994->mclk[WM8994_MCLK2].id = "MCLK2";
+
+	ret = devm_clk_bulk_get_optional(pdev->dev.parent, ARRAY_SIZE(wm8994->mclk),
+					 wm8994->mclk);
+	if (ret < 0) {
+		dev_err(&pdev->dev, "Failed to get clocks: %d\n", ret);
+		return ret;
+	}
+
 	pm_runtime_enable(&pdev->dev);
 	pm_runtime_idle(&pdev->dev);
 
diff --git a/sound/soc/codecs/wm8994.h b/sound/soc/codecs/wm8994.h
index 1d6f2abe1c11..41c4b126114d 100644
--- a/sound/soc/codecs/wm8994.h
+++ b/sound/soc/codecs/wm8994.h
@@ -6,6 +6,7 @@
 #ifndef _WM8994_H
 #define _WM8994_H
 
+#include <linux/clk.h>
 #include <sound/soc.h>
 #include <linux/firmware.h>
 #include <linux/completion.h>
@@ -14,6 +15,12 @@
 
 #include "wm_hubs.h"
 
+enum {
+	WM8994_MCLK1,
+	WM8994_MCLK2,
+	WM8994_NUM_MCLK
+};
+
 /* Sources for AIF1/2 SYSCLK - use with set_dai_sysclk() */
 #define WM8994_SYSCLK_MCLK1 1
 #define WM8994_SYSCLK_MCLK2 2
@@ -73,9 +80,10 @@ struct wm8994;
 struct wm8994_priv {
 	struct wm_hubs_data hubs;
 	struct wm8994 *wm8994;
+	struct clk_bulk_data mclk[WM8994_NUM_MCLK];
 	int sysclk[2];
 	int sysclk_rate[2];
-	int mclk[2];
+	int mclk_rate[2];
 	int aifclk[2];
 	int aifdiv[2];
 	int channels[2];
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
