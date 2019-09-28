Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D46C0EFB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Sep 2019 02:28:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2bkLz9+McXE/2pUXPvgqsEHEn2tBCxJtWHd42Cd3E2M=; b=UJi
	HH7SksLkKsdfgrYMJfV4UCbLy9mIwG8xKE8eLq56N/Irbckqq+LlChVnxgoyZyLMfdHugTyHBtbW4
	mBmqriH5tG0BfpDl9lVEzH9LLbt3j3DOWPhxSEEraa/Z+T9VZxFyR5gm/Y5r2IwRgDw2JM0SJrJvQ
	mcXb9GgOe2JxbFEwyAh9alGI+3xks3vzh0cW9eOkfvMmjxEI1lCK5BBG/z/j77sVQVC5ro/DDuARu
	CZe/HzCA9IaoX8j6Uh2jzZCOfj09C2nA4Fw9YrDxp21hPJCkK7W4hkSY8pRrmRStPmkidfRa76J+S
	F4SKZ3Fi6dgnnb+oTuMpWAAgGL5twLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iE0b9-0004Rl-VV; Sat, 28 Sep 2019 00:28:31 +0000
Received: from mx2.ucr.edu ([138.23.62.3])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iE0b0-0004RB-Rv
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Sep 2019 00:28:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=ucr.edu; i=@ucr.edu; q=dns/txt; s=selector3;
 t=1569630502; x=1601166502;
 h=from:to:cc:subject:date:message-id;
 bh=TAaIQrNrlHpHXTlhnOmvtGHU4z3it1xGbWOJk5Kgq0s=;
 b=UsvxUvLY3ULf9UCXVBJnsbbDKnoDv6W8JYh5s1NSvsg2Jf/9kizFL1l7
 VVG3jH5Zk5R2/URA1aOtd791ptZzlDdOdh1Q2LvJLKv0zah8vEXuZ7iPk
 uukATZDz81CaU9eGwOUIhdjzULa497UlC1NPAzOiYygWWX4M9Hwa8bJuI
 5wf6TKniN8GdSwKyPHV+mXBdXe+nddBdvffywGf3a9/Oc4oWK6MX07cAB
 K88t0VZHOQhM4HAE6HVXX+605rmYf7F5lWrmnsMPmC4UXNeN+kkmCrzag
 mTsdY6WNVBE0CBmYz2OKbuQLIzpEKviU5zhpuZ7YtxYp3wSGYk6igbKlv g==;
IronPort-SDR: JAH9Qs54O920NGEWfQ21y47cpPMH7dItqT+m9prmoecrmaG5p1yrdncFvpnOUIRyxZhKCqFQtI
 ORQUaIKd2+Vfker1PAXaQ10M3ws6ZaKdW/XxMRmHIF09AtrnR6iOebSc4l9xI4keflOg7GWzp8
 AoCZCaJrcBM4GUjlSiVbIs7O8WZb8oL8fXDm/1lJpVHB5V1WPaitH3XUf3b5pYfxaWNOeAoRDA
 wvhQ7STq7SLSc2RZRJXU2D2m/jT0O6ngpxJvSL/Mvmw4VeRgZPXZQPWD3DsnX0ZLwt6vdN2es2
 EN8=
IronPort-PHdr: =?us-ascii?q?9a23=3A3a+1YBNwS6jkEsIU1h4l6mtUPXoX/o7sNwtQ0K?=
 =?us-ascii?q?IMzox0Ivz8rarrMEGX3/hxlliBBdydt6sfzbGJ+Pu5EUU7or+5+EgYd5JNUx?=
 =?us-ascii?q?JXwe43pCcHRPC/NEvgMfTxZDY7FskRHHVs/nW8LFQHUJ2mPw6arXK99yMdFQ?=
 =?us-ascii?q?viPgRpOOv1BpTSj8Oq3Oyu5pHfeQpFiCezbL9oIhi7rwrdu8cLjYB/Nqs/1x?=
 =?us-ascii?q?zFr2dSde9L321oP1WTnxj95se04pFu9jlbtuwi+cBdT6j0Zrw0QrNEAjsoNW?=
 =?us-ascii?q?A1/9DrugLYTQST/HscU34ZnQRODgPY8Rz1RJbxsi/9tupgxCmXOND9QL4oVT?=
 =?us-ascii?q?i+6apgVQTlgzkbOTEn7G7Xi9RwjKNFrxKnuxx/2JPfbIWMOPZjYq/RYdYWSG?=
 =?us-ascii?q?xEXsZQTCxBGYK8b40AD+EcI+hWtpT2p1UPrRSgAQmjGf7kxjtGi3Pq2KE31f?=
 =?us-ascii?q?kqHwPb0ww6B98AsGraosj7OqkRVu6417XEwSnZYv9Kwzrx9JTEfxY8qv+MR7?=
 =?us-ascii?q?Jwds/RxFEtGAPEj1SQqZHlPzSI3ekKs2ma7upgWviui2I7tw18rCOixtowhY?=
 =?us-ascii?q?nTnI4a1E3L9ThgzYszONa2S1Z7bMa6HJdMsyyWLYh7T8M4T212pSo21qcKtY?=
 =?us-ascii?q?O/cSUJ0Jgr2h/SZvidf4SW7B/uVPydLSl5iX5/er+yiBC/+lW6xOLmTMm7yl?=
 =?us-ascii?q?NKozJAktnLq38CyQTe6tOCSvth5keh3iuP1xzL5uFEP080ka3bJoYkwrEql5?=
 =?us-ascii?q?oTtV3PHjf4mEnrlaOWeFgo9+yr5uj9bbXmoZicN4Bwig7gKKghhsu/AeEgPg?=
 =?us-ascii?q?gPWWiU5/i82aX98UHlRLhGlP47n6nDvJzEOMgXurS1DxJR34sg8xq/Ci2p0N?=
 =?us-ascii?q?UcnXkJNlJFfxeHgpDpOlDPIPD3F/a/j0iwnDpl3P3GI6HuAo/XInfdjbjhYK?=
 =?us-ascii?q?5x61RAxwor0dBf+5VUB6kFIPLyXE/xqdPZAgYjPAyuxubrEdZ92Z0EWWKJHK?=
 =?us-ascii?q?CZNLjfsVuJ5uI0P+mMf5UZuDf7K/gr/f7hl2I2lkEHcqa0x5cXb2q4Hvs1a2?=
 =?us-ascii?q?uDZn+5s9YTEXoN9l4vXuzjiQXaChZObGz0Uq4hsGJoQLm6BJvOE9j+yIeK2z?=
 =?us-ascii?q?22S9gJPm0=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2EtBwAiqI5dhsbSVdFmhXxMEI0ehXJ?=
 =?us-ascii?q?RAQEGiyYYcYV6iiwBCAEBAQwBAS0CAQGEQIM6IzgTAgMJAQEFAQEBAQEFBAE?=
 =?us-ascii?q?BAhABAQEICwsIKYVAgjopgzULFhVSgRUBBQE1IjmCRwGBdhShLoEDPIwlM4h?=
 =?us-ascii?q?xAQkNgUgJAQiBIoc1hFmBEIEHg25zh2OCRASBLwEBAY1whyuWSQEGAoIQFIF?=
 =?us-ascii?q?4kwcnhDmJO4s/AS2KKJxqAgoHBg8jgUaBek0lgWwKgURQEBSBWg4JFY4tITO?=
 =?us-ascii?q?BCI49AQ?=
X-IPAS-Result: =?us-ascii?q?A2EtBwAiqI5dhsbSVdFmhXxMEI0ehXJRAQEGiyYYcYV6i?=
 =?us-ascii?q?iwBCAEBAQwBAS0CAQGEQIM6IzgTAgMJAQEFAQEBAQEFBAEBAhABAQEICwsIK?=
 =?us-ascii?q?YVAgjopgzULFhVSgRUBBQE1IjmCRwGBdhShLoEDPIwlM4hxAQkNgUgJAQiBI?=
 =?us-ascii?q?oc1hFmBEIEHg25zh2OCRASBLwEBAY1whyuWSQEGAoIQFIF4kwcnhDmJO4s/A?=
 =?us-ascii?q?S2KKJxqAgoHBg8jgUaBek0lgWwKgURQEBSBWg4JFY4tITOBCI49AQ?=
X-IronPort-AV: E=Sophos;i="5.64,557,1559545200"; d="scan'208";a="11255484"
Received: from mail-pf1-f198.google.com ([209.85.210.198])
 by smtp2.ucr.edu with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 27 Sep 2019 17:28:09 -0700
Received: by mail-pf1-f198.google.com with SMTP id c24so3051717pfi.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 17:28:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=5TzNbCB6im2bWtNvAjp9ds0IpKiNbjs0dzM5n1GDW5Y=;
 b=mim6fxG6jE58szWB6nJyoPa9g5kEhdtDs3tax5IAlhAJhp02YiPzgVFJUkc3+9EWpT
 U6A+wDyeY32UxeuhTylhmVT3fB2hPqf8yGU+P2O1B/PkcJ3IEonUYIhqgAR/4WKqsu3f
 QIrA1WxfuV+KQBr/Yu5Kv9Z7cNq2ca/BRVb1hKKO4qzlF/kTLsnbTEUocihqvtSKLiNa
 9dwnfHhkWWWAOcgaSoXeUdP/KuHzgIZ/IQ5UDV4XJGNUp5FSgFBZzO0EKq01j6cKkzVa
 /M7gqSndm1lZaDioNkpCmbiJnzBv8cn62K22vPWmSHuFqKPpKQ3G3IkFGaobOq8E+NlY
 Ef5Q==
X-Gm-Message-State: APjAAAXA2HcOV2e5f8OqDRqhz2B5IhC4LjnQUVdZDzy2G55Bsvs+/ozF
 YJAGaExcSJAbHt/La/pqCcEdU8XMlwTmpK0l1S9E0G7CoF7scv7IcT+zwNkrvlkHwJYcNsxSuP1
 yLfaGxS362HEIhsFPDiJHXadR5hPzc10VDGeY
X-Received: by 2002:aa7:9794:: with SMTP id o20mr7869524pfp.8.1569630489409;
 Fri, 27 Sep 2019 17:28:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwZO38LKJW4wkfyAvREDNgDGgsGnvGUuysM1wKez8wkjAb6Ao/r93FnGs/LBCi1PNvs9qnNnw==
X-Received: by 2002:aa7:9794:: with SMTP id o20mr7869510pfp.8.1569630489164;
 Fri, 27 Sep 2019 17:28:09 -0700 (PDT)
Received: from Yizhuo.cs.ucr.edu (yizhuo.cs.ucr.edu. [169.235.26.74])
 by smtp.googlemail.com with ESMTPSA id z25sm3612636pfn.7.2019.09.27.17.28.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Sep 2019 17:28:08 -0700 (PDT)
From: Yizhuo <yzhai003@ucr.edu>
To: 
Subject: [PATCH] iio: adc: imx25-gcq: Variable could be uninitialized if
 regmap_read() fails
Date: Fri, 27 Sep 2019 17:28:51 -0700
Message-Id: <20190928002852.28329-1-yzhai003@ucr.edu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_172822_932778_B2C55934 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [138.23.62.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: csong@cs.ucr.edu, Kate Stewart <kstewart@linuxfoundation.org>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Allison Randal <allison@lohutok.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Enrico Weigelt <info@metux.net>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, zhiyunq@cs.ucr.edu,
 linux-kernel@vger.kernel.org, Yizhuo <yzhai003@ucr.edu>,
 linux-iio@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Thomas Gleixner <tglx@linutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In function mx25_gcq_irq(), local variable "stats" could
be uninitialized if function regmap_read() returns -EINVAL.
However, this value is used in if statement, which is
potentially unsafe. The same case applied to the variable
"data" in function mx25_gcq_get_raw_value() in the same file.

Signed-off-by: Yizhuo <yzhai003@ucr.edu>
---
 drivers/iio/adc/fsl-imx25-gcq.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/iio/adc/fsl-imx25-gcq.c b/drivers/iio/adc/fsl-imx25-gcq.c
index df19ecae52f7..dbf3e8e85aba 100644
--- a/drivers/iio/adc/fsl-imx25-gcq.c
+++ b/drivers/iio/adc/fsl-imx25-gcq.c
@@ -74,7 +74,10 @@ static irqreturn_t mx25_gcq_irq(int irq, void *data)
 	struct mx25_gcq_priv *priv = data;
 	u32 stats;
 
-	regmap_read(priv->regs, MX25_ADCQ_SR, &stats);
+	int ret = regmap_read(priv->regs, MX25_ADCQ_SR, &stats);
+
+	if (ret)
+		return ret;
 
 	if (stats & MX25_ADCQ_SR_EOQ) {
 		regmap_update_bits(priv->regs, MX25_ADCQ_MR,
@@ -121,7 +124,10 @@ static int mx25_gcq_get_raw_value(struct device *dev,
 		return -ETIMEDOUT;
 	}
 
-	regmap_read(priv->regs, MX25_ADCQ_FIFO, &data);
+	int ret = regmap_read(priv->regs, MX25_ADCQ_FIFO, &data);
+
+	if (ret)
+		return ret;
 
 	*val = MX25_ADCQ_FIFO_DATA(data);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
