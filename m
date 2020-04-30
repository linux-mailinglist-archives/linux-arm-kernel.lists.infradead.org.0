Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4B61BFF88
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 17:03:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mah0S3I4zhHM2i1gnUOyopA6KcJrgJkzeQVLdJsLm+U=; b=A0sHbuHwRm80qx
	ppq8qt9os2Su9lHHWnKjDHxQuNh130n5t9DFLLalAvOguWsBj1nifRQGWN/qvDrXjBIpORnEh4iIA
	mIu6OpE1BKGkzCRigMn7mrkaN+MZm8NrNxgezpNN8rHtb+jyE0RmEa9fSP/8+9D+nd5jPEOOX+edE
	TvoYqvxuDRcqOXcu33FJJZymTTFGOdh3IR6XpZV9jyVyvyBzC/xkhwt2FYkieWroLsyqIkEV/0c0D
	o3QaBr7nGDdRf3EgEQi08bzeGpFeo6fe9OTV6ttG1UfiLY94Ou0HcYCUdRHQbVi9rFPgIDSzE9sn9
	TnRYeWz/HW4uGowsBQFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAiS-00041B-AB; Thu, 30 Apr 2020 15:03:08 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAiI-0003zc-65
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 15:02:59 +0000
Received: by mail-lj1-x242.google.com with SMTP id b2so6856858ljp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 08:02:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XdAVXL5gtubsjMr9Ir1cqftbkn+HwRdpaJZuRZ8bhH4=;
 b=dnfu4V4ESdC2kBEl/SbDCDvEMsQ+fK7dGQyNA8DqA7NwN7clEkfhA3nzSwCtAZfwcI
 5i3IwRbI+RAPzUUmKqY5h5NZ9Rg1H5m1F8aUZk7SPCoN21Ux6mjLl0VTlN5rJKNKpBSY
 gyWSSWstINUDfedvRWf9JeMvdwEZm/x9r9fp6WAlKMC6xNAE5+RxuP/Luuws3Fm+y6FQ
 Y2u0ScwaVxBemLcA2GKejw5j7THlNSl++E454jN3o7bHVYey0/iuveJxLGmkADKHDft7
 1s+ls0xkxYMi+2BYOqD0TlLGDATvACpFgp/GxZaqaXTWM68ll48BMhF+E08rsQI9n2zX
 BGag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XdAVXL5gtubsjMr9Ir1cqftbkn+HwRdpaJZuRZ8bhH4=;
 b=ouVygsW9cwpDGLLScgzN9ZJseOnYC7JrteUtEj9MPyZvNQo/XxccaqvnODou7gpeKb
 euYFvsxI9Zzc1Zzg7b0X14aR8PorzxLNUIRtgY6yNolMfXtvoMgbsnjEOiQFC1ERs5rZ
 +hkiae04A+8bRUk/Jc6tGTPvrrcZLq6TWId+fW4NxcMC7tYnIp5nC7nP6aT77eAl7mtZ
 4jTHPVmu07DmPDjL490md8Wdr2eOiHh7AezTrsETRfXK4sI+K5MEmztB7JnUXED14fqs
 81usCrFd9c4rqTmVDu/xco7wKxNCsqBIunPd5XTcBk22jfQ6bVFr4tl8HY5VvP7AbT/2
 k5Ag==
X-Gm-Message-State: AGi0PuZ4tDpk7BUxW4h1XBigMQgeUvA3lvRzyPybX85v369RMgt77mv4
 IajmwL6cM/NR8YohXeoVat6+JTq2jqk=
X-Google-Smtp-Source: APiQypLzKhJx4X6ryFSFK51GkkMtke9Qng53LIPyKOnMmnB2NCX9dGtb8+wnJyMbSnUUXsFl7E3mBg==
X-Received: by 2002:a2e:8199:: with SMTP id e25mr2542886ljg.87.1588258974761; 
 Thu, 30 Apr 2020 08:02:54 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-f3d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.243])
 by smtp.gmail.com with ESMTPSA id j22sm5305537lfg.96.2020.04.30.08.02.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 08:02:51 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] ARM: dts: ux500: samsung-skomer: Add magnetometer
Date: Thu, 30 Apr 2020 17:02:45 +0200
Message-Id: <20200430150245.7935-2-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200430150245.7935-1-linus.walleij@linaro.org>
References: <20200430150245.7935-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_080258_226353_CDB6D4D6 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Nick Reitemeyer <nick.reitemeyer@web.de>,
 Stephan Gerhold <stephan@gerhold.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the ALPS magnetometer to the Skomer phone.

Cc: Stephan Gerhold <stephan@gerhold.net>
Cc: Nick Reitemeyer <nick.reitemeyer@web.de>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/ste-ux500-samsung-skomer.dts | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/ste-ux500-samsung-skomer.dts b/arch/arm/boot/dts/ste-ux500-samsung-skomer.dts
index 5da3e21e5388..e2c6259d2f1d 100644
--- a/arch/arm/boot/dts/ste-ux500-samsung-skomer.dts
+++ b/arch/arm/boot/dts/ste-ux500-samsung-skomer.dts
@@ -147,7 +147,12 @@ i2c-gpio-1 {
 		pinctrl-0 = <&i2c_gpio_1_default>;
 		#address-cells = <1>;
 		#size-cells = <0>;
-		/* TODO: this should be used by the ALPS HSCDTD008A compass sensor */
+		magnetometer@c {
+			compatible = "alps,hscdtd008a";
+			reg = <0x0c>;
+			avdd-supply = <&ab8500_ldo_aux1_reg>;
+			dvdd-supply = <&ab8500_ldo_aux8_reg>;
+		};
 	};
 
 	soc {
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
