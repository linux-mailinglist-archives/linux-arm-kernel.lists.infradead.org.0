Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A53CE29C39
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 18:28:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hf2uXxQZ7sUlR/BWBC7aX98OGwez0Sj/l5YGzbH4Elw=; b=r/KQ0S0THz2G+D
	s4zQap7Ian1WnP2vyfifB/XdOBtdfHUQgvNXovRzX03PgP3Y7NXZS4T94945Tkp7PgaPZeDhEgbUP
	KJE+CsSyKO2nyXomT9X6OhYf6itP2UnGw5BVX9wsIQ7uvWBoSxwVe9EHgPtbMnSVpVv6ppw+hBeCp
	ybvrCb1H73kbVh+8TCZUYU+4DMfm7Z12lNkqWlIxZ7grdWLJOZDBlU6k5Md+pMh0I1D558qc0hdft
	F7XM/tcZVOjByYK8Cb0gZ4PjpcqP4YlG0C0CyMWbHDq5cgqlPj90LFxQL1h/u/fATZYm0od384y1g
	8bIthY+Sy/IJcegQ/T2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUD34-0001GZ-Dc; Fri, 24 May 2019 16:28:02 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUD2h-00011p-Oe
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 16:27:41 +0000
Received: by mail-wm1-x344.google.com with SMTP id f10so2576417wmb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 09:27:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=feMTK1ALuDcB6ANRh60ilE7eIkZ7WZWllXS4rnIjAYY=;
 b=etyGkcerFFK63wVJPJo3fAK6GJwu4arL3yT6oqa6tEDzNWodmPXx8J2hDmjVU+s/62
 FtW5cwEZJvReJiIYHfu52g9IpnAl08zsoHEFzpa2JM9Pder9hqhyDJyIZ4NyNThF/tUg
 rCPo4rXpUSl5n6mc6zDip9MwBZNeqsypfSKfgnSjx21B/wtM9RQIfnPIf0RC/o8zxzrh
 2aeIBX35HY3ROFBAKKQc993TzUfCK5nfErFt0nEISY9TOec9UhC5dL4+d1/aoxDfcHuh
 oiWITzP1MVuIJ/4NVbuD/NRzTqImYz3GpVMkqZU01a9H8Y7kBHgtR0EN0DHrk43ROwar
 DHJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=feMTK1ALuDcB6ANRh60ilE7eIkZ7WZWllXS4rnIjAYY=;
 b=iIdAUti//C9SYbtGNygZ6eOhNiWQ3ztPPyZzAFLMEyPxY7wiB0ENYzOrIz3s9QJm0H
 dyTa4liFq6Zw7F16im091p1mk4sFtGSMT0tTMkn2VHYwegNL+y85B1tiiIQE5Z9WcmBb
 QXvR67C9dW4BNzHU6wdsV9erdLho04g/UhboCuI55ZG6G8Zpyo7VHxmIuEpKM7594rFP
 UgpN+UtGEUF1Nan0jl5axKR6TeL8KkAEaSLM0eLrOm47d/msLe3fMj9H3IcNg7uAi61B
 EutEzPb55ahPgeW2aM2T1Rcm6f9frhhNpITP9MFITv9cZQLssrAmBOljeJWmD59zGlLU
 A6Gw==
X-Gm-Message-State: APjAAAWrAbKG0y60jXm60BH4VrbUDXKYsqwb52efjYnHuXp2+NC3CvAI
 Sh3ROjlUioiz6yQSyQFzdg4eBw==
X-Google-Smtp-Source: APXvYqzhbxBbK42/fNaR/5q/csolUj2TBckrr0JZCetN7bH6brmrHm8o+kekNYDecz00m0FcQC71TQ==
X-Received: by 2002:a1c:f507:: with SMTP id t7mr17188238wmh.149.1558715258061; 
 Fri, 24 May 2019 09:27:38 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:2042:d8f2:ded8:fa95])
 by smtp.gmail.com with ESMTPSA id l6sm2200320wmi.24.2019.05.24.09.27.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 09:27:37 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v2 1/6] i2c: acpi: permit bus speed to be discovered after
 enumeration
Date: Fri, 24 May 2019 18:26:46 +0200
Message-Id: <20190524162651.28189-2-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524162651.28189-1-ard.biesheuvel@linaro.org>
References: <20190524162651.28189-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_092739_796863_63C30E4B 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

Currently, the I2C ACPI enumeration code only permits the max bus rate
to be discovered before enumerating the slaves on the bus. In some
cases, drivers for slave devices may require this information, e.g.,
some ATmel crypto drivers need to generate a so-called wake token
of a fixed duration, regardless of the bus rate.

So tweak the code so i2c_acpi_lookup_speed() is able to obtain this
information after enumeration as well.

Acked-by: Mika Westerberg <mika.westerberg@linux.intel.com>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/i2c/i2c-core-acpi.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/i2c-core-acpi.c b/drivers/i2c/i2c-core-acpi.c
index 272800692088..7240cc07abb4 100644
--- a/drivers/i2c/i2c-core-acpi.c
+++ b/drivers/i2c/i2c-core-acpi.c
@@ -115,8 +115,7 @@ static int i2c_acpi_do_lookup(struct acpi_device *adev,
 	struct list_head resource_list;
 	int ret;
 
-	if (acpi_bus_get_status(adev) || !adev->status.present ||
-	    acpi_device_enumerated(adev))
+	if (acpi_bus_get_status(adev) || !adev->status.present)
 		return -EINVAL;
 
 	if (acpi_match_device_ids(adev, i2c_acpi_ignored_device_ids) == 0)
@@ -151,6 +150,9 @@ static int i2c_acpi_get_info(struct acpi_device *adev,
 	lookup.info = info;
 	lookup.index = -1;
 
+	if (acpi_device_enumerated(adev))
+		return -EINVAL;
+
 	ret = i2c_acpi_do_lookup(adev, &lookup);
 	if (ret)
 		return ret;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
