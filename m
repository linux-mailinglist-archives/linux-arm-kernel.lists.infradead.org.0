Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 230DB1F7927
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 15:57:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j1P9Z73nw22VbWU4pEcom2dEB4Fkd7yWioLw4UcP5CM=; b=jGTyyd+w6qQJF9ZA4jCBDgBJBV
	8smWFglzTgUs3qUvNXAiWV0aoOZWCxfhapzfpHFvsXk4c4GNtKG/qYxOJ7xjO+VVCH1hoyxIfzu86
	tyTFJ1/qf6olIjWuzJ2eT/rAEmJtSBE+6/WiFptn9/beA9hn+hHVe0hhhSB6WqXcFFsxskTy6bxX6
	CLpojO6wG45HYcyHXy1oS12zwWQeseWCAoxmW527Mtl4yI6scyPfSDpZE7BGrJD8SVhgL0wSegNaJ
	yUcI1Gg4sOxx2zOlH+tDtruPtz1v8Jy4dmLV1V3ijleL8okPa+r2AJSmFSiFUshyxXX8WZFxfipPw
	sonqI1uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjkBV-0007Dc-CQ; Fri, 12 Jun 2020 13:57:29 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjk8r-0002rR-IB
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 13:54:47 +0000
Received: by mail-lf1-x144.google.com with SMTP id c21so5536664lfb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 06:54:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Rt6ATyUj+kngO18ntOXAOOJDegUILp5okUOOJZj7u30=;
 b=wO7KwHdto8wlA0AV82uro7r1mK8DBbXdgWCWNK/MHmIEZNZswGO4HSzn48aJdHLwZo
 4FzLRbwhsBUHqDFgtuTSNvdAopkP1kXPR+tNGagHOodO2CH/OX2VB5P7t78pzMNaba2l
 2lvPmRYZ+er5+r7VhVBhp9YYNQuuUZfLmedjZWePBXNM/U7o23C0oYHsLdS0dG2rbGgA
 0pkFdjWn4K8I4Tp9zZGgXDov0m97rJ24qVbVgJIxdYQ23STL5mCFH0uN1cZ7c42GB7pK
 c5OsfvVDrRMsrf216jVMdXeqlb8U3vtsT9ZC1P1QvU9lnF0YT1AQyoxT5PAE9w9C6+p6
 AY0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Rt6ATyUj+kngO18ntOXAOOJDegUILp5okUOOJZj7u30=;
 b=CunJdnkLjp/DpILGypSPCXku/Je7TNXaSo4UQl/xhmKcHFjBd3Ph8647AQheSLajcD
 tcMBWd7Xq1hWAK6hTbFTG+MVJxPgw7A6Zdf2+dfrERASxQOXEp2apHbNe/reAy/PaNi5
 TKlCSYsbFU83tr3OgdRVb0oWqy5pH6YW+5CCBrgQ2YcBP3uib2JOQmYZ1tbXpsqkQzZg
 chCpNvObOsaw2TrlknoNst1Q4UVEYznQnP/4KUVMiy0E30XsHcDeXgSN3jpl2CLSPcB5
 aVEPFBw6vPFx5BO/nYmAEakKV2ckfZ3Q0wdSBP9QOvoxy91IrXzbT6NwhVA4WDMs7U2Y
 VnIQ==
X-Gm-Message-State: AOAM531LnnZm920Q5slWniS2dIxAowcL6nk1WCER9+qo/oboEolHLpp0
 1cV6lenfZCy77fkNolwIbciZFg==
X-Google-Smtp-Source: ABdhPJwV3q5S6l7asf3glLNkw33gfxAahHfBbXmsX8m8y7tdd0ypHlX1K1zB1nF2jJOXj6UeKr7sxA==
X-Received: by 2002:a05:6512:488:: with SMTP id
 v8mr7079139lfq.205.1591970083855; 
 Fri, 12 Jun 2020 06:54:43 -0700 (PDT)
Received: from localhost.localdomain (37-144-159-139.broadband.corbina.ru.
 [37.144.159.139])
 by smtp.googlemail.com with ESMTPSA id a1sm2414415lfi.36.2020.06.12.06.54.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 06:54:43 -0700 (PDT)
From: Andrey Konovalov <andrey.konovalov@linaro.org>
To: mchehab@kernel.org, sakari.ailus@iki.fi, manivannan.sadhasivam@linaro.org
Subject: [PATCH v5 09/10] media: i2c: imx290: Move the settle time delay out
 of loop
Date: Fri, 12 Jun 2020 16:53:54 +0300
Message-Id: <20200612135355.30286-10-andrey.konovalov@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200612135355.30286-1-andrey.konovalov@linaro.org>
References: <20200612135355.30286-1-andrey.konovalov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_065445_617165_CF4B4522 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
