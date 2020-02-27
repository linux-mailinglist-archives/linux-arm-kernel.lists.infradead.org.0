Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 749D2172BF3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 00:05:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Gve05Qn0nVaFd33UFMLSMOPzAofErFK96oflHc23dMI=; b=kls
	qGj4FPAoW6ufF/MRSbV5+/f1/1lsc061+Wxzlf8Z6dbHu1donzkDDt54NyEWsWTZQK7jwhpOisBEx
	IHLI5OHewD/IYI1R4Lz2h4THBcR/mduogAxjkdDMSpuNhEBtN/1gBmJZk6HUB2aMCR7Guwxb6lWZa
	sqmarOtosTEJIn0lbx6ToCNwfgyERCwHRjWC/ZtvnT13nQQG1GCxkPsm2sW0xNv9VhrgAITgDH+mD
	PlJfiD3riZkaLedHc/mb1pdEkW1DR3v/AsLbizyB3rVrXNRoied8LVorJn51PaQ38HAU1DEC/2pwu
	UiqwbmnELbKg4eAte5FYzrHqIsGw6bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7SDg-0007Nr-57; Thu, 27 Feb 2020 23:05:28 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7SDU-0007NR-Pk
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 23:05:18 +0000
Received: by mail-pf1-x443.google.com with SMTP id b185so627297pfb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 15:05:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Bk/8S/Z3TX6gpAJL/01qav03pWjPrUS9+WLbM4tWfRA=;
 b=D3uxW57B0O2ZCS13ox+7bG3kfYJ5dm/5SQnmvP4FvWhMrFCseDKD7aHRX77YVxLIeK
 QmXQXLgi+BnIuBKkThmncjPPcuDErTVpgwIJInw2WrOKFBUl74O14clRUCo0uKUasRG2
 jHFO9WNnbVQI5EgXyYuRbBazh7hxKpeywV9Pewb4YiMMN3rsNkp3XDAXHVyhCAFV0b/J
 HkE3e7EbQif7P6K7MEumvanCMAPKGqR7osu4IrHNXTFkYZUgtnm6eDQA9i0SF0BaiHuF
 umwDNdSfJi8ud1Yac4Hu2BOp6j2iWu8BmIrGqz9CXAgOBxaG3LPsdKXZWCRQRhJMU7aj
 kBfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Bk/8S/Z3TX6gpAJL/01qav03pWjPrUS9+WLbM4tWfRA=;
 b=rKX1o6tWgbPIZGKGGjRqI5IeUeJ7NwiLkQNM1LQ87lFYUuhTWnEzPPpzaKxLZ+jTTq
 r2NpleBdmYaEZm8CNiqxbmywFIcFHTGhvmWy9HRcLj2rVICzaZEnGT8lpksE68HPJxVK
 x1y5/bEj6CkisqSOMl4VJTuR1b48SPzCOn7bXsEpfxjRkudYOW+O3zkrhaZwwIrB8xHm
 ygINJWTGdbnQVsv3YaV7G2wsYgQCL3zpCKa+ZEgxLteuXy+5g80Y/ufjuhlwndStfjS7
 /cKgcMvsK4/D09r2QvaGlbOZzYb7G/6lTUftXpG8gDjTSyxJi2k0xvLZzQn3jmHlzDgD
 lVcg==
X-Gm-Message-State: APjAAAXyAlboMUXyo7ztrXejLtKMTvhaHmPY5YjgvxFxEWHJpXWrlyEQ
 58IbhcpigcEjqtefDiOuytQ=
X-Google-Smtp-Source: APXvYqyDK8WIIeHKpc/60SN35zdliyQ2V/wsC3lesIYegLPHI6ky6j9GatyILA/aeOM6XAgy1Jjrng==
X-Received: by 2002:a63:5fd5:: with SMTP id t204mr1541214pgb.265.1582844715754; 
 Thu, 27 Feb 2020 15:05:15 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:500::4:d8f5])
 by smtp.gmail.com with ESMTPSA id w2sm8275975pfw.43.2020.02.27.15.05.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 15:05:15 -0800 (PST)
From: rentao.bupt@gmail.com
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org, taoren@fb.com
Subject: [PATCH v5 0/7] aspeed-g6: enable usb support
Date: Thu, 27 Feb 2020 15:05:00 -0800
Message-Id: <20200227230507.8682-1-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_150516_861794_6C0CA09F 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tao Ren <rentao.bupt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tao Ren <rentao.bupt@gmail.com>

The patch series aims at enabling USB Host and Gadget support on AST2600
platforms.

Patch #1 includes vhub's usb descriptors in struct "ast_vhub": all usb
descriptor changes will go to the per-vhub instance instead of touching
the global default descriptors.

Patch #2 replaces hardcoded vhub port/endpoint number with device tree
properties, so that it's more convenient to add support for ast2600-vhub
which provides more downstream ports and endpoints.

Patch #3 enables ast2600 support in aspeed-vhub usb gadget driver.

Patch #4 adds USB devices and according pin groups in aspeed-g6 dtsi.

Patch #5 and #6 add vhub port/endpoint properties into aspeed-g4 and
aspeed-g5 dtsi.

Patch #7 adds device tree binding document for aspeed usb-vhub driver.

Tao Ren (7):
  usb: gadget: aspeed: support per-vhub usb descriptors
  usb: gadget: aspeed: read vhub properties from device tree
  usb: gadget: aspeed: add ast2600 vhub support
  ARM: dts: aspeed-g6: add usb functions
  ARM: dts: aspeed-g5: add vhub port and endpoint properties
  ARM: dts: aspeed-g4: add vhub port and endpoint properties
  dt-bindings: usb: add documentation for aspeed usb-vhub

 .../bindings/usb/aspeed,usb-vhub.yaml         | 71 +++++++++++++++++++
 arch/arm/boot/dts/aspeed-g4.dtsi              |  2 +
 arch/arm/boot/dts/aspeed-g5.dtsi              |  2 +
 arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi      | 25 +++++++
 arch/arm/boot/dts/aspeed-g6.dtsi              | 45 ++++++++++++
 drivers/usb/gadget/udc/aspeed-vhub/Kconfig    |  4 +-
 drivers/usb/gadget/udc/aspeed-vhub/core.c     | 71 ++++++++++++-------
 drivers/usb/gadget/udc/aspeed-vhub/dev.c      | 30 +++++---
 drivers/usb/gadget/udc/aspeed-vhub/epn.c      |  4 +-
 drivers/usb/gadget/udc/aspeed-vhub/hub.c      | 58 ++++++++++-----
 drivers/usb/gadget/udc/aspeed-vhub/vhub.h     | 43 +++++++----
 11 files changed, 284 insertions(+), 71 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
