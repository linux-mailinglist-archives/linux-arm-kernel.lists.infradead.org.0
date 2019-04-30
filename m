Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EADA5FDEA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 18:30:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+SnGpRdn5CABNyLlM1DtpHQsi8g91MBA7+e1UtOKfQk=; b=KRTqJc0GlXkzaw
	dMR9cCFUz+zHDNifPGWOgTVRTpokx9+Gny100hZoD2W7KY5D1ameISFWiseyfJGMHNVxxajP5w1JB
	FOREZYe1zZiV+jMh0dN5QRemnXeIOU9rWD89wttuzfrZI63pGDtAneg1Kino+YvHCas+P+9HxPk+y
	dlwJw/y5tfOsVf4E+zvCqB7cYcJM5FMIOPqV0vUJLXv+OJMBy4MyS4jVIAaVoqMrt08NBi2qeSCHr
	PmrEDbxugHw4/Xb3ag5CK76mK5zw/NNevKEQZU6EiSu91Fd1Li6ERB3hAOUDUZf2US52B6lCrsnSM
	EwqFkIR96LyZEevodvow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLVeC-00056o-I3; Tue, 30 Apr 2019 16:30:24 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLVdb-0003Sd-Nd
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 16:29:49 +0000
Received: by mail-wr1-x442.google.com with SMTP id a12so21734509wrq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 09:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wHdMgh05X5RySoTsMAgv4VWozpEYjOO1CNr0hCQjnMI=;
 b=YNoNPHIYlhOHy5BbiESIrSs5mP4dL7RkV+WQhY0iIZ2aTAH5yJglhjF/aZJFFXhhb6
 YG68LGDZPu9NFGeYrlni84yvoKJLYSDmWmKXk+6O6UE0dCvbhqclYFQ3QkXH/B7bIm2C
 8wiv9eggkeesBqh9vtm8Savbeht7l/c1LkkLd8te/2kIu07rOaUcGmtrefxPAl6S4Csr
 S6E+sfYt9NlsaQ11rhaF1Kq9mElWI2fmN5VtFNgFtxv1Z4wxICQdAKlHW3BZaQKXIRmd
 k/9f3ordMFRQO97TBpOxUjhZaiP7GEfAS3pdsyhdW8vZmXTS9eOzRO7pkXq3aLKM0Ehd
 X+vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wHdMgh05X5RySoTsMAgv4VWozpEYjOO1CNr0hCQjnMI=;
 b=QLnx8f47Ep51CwfXJF9BlddnT/q/OdpiRzeYtRtnq0p0pQ4n0xIijrBNuIdWOQS/kx
 vHD0QoVA/UUEor5Qf8LVlOGRJJpiYSWE0UIyNrmeFVk7mAkCF/1TtBOFnetHPsU/ho2b
 amQ4mc3KpewG0ZYa16RRE39WDyFiU5AqaJNMA/5YVr3dTl4lOt2dZIMut9hMNLGQq/B4
 GidaIYMkINWalfMLy0j2yGl1dA7kmXCrLf6fi/v0cH1lzfBqBOnsBLFN2E63H0fCQeTx
 ma5b7EKN7QNQroKIKMR/qHmOeqCjLJoHnrqKkwhOssCR5tJu7XfsUJTSIbDiUkX0Wn5s
 awdg==
X-Gm-Message-State: APjAAAWH3F2by2IoNiYMA1qcXhwOK6clZHUzjqq2YsruX8a++H+U3bS9
 VzYFwuGgbq01tmN3H9yS+9nvvcula1mkvg==
X-Google-Smtp-Source: APXvYqxc+FxQYD3Ixi+POp1EZQ6x7Ndehssi2GBNN0ehouv+vtnvpfe6TxMLvR4f4mUOOFc5SmwgXA==
X-Received: by 2002:adf:f7cd:: with SMTP id a13mr30802602wrq.289.1556641786342; 
 Tue, 30 Apr 2019 09:29:46 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:1ca3:6afc:30c:1068])
 by smtp.gmail.com with ESMTPSA id t67sm5848890wmg.0.2019.04.30.09.29.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Apr 2019 09:29:45 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH 2/5] crypto: atmel-ecc: add support for ACPI probing on
 non-AT91 platforms
Date: Tue, 30 Apr 2019 18:29:06 +0200
Message-Id: <20190430162910.16771-3-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190430162910.16771-1-ard.biesheuvel@linaro.org>
References: <20190430162910.16771-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_092947_766510_4F6320B9 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linus.walleij@linaro.org, joakim.bech@linaro.org,
 linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Atmel/Microchip EC508A is a I2C device that could be wired into
any platform, and is being used on the Linaro/96boards Secure96
mezzanine adapter. This means it could be found on any platform, even
on ones that use ACPI enumeration (via PRP0001 devices). So update the
code to enable this use case.

This involves tweaking the bus rate discovery code to take ACPI probing
into account, which records the maximum bus rate as a property of the
slave device. For the atmel-ecc code, this means that the effective bus
rate should never exceed the maximum rate, unless we are dealing with
buggy firmware. Nonetheless, let's just use the existing plumbing to
discover the bus rate and keep the existing logic intact.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/crypto/Kconfig     |  1 -
 drivers/crypto/atmel-ecc.c | 13 ++++++++-----
 2 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/crypto/Kconfig b/drivers/crypto/Kconfig
index 0be55fcc19ba..4c95567e188f 100644
--- a/drivers/crypto/Kconfig
+++ b/drivers/crypto/Kconfig
@@ -530,7 +530,6 @@ config CRYPTO_DEV_ATMEL_SHA
 
 config CRYPTO_DEV_ATMEL_ECC
 	tristate "Support for Microchip / Atmel ECC hw accelerator"
-	depends on ARCH_AT91 || COMPILE_TEST
 	depends on I2C
 	select CRYPTO_ECDH
 	select CRC16
diff --git a/drivers/crypto/atmel-ecc.c b/drivers/crypto/atmel-ecc.c
index ba00e4563ca0..5705348f540f 100644
--- a/drivers/crypto/atmel-ecc.c
+++ b/drivers/crypto/atmel-ecc.c
@@ -657,11 +657,14 @@ static int atmel_ecc_probe(struct i2c_client *client,
 		return -ENODEV;
 	}
 
-	ret = of_property_read_u32(client->adapter->dev.of_node,
-				   "clock-frequency", &bus_clk_rate);
-	if (ret) {
-		dev_err(dev, "of: failed to read clock-frequency property\n");
-		return ret;
+	clk_rate = i2c_acpi_find_bus_speed(&client->adapter->dev);
+	if (!clk_rate) {
+		ret = device_property_read_u32(&client->adapter->dev,
+					       "clock-frequency", &bus_clk_rate);
+		if (ret) {
+			dev_err(dev, "failed to read clock-frequency property\n");
+			return ret;
+		}
 	}
 
 	if (bus_clk_rate > 1000000L) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
