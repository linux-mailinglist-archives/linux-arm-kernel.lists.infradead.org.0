Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03BB11D6DD5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 00:29:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N+6aR9UE1ajmkA+NVVqBQx5V0TfLm68P/WiS1msucZg=; b=peK+KmgtgTTalr
	y9rkwQiwhaEIUSm4QevoD8lufBoukran3ppAChNIf/5xq9KbYJjoDvJyLIsxNWALkMlZNwzj9YI9p
	XZkqwbRqnkL7jAOuUIu8GmiTaIPVjUSNnSzz5Iq64dO1UDHZp8QJijORvCZnNaBOKCistsQFFLlnk
	r7fjB+wwra3EH83hgyAMrGn/ZL0ADiLzqWFJFkhQppuxkXG1ay/jTByreRcC9H7kI0S3vL8pb7K6i
	+AbqFMeqOxS2DpMo3UGUxytBY1d0uaeMkaQslwwwSosDJqlBpd09t2dTBT61iqt8Gkz+J9YwRTm3u
	m/eBfQQ+zWwNLvtbGy4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaRmz-0003Kb-L6; Sun, 17 May 2020 22:29:45 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaRmp-0003Ih-PY; Sun, 17 May 2020 22:29:37 +0000
Received: by mail-wm1-x341.google.com with SMTP id g14so21039891wme.1;
 Sun, 17 May 2020 15:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3zBbpyoelvZMQi2sOj6TWYdOKOApt3dyMAzoTjYhpAc=;
 b=my4ubcsyz+v4QpyWlb/muucdIIfwEzKHPRDj65Ud1hff5Sw5+RL6mtJJ0tg7ZXtjaK
 eXo0Brwj/Yy+L+TQFkLy9eYTRBoFsPP9KlmatvE/StbtXirjWl591t5qIcPlJkCkXiFo
 qeTMbSv8ou2Y45QB7rOKtwrYCVaQPvhSJxs8xhlHThodFsT9SiVZ8eiYKOo3w6OeuEmk
 jb3K6S5ieYl8cvL24CcQmU3bjyzuHa+4rAVRHYg5viauNa6XwTNnk7g+1/SOdtJuQ6HN
 ZO3aoPP1UekJUSm62JwmAf3Y1icer6CxzCAmfLBclIWZG4uv+ybf4wjj9uUvket80ljP
 4g/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3zBbpyoelvZMQi2sOj6TWYdOKOApt3dyMAzoTjYhpAc=;
 b=Ga/E+G6EWDvWhBRqOu1a8Pslg5bwW6LRz6nBVkfnApKK1OLuV+KDZpJm7GWyIo8t0H
 TiuL3rfS+Zm2S8yL2jWMh8e6CZwLSTC8TUwl5OqJ/cXEo0D78uKv0Lj+38AUgc7P7d09
 d4s7ZAbFWcC9BZiLJPyu9mA0ycRQBOT9S106QLwvgp/I6r4DSBJiQq/W0dpx8NoNktZE
 zrSQqFmGrrlZv0eyHUm3jcmHHhjjRZ4CewQO9UH3DJi3ZDfgTHqtQUAT3QVacAJG9ija
 7+XOSNoR28gsiD3l+2OomTepONbCjdTHdeYYKJ5vNKQSsFIrYbQz8Fsk3X05fNF6IVGa
 I7nw==
X-Gm-Message-State: AOAM530ua4ah9zpx8Wq2RmnWt3lsX7G0fQm9NnyDkmghVu9cLV6W4WDz
 HYgF2g2j08RdwqgszMBwPz8=
X-Google-Smtp-Source: ABdhPJzt6T58mlmoPDLD8v56EY1rb+viEArjc61WgheODN7BSzGKeU9Rf3irgi2uWOLZsMpm1KOpcg==
X-Received: by 2002:a7b:cd04:: with SMTP id f4mr15304085wmj.3.1589754573183;
 Sun, 17 May 2020 15:29:33 -0700 (PDT)
Received: from localhost.localdomain
 (p200300f137132e00428d5cfffeb99db8.dip0.t-ipconnect.de.
 [2003:f1:3713:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id b65sm14624702wmc.30.2020.05.17.15.29.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 May 2020 15:29:32 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 linux-amlogic@lists.infradead.org
Subject: [PATCH 1/2] mmc: host: meson-mx-sdhc: fix manual RX FIFO flushing
Date: Mon, 18 May 2020 00:29:06 +0200
Message-Id: <20200517222907.1277787-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_152935_854089_80343581 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Thomas Graichen <thomas.graichen@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For Meson8 and Meson8b SoCs the vendor driver follows the following
pattern:
- for eMMC and SD cards in .set_pdma it sets:
  pdma->rxfifo_manual_flush = 1;
- for SDIO cards in .set_pdma it sets:
  pdma->rxfifo_manual_flush = 0;
- before syncing the DMA read buffer is sets:
  pdma->rxfifo_manual_flush |= 0x02;

Set the second bit of MESON_SDHC_PDMA_RXFIFO_MANUAL_FLUSH without
clearing the first bit before syncing the DMA read buffer. This fixes a
problem where Meson8 and Meson8b SoCs would read random garbage from SD
cards. It is not clear why it worked for eMMC cards. This manifested in
the following errors when plugging in an SD card:
  unrecognised SCR structure version <random number>

Fixes: 53ded1b676d199 ("mmc: host: meson-mx-sdhc: new driver for the Amlogic Meson SDHC host")
Cc: Thomas Graichen <thomas.graichen@gmail.com>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/mmc/host/meson-mx-sdhc.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/mmc/host/meson-mx-sdhc.c b/drivers/mmc/host/meson-mx-sdhc.c
index 5c00958d7754..53e3f6a4245a 100644
--- a/drivers/mmc/host/meson-mx-sdhc.c
+++ b/drivers/mmc/host/meson-mx-sdhc.c
@@ -586,10 +586,17 @@ static irqreturn_t meson_mx_sdhc_irq_thread(int irq, void *irq_data)
 		    cmd->data->flags & MMC_DATA_READ) {
 			meson_mx_sdhc_wait_cmd_ready(host->mmc);
 
+			/*
+			 * If MESON_SDHC_PDMA_RXFIFO_MANUAL_FLUSH was
+			 * previously 0x1 then it has to be set to 0x3. If it
+			 * was 0x0 before then it has to be set to 0x2. Without
+			 * this reading SD cards sometimes transfers garbage,
+			 * which results in cards not being detected due to:
+			 *   unrecognised SCR structure version <random number>
+			 */
 			val = FIELD_PREP(MESON_SDHC_PDMA_RXFIFO_MANUAL_FLUSH,
 					 2);
-			regmap_update_bits(host->regmap, MESON_SDHC_PDMA,
-					   MESON_SDHC_PDMA_RXFIFO_MANUAL_FLUSH,
+			regmap_update_bits(host->regmap, MESON_SDHC_PDMA, val,
 					   val);
 		}
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
