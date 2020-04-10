Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C77B81A4B92
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 23:31:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HBzTA2zwS4oOlh+alhSjjB9jsV4BFmfE+XhDPfPr/Hs=; b=sklE27Y88mpffU
	lGmQ6InJ1nWUnKh3hKsccp5HfZ4Z8E2sdjpHz5enehUGXX7WBkSB/TfoBA1q5uEcnBMmEIgfbWrxH
	TUsTkAXWIfy+D0XyaxJQq39OK8C7TjohfB5uK+szhKIV96YfBTgTD5QnKdOunN8/A8v8kxRPb5fYX
	F+GuDFZ9YPM63rwcc+h/tlc33jkAWg2kb7hXefzLFzRp4usVGyDnCYC8AQOD04FtMSwK5E0lX2Qrn
	Au7bKzuY0ZhZXmX31rqBuXAMssQHZxIFpmOOlmkeLHa4Ra2NPwVk4pyYeYAQhjiyS0CFkzoOpPOlk
	5PZ2S8GqF4qKngbhJ+fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jN1Et-0007qX-Av; Fri, 10 Apr 2020 21:31:03 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jN1Ek-0007oa-1p; Fri, 10 Apr 2020 21:30:56 +0000
Received: by mail-wr1-x441.google.com with SMTP id f13so3756798wrm.13;
 Fri, 10 Apr 2020 14:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wK7oayicow+Oht7E02uI/I6DTaomuoaw7CVzUaD0zFw=;
 b=irNfIkj8z+RIbvc8pcYIslLg7vVNd6XevVz0DH/xawFlaJVD0HkjMHb9E0XePXTa0s
 tRysnuwMaNQJxsUJEGKOxWOqaE+uC1BfNK6Nemg5kKWMR+wVXgID0uTuzziqvUR75py9
 Vo1jCACsoIjRm1riMzQ3sMBJ+GuBHKCU0DL57TNGV1MoUGKYlIyB5RQzKn2AJBaN64u7
 Je1U8AJTA10Hvb/ArOe8PW/N82d8my5NaLuR140WSUDHte0NnWG6qxdIgGGVFM9pySaY
 qKQks+sLpaeHRMCyyzRd8gzpYLSMmftg9y9TnrObiYgF78WbHqmhQ0+JXi9rkEV4jxsq
 RfQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wK7oayicow+Oht7E02uI/I6DTaomuoaw7CVzUaD0zFw=;
 b=mUAkFBSQC88CmJ6uCHEdGffTVP6hF+yKUwByrvHxiahz93+6xHW9OPIUc3h9D0kZZu
 rwa6ZwSfK1eYsVEPPHK5yrQL0YScYEaGYlvy+TL+3zG1eWqZR0cZ2EQpqMgrSe/YS207
 8H9I5ZEXxbivmKSDe7oZG5/a42y7iIx59BaaMCrtN6/vmpRMKpbyntgxwAlC8SbNj5G9
 rTRrglk/cl2RIvqBAnUpQlRcp+Fr2t6cocrKGwlieGmNPCbRsTJFGJxjZbbaB6cBqJSc
 me3sJUZFjHYCHfN8qXnLthFFJw/Kd2WrwjSp6wuYtSc+lb9HJk+CXhYN0vWk7J7fUVDh
 ni0g==
X-Gm-Message-State: AGi0Pua5fN/gM052bBOVPSJx9IFxwdWuFXPkiu0UXnzo9rxa4HOK7z3s
 EHIXrI/YvKaAl9m+rpO9jmc=
X-Google-Smtp-Source: APiQypKuWx1zdhzfEOly6Y8HlYpRbiAGOhUn0awSbvgFIK6ZislxpRGqBXRDOz0/kdAWLKA09Fqcog==
X-Received: by 2002:a5d:460c:: with SMTP id t12mr6340769wrq.75.1586554251923; 
 Fri, 10 Apr 2020 14:30:51 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F13710ED00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3710:ed00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id v21sm4238463wmj.8.2020.04.10.14.30.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Apr 2020 14:30:51 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 linux-amlogic@lists.infradead.org
Subject: [PATCH 1/1] mmc: meson-mx-sdio: Set MMC_CAP_WAIT_WHILE_BUSY
Date: Fri, 10 Apr 2020 23:30:43 +0200
Message-Id: <20200410213043.1091851-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_143054_116760_4DE5D2F0 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Meson SDIO controller uses the DAT0 lane for hardware busy
detection. Set MMC_CAP_WAIT_WHILE_BUSY accordingly. This fixes
the following error observed with Linux 5.7 (pre-rc-1):
  mmc1: Card stuck being busy! __mmc_poll_for_busy
  blk_update_request: I/O error, dev mmcblk1, sector 17111080 op
   0x3:(DISCARD) flags 0x0 phys_seg 1 prio class 0

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
I'm sending this as RFC because I'm not sure if this is a proper fix.
It "fixes" the issue for me but I want the MMC maintainers to double-
check this.


 drivers/mmc/host/meson-mx-sdio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mmc/host/meson-mx-sdio.c b/drivers/mmc/host/meson-mx-sdio.c
index 8b038e7b2cd3..fe02130237a8 100644
--- a/drivers/mmc/host/meson-mx-sdio.c
+++ b/drivers/mmc/host/meson-mx-sdio.c
@@ -570,7 +570,7 @@ static int meson_mx_mmc_add_host(struct meson_mx_mmc_host *host)
 	mmc->f_max = clk_round_rate(host->cfg_div_clk,
 				    clk_get_rate(host->parent_clk));
 
-	mmc->caps |= MMC_CAP_ERASE | MMC_CAP_CMD23;
+	mmc->caps |= MMC_CAP_ERASE | MMC_CAP_CMD23 | MMC_CAP_WAIT_WHILE_BUSY;
 	mmc->ops = &meson_mx_mmc_ops;
 
 	ret = mmc_of_parse(mmc);
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
