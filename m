Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B4E51E0293
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 21:32:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Q+omGaXe/Uw33Ogtz7Q2/M24N8V0LIx/Uf2M+Bp8UQA=; b=tEGpLy6E60d4adI+37pypRVEDN
	J6lZoL2IWfrIVJSp+7XUCm5mGl2D5doQxyPU2Hdu1UKfr+qvIcljSQDIvTORiHUNj5KPWpo1EX4Wz
	5sHLYFXsOfpJ1ZmApbSY+a9vvuC8hDcwKBQ4u3iT02WHHrsBz0ruaDjnP6duJZYg/1scn2kThPASG
	utVFkCgYBsFPbBDi9gB585NZ1eo44Wq7sGUneipzAcG+gAfPqdu8hk3REx54NKaT1gwoosVvBzmvW
	9Q/mQ0/A2/VJi83w17yktOKQYjMkItn3vvFsq21S305NfRk0chbureGPKgf8UNvg75d25JN4rZVCn
	5FeJw7Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcwM6-0005QV-2J; Sun, 24 May 2020 19:32:18 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcwFw-0006TP-JH
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 19:26:00 +0000
Received: by mail-lf1-x143.google.com with SMTP id e125so9393470lfd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 May 2020 12:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=5XttF+gsxtE2Nh/RT1QjWbgSDPDgIMs0jLXUksIU0jw=;
 b=Q9zdV7gO/MYu3S00/kxokO6oD2tR0Kw1o4ENGUPMf/DwqEdKXQtIfXMkXjWFVa2JWt
 jIRsVs3gIH9SwWWfHwoL+KwCRVD4xDYZK0cwCMCmy+t0JOGfE+Xc+dZE03N8lut5sz2W
 qQbKlEL8CGXjD2iudWs2dSowjnDDAaSxLb3joGbQiq+sY49Xo/F1fVPpClEZ07Ox5cI1
 zlF+AwGVs5d9V2hEtk9DV51aPBoYSMkcxHaLTReRDTVa5BeVFiv5qP3Miej0vCt1uTwA
 gFt9geoJAfS8I979RxuhEtBr9fn0QHv43JLpSFojnSofo0nJrCyV2i+44pa5glYnzy4J
 rlfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=5XttF+gsxtE2Nh/RT1QjWbgSDPDgIMs0jLXUksIU0jw=;
 b=cdXu8sbZ84MiVadoNjOvSgpvPBeqq+ORx9MykndSpSS1t09XnVsKF1b2euXj3r796A
 PaTsXqJDm4rS8RNeHOO/L7QRQlhnxpUha3aPNkSH5frM5Rcx3ji1u26C8fSgYOu0K1pn
 U4J+h1fUqLIWErQTmqLmVjAyaugkvBh2DKjPNb06j0oxYqFaRxfer4UmLBT9SYhLW0qA
 OpW9O5giX/RXd8LPY2Rmpy4VfMivFqS9tlxB3nbAaB4ZIBThAXaw4wrGcnS8VihDGaE0
 +pDnAiTPLiYEW6C+RpJr8TmWbE9FQr2Ekg0/FaG6b38hoY2jRnFrq4GQYNyye1fJQOru
 2SGA==
X-Gm-Message-State: AOAM532Rr4AAGtMlgOo67jRzcULkEnrJMEOfnZm78MEKf1mmkVcSXhxK
 40k4JyV5+E/Scas4ohzthOAGsw==
X-Google-Smtp-Source: ABdhPJwN7XnAuNpoLsBpve9Y4DsBJwSK4bv4ADy1BFqTyLwbNZ2j2wh6a12hUzBuYEe9s7X+cCSCmw==
X-Received: by 2002:a05:6512:533:: with SMTP id
 o19mr8600990lfc.6.1590348354921; 
 Sun, 24 May 2020 12:25:54 -0700 (PDT)
Received: from localhost.localdomain (37-144-159-139.broadband.corbina.ru.
 [37.144.159.139])
 by smtp.googlemail.com with ESMTPSA id v10sm3878137lja.23.2020.05.24.12.25.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 May 2020 12:25:54 -0700 (PDT)
From: Andrey Konovalov <andrey.konovalov@linaro.org>
To: mchehab@kernel.org, sakari.ailus@iki.fi, manivannan.sadhasivam@linaro.org
Subject: [PATCH v3 09/10] media: i2c: imx290: Move the settle time delay out
 of loop
Date: Sun, 24 May 2020 22:25:04 +0300
Message-Id: <20200524192505.20682-10-andrey.konovalov@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200524192505.20682-1-andrey.konovalov@linaro.org>
References: <20200524192505.20682-1-andrey.konovalov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_122557_906736_A96C2FDC 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
index 88850f3b1427..ee5c95cf64f3 100644
--- a/drivers/media/i2c/imx290.c
+++ b/drivers/media/i2c/imx290.c
@@ -347,11 +347,11 @@ static int imx290_set_register_array(struct imx290 *imx290,
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
