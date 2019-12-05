Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0652114469
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 17:07:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G2QpqbafedOy2m/BJwxJ5/9hpMq1wchvgJvs29YZwHE=; b=c3Qo7Dn/rH+/Lz
	/atuY72CjBn3McVO85qjTKjuJifwB4PTxm6ZQeMYEtEgZMJJSXoBx56iWlPecfwmjjtL5JOno66MK
	vGy/FrDA0t+7y9Hz5rjPgsHbdZmeYFSqY8TR5PdUixMfaMHBGjp8g425zm2AP5mIMBj1oEVFUUpaD
	dxYc+9UdNtQbS2cayDRv0OaBs5j0sWh0TPQmtHsKiVPsKLgmyVImH16jGyopssk0LvMCS2cnA7ArE
	54Dbojic89/Ghu2+R7rMvtpS0xy5//vLB2gPtb9ioyh6lVUHOAkGMXetXxXFoiNLrSlR15BWzspis
	d69xZNbz5bMOVPfQ56wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icteq-0001t1-GQ; Thu, 05 Dec 2019 16:07:12 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ictek-0001si-ND
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 16:07:07 +0000
Received: by mail-pl1-x642.google.com with SMTP id s10so1437635plp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 08:07:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0EteF4iAsRPHclRrUrgDLpQZXRR6Kg6d9lRSQjCvFTM=;
 b=MwasEGI7lm+mGeCpcG6eU/GbXC7zNqrFuCiJB87Bv7lJ6q2aJsS0HYDmpRLMlUSnqr
 bUH7uorWtXJHy2FK4Zsht6aeU4IUKqqwnZqXstHWd3GAuGh+2N3gtLqJwHkC/4cMwELe
 TGBTIYm8HyoAcyb5tC2dN1UQVgxQuiHpHniL2G1fqOZ/R6OVf+4+qGsuMYxKegG66IJ2
 YXBVIsZfNABYv3Sz4wFzY0T7O3TSMvsnzhbjAXUcVF9SdWMXZEDFPTsPS0jcIVerLj22
 wzKbLoCckcPxFqGApIK4ifdjwT7ETBkDktx5+KbEIahJMKhckepyBFeQaknkWrs1ja12
 So1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0EteF4iAsRPHclRrUrgDLpQZXRR6Kg6d9lRSQjCvFTM=;
 b=EIdckc63i7zKYIyfF8s60JsBvdQB3JxfM7PdTaWz3IaeCFf6ojnvlHMTClyNoZm0NT
 g5FKcyU80vA2TO33R19oFrCG4ko0mOhWC9PqEsQbFZyzCEvE1tunyhiS5g6rmHwrFGz+
 6bp7htdGPISDkOXAS/v0ZzE3Mx+E9XLjRfOLVJ9LVj78TPhhNqP4QB1we60MYaIF4oTJ
 FMZgoR8lwDxBtH+aPAjalGEORTMB3PG4osjIQQEKObeaG88Dr0j0f0b7nDkK97Hq8xQG
 pM5RtvhzVT2H2Zp+Tde56zjujiQNQurtuUWs89uLURWjLsBkCXsW7usDeB5gFV9OKytU
 e12A==
X-Gm-Message-State: APjAAAXLrbjYRHe7qGR2x9+VGhHNB4fYH0x36Y0L5c4ixWGVqmsKLMRx
 jKp/jKuGNICwWr/QIWaxwiY=
X-Google-Smtp-Source: APXvYqywhPRYNArYzVQFWv+PuF/L2d6dUUNgv5VAlL+Ittq3144uB72j/wDmK/qj00I0S7d386YuRA==
X-Received: by 2002:a17:902:7c0a:: with SMTP id
 x10mr9926650pll.168.1575562026013; 
 Thu, 05 Dec 2019 08:07:06 -0800 (PST)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id h5sm13877752pfk.30.2019.12.05.08.07.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 08:07:05 -0800 (PST)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] rtc: stm32: add missed clk_disable_unprepare in error path of
 resume
Date: Fri,  6 Dec 2019 00:06:55 +0800
Message-Id: <20191205160655.32188-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_080706_755578_5A94866B 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Chuhong Yuan <hslester96@gmail.com>, linux-kernel@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The resume() forgets to call clk_disable_unprepare() when failed.
Add the missed call to fix it.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/rtc/rtc-stm32.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/rtc/rtc-stm32.c b/drivers/rtc/rtc-stm32.c
index 781cabb2afca..d774aa18f57a 100644
--- a/drivers/rtc/rtc-stm32.c
+++ b/drivers/rtc/rtc-stm32.c
@@ -897,8 +897,11 @@ static int stm32_rtc_resume(struct device *dev)
 	}
 
 	ret = stm32_rtc_wait_sync(rtc);
-	if (ret < 0)
+	if (ret < 0) {
+		if (rtc->data->has_pclk)
+			clk_disable_unprepare(rtc->pclk);
 		return ret;
+	}
 
 	if (device_may_wakeup(dev))
 		return disable_irq_wake(rtc->irq_alarm);
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
