Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF81D2A658
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 20:13:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qQRiR4FBkFUUlo3DdloMbzMZ65/zz2fD0EplTM5JgXc=; b=ni3AESlEsQ0CNf
	itwikNT+Gqyfq+wubLYHLBS5QtGTLHxoEJDJtAh9BYdClEuAr+zWHvFfRg5jXh5BuUKhKDwv1skvK
	L4LrlpGRLFBPSGhm5a9uRp9Gh65eXu+KT2W+4DMESZhirDkayoAhg+i9E6IO5BUlpQ4XOnkOlpPuQ
	LeD3DWOH7XlCvM4GFYZZrTusdawk1Scq3N1SX5E0UUSnAFF0AvJKFBfw7OvhMSLnRJbdu2uz4Khzf
	anJPfLFdOTBDBhDFzOr3ogaRUdc0lheopyavi4I2dtdqto4FHDyoQ4SdEKd3lMyjYbyIdrl85ymW6
	mVOJarg1ZyiYht+TZdFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUbAy-0004Tp-Pc; Sat, 25 May 2019 18:13:48 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUb92-0002JW-Fr; Sat, 25 May 2019 18:11:57 +0000
Received: by mail-wm1-x343.google.com with SMTP id i3so12324872wml.4;
 Sat, 25 May 2019 11:11:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ore1r+dKR4AsT7KxL88Hg8/dGPX/2Y8Acm9/4eCEojE=;
 b=nHZYDf8YaoMbqMOwxPqAgeNXKRos+cq9aefZf6p10ZPPH5Do6B89b2LgjGxiVvBQWU
 equJR9FChOuFY1BUIzW+60NrCl9iRiWpR0nFeX3lSwu4xUquFzktcMjwH052JbxmK9i8
 Fi1/FKNVoUCx5DZywgRWIgq7MLSK5srRzuOKI9fazBPplvA7T/naIrtgrDYRlF+N7Nzs
 aVLkFmy73N9q9ZE/IirHHTygjvvMinjKugjGL8ydk7hrdaJRPi3K+/CaMlfEh5dphQJZ
 QcdlMhj7/wUUAwSP7sy6w9+msWy0qEFbMkwTOO7M7e0CiiOxTI5sqNxGrA8pBLOLYMB+
 3YWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ore1r+dKR4AsT7KxL88Hg8/dGPX/2Y8Acm9/4eCEojE=;
 b=RURXtPzIbBmZ3XjmuxwADGMAdmYFe4cDClFn8E1y5sehxZsokL68oXCcIUVYD94yTM
 Lp8EAhppjRoK2Dfuca92TK+eehlfkGJulwOMasUqSuFJjhR6qT2jeIlTRWNCsBFJy60X
 mNXZIkPFJYH1bms6z/oJa7ZdFGCs/W9v1nnqE+J6/+CmpX5XQV6hJsGcFP8aBojubvLi
 8hfOHTGKL+VAu8a50QYTaQiAoGKa2+XK1eazWva3PZxFQiM7Pw0ZG1cLGFD0qoLzA0CL
 Btnib9l4w9RXtOdfEsLdsGiaAl/QBv1P5gF3KnlsCi8pBKB0govO9KrabDNKYPqpWGr/
 i5wQ==
X-Gm-Message-State: APjAAAV4f0TrlREkyi/jLKAZad+fnmd60JhyW3wxIhpRFpbS1wSoP2Vd
 e2iuYRIwivu7Zrsr/5YcNsPVFT1T
X-Google-Smtp-Source: APXvYqy0bTm4jI4EyxEEibvtqTUC/09sCjBxlHpiBVsIbHD2fHjksgEWT1NhF5dHYSHrEwXtHO0wmw==
X-Received: by 2002:a7b:c34b:: with SMTP id l11mr7581726wmj.69.1558807906172; 
 Sat, 25 May 2019 11:11:46 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA4007CB8841254CD64FD.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:7cb8:8412:54cd:64fd])
 by smtp.googlemail.com with ESMTPSA id o8sm12794540wra.4.2019.05.25.11.11.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 11:11:45 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org,
 thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de
Subject: [PATCH 02/14] pwm: meson: use devm_clk_get_optional() to get the
 input clock
Date: Sat, 25 May 2019 20:11:21 +0200
Message-Id: <20190525181133.4875-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190525181133.4875-1-martin.blumenstingl@googlemail.com>
References: <20190525181133.4875-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_111148_911317_E2B35509 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Simplify the code which fetches the input clock for a PWM channel by
using devm_clk_get_optional().
This comes with a small functional change: previously all errors except
EPROBE_DEFER were ignored. Now all other errors are also treated as
errors. If no input clock is present devm_clk_get_optional() will return
NULL instead of an error which matches the behavior of the old code.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/pwm/pwm-meson.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/pwm/pwm-meson.c b/drivers/pwm/pwm-meson.c
index 3fbbc4128ce8..35b38c7201c3 100644
--- a/drivers/pwm/pwm-meson.c
+++ b/drivers/pwm/pwm-meson.c
@@ -474,14 +474,9 @@ static int meson_pwm_init_channels(struct meson_pwm *meson,
 
 		snprintf(name, sizeof(name), "clkin%u", i);
 
-		channel->clk_parent = devm_clk_get(dev, name);
-		if (IS_ERR(channel->clk_parent)) {
-			err = PTR_ERR(channel->clk_parent);
-			if (err == -EPROBE_DEFER)
-				return err;
-
-			channel->clk_parent = NULL;
-		}
+		channel->clk_parent = devm_clk_get_optional(dev, name);
+		if (IS_ERR(channel->clk_parent))
+			return PTR_ERR(channel->clk_parent);
 	}
 
 	return 0;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
