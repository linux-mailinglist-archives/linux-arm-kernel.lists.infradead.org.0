Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D885C3A11F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 20:08:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xXB8msWbICpXpV8F+sTn4/0HQBnSHQZlYaBLvIQrcJ8=; b=o1fwHvKv3WvXRD
	03mCs0nA7CHNBO+C3hVhYCKQronwe21NUTp9HWlpZMzYOo8rIAcWlDarFebebtqD/DpRusRA5d6VY
	SlQ7mA6yJUjBd+yFX22dE1NzGOP4i+DPjSMIdRaRsrGSs7V30lbPpLD5BbFnH6zVc1+AA+pdmqOwH
	yHplsMiCUfEDlTxIXcpSSn30x3aI7X8uRo4h+ug/a3I53xRVbiNWkX7YyP2mrKiuKvwu2b+icIydn
	O/IckDiaulNx86e/SwREzS87y+4tz2dYiqVaIQS3XiW+dmgN1GhIWquvfZjdw1o48IfKqODopEVal
	PxxyZNzJGarTpVrhPaRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZflP-000260-GI; Sat, 08 Jun 2019 18:08:23 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZfjk-0000lS-1s; Sat, 08 Jun 2019 18:06:41 +0000
Received: by mail-wm1-x342.google.com with SMTP id h19so6231218wme.0;
 Sat, 08 Jun 2019 11:06:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rd/V19A4tSe1xba1SSV3IvSkkngIMc8S68pgolsK8gQ=;
 b=SGwW5Qi1PzRumMlS2QqA1j7twYoUlovyZOMWknzDn6pTP82HtWJ/uWCOPFFY5efuii
 mldnIc38SrCgMBVVcFztt9gliqC7yT8waUWd+5PUYUkxcNRESshBHykogWpLcK/7oQwf
 tLufn2777HA1t+shj1qLcVYNZ8Y9TaxQ+RDm0nQXWyz8InSesskey0ficmQ8msPq/WJV
 /Q8YiM41p5ThKp6nM3+Y4Hn5pXdvl1p7g7AsUQLtiDGuD9i88IWVkmliGoWkAiN6IV9q
 V2ff8upHjPtccfR2sAsdb1ZXTm742aJ/8QvcVbP5OTjmIxeJAV8dwRz7mkCA8zB3zHYX
 dhxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rd/V19A4tSe1xba1SSV3IvSkkngIMc8S68pgolsK8gQ=;
 b=Hg0Vi4gT+Q90SjhGzG27BBwJR7WNUwBT6YiwQGclxwTSWgLjV2PvrdUI4HCu8nzFI5
 qXyus5S1VZN9L+COe+DBdJSxIdTqbYDX8+T5vvnzD3j3ONtV3ac7nkRHJqXvYJRg/yVB
 Lmj7Iu8esVoZsUa6ps1AwY8Vmas826Xf/9Bh5C9cTY3pGDTrB9cKmjspG9qox5WaPtdY
 t4wp5sEGdh3QgVh9f4FJQ6wE5+yubxiDrDWGePAgUn09zofcl9lU63DkMHQDLc7Q7Xtu
 T+ws9mqX3NW0zoI+QpjC5RYbFhdcnobTHP8dfYmuyUwYfPC+wc9F5iCqNS6OFc7oNxdB
 aN/Q==
X-Gm-Message-State: APjAAAV+VQoj9OGyark9TomIdFT9JhqBWaDe5vf40WbpOZgPnKIopWzS
 P+sCXDB/yrTZTncLIpy5tDuNGycj
X-Google-Smtp-Source: APXvYqzfJ3Inv2tkqe5fNSbVH0w39sIKZ3WEIMfS5tKr2+3pHXqvYD+oKzvYSwXsaNvRbuHQh1DYSw==
X-Received: by 2002:a1c:39d6:: with SMTP id g205mr7273666wma.85.1560017197987; 
 Sat, 08 Jun 2019 11:06:37 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA400D12EFF43FED1E981.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:d12e:ff43:fed1:e981])
 by smtp.googlemail.com with ESMTPSA id c7sm5143345wrp.57.2019.06.08.11.06.36
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 08 Jun 2019 11:06:37 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org,
 thierry.reding@gmail.com
Subject: [PATCH v2 04/14] pwm: meson: change MISC_CLK_SEL_WIDTH to
 MISC_CLK_SEL_MASK
Date: Sat,  8 Jun 2019 20:06:16 +0200
Message-Id: <20190608180626.30589-5-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190608180626.30589-1-martin.blumenstingl@googlemail.com>
References: <20190608180626.30589-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_110640_133168_479F5165 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, u.kleine-koenig@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MISC_CLK_SEL_WIDTH is only used in one place where it's converted into
a bit-mask. Rename and change the macro to be a bit-mask so that
conversion is not needed anymore. No functional changes intended.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/pwm/pwm-meson.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pwm/pwm-meson.c b/drivers/pwm/pwm-meson.c
index c62a3ac924d0..84b28ba0f903 100644
--- a/drivers/pwm/pwm-meson.c
+++ b/drivers/pwm/pwm-meson.c
@@ -33,7 +33,7 @@
 #define MISC_A_CLK_DIV_SHIFT	8
 #define MISC_B_CLK_SEL_SHIFT	6
 #define MISC_A_CLK_SEL_SHIFT	4
-#define MISC_CLK_SEL_WIDTH	2
+#define MISC_CLK_SEL_MASK	0x3
 #define MISC_B_EN		BIT(1)
 #define MISC_A_EN		BIT(0)
 
@@ -463,7 +463,7 @@ static int meson_pwm_init_channels(struct meson_pwm *meson,
 
 		channel->mux.reg = meson->base + REG_MISC_AB;
 		channel->mux.shift = mux_reg_shifts[i];
-		channel->mux.mask = BIT(MISC_CLK_SEL_WIDTH) - 1;
+		channel->mux.mask = MISC_CLK_SEL_MASK;
 		channel->mux.flags = 0;
 		channel->mux.lock = &meson->lock;
 		channel->mux.table = NULL;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
