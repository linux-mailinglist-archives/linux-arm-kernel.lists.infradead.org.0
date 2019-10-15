Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE106D7DCD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 19:30:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=o0g2yWNB/LhLOEJwZz+ALHGsHugDEGxDR3GhVcNcQG0=; b=iRr
	3417n3FxBGETJCEMa23mp4Dzdj441Ot3dtNSTrXpc/xuoYHPebIYJ8D1l5m9+zRqp6R/+HZlaAeOA
	VlX/RywUs7XxbKJWE7VZ4Y/3/dL9+4ZdCueFFtlin+nzuFwZZhN90qZ1PEJTsgvy5RXqVzhjht9h7
	qlPwvbraNAJOEohftwutBUVCIRBUyGzftD2PZHmalLoLLECvAZM9S6jmdstsU8xiOYiy4/1HfJMag
	S41CQuTF0kaRvHq0vs1i+4sYOFZG+CNKyAvA2Fg/bnd4tput/rgbyFqerPlM6Wt0BFPMPxSEBY43z
	U9Io226fNEzMyW8vfZrQMVWlTmSItGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQer-00067d-W8; Tue, 15 Oct 2019 17:30:54 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQee-00066Y-QA
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 17:30:42 +0000
Received: by mail-pg1-x542.google.com with SMTP id k20so5200782pgi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 10:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=qGTmzDxe583R/v3aUC27S2QW45EmLA5xRgdHBmdZQi8=;
 b=DONTslugMGlqg9iBy9hmK9+7DEX/oNOpdshb8MJixifpM3883pIwAXkZJP1899eOOe
 csSfbo+FfCUiV+kVq7hiQ6pfbD6C87oLMXyDBdhV1/GSBdsQlOFUXMCGmLBgSxaz8gVO
 aq5UY0uVYcnU2VSFQ6oY4dt8Tp8J1z42id9np5S3hIk0vE1uwM3DsdKmQW1R/7aLH8jG
 q0S2ackCH3BX/uK8e8Yuc1GGllaGYLaTzYn9Koq29PK7q2/q3L2zUh7SxdkvQU/6ZEXI
 I6iu/jFbMxnwHYX1qP1OeSzoTYe0Sdg3Dnx8IWPp3RvJj1kQ4gTKKM6YsmrjLX56IHwk
 PeAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=qGTmzDxe583R/v3aUC27S2QW45EmLA5xRgdHBmdZQi8=;
 b=ZobIc0YCbAtTbV89kxy7FEjlyglWiAY8h7YznmBmgHrrdcLHHXibcR9FeWGCf5mnc5
 2Ls81CoHL4DaV5gMJ+86vC7pPm7DooPl8/RhE+gx/Y0JYNCKkeqpaiNr57fYRvHWJ46y
 j2XQYR20O8jU/npI5C3qMKBZTJPJ0kqDz5fKrI2xvbxU9aav+JKi5WXXbQqEfXIztJro
 BXWQpLlifnObSwHPjcXRUAQ15iHGrrXxmnltPv9eLw6ETNjIO9XakvZCEltR9GF1Q9KY
 9l4FRFloGnsivMJVb+KcssT/ivZ0X/O38Hb8bv6l8npWes1mTZz5yJIzGh5xLYa0i1tf
 729w==
X-Gm-Message-State: APjAAAUl/HNykbqJDFN9H2zd9GttJXKgec5xY8u32e9NUpTVnAamN5uS
 k+1yWaubsnm3j9/27Nq85QZE
X-Google-Smtp-Source: APXvYqwu/2hvE2QpunG0Cb+S5rWtvqa1YDgqbHA1dUUgRwBSbSv1CfKKSL1Lqvwq3gQUc0UEbDlZjw==
X-Received: by 2002:a63:1f52:: with SMTP id q18mr40306261pgm.35.1571160639901; 
 Tue, 15 Oct 2019 10:30:39 -0700 (PDT)
Received: from localhost.localdomain
 ([2409:4072:6003:7cb8:25e8:2c45:fab2:b0c7])
 by smtp.gmail.com with ESMTPSA id w11sm28033563pfd.116.2019.10.15.10.30.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 10:30:39 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: linus.walleij@linaro.org,
	bgolaszewski@baylibre.com
Subject: [PATCH v2 0/4] Add GPIO support for RDA8810PL SoC
Date: Tue, 15 Oct 2019 23:00:22 +0530
Message-Id: <20191015173026.9962-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_103040_870125_15D3573C 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-unisoc@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, orsonzhai@gmail.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This patchset adds GPIO controller support for RDA Micro RDA8810PL
SoC. This SoC has 4 GPIO controllers and each handles 32 GPIOs. Except
GPIOC, all controllers are capable of generating edge/level interrupts
from first 8 GPIO lines. The pinctrl part for this SoC will be added
later.

This driver has been validated on 96Boards OrangePi i96 board from
Shenzhen Xunlong Software Co.,Limited with libgpiod.

Thanks,
Mani

Changes in v2:

As per the review by Bartosz:

* Dropped the not implemented gpio_request/free callbacks.
* Used device_* helper to fetch ngpios.

Manivannan Sadhasivam (4):
  dt-bindings: gpio: Add devicetree binding for RDA Micro GPIO
    controller
  ARM: dts: Add RDA8810PL GPIO controllers
  gpio: Add RDA Micro GPIO controller support
  MAINTAINERS: Add entry for RDA Micro GPIO driver and binding

 .../devicetree/bindings/gpio/gpio-rda.yaml    |  50 +++
 MAINTAINERS                                   |   2 +
 arch/arm/boot/dts/rda8810pl.dtsi              |  48 +++
 drivers/gpio/Kconfig                          |   8 +
 drivers/gpio/Makefile                         |   1 +
 drivers/gpio/gpio-rda.c                       | 315 ++++++++++++++++++
 6 files changed, 424 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/gpio-rda.yaml
 create mode 100644 drivers/gpio/gpio-rda.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
