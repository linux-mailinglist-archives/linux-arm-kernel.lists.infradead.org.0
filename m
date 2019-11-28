Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A4F10CD54
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 17:56:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9LGcxOinMbc3+/yAfwP4UKzwvKR3qJFzqBXkMFfnhvo=; b=BcudIJ/LVGUx7hYCWT6wC3tLor
	tybL3ZMh18j5/Qjaf+B7w9qrX/Bp08vhxW8LQ6ACWyqBwzOHo+S+Qa8sRY0P+GRIMzSDOJK3vCggp
	f6Ft8I/WkUuavFObw7tkhEDrFz/yyAtcXyj8RO5DChTP8oz3y8dbmBarEYioZ0wmmQD4ak29aRNL4
	jlcQG2fOaIeHwYfp8npxtKDhbZ950Zp9na1Nz+9ZoFf3j1kQ1UgX67phw1H+qXaB8t8ho4K6OhGog
	E5e/iWM4E402Oj9T8KPHF+qKLE+jyUddLIWguT7P+gg1zsw+GAMuU0L6Q0nqN7Em5mnKadwl60Ayb
	njgE4wBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaN55-0001m7-UC; Thu, 28 Nov 2019 16:55:51 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaMzk-0004j8-9X
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 16:50:21 +0000
Received: by mail-pl1-x641.google.com with SMTP id bb5so11811168plb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 08:50:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Pq5KE5gIMiwWIeSMy3T4ZpUVkQI2nKjqwjW9YajORlM=;
 b=l+WJiw5FLVFlg2GB6XJBFoKiX8wRGvOC39Lkh0eo9GF2U1R5dvDk5qSGf0mZyR0vCc
 Y7e4vpSWAV0QLx5g1zc+WO0pWa1anz+Bd+U/2YxuciS5ALd7iNeJkkUa8nQJacIba+Pm
 0kLdz+ycG9JYZZWa0KBQT0hJPYBJvCoV4sPn10uWObuUAwd5O/pKNS6lfP6kVi4XGlZt
 0g5fZWPqGFgLCDLo008WlXCCWNBhf0GsbRKmNpMq8thQiVZRSJ9x8fpfVK/TwTpgQJIE
 pJHBx8mNVXJMnQR7I8ruSp5OH3kkQDcwIBA372I/NWDLX3AGmAIEQywRGQThamt3rYX6
 dl9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Pq5KE5gIMiwWIeSMy3T4ZpUVkQI2nKjqwjW9YajORlM=;
 b=lun4phpi/ET+NOV3Zx3pFqM6hIAiNSrlKe9rtVNFqBL8Otke6oe6RbkDrzF2s7Ubnr
 +SsRXvy7SJxmbfpqaPElMiGOBOKc3hbHToJVf98Re3g7qZDJZXVHsopFnbsJHpvRyY19
 JKCI522NJn8C+EQCev0WUkMS/Gbs7L9+QMLQe6sZMwlpQfK5JgY+I7x29x89Y7KZk4qh
 3YXk6r0sPV0La08e2Qew94HaNPnAVqufoIrksVaio2+dyXyZA+91uPfbDC3VS8jRnVXT
 yUp+Fq4h2JKPsY/2OFPpIVWIbecBlatMDf4i05nHLnAuqmEZuryFTftiFMGclysjUgGz
 LL0g==
X-Gm-Message-State: APjAAAXUrxodpEI9iVv/PuijMfWboK6yiewvGpnxffGSlpMfjSrbA1qo
 zcLi0T/q+3CPlbbkKjxGlR4kCg==
X-Google-Smtp-Source: APXvYqy7nY4M8oKkslqOt/PVLmbSbyuu/6WmpZQ19v6gUqyI/h7a+EpQzknbr5KGWOToNNslZQXfxQ==
X-Received: by 2002:a17:902:d696:: with SMTP id
 v22mr10301232ply.66.1574959819278; 
 Thu, 28 Nov 2019 08:50:19 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id a15sm2450343pfh.169.2019.11.28.08.50.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 08:50:18 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19][PATCH 16/17] ASoC: stm32: sai: add missing put_device()
Date: Thu, 28 Nov 2019 09:50:01 -0700
Message-Id: <20191128165002.6234-17-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191128165002.6234-1-mathieu.poirier@linaro.org>
References: <20191128165002.6234-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_085020_334953_11FEC0DC 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Wen Yang <yellowriver2010@hotmail.com>

commit 1c3816a194870e7a6622345dab7fb56c7d708613 upstream

The of_find_device_by_node() takes a reference to the underlying device
structure, we should release that reference.

Fixes: 7dd0d835582f ("ASoC: stm32: sai: simplify sync modes management")
Signed-off-by: Wen Yang <yellowriver2010@hotmail.com>
Acked-by: Olivier Moysan <olivier.moysan@st.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
Cc: stable <stable@vger.kernel.org> # 4.19
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 sound/soc/stm/stm32_sai.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/sound/soc/stm/stm32_sai.c b/sound/soc/stm/stm32_sai.c
index f22654253c43..540c4a00405c 100644
--- a/sound/soc/stm/stm32_sai.c
+++ b/sound/soc/stm/stm32_sai.c
@@ -112,16 +112,21 @@ static int stm32_sai_set_sync(struct stm32_sai_data *sai_client,
 	if (!sai_provider) {
 		dev_err(&sai_client->pdev->dev,
 			"SAI sync provider data not found\n");
-		return -EINVAL;
+		ret = -EINVAL;
+		goto out_put_dev;
 	}
 
 	/* Configure sync client */
 	ret = stm32_sai_sync_conf_client(sai_client, synci);
 	if (ret < 0)
-		return ret;
+		goto out_put_dev;
 
 	/* Configure sync provider */
-	return stm32_sai_sync_conf_provider(sai_provider, synco);
+	ret = stm32_sai_sync_conf_provider(sai_provider, synco);
+
+out_put_dev:
+	put_device(&pdev->dev);
+	return ret;
 }
 
 static int stm32_sai_probe(struct platform_device *pdev)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
