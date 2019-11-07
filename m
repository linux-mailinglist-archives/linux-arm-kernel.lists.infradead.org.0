Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC953F396E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 21:18:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VpQXalIRCBVToNgzheW8ZkGgrDBz2RpgFjT/H0ZiRWo=; b=HGSDW3r2Ft1aqz
	MHGQTz45e/BXgPmz8BLJKIorrHLq/dFwmAGCyzKwwaisVa4oqvuse3SJO4uKz0QxmmbJ+/b08ycJj
	4XPfyI3zAntyDDMZmdbihfdooQxwunW+XxXSAlRCPjR4iWeM5MY1HqXmtQrIXW7LYHsKUHXcVUidL
	EvYWbDS+lo+v7BnN3+fW9Si0PXSkv/e5Cs/hyeZPQe2fnD1C3qo+lhXRY/IpPmFA9+Us8HM2v+Jbx
	kGd6A9gAU5jsRcTa3xDJsXfXlA7dku1fJ9z4t4rjirynpp7x8peQJi5X9d9YcAlu8xXnpsH32arAq
	i+cdy9R7Kh3VfQU0aa7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSoEj-0007QR-G6; Thu, 07 Nov 2019 20:18:33 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSoDQ-0006Bw-SE
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 20:17:14 +0000
Received: by mail-wr1-x443.google.com with SMTP id w30so4621667wra.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 12:17:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3uEMTSxEwniG+GI3vykJ+eUgrkWCmr3tUv0pvMyZgIw=;
 b=VMo/N9HXGvfK31zXdC8J2efmeCXAZkgd9zzvtP9wLfazNjTmQHu5mCxVmhzk+xVbJ2
 PElhp2IzkNIWL3VvKbPcnJseKL5qCfNjPwQm+zvKVq3Mqw43lbPrXdw8jX0LMjCJSdlY
 zr7DvqEbY78cydYhsAj4vHnqc5av7McswfE+2rncbpr8CnTxym0NjhC+hPh4lpcrjicP
 Ehdk8okBRdiOyQ1GZzVGaO8j6EwKaRwFc9yn7B/GOwQupIpPsWFOIf0Khecen5Z0Cp9m
 7ZfCiLf3MJ9u5rViwxfWnhzbMI5yVitvyKlAEWxiaPSGmGbzdVZARRFWKjMqV5Bhn4LA
 xQmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3uEMTSxEwniG+GI3vykJ+eUgrkWCmr3tUv0pvMyZgIw=;
 b=sbTYO2xfoUfMdz7APCNyBiR8Oc7t1ed2SlQxLvM03++9PTz9BdvKBEcQqVFqVtit/X
 j31Ppk7dvCL8TGvg5lk7cqfIBb1ldpy/MuHRJuWFIMLz2biToAjnGXlAWbeODScD5FCL
 O0cHDyuKB5IkSpN7/qK+I+xHa/qgNmwvMWe26tlDIRrj/lhoo7FlOyqx/EOzxUYGLRAq
 1+wHocfuhi1qhd9lYRBR4B/BSWQUnrSvrwnm8rrbV/gk66AINfivT+Zeuu2wjsMGq/iC
 2mUlP0asjECmqzlxBs0J/pAmxSZ/40SIxCdONxPN3a2o4ZHZm3hRvhw9diAYTt6F3IzZ
 tdRg==
X-Gm-Message-State: APjAAAWnYzHRIEhXt9W8EqfQkHBvwCAZD1zJ44ACuhGdsSZYTpvVJf5O
 FGcDTO8CEzemaqLVn+XRyHj5Kg==
X-Google-Smtp-Source: APXvYqzkgWzz7JMVKWkHPJp5xKneWHyHnj7XSWrSU92m+gh5RkyIUCHAYpZ3DNuAFNOu8sHi1U60Ag==
X-Received: by 2002:adf:e544:: with SMTP id z4mr5081381wrm.6.1573157831475;
 Thu, 07 Nov 2019 12:17:11 -0800 (PST)
Received: from localhost.localdomain ([95.147.198.88])
 by smtp.gmail.com with ESMTPSA id d11sm3215162wrn.28.2019.11.07.12.17.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 12:17:10 -0800 (PST)
From: Lee Jones <lee.jones@linaro.org>
To: gregkh@google.com
Subject: [PATCH 06/10] ARM: davinci: da850-evm: call
 regulator_has_full_constraints()
Date: Thu,  7 Nov 2019 20:16:58 +0000
Message-Id: <20191107201702.27023-6-lee.jones@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191107201702.27023-1-lee.jones@linaro.org>
References: <20191107201702.27023-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_121712_946762_BBBF4D5E 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

[ Upstream commit 0c0c9b5753cd04601b17de09da1ed2885a3b42fe ]

The BB expander at 0x21 i2c bus 1 fails to probe on da850-evm because
the board doesn't set has_full_constraints to true in the regulator
API.

Call regulator_has_full_constraints() at the end of board registration
just like we do in da850-lcdk and da830-evm.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Signed-off-by: Sekhar Nori <nsekhar@ti.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
Signed-off-by: Lee Jones <lee.jones@linaro.org>
Change-Id: I02d04d302a679996b88868ddb289fc5185f53fa4
---
 arch/arm/mach-davinci/board-da850-evm.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-davinci/board-da850-evm.c b/arch/arm/mach-davinci/board-da850-evm.c
index 83f579add9e4..85fbf14b956a 100644
--- a/arch/arm/mach-davinci/board-da850-evm.c
+++ b/arch/arm/mach-davinci/board-da850-evm.c
@@ -1482,6 +1482,8 @@ static __init void da850_evm_init(void)
 	if (ret)
 		pr_warn("%s: dsp/rproc registration failed: %d\n",
 			__func__, ret);
+
+	regulator_has_full_constraints();
 }
 
 #ifdef CONFIG_SERIAL_8250_CONSOLE
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
