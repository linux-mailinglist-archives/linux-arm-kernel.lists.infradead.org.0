Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1023C10CD40
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 17:52:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6JURbJYIN4ERTVdu7PU43vSp0qjAi2/tlykskmSqGYE=; b=IW/6hV8uNqUxOZBLJ3aQX8u+CP
	cJFxcm2PA07pjWnbSrrz4TO7jBhvEbVBxgsSGI1/h5UJcHMq44zQorYR+tPJuCfZiwIqBF2lAtkRj
	LNOIL/OggLunwGQtcuGncPXfhdzfYJaxhgVijDRvXKFruthFSkv5iNtDjcR1ppH9nNB9NvrT6vwfn
	tpW2Gk/PWXOYkjKoIwGxu8B1Xz/3RzsNhYxLXlerCEXYin37mgpau0/oiKc+qrNTsKnLwSa6mnAaD
	AGsHiz10LWZT4GjlnPA7hAFEVVUUOZBtNNsnUMMDuUYolK4z7fPKY8ENLAz+hXZ7K1itUFao79S1S
	/MFFObew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaN1V-0005oz-02; Thu, 28 Nov 2019 16:52:09 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaMza-0004KG-WB
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 16:50:15 +0000
Received: by mail-pg1-x543.google.com with SMTP id k1so4771060pga.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 08:50:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6rU2ZvHsnSzYwMs7Z05xUbhf11jabY6wDKJCR5AZiJ8=;
 b=xLaNPUaUIKXCW9bn1eGbhGpqCq44pw7uvqUvbHWA4HXNCC3j8wDWHuHJOglsgXtqSk
 WHKtLL/F++cUfpC9UOFnfKeZYczymLgalUAVwkbj2XQewDTZaY49MRx4nJHwuX2LQ22g
 hZCd2n+Fs45bxCw09A83bpNdll58/D85vKQUfLvPhdLeJGezwl2ddQlfKf/glagBUdp8
 1m8c/kJuqMChbyaZPNkYaMtKvkiReM3ynaPvfVHGYkjtbrEIXiSF6jmuEjWy5hUisEd3
 Mo7glQ+8H5q3aaptBsBgrOKcyZoZ596KJiz3lV9SYRpWfxNey2AXYAhCR4YSM6ExV8xq
 OwkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6rU2ZvHsnSzYwMs7Z05xUbhf11jabY6wDKJCR5AZiJ8=;
 b=ZaI2R85WPX1yeWlGOPcsrRnxTsQ3418eCHyvEo3/AbB8zNk0GWwvx9IA28owM5FceD
 SyQ6FIRxry4NQrK7VGzItSq3n0mLy05Owv8kNdBXZctCMvzEuZMpQlZO/AyPB8Kaqn70
 tYB2CDmNrufNdIG6yBZQNBtRqOHWEUpabroyPDVWIRsoKsA6xRF5MkORRTxf8J/0Z0fE
 jnfSSOvsHrKYnT/xjKXlio8C49VK8XKJ/xdtM2B7hnab3/AfWVqCuPL8ZxXWnx0A5DcF
 794q79AYEyBdK+bq2gPlEj+/sqXwzkTKZlOhcePXacbAFA3rzDcnJBPxvgu2BIelTJd6
 Y0gQ==
X-Gm-Message-State: APjAAAWiQqCgp/CnFAsn6HIml5f+Xn24hFzNHmiAnWexmn7rxB2ZPfSC
 4/IZgv7kUVzpaz4jKCLDgzaTwA==
X-Google-Smtp-Source: APXvYqwwS5sB68lbDlyVrgeTCJ16HYifOS/3Hk6LpNS+0KYfnvpq3hykK4GUDY5gN7r2/bWGXWlThQ==
X-Received: by 2002:a63:4547:: with SMTP id u7mr12360882pgk.423.1574959809102; 
 Thu, 28 Nov 2019 08:50:09 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id a15sm2450343pfh.169.2019.11.28.08.50.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 08:50:08 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19][PATCH 05/17] hwrng: stm32 - fix unbalanced
 pm_runtime_enable
Date: Thu, 28 Nov 2019 09:49:50 -0700
Message-Id: <20191128165002.6234-6-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191128165002.6234-1-mathieu.poirier@linaro.org>
References: <20191128165002.6234-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_085011_128919_C173A254 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lionel Debieve <lionel.debieve@st.com>

commit af0d4442dd6813de6e77309063beb064fa8e89ae upstream

No remove function implemented yet in the driver.
Without remove function, the pm_runtime implementation
complains when removing and probing again the driver.

Signed-off-by: Lionel Debieve <lionel.debieve@st.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Cc: stable <stable@vger.kernel.org> # 4.19
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/char/hw_random/stm32-rng.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/char/hw_random/stm32-rng.c b/drivers/char/hw_random/stm32-rng.c
index 042860d97b15..37b338a76ba4 100644
--- a/drivers/char/hw_random/stm32-rng.c
+++ b/drivers/char/hw_random/stm32-rng.c
@@ -169,6 +169,13 @@ static int stm32_rng_probe(struct platform_device *ofdev)
 	return devm_hwrng_register(dev, &priv->rng);
 }
 
+static int stm32_rng_remove(struct platform_device *ofdev)
+{
+	pm_runtime_disable(&ofdev->dev);
+
+	return 0;
+}
+
 #ifdef CONFIG_PM
 static int stm32_rng_runtime_suspend(struct device *dev)
 {
@@ -210,6 +217,7 @@ static struct platform_driver stm32_rng_driver = {
 		.of_match_table = stm32_rng_match,
 	},
 	.probe = stm32_rng_probe,
+	.remove = stm32_rng_remove,
 };
 
 module_platform_driver(stm32_rng_driver);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
