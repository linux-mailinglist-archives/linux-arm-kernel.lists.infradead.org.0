Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1539C126902
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 19:25:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ycZNczdfY/+u8tTdFayggmNk0dz6dEV5I+zHzWa6UEA=; b=sRGYPs+JjVIajukcfzOmbbZ+xe
	E6vPM4W2OaKQhR0sHYUB5jJ2c1ACQBySdVJa2QvZ/PqDG5TIBBkeImsDUiTVTgYuegBhKw6GVGABG
	N7Aw0lGIz2GufMY7b7pslliDS7R7EouisKoAPXwAzHHlVSw1ogQcohUyNoEfp+Ou+TuMAz8O2aKY8
	uTvCOfZvCHEkOOlcyqHuGA3HOaWxzIFqnNsJb6zv24DVyxgjgLnA3t4lLLZ7YucujLuYI9XH9TkU4
	+UsbKdadqOV72cOqckBfuI/7psWvWL0zIEQCZSZPPrb50KVjHUt5g1dZc9k3qPbWnHt2f/6ssnYmM
	4PQZhjRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii0Th-0002NC-2C; Thu, 19 Dec 2019 18:24:49 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii0SD-0001E1-Dq
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 18:23:19 +0000
Received: by mail-pl1-x642.google.com with SMTP id bd4so2925972plb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 10:23:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=gPMrMi1zLN6OA6/X7P7gnmwAhoOj6bYlyFbNpwO69Qo=;
 b=gUtZSwI5Ulzsmc54LykF+cv8X0Jm7Kfs0WesiUq0DuTQnyoBmI/riCz285oek9SAJG
 p8V+AqewtM6MuinpONWRY9UqrOZCI3wcAp7DBhj8JS4DQTdiSrOLwRGRj/mQuohbSG83
 vYk2w01/bsKxzy+QiBpNlxXiTNiUGUlNAPiB5xnDFX90vcVlcMlFZVmZYkr5TYtHjQP3
 MQheafVzi8xnyP8NoAbWCD0ZxYh6PnvPmBgSvwYRvyFzE0wZDwrlyD1q3KpDplaTs90i
 TVGECp5NmtJo22/ecbdc1F3qfAk4oDAz2LFAXQmLNCdtQSmvn9SxirD0PyOhFISwXhKN
 t3xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=gPMrMi1zLN6OA6/X7P7gnmwAhoOj6bYlyFbNpwO69Qo=;
 b=RhEXdAqWQc5+cbkDTVxGvdPPuR+bAsNXV05fOnZEmfrvizzY4jmaWgNKFqdVxAvTpT
 IDB5Sp/LiYg4lRf4Q0AC3Ny+z5p+sLQbCsccirn0m5Sj8lsiUsW0eHIiF0pd/1Zz2UGi
 kypEvqMSF+kbk5hbPqm2ukLkAmUlpLw+49PDpc7jhOxFrnFcYy0IA4cnNl5ImvzRmOVT
 vDAKxUqlnS15Dy0FJTTT5y5gYOVrLs/tb5zI52Ywf/MVkSZ3WWCqW56io9tCAasKAPMt
 bIsOkZbL8khRWwRkofI/PDAsCttW41G1rbEbVth1yJjz+S9+xet74v5e7SsrkMMNKuBF
 SqDQ==
X-Gm-Message-State: APjAAAXNj81Iz81oW1U+AmOBRHxkY3AayFIvV7vyM21w5DqYnUQkUawl
 wVE9Uc+zcRguYqvOpOLJtIk+
X-Google-Smtp-Source: APXvYqxh/cPkFck6sf3vfEQMX1np7F99b/uUWokTEajJPRHT+C0oBMl9tibCAQmI8m6PYTrdepN4Vw==
X-Received: by 2002:a17:90a:9f04:: with SMTP id
 n4mr11080250pjp.76.1576779796548; 
 Thu, 19 Dec 2019 10:23:16 -0800 (PST)
Received: from localhost.localdomain
 ([2409:4072:6010:65a5:a416:e9bd:178a:9286])
 by smtp.gmail.com with ESMTPSA id i3sm9085735pfg.94.2019.12.19.10.23.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 10:23:16 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mchehab@kernel.org,
	sakari.ailus@iki.fi
Subject: [PATCH v2 6/6] media: i2c: imx290: Move the settle time delay out of
 loop
Date: Thu, 19 Dec 2019 23:52:22 +0530
Message-Id: <20191219182222.18961-7-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191219182222.18961-1-manivannan.sadhasivam@linaro.org>
References: <20191219182222.18961-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_102317_521232_6CCA38AE 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 10ms settle time is needed only at the end of all consecutive
register writes. So move the delay to outside of the for loop of
imx290_set_register_array().

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/media/i2c/imx290.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
index 52f1e470b507..fb6d3f649a5a 100644
--- a/drivers/media/i2c/imx290.c
+++ b/drivers/media/i2c/imx290.c
@@ -344,11 +344,11 @@ static int imx290_set_register_array(struct imx290 *imx290,
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
