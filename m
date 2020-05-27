Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E35981E3FFB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 13:27:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P+z5NJCzmFmcGpZ7AXlFLrb+m7Di47qAe8kL8+EYh2A=; b=ujnGCevlIJsOrx
	HSMQNIhN7gyaQAI69tCwsia/CbLyW9kXVv1aiOs/da9d00KbX/6qxBNVYss4uCsuFV6Mwa+ztsLZi
	jNDlb7+VMCvKpAtEM3+G0NinWMyR2BY4/rMtr4tS+8Qx0Anv4Io8yMHAnrf/Jfvr62qamEawQxFqh
	KADCfNwgmkO2kCDmVwTnOjtemMK7han1aG/vdQ+CEAyJjhKuxJbDr21+CjlzNha8c0rar9YTZZzOj
	WENtZsToAPtY90UCZdEftD+uzyzRyhwTWoxuuzUSVuij4nzUZJM860p4Ab7XE2JQCuVzjlW+XiTn0
	JFiG4gIVYL2azHXGEOHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jduDD-0003zT-Mi; Wed, 27 May 2020 11:27:07 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jduCV-0003ad-E7
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 11:26:24 +0000
Received: by mail-lj1-x243.google.com with SMTP id m12so26039521ljc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 04:26:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7JrgKFknWam4V1fZqyMtAvJglLBt+OuycTcodKNrhfA=;
 b=vXBWyVt9KfxvraiQX+TBkoR9fkLxC6dAcjgqDC8FPB8Eg5T0vCu3hFkF7mrPDmGH3+
 B8sK9h5OmF3hTDadQ/boUYw+M60ietj/qXOgyJsslTPI/qJK8r9mWyxG2uPL3tC3EPGo
 9OKSyfA3fDQGAvb8q3XLuZGH5rY/VSeDCgpjjTGyhJ7k+KrmPnEaPf3uF6AUYWQGMauo
 dl9FMEIA/nAFX3bS2PqWq+9j+UTxtt5BWFBimT+d8KxcUc3CDwP7O7YQdUivztrgny63
 Q1FfDh9V8pUOvvddTYTtExzVL+81dSlazBBOL7SOK4pkp+mrC31giVsP5cUZBYfs1/1y
 Ea2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7JrgKFknWam4V1fZqyMtAvJglLBt+OuycTcodKNrhfA=;
 b=JCliWoEVyeBirlvdloN8gsN0UChk1ZHz8hF3CH3EDQVzi167Z0+kzV88y+AJ95FhjP
 LWhIlh09sbnWEn8TxvXWuhQpevyzS78RR8WWMPvNzPQUjcU5NN5ZNCCkyeVVTZAgt8W7
 WsEqbMQ2QzIDpkrTXWRNLMfP8kkzSiv4je1vbBJOSKHJ5bplpmHL6mrlOQtcXA2hhhN7
 2jzr7r/e31Ny7+n2uvxZs0/jNIrej2YyyQl/x+h8cz5JuwPzZV8y0clhVvBaUO42ct7u
 AkIyv2jWHMYfPVIs12PhYat+x158/YxN6aoegMW9H0OiNwNXWPI/keaxCULs9/JfkbAG
 iYHw==
X-Gm-Message-State: AOAM531IIWQVR/bu5ZKHfb9JQS1WVn86WiYV6QAkwfxL+pKKMBBvaSO1
 VfXghwmIAGZRbxhP07vY2cNosQ==
X-Google-Smtp-Source: ABdhPJynCQiy7HTZrLhL1W88TFn9lXdsTehxo3xi0Uzt9bQLsp1sbAhmLpjUyAhmBW+kLMsahCt4xg==
X-Received: by 2002:a2e:9b89:: with SMTP id z9mr2653117lji.51.1590578781833;
 Wed, 27 May 2020 04:26:21 -0700 (PDT)
Received: from localhost (c-8c28e555.07-21-73746f28.bbcust.telenor.se.
 [85.229.40.140])
 by smtp.gmail.com with ESMTPSA id c4sm844304lfj.9.2020.05.27.04.26.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 04:26:21 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: soc@kernel.org
Subject: [PATCH 2/5] power: vexpress: cleanup: use builtin_platform_driver
Date: Wed, 27 May 2020 13:26:05 +0200
Message-Id: <20200527112608.3886105-3-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527112608.3886105-1-anders.roxell@linaro.org>
References: <20200527112608.3886105-1-anders.roxell@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_042623_527738_3A2C35C2 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: robh@kernel.org, linus.walleij@linaro.org,
 Anders Roxell <anders.roxell@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the helper macro for builtin drivers taht don't do anything special
in driver init. This removes some boilerplate code.

Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 drivers/power/reset/vexpress-poweroff.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/power/reset/vexpress-poweroff.c b/drivers/power/reset/vexpress-poweroff.c
index 0bf9ab8653ae..1fdbcbd95fc2 100644
--- a/drivers/power/reset/vexpress-poweroff.c
+++ b/drivers/power/reset/vexpress-poweroff.c
@@ -146,9 +146,4 @@ static struct platform_driver vexpress_reset_driver = {
 		.suppress_bind_attrs = true,
 	},
 };
-
-static int __init vexpress_reset_init(void)
-{
-	return platform_driver_register(&vexpress_reset_driver);
-}
-device_initcall(vexpress_reset_init);
+builtin_platform_driver(vexpress_reset_driver);
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
