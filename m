Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D030D15188B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 11:11:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aPZSlJ7PLlRP5tnHEfjG0h2RzuHq/LZfpfu7YEjVlOI=; b=NR5HGjOr5TZpTS
	gnJK1J/2cNyjMEAlTkZF/J1EpKiDNhE/CYF5W7Hoxv0CgHEb1zFjLV68ekqNJTwRuUKlONfbePu1L
	vz/5vjhtkU83ODE6wRr9GBHn5++LL08VZc+E7SS4ct0PUtHdIh804HbWPY35wfPunn+ET3BcSCrla
	p9Kpodad9hm5f/nwtZakfR6F4APw2aiDkG4wxXwiJEeWCCQlPiZUIpqZRItDkKdpkr1+VrSLOtXGL
	B2L1gPNaLPCzVHTXAlI+3A7PGFeN/zHxz5y8HGg3d762M8L5ok3VVnP4V6hAKGzP3Ls/4Nc09p7g3
	HJDvfEJMclpFtLhkr31w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyvAb-0000YC-1V; Tue, 04 Feb 2020 10:11:01 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyvAM-0000RE-3Y
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 10:10:48 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 014A7pCl011088; Tue, 4 Feb 2020 11:10:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=ZLFMFNe2ixUJM51GFxjwpcgrGZTCYwGU8LdeMcBXz/0=;
 b=gNNg9TgIkx4I+fxGBiNp2KOcwrBBRQXGCMimIU4ld2CvpPrwXb3INFZTT/ymXLBWSIca
 htMUuVkXGH5A4VK6Sg4tXCiKy8ElVcK9VAsbnktSmECv2biWIE1B9g/S0BKllJ23tRIB
 C2eYcli2lBXF5JZ3cNce8ak1dHbD4fF0H3c8x2aqs1XHyTGSKu6W3XjLdyv07j7OE2oA
 XRucC2rd1wDqQpjH1mFaSoj69kIC3ThCuFb2aEz2WQwPfxle0wPFgctqcKSrWc7k2hnu
 cioTS/vxDNhEZVNHU3UJTq4I4HMI+cHxygeXql0osoaVvu3kD7ifpsIo/1ErX94CqXND yw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xvybe0hhh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 04 Feb 2020 11:10:37 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 00E1A100039;
 Tue,  4 Feb 2020 11:10:32 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id DABD92AD9DB;
 Tue,  4 Feb 2020 11:10:31 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Tue, 4 Feb 2020 11:10:31 +0100
From: Olivier Moysan <olivier.moysan@st.com>
To: <jic23@kernel.org>, <robh+dt@kernel.org>, <olivier.moysan@st.com>
Subject: [PATCH 2/4] iio: adc: sd modulator: add scale support
Date: Tue, 4 Feb 2020 11:10:06 +0100
Message-ID: <20200204101008.11411-3-olivier.moysan@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200204101008.11411-1-olivier.moysan@st.com>
References: <20200204101008.11411-1-olivier.moysan@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG7NODE3.st.com (10.75.127.21) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-04_02:2020-02-04,
 2020-02-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_021046_520683_20749A14 
X-CRM114-Status: GOOD (  18.03  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, pmeerw@pmeerw.net,
 knaack.h@gmx.de, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add scale support to sigma delta modulator.

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
---
 drivers/iio/adc/sd_adc_modulator.c | 108 ++++++++++++++++++++++++++---
 1 file changed, 100 insertions(+), 8 deletions(-)

diff --git a/drivers/iio/adc/sd_adc_modulator.c b/drivers/iio/adc/sd_adc_modulator.c
index 560d8c7d9d86..a83f35832050 100644
--- a/drivers/iio/adc/sd_adc_modulator.c
+++ b/drivers/iio/adc/sd_adc_modulator.c
@@ -10,8 +10,7 @@
 #include <linux/iio/triggered_buffer.h>
 #include <linux/module.h>
 #include <linux/of_device.h>
-
-static const struct iio_info iio_sd_mod_iio_info;
+#include <linux/regulator/consumer.h>
 
 static const struct iio_chan_spec iio_sd_mod_ch = {
 	.type = IIO_VOLTAGE,
@@ -21,34 +20,126 @@ static const struct iio_chan_spec iio_sd_mod_ch = {
 		.realbits = 1,
 		.shift = 0,
 	},
+	.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE),
+};
+
+static const struct iio_chan_spec iio_sd_mod_ch_ads = {
+	.type = IIO_VOLTAGE,
+	.indexed = 1,
+	.scan_type = {
+		.sign = 'u',
+		.realbits = 1,
+		.shift = 0,
+	},
+	.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE),
+	.differential = 1,
+};
+
+struct iio_sd_mod_priv {
+	struct regulator *vref;
+	int vref_mv;
+};
+
+static int iio_sd_mod_read_raw(struct iio_dev *indio_dev,
+			       struct iio_chan_spec const *chan, int *val,
+			       int *val2, long mask)
+{
+	struct iio_sd_mod_priv *priv = iio_priv(indio_dev);
+
+	switch (mask) {
+	case IIO_CHAN_INFO_SCALE:
+		*val = priv->vref_mv;
+		*val2 = chan->scan_type.realbits;
+		return IIO_VAL_INT;
+	}
+
+	return -EINVAL;
+}
+
+static const struct iio_info iio_sd_mod_iio_info = {
+	.read_raw = iio_sd_mod_read_raw,
 };
 
 static int iio_sd_mod_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
+	struct iio_sd_mod_priv *priv;
 	struct iio_dev *iio;
+	int ret;
 
-	iio = devm_iio_device_alloc(dev, 0);
+	iio = devm_iio_device_alloc(dev, sizeof(*priv));
 	if (!iio)
 		return -ENOMEM;
 
+	iio->channels = (const struct iio_chan_spec *)
+					of_device_get_match_data(&pdev->dev);
+
+	priv = iio_priv(iio);
+
 	iio->dev.parent = dev;
 	iio->dev.of_node = dev->of_node;
 	iio->name = dev_name(dev);
 	iio->info = &iio_sd_mod_iio_info;
 	iio->modes = INDIO_BUFFER_HARDWARE;
-
 	iio->num_channels = 1;
-	iio->channels = &iio_sd_mod_ch;
 
 	platform_set_drvdata(pdev, iio);
 
-	return devm_iio_device_register(&pdev->dev, iio);
+	priv->vref = devm_regulator_get_optional(dev, "vref");
+	if (IS_ERR(priv->vref)) {
+		ret = PTR_ERR(priv->vref);
+		if (ret != -ENODEV) {
+			if (ret != -EPROBE_DEFER)
+				dev_err(dev, "vref get failed, %d\n", ret);
+			return ret;
+		}
+	}
+
+	if (!IS_ERR(priv->vref)) {
+		ret = regulator_enable(priv->vref);
+		if (ret < 0) {
+			dev_err(dev, "vref enable failed %d\n", ret);
+			return ret;
+		}
+
+		ret = regulator_get_voltage(priv->vref);
+		if (ret < 0) {
+			dev_err(dev, "vref get failed, %d\n", ret);
+			goto err_regulator_disable;
+		}
+
+		priv->vref_mv = ret / 1000;
+		dev_dbg(dev, "vref+=%dmV\n", priv->vref_mv);
+	}
+
+	ret = devm_iio_device_register(&pdev->dev, iio);
+	if (ret < 0) {
+		dev_err(dev, "Failed to register sd-modulator, %d\n", ret);
+		goto err_regulator_disable;
+	}
+
+	return 0;
+
+err_regulator_disable:
+	regulator_disable(priv->vref);
+
+	return ret;
+}
+
+static int iio_sd_mod_remove(struct platform_device *pdev)
+{
+	struct iio_dev *indio_dev = platform_get_drvdata(pdev);
+	struct iio_sd_mod_priv *priv = iio_priv(indio_dev);
+
+	if (priv->vref)
+		return regulator_disable(priv->vref);
+
+	return 0;
 }
 
 static const struct of_device_id sd_adc_of_match[] = {
-	{ .compatible = "sd-modulator" },
-	{ .compatible = "ads1201" },
+	{ .compatible = "sd-modulator", .data = &iio_sd_mod_ch },
+	{ .compatible = "ads1201", .data = &iio_sd_mod_ch_ads },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, sd_adc_of_match);
@@ -59,6 +150,7 @@ static struct platform_driver iio_sd_mod_adc = {
 		.of_match_table = of_match_ptr(sd_adc_of_match),
 	},
 	.probe = iio_sd_mod_probe,
+	.remove = iio_sd_mod_remove,
 };
 
 module_platform_driver(iio_sd_mod_adc);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
