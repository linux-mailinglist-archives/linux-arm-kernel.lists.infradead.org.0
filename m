Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE68CC1AF8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 07:25:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=EGwLbAMU5mzGJsch65skr1YR2EI0k3QaQbrGEtJDfp0=; b=cH3
	45JoHa5f13BAElm11cjubep353dUwVqhVh6dlryy3usiyiR1gGjHCHUCXDc7UjA1i04QNEWZJdKi3
	T59YpqoYqOo1xwbFdkWF6OYUtI328XYmkJ1xAlrqrZZsBxCmr5Wjn5ej7KdPu4XTzL69z4anZe/a8
	j8ob2lHTmRvV3tjX6+MbfjGIeFuOWtzh+XoPABPdby+g5hArcUyFt3WcAOjI/Ad794I/PyRj0nBGL
	PXBKCmSs+7zDbT9O9zP5jN9j+QMDP2Y0SzkKcOg2IHfLwDX7NAjtmhHSpCTfdNOpOKQKUaNHy/Jrj
	MBDGL3jDpO8SBZ5pkPbmVNeiq9dth4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEoBa-0007jN-Do; Mon, 30 Sep 2019 05:25:26 +0000
Received: from mx3.ucr.edu ([138.23.248.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEoBO-0007j1-4U
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 05:25:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=ucr.edu; i=@ucr.edu; q=dns/txt; s=selector3;
 t=1569821114; x=1601357114;
 h=from:to:cc:subject:date:message-id;
 bh=qzFcBPOoP/Rv8ykLaC0eQHksn1NzctMIHEFRc4wakkk=;
 b=edHblqdBC8yBI5jhiNpMwG9bANuDr3Tcze9Im8Dq8f9Sw11oeispAyec
 SYFyWh/kA+QZCkUTAJkOLdfPnGekojhc/zDcpXmWfrPq1fS2NhN19wL45
 iuLQ+UeHkdJy2my5NX6728wEQgLioiX+We8dYc+vM2MCN71ybcSBAkzfs
 MLm022CZriLG/O5Ik9aveBmn6ywcDpEq1psB6GvBwPcTzbFrId3s1tNpf
 q+ZL6OUKzGYVPv3AEX6NlxNEy3V/hPu7RG9tXaOdUIxVY9K4pG5BOgThW
 SdvUlqWeIsTKPrgLaIFYJPc2EYP191/CBEd0eTJ0dMRG3U3tt/f15bLwV w==;
IronPort-SDR: KvhHPnWeb1fBSfJvtMH4Nu4bzGBygbGvx8xbCBH9uiuc5Ln91hbxg3CfBDkc5Knf5EVF/QMeDE
 uoxSOF2DRnowj0ExzX2kCHBh+WYuh3yGTdAIXGuBDMpeXYoQ8vrAXwcTbJOaCP2ELJra0P4Hl+
 DIax3lEEXFzN8dwTr5YBwX3CqYkh2C+sVcrnDj8n18+osnDT17Pk7VfSS1HiCiojwBUq1W92Mt
 BFaCT0xGHFsddsFSEAPb0vNSVPfnfYbWFEeEYc0IdoshhuyiyQevyNq/dhX2XESzTXyLO3xIgA
 KVs=
IronPort-PHdr: =?us-ascii?q?9a23=3AZKY3whcHib8kz5YFTIpvPvQVlGMj4u6mDksu8p?=
 =?us-ascii?q?Mizoh2WeGdxcS6Yx7h7PlgxGXEQZ/co6odzbaP6Oa8ACdRut6oizMrSNR0TR?=
 =?us-ascii?q?gLiMEbzUQLIfWuLgnFFsPsdDEwB89YVVVorDmROElRH9viNRWJ+iXhpTEdFQ?=
 =?us-ascii?q?/iOgVrO+/7BpDdj9it1+C15pbffxhEiCCybL9vIhi6twrcutQZjYZmJKs61w?=
 =?us-ascii?q?fErGZPd+lK321jOEidnwz75se+/Z5j9zpftvc8/MNeUqv0Yro1Q6VAADspL2?=
 =?us-ascii?q?466svrtQLeTQSU/XsTTn8WkhtTDAfb6hzxQ4r8vTH7tup53ymaINH2QLUpUj?=
 =?us-ascii?q?ms86tnVBnlgzocOjUn7G/YlNB/jKNDoBKguRN/xZLUYJqIP/Z6Z6/RYM8WSX?=
 =?us-ascii?q?ZEUstXUixBA5i8b5AOD+oHMuZTspfzqUITphuwBAmjGufvxSJVjXPy06A2z+?=
 =?us-ascii?q?EtHAfb1wIiAt0OqmzZotXrOqkPX+67z67GwC7fY/9Kwzrx9JLFfgw9rfyKQL?=
 =?us-ascii?q?l+cdDRyU4qFw7djFqQqI3kPzOI1uQKrmOW6OphVOOvi2E9qgF9viSjy8k3h4?=
 =?us-ascii?q?nUmo0V0ErI+jtkz4YoPNC1TlNwb928EJZIqS2WK497TtkhTmxooio21KAKtJ?=
 =?us-ascii?q?GhcCQXzJkqxAbTZ+GGfoWM+B7vSuicLDdiiH57eb+znRS//Eemx+bhTMe7yk?=
 =?us-ascii?q?xKoTBAktTUs3AN0AHc5dafR/tm+0ehxS6P1wfO6uFYOUw0lbTUK5omwrMok5?=
 =?us-ascii?q?ocq0XDHivvlEXuiK+aa1wo+ua15+njYbjqvJCcN4hzigHxNqQhhNazDvg/Mg?=
 =?us-ascii?q?gLR2Sb+OK826P//UDhXrlGkvk7nrPavZ3aP8gXuLO1DgBP3oo+7xuyDC+q0N?=
 =?us-ascii?q?ECknkGKFJFdgiHj4/sO1zWIPH5DPe/jE6tkDt32/zLMKbsAojRIXjZirvuY6?=
 =?us-ascii?q?ty61NExAop0d9f/45UCq0GIP/rXk/xtdrYDgI2MgCt2ennEtB92podWW2RGK?=
 =?us-ascii?q?+ZNr3dsVuT6+IrIumMf5MVuC3nJ/gk4f7ug2U5lkUAcqa3x5QYdWq0HvN8I0?=
 =?us-ascii?q?WWMjLCmNAERFYLrAojS6S+mU+CWD8LPy2aQqkmoDw3FdT1Xs/4WomxjenZj2?=
 =?us-ascii?q?+AFZpMazUDVQiB?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2FJCAB8kZFdh8bWVdFmgh6DXkwQjR6?=
 =?us-ascii?q?FcVEBAQaLJoEJhXqIMYF7AQgBAQEMAQEtAgEBhECDPSM2Bw4CAwkBAQUBAQE?=
 =?us-ascii?q?BAQUEAQECEAEBAQgNCQgphUCCOimDNQsWFVKBFQEFATUiOYJHAYF2FJ8EgQM?=
 =?us-ascii?q?8jCUziFwBCQ2BSAkBCIEihzWEWYEQgQeEYYdjgkQEgS8BAQGLPgGCMYcrlkk?=
 =?us-ascii?q?BBgKCEBSBeJMHJ4I3ggKJPTmLBgEtiiicawIKBwYPI4E2BYIFTSWBbAqBRFA?=
 =?us-ascii?q?QFIFaDgmOQiEzgQiQBgE?=
X-IPAS-Result: =?us-ascii?q?A2FJCAB8kZFdh8bWVdFmgh6DXkwQjR6FcVEBAQaLJoEJh?=
 =?us-ascii?q?XqIMYF7AQgBAQEMAQEtAgEBhECDPSM2Bw4CAwkBAQUBAQEBAQUEAQECEAEBA?=
 =?us-ascii?q?QgNCQgphUCCOimDNQsWFVKBFQEFATUiOYJHAYF2FJ8EgQM8jCUziFwBCQ2BS?=
 =?us-ascii?q?AkBCIEihzWEWYEQgQeEYYdjgkQEgS8BAQGLPgGCMYcrlkkBBgKCEBSBeJMHJ?=
 =?us-ascii?q?4I3ggKJPTmLBgEtiiicawIKBwYPI4E2BYIFTSWBbAqBRFAQFIFaDgmOQiEzg?=
 =?us-ascii?q?QiQBgE?=
X-IronPort-AV: E=Sophos;i="5.64,565,1559545200"; d="scan'208";a="83829713"
Received: from mail-pl1-f198.google.com ([209.85.214.198])
 by smtp3.ucr.edu with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Sep 2019 22:25:02 -0700
Received: by mail-pl1-f198.google.com with SMTP id t12so2807921plo.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Sep 2019 22:25:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=fPKABXGUyoM/LSYBewEpMZXiulfn1+x5kwR93rT2pjY=;
 b=rdTactXzRVSTkjS0A33PIydPrLnkXD7cK+FEe3mXmqHqVornky3drNSQypnZIERpCX
 6NA2/Capftl59ExQOBmloFO4pEhEt81QYWru6f9MHuKNk69IbEQ4cpHXNTUxWR7dd/ZO
 0f0XWjxO8l1xA79lxaIuvUkiDSZcXi6NCbi39hIacToK3WNPVlnaKUxN7+bbsbTp4Qig
 O0OcRYoOuUPuyudraT15pLpaMQOscXtitMRT/goBlnIwva/O4Tq9ues2MmPnpAWJ7o1S
 eBL60eLBaK3grMkuw9mxRlEToliXKo6bMrSEwIzEtBx802yqT7mRv4CjgAZgY2PU9SIa
 XZ9A==
X-Gm-Message-State: APjAAAU/lf9f8yL7AbKrBAKGbtOhKk8O5b/RqFvjMiKErVSS+ZYQCc8S
 9IVATQEZaLAhszqvpTnrIFIYiCI70bCeu5shzti3DlchNxhaYOxUMD3WJCNQqXA35dVpHq6EF7+
 zBqtCHwODtacshYWR4DaqaWEBEMUYuXKw6Kcs
X-Received: by 2002:a63:5652:: with SMTP id g18mr21799329pgm.393.1569821101510; 
 Sun, 29 Sep 2019 22:25:01 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyPeVROo1TnM+H1kGzA7cRPqfO3NXggBNlKrrjPDdQwOcK4O2BhRFl7aOQNC2xwRWyuzG9QsA==
X-Received: by 2002:a63:5652:: with SMTP id g18mr21799307pgm.393.1569821101057; 
 Sun, 29 Sep 2019 22:25:01 -0700 (PDT)
Received: from Yizhuo.cs.ucr.edu (yizhuo.cs.ucr.edu. [169.235.26.74])
 by smtp.googlemail.com with ESMTPSA id a11sm11186636pfg.94.2019.09.29.22.24.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Sep 2019 22:25:00 -0700 (PDT)
From: Yizhuo <yzhai003@ucr.edu>
To: 
Subject: [PATCH] iio: adc: Variables could be uninitalized if regmap_read()
 fails
Date: Sun, 29 Sep 2019 22:25:39 -0700
Message-Id: <20190930052540.19168-1-yzhai003@ucr.edu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_222514_208622_892ECC31 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [138.23.248.64 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [138.23.248.64 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: csong@cs.ucr.edu, Lars-Peter Clausen <lars@metafoo.de>,
 Scott Branden <sbranden@broadcom.com>, linux-iio@vger.kernel.org,
 Ray Jui <rjui@broadcom.com>, zhiyunq@cs.ucr.edu, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Yizhuo <yzhai003@ucr.edu>,
 bcm-kernel-feedback-list@broadcom.com, Allison Randal <allison@lohutok.net>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Thomas Gleixner <tglx@linutronix.de>, Jonathan Cameron <jic23@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Several functions in this file are trying to use regmap_read() to
initialize the specific variable, however, if regmap_read() fails,
the variable could be uninitialized but used directly, which is
potentially unsafe. The return value of regmap_read() should be
checked and handled.

Signed-off-by: Yizhuo <yzhai003@ucr.edu>
---
 drivers/iio/adc/bcm_iproc_adc.c | 45 ++++++++++++++++++++++++++++-----
 1 file changed, 39 insertions(+), 6 deletions(-)

diff --git a/drivers/iio/adc/bcm_iproc_adc.c b/drivers/iio/adc/bcm_iproc_adc.c
index 646ebdc0a8b4..6df19ceb5ff2 100644
--- a/drivers/iio/adc/bcm_iproc_adc.c
+++ b/drivers/iio/adc/bcm_iproc_adc.c
@@ -137,6 +137,7 @@ static irqreturn_t iproc_adc_interrupt_thread(int irq, void *data)
 	u32 channel_intr_status;
 	u32 intr_status;
 	u32 intr_mask;
+	int ret;
 	struct iio_dev *indio_dev = data;
 	struct iproc_adc_priv *adc_priv = iio_priv(indio_dev);
 
@@ -145,8 +146,19 @@ static irqreturn_t iproc_adc_interrupt_thread(int irq, void *data)
 	 * Make sure this interrupt is intended for us.
 	 * Handle only ADC channel specific interrupts.
 	 */
-	regmap_read(adc_priv->regmap, IPROC_INTERRUPT_STATUS, &intr_status);
-	regmap_read(adc_priv->regmap, IPROC_INTERRUPT_MASK, &intr_mask);
+	ret = regmap_read(adc_priv->regmap,
+					IPROC_INTERRUPT_STATUS, &intr_status);
+	if (ret) {
+		dev_err(&indio_dev->dev, "Fail to read IPROC_INTERRUPT_STATUS.\n");
+		return ret;
+	}
+
+	ret = regmap_read(adc_priv->regmap, IPROC_INTERRUPT_MASK, &intr_mask);
+	if (ret) {
+		dev_err(&indio_dev->dev, "Fail to read IPROC_INTERRUPT_MASK.\n");
+		return ret;
+	}
+
 	intr_status = intr_status & intr_mask;
 	channel_intr_status = (intr_status & IPROC_ADC_INTR_MASK) >>
 				IPROC_ADC_INTR;
@@ -162,6 +174,7 @@ static irqreturn_t iproc_adc_interrupt_handler(int irq, void *data)
 	struct iproc_adc_priv *adc_priv;
 	struct iio_dev *indio_dev = data;
 	unsigned int valid_entries;
+	int ret;
 	u32 intr_status;
 	u32 intr_channels;
 	u32 channel_status;
@@ -169,23 +182,37 @@ static irqreturn_t iproc_adc_interrupt_handler(int irq, void *data)
 
 	adc_priv = iio_priv(indio_dev);
 
-	regmap_read(adc_priv->regmap, IPROC_INTERRUPT_STATUS, &intr_status);
+	ret = regmap_read(adc_priv->regmap,
+					IPROC_INTERRUPT_STATUS, &intr_status);
+	if (ret) {
+		dev_err(&indio_dev->dev, "Fail to read IPROC_INTERRUPT_STATUS.\n");
+		return ret;
+	}
+
 	dev_dbg(&indio_dev->dev, "iproc_adc_interrupt_handler(),INTRPT_STS:%x\n",
 			intr_status);
 
 	intr_channels = (intr_status & IPROC_ADC_INTR_MASK) >> IPROC_ADC_INTR;
 	if (intr_channels) {
-		regmap_read(adc_priv->regmap,
+		ret = regmap_read(adc_priv->regmap,
 			    IPROC_ADC_CHANNEL_INTERRUPT_STATUS +
 			    IPROC_ADC_CHANNEL_OFFSET * adc_priv->chan_id,
 			    &ch_intr_status);
+		if (ret) {
+			dev_err(&indio_dev->dev, "Fail to read the register.\n");
+			return ret;
+		}
 
 		if (ch_intr_status & IPROC_ADC_CHANNEL_WTRMRK_INTR_MASK) {
-			regmap_read(adc_priv->regmap,
+			ret = regmap_read(adc_priv->regmap,
 					IPROC_ADC_CHANNEL_STATUS +
 					IPROC_ADC_CHANNEL_OFFSET *
 					adc_priv->chan_id,
 					&channel_status);
+			if (ret) {
+				dev_err(&indio_dev->dev, "Fail to read the register.\n");
+				return ret;
+			}
 
 			valid_entries = ((channel_status &
 				IPROC_ADC_CHANNEL_VALID_ENTERIES_MASK) >>
@@ -230,6 +257,7 @@ static int iproc_adc_do_read(struct iio_dev *indio_dev,
 	u32 mask;
 	u32 val_check;
 	int failed_cnt = 0;
+	int ret;
 	struct iproc_adc_priv *adc_priv = iio_priv(indio_dev);
 
 	mutex_lock(&adc_priv->mutex);
@@ -284,7 +312,12 @@ static int iproc_adc_do_read(struct iio_dev *indio_dev,
 	 * Testing has shown that this may loop a few time, but we have never
 	 * hit the full count.
 	 */
-	regmap_read(adc_priv->regmap, IPROC_INTERRUPT_MASK, &val_check);
+	ret = regmap_read(adc_priv->regmap, IPROC_INTERRUPT_MASK, &val_check);
+	if (ret) {
+		dev_err(&indio_dev->dev, "Fail to read IPROC_INTERRUPT_MASK.\n");
+		return ret;
+	}
+
 	while (val_check != val) {
 		failed_cnt++;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
