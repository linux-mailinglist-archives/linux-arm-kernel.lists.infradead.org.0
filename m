Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2FF81F1D29
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 18:22:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5lpiv0FoCcdWX51SqnnBd5g+3tMJNoUvs+5C1YFw/iU=; b=hcEISGJoUY6CGh
	SGMGJm+WlZ1vAVnv5te9ePEvZIZ0tmSldmV7IWOyUv3Iiqs0nxTt9ZxqjlFrKLkdaKdSsRb83+I29
	PsnjX3rOqMMwvEabEfWRg3qYXd53aqaN5NNalJbTUXf4CYMzTN5aPnl4T4h7+WqE2rCLJnf+kSEhz
	FUQrClcEeh+kGfn7EeDIsV9w0l0LEuioLIGoPvbufrG90Aumfb4yDuN6Be7ML9rKWxQvDboQpynsW
	jfVp2I8q3bjwivuTC16878Ey+L0KU6psa0FZh0q9ewEAuOQhWf5jdtt6taIGINWOCqYWz6JQKnbiq
	1VDTDmYFNSIj+5Qxy2qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiKXy-0006cW-7S; Mon, 08 Jun 2020 16:22:50 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiKXr-0006bz-Cj
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 16:22:44 +0000
Received: by mail-pg1-x541.google.com with SMTP id w20so8962186pga.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 09:22:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xb9iduIo0ZsY8UkuJNW0EYDly2gzKS1dDnF5Tlucm3E=;
 b=ZxMZviQzRAeJ5DYVXko9AgnUzdM+2XqibnUTpLy53K/ePADf3nmLYW8DBnT5/aKoIL
 awbhhoGIqdDybOaGZ7VBexdf371ynrzzMrAq6zwTY3CXtFMFR8OBdoQSwtjBo9TzwdIc
 TVxxa6xjPf+NciarOzBz7a354AQp9mdHivGVD3N/9+oBGCiSqER9KZA67fFU5vrX8vMQ
 aD8umA50I5wjNKq1ULpY4j/kXYULB450Zx06+gjAe1ySU5kWjpDFX48Vged7P4Ps7qnt
 LeTOuy+pUf0e23rx8MlIYOdyAuHrTi0leShThPh5oJJdRxxkwoP4z1wtV8trIWBfq0bT
 zW1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xb9iduIo0ZsY8UkuJNW0EYDly2gzKS1dDnF5Tlucm3E=;
 b=K9CjjpiWsAoCW4KR21kKFlj1Nt3biOssSS0FgjeJrgIxvqpF7A8HZdAuMZWCSCWiCc
 NjHZVcECmwTLmuwxpmFd023OcfiRHnEMQdJSRuZ6LPIPShPuCbTA3PEJIOBdBISwkZou
 h606tdtwUhirSCj2DwA5u/ko+jpQd9xmKctazs7D+ZBXf+xfXEA5tu3MoveNBCiVc0Vl
 tkcfh7790qAiYkYVk31TMMrBintSzIndegCp2LxoPMDChEP7YteUlcfSDVdCkkruTaV7
 ceKMVRvHcDUINSlGbpNRniA6Azf5IVg0sswI8dc14RWOHb0eYNAzuuzCP1HVjhfQTe15
 KQUg==
X-Gm-Message-State: AOAM530rh7ViWT9P/SwOl0AR6IelRdnOgBj5ACfRuE0Lb4rn5/5zRk5N
 QkLykX3C+8HhV8OZIS8HrmU=
X-Google-Smtp-Source: ABdhPJxYAdGwPeXtwY/l/RnJjV2BHHPTERXRM6uP6tdjLlvz+7+36VZTNJg5ogRbBq84QCGe0sAkZA==
X-Received: by 2002:a63:5024:: with SMTP id e36mr20019756pgb.438.1591633361854; 
 Mon, 08 Jun 2020 09:22:41 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id c9sm7015334pfr.72.2020.06.08.09.22.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 09:22:41 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] mmc: sdhci-of-arasan: Add missed checks for
 devm_clk_register()
Date: Tue,  9 Jun 2020 00:22:26 +0800
Message-Id: <20200608162226.3259186-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_092243_431786_6F28379F 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [hslester96[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [hslester96[at]gmail.com]
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Chuhong Yuan <hslester96@gmail.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These functions do not check the return value of devm_clk_register():
  - sdhci_arasan_register_sdcardclk()
  - sdhci_arasan_register_sampleclk()

Therefore, add the missed checks to fix them.

Fixes: c390f2110adf1 ("mmc: sdhci-of-arasan: Add ability to export card clock")
Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/mmc/host/sdhci-of-arasan.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
index db9b544465cd..fb26e743e1fd 100644
--- a/drivers/mmc/host/sdhci-of-arasan.c
+++ b/drivers/mmc/host/sdhci-of-arasan.c
@@ -1299,6 +1299,8 @@ sdhci_arasan_register_sdcardclk(struct sdhci_arasan_data *sdhci_arasan,
 	clk_data->sdcardclk_hw.init = &sdcardclk_init;
 	clk_data->sdcardclk =
 		devm_clk_register(dev, &clk_data->sdcardclk_hw);
+	if (IS_ERR(clk_data->sdcardclk))
+		return PTR_ERR(clk_data->sdcardclk);
 	clk_data->sdcardclk_hw.init = NULL;
 
 	ret = of_clk_add_provider(np, of_clk_src_simple_get,
@@ -1349,6 +1351,8 @@ sdhci_arasan_register_sampleclk(struct sdhci_arasan_data *sdhci_arasan,
 	clk_data->sampleclk_hw.init = &sampleclk_init;
 	clk_data->sampleclk =
 		devm_clk_register(dev, &clk_data->sampleclk_hw);
+	if (IS_ERR(clk_data->sampleclk))
+		return PTR_ERR(clk_data->sampleclk);
 	clk_data->sampleclk_hw.init = NULL;
 
 	ret = of_clk_add_provider(np, of_clk_src_simple_get,
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
