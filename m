Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 352BE5DF45
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 10:04:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=scr6FEu0Ez6J5qNj3pfmdAH0KBS5QLItddE2oJ803+A=; b=s3VyThXUataJlx
	M0NyGwJIIDhmALzI55yKZrc+7cTSXbDLnsX+YW4iag2x2X//y/ol3rFTyQV/AzBLOtkbOyYV5zS8l
	SuQUqYuc6jcNYaoonkYjMZ8gEaNuUyWrsUI99vOz5JPGkNqGhz+G8zHT1RWoU+LaF4e3/eLAw6BML
	mcDm3ybFjo6uEpiItDfn/N4LOjRCvLhUuSGpvq5YrfIHOZYQ9CErDIGlhOm/B0AwB335XYRN0be5d
	GOPVHJIjjr8sh+cLNvdEjgowCxoDgXnwRgBxooKy0cDUhHv2+jz+c+sIvR0zSB0RGnoWXNa/uxZT/
	lBaB1JXkG0l8ZgwRA48Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiaFy-0000Ov-E5; Wed, 03 Jul 2019 08:04:46 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiaFl-0000Nj-Ed
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 08:04:35 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x637rQ6P011005; Wed, 3 Jul 2019 10:04:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=Me2aIVtHkOwy84/SxLI2Xnts7qdQwbxVRhp1y4JNm4U=;
 b=xszA75fYJmgBnFtufF/fyMNT8ZY1A4LbSlEKstxr/xjye2iA6Hm+/HSoVN5izM6WFILS
 Fl690awtgTlr3w7LOAlH0Nt6/VDHHIZhyJQ3ICqlhhRjhnttP0dRV+OxNYmu+1avUHRY
 yHxolqUTOGod5kvDpxoYE6qrMnTwGYnk1jnypkgP1bFOiJqW8gxZADRSwSRBNStFteup
 QQPNg0N9J7J1DmGe4sITKKibHagNPzfX0n/E7y9c/iyPLMQNiogQ1QEhS24XPidLgE/X
 b7wPl7nKOj2vjB0g3kKUXOURArS5DX4OXQMu5xQTulab/e6J76r+MElhnp6rbKagEQTW nQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2tdw4a28d7-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 03 Jul 2019 10:04:19 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0858641;
 Wed,  3 Jul 2019 08:04:15 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id AA7E0169F;
 Wed,  3 Jul 2019 08:04:15 +0000 (GMT)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 3 Jul 2019
 10:04:15 +0200
Received: from localhost (10.201.23.16) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 3 Jul 2019 10:04:14
 +0200
From: Olivier Moysan <olivier.moysan@st.com>
To: <a.hajda@samsung.com>, <narmstrong@baylibre.com>,
 <Laurent.pinchart@ideasonboard.com>, <jonas@kwiboo.se>,
 <jernej.skrabec@siol.net>, <airlied@linux.ie>, <daniel@ffwll.ch>,
 <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>,
 <benjamin.gaignard@st.com>, <alexandre.torgue@st.com>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>, <olivier.moysan@st.com>,
 <jsarha@ti.com>
Subject: [PATCH] drm/bridge: sii902x: add audio graph card support
Date: Wed, 3 Jul 2019 10:04:12 +0200
Message-ID: <1562141052-26221-1-git-send-email-olivier.moysan@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.23.16]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-03_02:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_010433_947377_825F67C4 
X-CRM114-Status: GOOD (  13.28  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Implement get_dai_id callback of audio HDMI codec
to support ASoC audio graph card.
HDMI audio output has to be connected to sii902x port 3.
get_dai_id callback maps this port to ASoC DAI index 0.

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
---
 drivers/gpu/drm/bridge/sii902x.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/bridge/sii902x.c b/drivers/gpu/drm/bridge/sii902x.c
index dd7aa466b280..daf9ef3cd817 100644
--- a/drivers/gpu/drm/bridge/sii902x.c
+++ b/drivers/gpu/drm/bridge/sii902x.c
@@ -158,6 +158,8 @@
 
 #define SII902X_I2C_BUS_ACQUISITION_TIMEOUT_MS	500
 
+#define SII902X_AUDIO_PORT_INDEX		3
+
 struct sii902x {
 	struct i2c_client *i2c;
 	struct regmap *regmap;
@@ -690,11 +692,32 @@ static int sii902x_audio_get_eld(struct device *dev, void *data,
 	return 0;
 }
 
+static int sii902x_audio_get_dai_id(struct snd_soc_component *component,
+				    struct device_node *endpoint)
+{
+	struct of_endpoint of_ep;
+	int ret;
+
+	ret = of_graph_parse_endpoint(endpoint, &of_ep);
+	if (ret < 0)
+		return ret;
+
+	/*
+	 * HDMI sound should be located at reg = <3>
+	 * Return expected DAI index 0.
+	 */
+	if (of_ep.port == SII902X_AUDIO_PORT_INDEX)
+		return 0;
+
+	return -EINVAL;
+}
+
 static const struct hdmi_codec_ops sii902x_audio_codec_ops = {
 	.hw_params = sii902x_audio_hw_params,
 	.audio_shutdown = sii902x_audio_shutdown,
 	.digital_mute = sii902x_audio_digital_mute,
 	.get_eld = sii902x_audio_get_eld,
+	.get_dai_id = sii902x_audio_get_dai_id,
 };
 
 static int sii902x_audio_codec_init(struct sii902x *sii902x,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
