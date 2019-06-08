Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA023A1C8
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 21:55:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7Ep00HVOiWlk3vqx2WDEKX2q2JCQGbwM2PYqxD2XCZU=; b=e4AwEUKjtE/eoFVypNGE/OhkPB
	wyd5LATWly/eviebjwmb+pbiPcWv7gAKZ+Vt3VlUKcpeHP19HILZvSMh5Q8xkhNJG3lMAZ6haMyAu
	AbLH/IlxOtTg0dWeJzMBZ82VpoqyqmkkuIh37PCIH3F3FR0ROP0NNhnzUY173ZNMCjpxVxsmhcO16
	Jf54RydfgHDN0b+EjBzCqvksfgTR43IrfQlhaGJa0t1T47g8BcTRHnkohjPefE+k0fSn+0WLuJWIM
	wbNFmFvv6zR0rptyXY29AIXb16rJdkaq5JgF0AMYK6mqZIU5ehkmqKE32jOvbgzuQ5ijjWdKL1VAV
	fw0HHTGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZhRQ-0001kH-Fx; Sat, 08 Jun 2019 19:55:52 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZhQ5-000887-2E
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 19:54:30 +0000
Received: by mail-pl1-x642.google.com with SMTP id p1so2098789plo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 08 Jun 2019 12:54:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=z5WHqJ8Fzw0bLjHWu2ZZmuc6AhtNWBY/uQTUMnQbyWo=;
 b=Ba535L8wbJ45E6Pae8SeGkfTmpEH/+2lOqsn8SoeaY23GU040FksWz55StUbKM0SwV
 ZYPlfE8zGiwEh2Yl2FMO+gzvyRCJe7Yeg+iz0g5WEVGSS3lUXAt4r6qeYJRy3u0QSkcK
 uJhMAk+DAKXrdXWRz5pc74uVsKATw+tBQMP1yK1nHaYMZ6xOShY59p+JZgv6L3vOJTBi
 q3nToDBh9aZRzQ8RJ9zzTgatOE7MHaiECSTqHv7oxqo2yCyBMDWbbPQnLHoGZsztUjfY
 jlY9YvRb6AFmo2JOvaCbkt7YSh4xoNT3hK1ITerw+YcBvZvMOdMm10P3psGkZ1Hthzbq
 ykag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=z5WHqJ8Fzw0bLjHWu2ZZmuc6AhtNWBY/uQTUMnQbyWo=;
 b=gHLFDA00MGkci28d/pd+Wo+cE9WTw+mIcwSk1a72lQ8zEYv2yqjerwyJiD2nSspFft
 3yji0A+wmW95pMq1gnH4J0kQFtQ+uW9tM/q7Sl/B8ziegi17L798XGLOLEVVp3/oQHAu
 PDOYeyZ78ZbavvyKLY9ToZvh8Lg+E8Gp/qFzGl/LKQEhV+dCjrHK73jP/DEe36aaKTzC
 iCA1dYXHv3L2zJP8X+b6DfdENAwGXtIMI6l2Y91/4gm8nf5rsE/P+XNekNSaHVbPiO4n
 9pxx5RxLOlQZEVVP72Gz+Lycs5xDjqFFgEe020IlBinvoHe29fk1Aeud8/LivHC19A2H
 jD0Q==
X-Gm-Message-State: APjAAAVnoP04e+8a1wRz4bLbL5zq6XNx2zmeaEqk24jOGcbytcyX+ZfE
 IAGVJUKUlrqpB2/i07E/SxOq
X-Google-Smtp-Source: APXvYqwTqdeZ5OauUqUnPMlacVgE3gDJQ/PQSBO0zbJlKGD1m8c/CAFA+tUjoxTqoIycJ324ulVhjA==
X-Received: by 2002:a17:902:2be8:: with SMTP id
 l95mr58590534plb.231.1560023668462; 
 Sat, 08 Jun 2019 12:54:28 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7185:fba9:ec1e:ad07:23ac:d3ee])
 by smtp.gmail.com with ESMTPSA id b35sm6034377pjc.15.2019.06.08.12.54.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 Jun 2019 12:54:27 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: ulf.hansson@linaro.org, afaerber@suse.de, robh+dt@kernel.org,
 sboyd@kernel.org
Subject: [PATCH 6/7] MAINTAINERS: Add entry for Actions Semi SD/MMC driver and
 binding
Date: Sun,  9 Jun 2019 01:23:16 +0530
Message-Id: <20190608195317.6336-7-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190608195317.6336-1-manivannan.sadhasivam@linaro.org>
References: <20190608195317.6336-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_125429_161762_60753012 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linus.walleij@linaro.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, thomas.liau@actions-semi.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add MAINTAINERS entry for Actions Semi SD/MMC driver with its binding.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index a6954776a37e..11d6937c4688 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1336,6 +1336,7 @@ F:	drivers/clk/actions/
 F:	drivers/clocksource/timer-owl*
 F:	drivers/dma/owl-dma.c
 F:	drivers/i2c/busses/i2c-owl.c
+F:	drivers/mmc/host/owl-mmc.c
 F:	drivers/pinctrl/actions/*
 F:	drivers/soc/actions/
 F:	include/dt-bindings/power/owl-*
@@ -1344,6 +1345,7 @@ F:	Documentation/devicetree/bindings/arm/actions.txt
 F:	Documentation/devicetree/bindings/clock/actions,owl-cmu.txt
 F:	Documentation/devicetree/bindings/dma/owl-dma.txt
 F:	Documentation/devicetree/bindings/i2c/i2c-owl.txt
+F:	Documentation/devicetree/bindings/mmc/owl-mmc.txt
 F:	Documentation/devicetree/bindings/pinctrl/actions,s900-pinctrl.txt
 F:	Documentation/devicetree/bindings/power/actions,owl-sps.txt
 F:	Documentation/devicetree/bindings/timer/actions,owl-timer.txt
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
