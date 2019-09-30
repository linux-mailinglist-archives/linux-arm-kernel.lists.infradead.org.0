Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C96C2659
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 21:53:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=J1GdtcSaDhkO0uHz42BNtioiv9eg7i6rd4z89pMkrqM=; b=Kf0
	bdqdM1F1uHitXTnC8aHLh1N98bFfeogOT3R+RW1M8vtLE0oB/agpLFO66jO0yo7zfPdsmkSq/p+ki
	l/tYb/aOnhsTNdgSmRR8q89MGfrySa5UnZzgZbfl4Q5aDMoAom0cfxXYoaWeqe3XALSofQnxsVhx+
	SfXRpHZiptkxwLmhs+pMcIZ8h01zIlMfkotKY38bQgTqH0qkqBS9rm0hLSLN/RQYfr8aurbv8hw8e
	M5mxtw8tYfdHJjyMYRsOYOaBgWjbOVJUZI0me+lb0tsud6TxmGhRO/scYTlpOZRyg5qc49JXUAC+y
	Z98OLDdCgnTMf9ukxHZJw/HxWO+P1Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF1jj-0007ng-E0; Mon, 30 Sep 2019 19:53:35 +0000
Received: from mx5.ucr.edu ([138.23.62.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF1jY-0007n5-0u
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 19:53:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=ucr.edu; i=@ucr.edu; q=dns/txt; s=selector3;
 t=1569873203; x=1601409203;
 h=from:to:cc:subject:date:message-id;
 bh=6pCT4FCPO1NK+0ZWeQGx+EaJmUPdETidBAplVSBV5bg=;
 b=lS8bASXOJha9731EoyK/bmplpMU3kD8NiYHnzvAZAoMcQDT7wLEA53p+
 ichqb7azh35A4A7lniBpK76qfZJ2WNvifVi67xGfucfY2+0317W/cW6Ro
 L3j1Gplv8CkMbg5SGrYmFOAg+hRrkNtSBbjga6telIc8/B/N8VexKiytP
 tqDLOZ45icqZhhzxtkvcUVBqoLtVGWB006WOkyNbMERewwoLpi8ha3Kjz
 It1W7Kx5DwuupSAJ1DMXROe8YNSsbTV3BreRK/0N4me6HJpjwxJBXqlkZ
 9+xfSXh1PhYJFgM2Nr93DOs7IUJvygN0HDb7CBPpcMdoED4+Kyjhm8MKR A==;
IronPort-SDR: M4uxScXiJuhqbVgVhXeLMmfT7Xrafc/szmR5N1ktvs/I+62mIw/4gh3da/KXZe2sev6mgydhCv
 7H/bBARkI71v0Z2jogWV6rsohz6Up0S7vkNvVbOoOMNkamiYhjVm/ypyX01wb8g8XueoBJUk6D
 TvXDb84J6iDTE3I9m+jXZaDpk2Qd7nKgnJhLPAorOVenN5BsYfMZQzz1pS5YsTc8yHyFS8Z+0X
 4hvm3utUa4DnDNaHZTw0NMpuXUoM7rlTFuyvwfMyyj2AIMhsxrSQXjDMoVXXBaIeysAX6q6P1z
 JkY=
IronPort-PHdr: =?us-ascii?q?9a23=3APBrf7BFTvmj60GBILUbzUp1GYnF86YWxBRYc79?=
 =?us-ascii?q?8ds5kLTJ7zpsywAkXT6L1XgUPTWs2DsrQY0rGQ7/qrADdfqb+681k6OKRWUB?=
 =?us-ascii?q?EEjchE1ycBO+WiTXPBEfjxciYhF95DXlI2t1uyMExSBdqsLwaK+i764jEdAA?=
 =?us-ascii?q?jwOhRoLerpBIHSk9631+ev8JHPfglEnjWwba58IRmsogjdqMYajZZsJ6sz1x?=
 =?us-ascii?q?DEvmZGd+NKyG1yOFmdhQz85sC+/J5i9yRfpfcs/NNeXKv5Yqo1U6VWACwpPG?=
 =?us-ascii?q?4p6sLrswLDTRaU6XsHTmoWiBtIDBPb4xz8Q5z8rzH1tut52CmdIM32UbU5Ui?=
 =?us-ascii?q?ms4qt3VBPljjoMOiUn+2/LlMN/kKNboAqgpxNhxY7UfJqVP+d6cq/EYN8WWX?=
 =?us-ascii?q?ZNUsNXWixEA4O8dJAPD+sHPeZXsoLzuUIApgawBQmtGuzvziJHjWLy0aA0z+?=
 =?us-ascii?q?gtFAfL1xEiEd0TqnTZtNX7OrkPX+67z6fGyi7OY+9K1Trn9ITFaAwtre2KUL?=
 =?us-ascii?q?ltccTR004vFwbdg1qSqIzkPjOV1vkKs2OG6OdhVeOui249pAFwvjSj2skhh5?=
 =?us-ascii?q?LUho0J0FDI7zt2z5soJdChTkNwfN2qEINIui2EK4d7RtkuTmJotSog1LEKpI?=
 =?us-ascii?q?K3cDIXxJkjxBPTc+GLfomM7x75SuqcLzd1iGh7dL++nRq/80etx+vhXceuyl?=
 =?us-ascii?q?lKtDBKktzUu3AI0Bzc99aIR+Nm/kekxTaPzwfT6vxYIUwslarUNZohwrkom5?=
 =?us-ascii?q?oWq0vDHyv2lFzujK+Ya0ko4+ao5/njb7jlvJOcOIh0igbxMqQqhMOzG/g3Mg?=
 =?us-ascii?q?8LX2SD+OS80qPs/VHhTblUkvE7lrPVvZPaKMgBuKK1HhNZ3pw+5xu7DDqqyN?=
 =?us-ascii?q?EYkmMGLFJBdhKHlY/pO1TWLfH4DPa/g06jkDZ3y/zaMLDsGYjNIWTZkLv7Y7?=
 =?us-ascii?q?ly9lNcxBIpzd9D/5JUFq0BIPXrV0/1tdzYCAI5MgOtz+n9EtV905oSWWGRDa?=
 =?us-ascii?q?+DNqPdr1uI6/krI+mNf48VpC39J+Ik5/7og385g0UScrS30pQNdX+0BPNmI1?=
 =?us-ascii?q?+WYSmkrM0GFDI7vxg+Ueui3EyQUTdSPy7pd783/Hc2BJ/wXtSLfZyknLHUhH?=
 =?us-ascii?q?TzJZZRfG0TTw/UHA=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2GjBQCoXJJdf8bSVdFmHgEGEoFcC4N?=
 =?us-ascii?q?eTBCNHoZFAQEBBosmgQmFeogxgXsBCAEBAQwBAS0CAQGEQINGIzYHDgIDCQE?=
 =?us-ascii?q?BBQEBAQEBBQQBAQIQAQEJCwsIJ4VCgjopgzULFhVSgRUBBQE1IjmCRwGBdhQ?=
 =?us-ascii?q?FojyBAzyMJTOIXQEJDYFICQEIgSKHNYRZgRCBB4Nuc4dlgkQEgTcBAQGLOII?=
 =?us-ascii?q?4hytwlVkBBgKCEBSBeJMHJ4I3ggKJPTmLBgGKVZxrAgoHBg8jgTYDgghNJYF?=
 =?us-ascii?q?sCoFEUBAUgVsXjkMhM4EIkBoB?=
X-IPAS-Result: =?us-ascii?q?A2GjBQCoXJJdf8bSVdFmHgEGEoFcC4NeTBCNHoZFAQEBB?=
 =?us-ascii?q?osmgQmFeogxgXsBCAEBAQwBAS0CAQGEQINGIzYHDgIDCQEBBQEBAQEBBQQBA?=
 =?us-ascii?q?QIQAQEJCwsIJ4VCgjopgzULFhVSgRUBBQE1IjmCRwGBdhQFojyBAzyMJTOIX?=
 =?us-ascii?q?QEJDYFICQEIgSKHNYRZgRCBB4Nuc4dlgkQEgTcBAQGLOII4hytwlVkBBgKCE?=
 =?us-ascii?q?BSBeJMHJ4I3ggKJPTmLBgGKVZxrAgoHBg8jgTYDgghNJYFsCoFEUBAUgVsXj?=
 =?us-ascii?q?kMhM4EIkBoB?=
X-IronPort-AV: E=Sophos;i="5.64,568,1559545200"; d="scan'208";a="79631617"
Received: from mail-pf1-f198.google.com ([209.85.210.198])
 by smtpmx5.ucr.edu with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 30 Sep 2019 12:53:18 -0700
Received: by mail-pf1-f198.google.com with SMTP id a1so8586695pfn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 12:53:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=mtpDHPmhW0Yh7Xz6JlH7yVqsGjbzLMx+b7ky5TSik5U=;
 b=LOqIwMGVrYFQrR8dmD+KpDTJ6K0i5x11A1846zDLX/6yeLByMr4ykkv4a2tEwX0bTN
 EBGpyvq1LKuf7ez7NYNQOXhwOkTTpdtPnXEEnWB2F0b3QgH3mZ4xi5qgh2Fr6JeQcTx+
 qo2t8vhpbKv60HnSU4ZTXN5K1BMonWt3RroT3SBXhWxMIp9hXS0rffv00CqWMOu8J8Q4
 zCWbob9a2za7lsUh1snXnFrN7b5eFlCPS2Qz8Wmxrz7nuObVR/02OrxUL0Kn03MDsEFF
 b2I8P5QGW/rLWdAmK0rt+ZU/HU1wvn2ir8Lr+K8K2dppp9nB0Mfwl8FD3HDF8YWeibtQ
 XC8Q==
X-Gm-Message-State: APjAAAWYdodugGyVEskMdrTPSlVPbJ6lYhQP9YnWKnlOeakMS6OKbWhb
 bdn6DR06vUs7IOHjhC0kwzh2iOl3OewLenas/ozw4d7uvJ8nI4dBaj/g9L1OwXF68wwgO5r2PuR
 vyb7fH03X6BHgJVn6WmH27ZU6zyMN/JcWUAro
X-Received: by 2002:a63:2aca:: with SMTP id
 q193mr25799149pgq.156.1569873197821; 
 Mon, 30 Sep 2019 12:53:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxF6lwNas3D/FgEkqSm4zKuRr+Ixd0SEanVYzHGnmwSzt46Z2CHd4yfGTjhZMCMas6tzuHMXg==
X-Received: by 2002:a63:2aca:: with SMTP id
 q193mr25799110pgq.156.1569873197327; 
 Mon, 30 Sep 2019 12:53:17 -0700 (PDT)
Received: from Yizhuo.cs.ucr.edu (yizhuo.cs.ucr.edu. [169.235.26.74])
 by smtp.googlemail.com with ESMTPSA id p17sm12179234pfn.50.2019.09.30.12.53.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Sep 2019 12:53:16 -0700 (PDT)
From: Yizhuo <yzhai003@ucr.edu>
To: 
Subject: [PATCH] iio: adc: imx25-gcq: fix uninitialized variable usage
Date: Mon, 30 Sep 2019 12:53:54 -0700
Message-Id: <20190930195358.27844-1-yzhai003@ucr.edu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_125324_110067_04CA608F 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [138.23.62.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: csong@cs.ucr.edu, Enrico Weigelt <info@metux.net>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-iio@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 zhiyunq@cs.ucr.edu, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Yizhuo <yzhai003@ucr.edu>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 NXP Linux Team <linux-imx@nxp.com>, Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Hartmut Knaack <knaack.h@gmx.de>, Thomas Gleixner <tglx@linutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
 linux-arm-kernel@lists.infradead.org
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
 drivers/iio/adc/fsl-imx25-gcq.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/iio/adc/fsl-imx25-gcq.c b/drivers/iio/adc/fsl-imx25-gcq.c
index fa71489195c6..3b1e12b7c1ac 100644
--- a/drivers/iio/adc/fsl-imx25-gcq.c
+++ b/drivers/iio/adc/fsl-imx25-gcq.c
@@ -73,8 +73,12 @@ static irqreturn_t mx25_gcq_irq(int irq, void *data)
 {
 	struct mx25_gcq_priv *priv = data;
 	u32 stats;
+	int ret;
 
-	regmap_read(priv->regs, MX25_ADCQ_SR, &stats);
+	ret = regmap_read(priv->regs, MX25_ADCQ_SR, &stats);
+	if (ret) {
+		return ret;
+	}
 
 	if (stats & MX25_ADCQ_SR_EOQ) {
 		regmap_update_bits(priv->regs, MX25_ADCQ_MR,
@@ -100,6 +104,7 @@ static int mx25_gcq_get_raw_value(struct device *dev,
 {
 	long timeout;
 	u32 data;
+	int ret;
 
 	/* Setup the configuration we want to use */
 	regmap_write(priv->regs, MX25_ADCQ_ITEM_7_0,
@@ -121,7 +126,11 @@ static int mx25_gcq_get_raw_value(struct device *dev,
 		return -ETIMEDOUT;
 	}
 
-	regmap_read(priv->regs, MX25_ADCQ_FIFO, &data);
+	ret = regmap_read(priv->regs, MX25_ADCQ_FIFO, &data);
+	if (ret) {
+		dev_err(dev, "Failed to read MX25_ADCQ_FIFO.\n");
+		return ret;
+	}
 
 	*val = MX25_ADCQ_FIFO_DATA(data);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
