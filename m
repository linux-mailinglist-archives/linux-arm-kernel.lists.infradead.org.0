Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C804A7050C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 18:07:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q7MiTfc39D2xKECvGPIwGYxQeqCTIm64jyfAIL5RQIw=; b=SVrJaHzupoa29q
	Zm5KXu9nNtXaPF7XA1p9f5eN+tAkVfkK2ISE2wQqB0j5P55KebFX666VAM03B0SzD/H3NESuEt97C
	7J51xHpVFuYyG6XF1FhV/utiE00qJd4GcIJow5fiz0fGDLbeSXb8EKftZDnxEJviNEsq3O17Ytj3v
	Q4gU8tnXurQW7nmz3X825PFo3DxWnidkk+CqhwvlOiAnzfh223u+QEX8Q+ySCy3LS6xOrd0P077a7
	kji4QBTvwIrklcxqNFSuL5v71JHvawTcFumpgqxOlbdpeCQBgCWtnbibsq0dwFmFDs+Lb7zJ7gRgI
	xqixm3BQQZ3Og5de75kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpaqU-0001B4-8x; Mon, 22 Jul 2019 16:07:26 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpapV-0000hm-Ap
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 16:06:27 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6MG64sW016167; Mon, 22 Jul 2019 18:06:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=lMBXVdaWkpNK3eb/f1Th8IHqOU36gvkUYQ/xuGtXNQw=;
 b=LYkqkqea4BV4nkzQeT228vwRbHjFV7f7OhZhrHLXcGZtjQBUSO1GhqJWLzIVq9deWRh6
 e6b/FOCAu+HXpEBNsu4fU/Uxm8vmHwOSbqqlVY9WxcmOYaOAAIr/cNrkbi5c4iXL56UG
 gggeeJO4mxPS+kLnuKhJHiw6RpHtUyUvfasNUSZXTUf0K10bE5M5iIck+TGekRyZkWrK
 dJ3ACuS/2RfXP53EgcretzJ+9/PWgoGBkVkhCzDUpXOmgxnVD6CNbZvOUJyquRAYF7tp
 hcKTeBYuA6L3tWPpISLXPDiQvONw7p3zICdlD1/uqUsNvkPKMF8D4fOVmE/Uq8icBd6D iA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2ture1chdv-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 22 Jul 2019 18:06:06 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id F053831;
 Mon, 22 Jul 2019 16:06:05 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D3D6F52BB;
 Mon, 22 Jul 2019 16:06:05 +0000 (GMT)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 22 Jul
 2019 18:06:05 +0200
Received: from localhost (10.201.23.16) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 22 Jul 2019 18:06:05
 +0200
From: Olivier Moysan <olivier.moysan@st.com>
To: <a.hajda@samsung.com>, <narmstrong@baylibre.com>,
 <Laurent.pinchart@ideasonboard.com>, <jonas@kwiboo.se>,
 <jernej.skrabec@siol.net>, <airlied@linux.ie>, <daniel@ffwll.ch>,
 <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>,
 <benjamin.gaignard@st.com>, <alexandre.torgue@st.com>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>, <olivier.moysan@st.com>,
 <jsarha@ti.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <devicetree@vger.kernel.org>
Subject: [PATCH v2 3/3] drm/bridge: sii902x: make audio mclk optional
Date: Mon, 22 Jul 2019 18:06:00 +0200
Message-ID: <1563811560-29589-4-git-send-email-olivier.moysan@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563811560-29589-1-git-send-email-olivier.moysan@st.com>
References: <1563811560-29589-1-git-send-email-olivier.moysan@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.16]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-22_12:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_090625_708832_15CC87EB 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The master clock on i2s bus is not mandatory,
as sii902X internal PLL can be used instead.
Make use of mclk optional.

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
Reviewed-by: Jyri Sarha <jsarha@ti.com>
Acked-by: Andrzej Hajda <a.hajda@samsung.com>
---
 drivers/gpu/drm/bridge/sii902x.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/bridge/sii902x.c b/drivers/gpu/drm/bridge/sii902x.c
index 962931c20efe..a323815aa9b6 100644
--- a/drivers/gpu/drm/bridge/sii902x.c
+++ b/drivers/gpu/drm/bridge/sii902x.c
@@ -568,13 +568,14 @@ static int sii902x_audio_hw_params(struct device *dev, void *data,
 		return ret;
 	}
 
-	mclk_rate = clk_get_rate(sii902x->audio.mclk);
-
-	ret = sii902x_select_mclk_div(&i2s_config_reg, params->sample_rate,
-				      mclk_rate);
-	if (mclk_rate != ret * params->sample_rate)
-		dev_dbg(dev, "Inaccurate reference clock (%ld/%d != %u)\n",
-			mclk_rate, ret, params->sample_rate);
+	if (sii902x->audio.mclk) {
+		mclk_rate = clk_get_rate(sii902x->audio.mclk);
+		ret = sii902x_select_mclk_div(&i2s_config_reg,
+					      params->sample_rate, mclk_rate);
+		if (mclk_rate != ret * params->sample_rate)
+			dev_dbg(dev, "Inaccurate reference clock (%ld/%d != %u)\n",
+				mclk_rate, ret, params->sample_rate);
+	}
 
 	mutex_lock(&sii902x->mutex);
 
@@ -751,11 +752,11 @@ static int sii902x_audio_codec_init(struct sii902x *sii902x,
 		sii902x->audio.i2s_fifo_sequence[i] |= audio_fifo_id[i] |
 			i2s_lane_id[lanes[i]] |	SII902X_TPI_I2S_FIFO_ENABLE;
 
-	sii902x->audio.mclk = devm_clk_get(dev, "mclk");
+	sii902x->audio.mclk = devm_clk_get_optional(dev, "mclk");
 	if (IS_ERR(sii902x->audio.mclk)) {
 		dev_err(dev, "%s: No clock (audio mclk) found: %ld\n",
 			__func__, PTR_ERR(sii902x->audio.mclk));
-		return 0;
+		return PTR_ERR(sii902x->audio.mclk);
 	}
 
 	sii902x->audio.pdev = platform_device_register_data(
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
