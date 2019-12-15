Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A62DB11F7D6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 14:02:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FEVPBSZbJP/dCQXnJlcro96NPovPNvVZphXz87Ncw/k=; b=Nzb6msKyv9w8nkM6KfbFe/ipQ9
	ZNivQaYysmtCDTvUYrc0or4MXYZmW6rhWaC8NH18qS2s8Q3werGQ85w8JaRMhmHfsGv5OFd9s5k8S
	NldcpWt6xD3I4pFYcBZT9XjGXmnXPap72uIUVyKJ+j6uSrkW/Ls3fZrUDPwbcXxg7LOzuyf645o+t
	T+qRZvf5nDeDAfMjqrGjdXCeMpvHrgID+TGZ1HZH71rcXX3mClmEJIEAP9OjdksXy/7vdQR2fNwfj
	Hx7P9J4TKL0zZgHeGtZtZVNDbLIcZctWuboow8/3FpvRUY1YIfdb6e8edGxFSmq8RedyKFkYcsRPz
	w1wkCbIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igTXa-0005qW-0z; Sun, 15 Dec 2019 13:02:30 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igTXI-0005iM-8Z
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 13:02:13 +0000
Received: by mail-pj1-x1044.google.com with SMTP id w23so1811609pjd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Dec 2019 05:02:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=quqseq6iPMQF1FVXX9HnBc22kYXAEYNLOrdqtNexOas=;
 b=p2RO5v4iwHSr0AQpXjRerB2HVhxbf8qXUlVHWlPFTNtK3Qwb75plrABEwRdDpW0ulW
 Jx/h8CUWGX+hAOkrLX1JWG34yee2RAEIefKvn2tEnDdcj+DZ1IgXwrVw5ULyDveRnKVO
 pNwOkKdTeF0wo/dQBbqfwrFDJP+MJVAm97q+Rdv54S3/PTEkeNmwx+T43lxIBNTFDORO
 8tsV5PH9lxpKyeh3D9ZQiG2DAVMITwlebsVvRW+MyaUkQszObe6INnjG7mNYUqkva47Z
 BijQfYWZRd0BZrEmFNB5mueaSkAJe/GQjvM/+s4YImQx+jync7/5qvC6wfU4gUbm6N/z
 N4pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=quqseq6iPMQF1FVXX9HnBc22kYXAEYNLOrdqtNexOas=;
 b=dnTCxSJLNt0yTk8sJIAotoVMWBm7eN+L4gVSYvZNNWCHwm/5LTeofZMsMclX0CwmI3
 RvrQyc6XWju43eTOnSitCtHIWNyMU93xRmHtIURhI1h4f+Gsd257GuXuD6cIHsZBPhBs
 tiXUc2koc0U+B6D/JjMnl44lm+KIxsB1seIgHyEQ934TYQUTRAnUkfrzTzkVxkiZWZ+7
 ax8qEzmuZhzbFqUjUTyJItHD2RiNk0fzuBr3JUkBdH6OGsF7gvsrsNUKCdYlpScZB1v8
 mrSkb+rIaCGiE7gZvufMJR6lr9+ClBJmxtq3MC5ZWuwNYrc5nv/MSSlNwFGaVo09GkwP
 n1HA==
X-Gm-Message-State: APjAAAWZ+fiCWmpz0bfY9VOMVZsLLlDzDe0FYGJOs9LqfoiggskT7ciH
 rx6A+vq7VZnnNceBSijLqgI=
X-Google-Smtp-Source: APXvYqwSZudvDKwwD+qN+akaodIq8lTpRSPuMTSkixiJXC+E+W/W6GOnXscbqm98VGni5Kla7iwPsg==
X-Received: by 2002:a17:90a:178f:: with SMTP id
 q15mr12153921pja.132.1576414931682; 
 Sun, 15 Dec 2019 05:02:11 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id k15sm18675514pfg.37.2019.12.15.05.02.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 15 Dec 2019 05:02:11 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rjw@rjwysocki.net,
	daniel.lezcano@linaro.org,
	shc_work@mail.ru
Subject: [PATCH 1/2] cpuidle: kirkwood: convert to
 devm_platform_ioremap_resource
Date: Sun, 15 Dec 2019 13:02:06 +0000
Message-Id: <20191215130206.30265-2-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191215130206.30265-1-tiny.windzz@gmail.com>
References: <20191215130206.30265-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_050212_301342_82A2A0D4 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/cpuidle/cpuidle-kirkwood.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/cpuidle/cpuidle-kirkwood.c b/drivers/cpuidle/cpuidle-kirkwood.c
index d23d8f468c12..511c4f46027a 100644
--- a/drivers/cpuidle/cpuidle-kirkwood.c
+++ b/drivers/cpuidle/cpuidle-kirkwood.c
@@ -55,10 +55,7 @@ static struct cpuidle_driver kirkwood_idle_driver = {
 /* Initialize CPU idle by registering the idle states */
 static int kirkwood_cpuidle_probe(struct platform_device *pdev)
 {
-	struct resource *res;
-
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	ddr_operation_base = devm_ioremap_resource(&pdev->dev, res);
+	ddr_operation_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(ddr_operation_base))
 		return PTR_ERR(ddr_operation_base);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
