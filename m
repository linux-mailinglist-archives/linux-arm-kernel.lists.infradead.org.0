Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 898C7D55DE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 13:41:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zDUXBjtiaEeCBAuAJi5r+HEc0tC/o9cobTop8FkJ5Y0=; b=qR4
	akfGk5SdxyMrocMPTq0XYRYXPzWXWULU+gD6WALu8NkO+Ki5SfUAxLeBtrC7txLaVsruo8VDxUlsQ
	Hf5GVsm6kKQ1U/lzqAvHQ/hrb14ICXshQvW8LQ88njkxk0KiYlnSnRfIWiTN7TsqbpYnxElBfj5TN
	IaALCzZ26wu9vn9qUHKouNvuVwFDtEORLUJ01klND7iZZ5B0LKE3hhOTbvXawfRRl0sesSNkq+28G
	pbpQAW2jYSNpjxVYZs9zU2LwTexUB6R4bEwUvSzk8MmZMJMU3+4lZ9jYsNFmSuXAa/sMpPW5uz0Rc
	MSF5vqT+VvkGKGDIy9K+zbYYaUqTTdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJcFG-0006qu-2B; Sun, 13 Oct 2019 11:41:06 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJcF0-0006pT-VT
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 11:40:53 +0000
Received: by mail-pg1-x542.google.com with SMTP id e10so4432692pgd.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 13 Oct 2019 04:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=JJesClvZPI57LiKAGH+mfL4LvGX/K6XZEsgwxovyzfw=;
 b=uhxJhoaSSS5T1/0ebEMzWzw7K6b7OXDjdOgSIcbOIkJTJ0I81TmRPxdNTiOG0AQe7o
 lyjnfkJkE4PAOv5uaLWlBGxOZpdnxbKuRWc1Yw/LNOHo5P6zYTue7Lmu60CvUG0Ihzwf
 Aol58rW3yf+M7+tDeNidJ5FFuGM3hQ1iV7C+lziFhbIUs3iTzjmGegkZnOVt9d6tlY/b
 k+3eJAroNZ3EPIbDVHt05eCeNLhSJ75acTNxMLeBhMa5/KqctdGSZkYzyPCPy+DD6A0s
 xn1cBT/dZ9lEl9j46KsBLRBZXoaQbbFrXQ12/0IX+asRKYpzRI/Eac3F0Ug3g8DBKPtN
 m3Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=JJesClvZPI57LiKAGH+mfL4LvGX/K6XZEsgwxovyzfw=;
 b=sPiL4h3M/V5zLPmNJibjb7X+fpH45FdgbkLaJqQNkYdD5lNJA2dRZ4IBbkMr5QBa5c
 YiIRlXoPwrjc5ZVxiFW5OuTAVflTKW62ND1JtcZIXWIPBRLkJ8XSxP8pET9XDG3AeejA
 SLpXESYXJBqnMTqXGf4o3dxgp7evXsfzyctrxTpTfHAeokh/0x3ePd6NkIMFG+b1ieVB
 yvD6gLKRtmrDncSzCy3OTMaxrErTLnPYOXW0rXRXp6Nr8LhZq+haiFzMG/cAkLMf1/Nc
 6L6YMGnv+pNZRrbtdlNRBFCLW3xni/1SeD4rj51HESPfG9aqrY6nWYgAgviBkiRIRfKZ
 lzeQ==
X-Gm-Message-State: APjAAAXUocVFBZjrt0LkZ6WswZY/98b0mB/mztLzKSFRZyznhvdw3RR2
 QZ1ZHqQnLkpZ3BBbyfyyB2P2L8Ogdw==
X-Google-Smtp-Source: APXvYqxIeS2C0iQ5M1sifVwuU36Fj7ZdRpllo3pk4Sj4fF4++WdHr5Vc/z9REKwAGjsy3h12qGMzNA==
X-Received: by 2002:a63:d246:: with SMTP id t6mr27729211pgi.5.1570966849575;
 Sun, 13 Oct 2019 04:40:49 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:8e:4f53:b957:652b:7622:f311])
 by smtp.gmail.com with ESMTPSA id
 g12sm23165736pfb.97.2019.10.13.04.40.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Oct 2019 04:40:48 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: linus.walleij@linaro.org,
	bgolaszewski@baylibre.com
Subject: [PATCH 0/4] Add GPIO support for RDA8810PL SoC
Date: Sun, 13 Oct 2019 17:10:33 +0530
Message-Id: <20191013114037.9845-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_044051_041263_7C91AB7A 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

Manivannan Sadhasivam (4):
  dt-bindings: gpio: Add devicetree binding for RDA Micro GPIO
    controller
  gpio: Add RDA Micro GPIO controller support
  ARM: dts: Add RDA8810PL GPIO controllers
  MAINTAINERS: Add entry for RDA Micro GPIO driver and binding

 .../devicetree/bindings/gpio/gpio-rda.yaml    |  50 +++
 MAINTAINERS                                   |   2 +
 arch/arm/boot/dts/rda8810pl.dtsi              |  48 +++
 drivers/gpio/Kconfig                          |   8 +
 drivers/gpio/Makefile                         |   1 +
 drivers/gpio/gpio-rda.c                       | 334 ++++++++++++++++++
 6 files changed, 443 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/gpio-rda.yaml
 create mode 100644 drivers/gpio/gpio-rda.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
