Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D83B1F0D26
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jun 2020 18:33:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j1P9Z73nw22VbWU4pEcom2dEB4Fkd7yWioLw4UcP5CM=; b=RHhS3QxTDZNiV4IRTMKRDx7DQB
	qnMkW+SOM6UxjNVwJYkhv/P1aGzKuTqSlvIqMRssmwfyB8Wwf9igSs6g9/6si4TuoqvijeO6IXypW
	1P+fBGBQD/IU83Lq5sNxJM4yrEUyJTe/cOw9m7Tyfepx/n6NMoLuaWO6NkF8f1hsLg2/GEqTJVzma
	jTwI5S++saaQFJWbdtSZGdPpRZ1/VMr5NQdbYkm8spty6I2+2qcbaUmu6vbI6cU3T1jSQc2qw0Cbo
	XSjeQNzKG1IOy3CGNCaRyMqIS8zD9EvXC1Av/jGDahP/Tt+U8wcxXC2pdy44S9vHrmnt4eRzA3e+K
	QeKuft0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhyF8-00014o-Lw; Sun, 07 Jun 2020 16:33:54 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhyCS-0007B4-HD
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jun 2020 16:31:10 +0000
Received: by mail-lj1-x242.google.com with SMTP id a9so13936304ljn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 07 Jun 2020 09:31:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Rt6ATyUj+kngO18ntOXAOOJDegUILp5okUOOJZj7u30=;
 b=ml+4gVbeQHnwks5Iuv1jZCzoHDKLU/b9ovZ9dwJFwQrqiRoSpHXMs18iuG9+NtJiMd
 +Lg5g9KGMG/7imFtj2Drlv+VawBL7qCRfUi3wwnO22W/NN7TNRV+e2UgNm49HMqn7pMq
 VekBB4R5QnczjNrBjx0DQuOEMgygxoqJhh7PyspGiwcKh08+hk+pdqNSz4LrnX/I/h7m
 lY5uwVFqM/O6ITPZcXYb5hmMHlg++05bzStAZrgsRrs0zGuUZisYjqHhBJm05srSn5PS
 0AL/s8Xnbl9sGY5s1qZEvydkYDc0Us9ET1mG6mc6h92tH1usT1ItACDMm+hy+Z9B0beH
 M6+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Rt6ATyUj+kngO18ntOXAOOJDegUILp5okUOOJZj7u30=;
 b=U3whsLYDCkrXad7ejStXTD5dmAReDTn+inswqfXiHP96Vsyiie7eljrgoI0lHEbbwo
 UNMC4W4TzZ1xxiIvBHG4TliEDj/Cp2KrUZrQ47VEGWQ84dBUWN+lPCPJn1LEjIzFI4tr
 L1zxVBT8ls040iIrd0As5szJlfapHzLJCn4tYzfR0lGgXAkhWzqN4si9zpMffGXWvhk9
 BLl+0f0AZhQhqGOQKpwV7E9DHcZ9aGvjvrA01y75iw4mUezcEIsfZIko5ndbbasZtmMy
 Qrkl5Iu/9l9+LRmW+C7yk9NgrUx7w3zBfn0UKvYYWTSpg3VJDMMLa9wfqPxDoTJLoj4A
 vV+g==
X-Gm-Message-State: AOAM530lC3cOvwYnqGyBbl6WcopjYVG/yAuIlOY0hzmavE0F7+ovSpCz
 7g+7Uc+JYefae2//aIvjeYsjBA==
X-Google-Smtp-Source: ABdhPJzAvsjh6tvRZCxTeM3UyEofF++E+CgDNsgqVLM63SFDjmzic+mxo9+95tiJJjm8CU13LJYNeg==
X-Received: by 2002:a2e:584e:: with SMTP id x14mr9077902ljd.106.1591547467090; 
 Sun, 07 Jun 2020 09:31:07 -0700 (PDT)
Received: from localhost.localdomain (37-144-159-139.broadband.corbina.ru.
 [37.144.159.139])
 by smtp.googlemail.com with ESMTPSA id l7sm1726511ljj.55.2020.06.07.09.31.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Jun 2020 09:31:06 -0700 (PDT)
From: Andrey Konovalov <andrey.konovalov@linaro.org>
To: mchehab@kernel.org, sakari.ailus@iki.fi, manivannan.sadhasivam@linaro.org
Subject: [PATCH v4 09/10] media: i2c: imx290: Move the settle time delay out
 of loop
Date: Sun,  7 Jun 2020 19:30:24 +0300
Message-Id: <20200607163025.8409-10-andrey.konovalov@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200607163025.8409-1-andrey.konovalov@linaro.org>
References: <20200607163025.8409-1-andrey.konovalov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_093108_651175_EED4D2E4 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 Andrey Konovalov <andrey.konovalov@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

The 10ms settle time is needed only at the end of all consecutive
register writes. So move the delay to outside of the for loop of
imx290_set_register_array().

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Andrey Konovalov <andrey.konovalov@linaro.org>
---
 drivers/media/i2c/imx290.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
index fd147fac5ef2..02001c1b0dfc 100644
--- a/drivers/media/i2c/imx290.c
+++ b/drivers/media/i2c/imx290.c
@@ -404,11 +404,11 @@ static int imx290_set_register_array(struct imx290 *imx290,
 		ret = imx290_write_reg(imx290, settings->reg, settings->val);
 		if (ret < 0)
 			return ret;
-
-		/* Settle time is 10ms for all registers */
-		msleep(10);
 	}
 
+	/* Provide 10ms settle time */
+	msleep(10);
+
 	return 0;
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
