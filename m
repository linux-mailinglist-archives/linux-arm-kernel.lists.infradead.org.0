Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FF57CE82
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 22:30:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+WGjPUmlA+iVVKXi2ijAk6smAxd+cpXbDlLdrEZ6vdA=; b=ppHd7Fd82MHRE1
	l0izOGJZ1va4p1XrLI6OL61OsQm2taLrL4AXr0cjG+dRvetIbD8R30GlRCMtlddkB67kMAM09c18g
	7T1E9H4GQtnYG3D63VLrU6mZCnp+PebNlOAZWnjnGaN6sQTzHiq9K6wyYBNnd2coZ0ZsCQVbHChom
	Rs3mjB/uLu/o3TR0WleZD3RnXNC2wDgYPdculmErv1VJfh3V/5V8p/QUCLrvJcKz0cRLkgclQlZAb
	PuVsYDfcrdBVeb3SeNzU0dZahEh9Oq35prxoORYJmM50t7XsAVEtpicDculCF/dIqxW38WUjaupX1
	MPU8SDVIZ0PRZpucfrEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsvF0-0004lG-2E; Wed, 31 Jul 2019 20:30:30 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsvED-0002pd-Me
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 20:29:43 +0000
Received: by mail-wr1-x441.google.com with SMTP id g17so71075646wrr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 13:29:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NEmCczScxOjFfK/GsZ795dKDEuO/wf3t9hNmpIlsOQI=;
 b=hVxBbGLxp9nBG9Wcv2HdfdMCNV32nrL7qr4oIHv6YAjNjZuP6DD7+KIkdTr3G8XtqO
 GNfKrWRdzVaTPUf5iYS1UPRE/b4fb4iv04MkxPSmoUA0Qw2D0hlnABROeUOEuf6tDQz+
 9DktQ0M6HjCpCmqYB+ilZfaERcLvPYmt/rjB1UHqD96XuhqohGRjIF/a1JUudwTqWwXv
 TQu64FrrknFGTgJpdR3Oe/fzOxiDv2ra9nXAUPJy1E7gy1TUrRJyeloZtEQvehEw91iy
 VeXRmgeRYNM71OCIf8j5Ofbm3Wmyz0+QgG6zvUHiSaOM46hQ3PZZV+0YnB2SwWPiNVa7
 3UTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NEmCczScxOjFfK/GsZ795dKDEuO/wf3t9hNmpIlsOQI=;
 b=OKo9V8+klW2YSzIM7t3ZY6iq4Wj/BVvx9d63Z6rXx2a9gwrRw25ABO6BstX7OIkHQo
 nhoINNcu9EBNvoGh1Mi+In+xK1Zh9nvdJjHGoj3ou1gbTutABs6KhQfjnWpKO36eoIJa
 D3OJMtr+qVYnrOoYwWhcpeBW5sUjdA5lkPiBXIuTqg7wrUNtvAd5j4fGO+LTOAuUXZ8z
 GjDdvfmdLVaNOHYK8KzsTXO/RkQU0WARM6xrZlOlwmEbGCxprmy5Jzub04iFbhZGeYev
 YfmoTDy4GIrXtDEbnnyRUjHqPwPQj0whWIZvRO1hcNEHmhsT461s7A8ZqN8CKvGl88DJ
 q9FQ==
X-Gm-Message-State: APjAAAXV9sKJiBWFnVu2fsqL1X5+hZajc8L8VruaMI5OFcDRYS0lMy0X
 Li9504mDOnUEGdC/Hp/LTJ0/mA==
X-Google-Smtp-Source: APXvYqwxqNh76ilAXBl0acEjqmK4eWnyg7XTy6i4qt2w/M1m7vLbwwMLhIUJnvXnxMJ7Mj1hB0zAVQ==
X-Received: by 2002:adf:e444:: with SMTP id t4mr34971356wrm.262.1564604980079; 
 Wed, 31 Jul 2019 13:29:40 -0700 (PDT)
Received: from localhost.localdomain
 (19.red-176-86-136.dynamicip.rima-tde.net. [176.86.136.19])
 by smtp.gmail.com with ESMTPSA id i18sm91905591wrp.91.2019.07.31.13.29.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 31 Jul 2019 13:29:39 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To: jorge.ramirez-ortiz@linaro.org, bjorn.andersson@linaro.org,
 sboyd@kernel.org, david.brown@linaro.org, jassisinghbrar@gmail.com,
 mark.rutland@arm.com, mturquette@baylibre.com, robh+dt@kernel.org,
 will.deacon@arm.com, arnd@arndb.de, horms+renesas@verge.net.au,
 heiko@sntech.de, sibis@codeaurora.org, enric.balletbo@collabora.com,
 jagan@amarulasolutions.com, olof@lixom.net
Subject: [PATCH v4 03/13] mbox: qcom: replace integer with valid macro
Date: Wed, 31 Jul 2019 22:29:19 +0200
Message-Id: <20190731202929.16443-4-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731202929.16443-1-jorge.ramirez-ortiz@linaro.org>
References: <20190731202929.16443-1-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_132941_747017_4DFC448C 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 khasim.mohammed@linaro.org, linux-kernel@vger.kernel.org,
 amit.kucheria@linaro.org, linux-clk@vger.kernel.org, vkoul@kernel.org,
 niklas.cassel@linaro.org, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the correct macro when registering the platform device.

Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/mailbox/qcom-apcs-ipc-mailbox.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mailbox/qcom-apcs-ipc-mailbox.c b/drivers/mailbox/qcom-apcs-ipc-mailbox.c
index 76e1ad433b3f..dc198802bdf7 100644
--- a/drivers/mailbox/qcom-apcs-ipc-mailbox.c
+++ b/drivers/mailbox/qcom-apcs-ipc-mailbox.c
@@ -96,7 +96,8 @@ static int qcom_apcs_ipc_probe(struct platform_device *pdev)
 
 		apcs->clk = platform_device_register_data(&pdev->dev,
 							  "qcom-apcs-msm8916-clk",
-							  -1, NULL, 0);
+							  PLATFORM_DEVID_NONE,
+							  NULL, 0);
 		if (IS_ERR(apcs->clk))
 			dev_err(&pdev->dev, "failed to register APCS clk\n");
 	}
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
