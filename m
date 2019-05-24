Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9641729C3A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 18:28:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gH1IVdAFjAnSnUx/hQurMaohvVzWJbk4gB928BhJRUo=; b=DJOgiTSEbpec21
	6uox+jPr5SkPWjopDqDpHnOF685r7y0mNrgLfJqRvD0GZycBV4y761H/Osiyz2oERJ+NHLdGNvz9G
	LctRh/kJI2YMB7nWr/vHArYUn5IOVBbyJuq7B00JMlRGZENmUOzmHb06S5uLyY8y23s4PKzCPWj1x
	lGOuQhCxyBUuHpwOtELhHQCqG25FQsY83HaZnR3QlKI7Of2XwLfvpe5f66wqJrLEkqzKjnQNx+/uH
	/juZEXiQgI+Hp1mV5ZmC3WFkC0CFE46xsTULNR0EdkGFLjM2Z2dlbrOjFDjtkKow5KII1TR+GHk09
	pnere3M624OBGv6BnReQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUD3D-0001Th-Uw; Fri, 24 May 2019 16:28:12 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUD2j-00012J-5B
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 16:27:42 +0000
Received: by mail-wr1-x444.google.com with SMTP id d9so10645524wrx.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 09:27:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OpsVci6NS0D6Bf/3Go8WTx/jss3RyzyovCrA3zpdENw=;
 b=HTvI2d+KNikWYtCfyv9ErbQwk9U7SN4mNO0FU31r9IcRKjdCFOiEcfX3ljB4rfrA7R
 yNGT8C22B7n34+vtuGrX0SE/9+OZk7/YSy95mqEufDiSS3QtYDIWRpn06g5wDqHGarzk
 VuJ8l5PyKvcxzI+r0snAiTATtmCo0eQ1MjuCyGnc2IOntuJCoLmTOVwwxUzP7T+UZ2/w
 cKka3JVXHe4l873jUF1KaU6L2vm+jRkc1Abj3aOtTx4wDUfleGbOcmdq29+P0kMlfTtZ
 bnAErkDLh1l1nPQaT/eKmolaXaddGRqUPRn2sgqfrP9tT+UPY2slGZ8DoELeVWsyuHTu
 +DYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OpsVci6NS0D6Bf/3Go8WTx/jss3RyzyovCrA3zpdENw=;
 b=NJ7Gtqw8HWMjBFbE1uQPcjWj1soeovYx3VLpOuc6bNDJ0vHX63HaEKp9ZSk8cab3Vs
 1nIVkpw9r73/OzE3xgZe5NYwcyXe5Jf4WJR+cJpp3M1GGE/FXjAp8v1vkO8S0rIP48c/
 Q5by47WVGYETcfrOk31M1d1WvqheNU5XObQUHBWeJ8aMui/wpJefcom9M9n27hyTFzPj
 1fv+jAnWwWBcDarrdTV2Q3r4RClvJpVG8GfwS+sdNI7We6wk7C6cNDgHH4CVTL6pqQf/
 8GQL2/h+cK92vTMOueQDDs16jRw9Uba7TK5wlCMUuuTPDj2M9HObhYcefwOEtJR6AMjC
 gCKQ==
X-Gm-Message-State: APjAAAVV4CPtVotPkv37JzSQFZMRrxiEIxFGJk7+bQLkmm4bvHhj5KoN
 MZ59KC90NyFUd67zWLzaNM5bPg==
X-Google-Smtp-Source: APXvYqxRYQNMM2ILDaTxPlZrMk+NmwszppDLWVn4iyYwh8pn7KIzGpqZNUrsEYDpGPRnbbFmLAxWHQ==
X-Received: by 2002:adf:edce:: with SMTP id v14mr59665675wro.94.1558715259395; 
 Fri, 24 May 2019 09:27:39 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:2042:d8f2:ded8:fa95])
 by smtp.gmail.com with ESMTPSA id l6sm2200320wmi.24.2019.05.24.09.27.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 09:27:38 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v2 2/6] crypto: atmel-ecc: add support for ACPI probing on
 non-AT91 platforms
Date: Fri, 24 May 2019 18:26:47 +0200
Message-Id: <20190524162651.28189-3-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524162651.28189-1-ard.biesheuvel@linaro.org>
References: <20190524162651.28189-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_092741_217152_FAA842ED 
X-CRM114-Status: GOOD (  16.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Herbert Xu <herbert@gondor.apana.org.au>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
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
index 0af08081e305..97ec8107eeef 100644
--- a/drivers/crypto/Kconfig
+++ b/drivers/crypto/Kconfig
@@ -522,7 +522,6 @@ config CRYPTO_DEV_ATMEL_SHA
 
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
