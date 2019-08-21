Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA64696F9C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 04:40:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KOTyC60ZmpWABPS39ljDV/LmSKUeJSi8ZesjrqA2/ys=; b=UC3
	pGQAFXvoxAcTabQN5/l23EvZh2csRTkuipGPOmwGnTmKt6SuI5wDFYn1lZKmSdu92+v4A+9wdm4qU
	L8rKFO1cb2cfsC+aU4CT0Dw7QcYJij/xzaZCbIFaIVxG+5aEejrns8gIYwSjnx2XNp558BC5aiLKC
	dGwUzFVZUMpXuCul82+lKTjAMTc6121sIp7dTPqPbhkyuUZnB5HN7ykRjDDH0zk6A0BRNmAuJ3OJe
	fIEpJaY5CC3nQ7OSUfzGWXeinB3BsBHpgpBxzPEPyckuAYxllhIAXOTpovxRhfffRaY1WrcSn5Ce4
	YcdxOKbUWvUxUfdFhQHUgkpM/oB7vbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0GYK-0005MP-MG; Wed, 21 Aug 2019 02:40:48 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0GYC-0005KL-MQ
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 02:40:42 +0000
Received: by mail-pg1-x542.google.com with SMTP id u17so414812pgi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 19:40:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=iJCb2jYcjAZrWMcIGd74mhhKeBUwaoco72itfmXHkXU=;
 b=uLmzYvt+8q5lCGFEJf+cc/YIDJS/0OUOkILXlnIdRn/MSLRth0wC/axZCeDNGc6QeW
 sQ/0xQwWvPuiUO3+28Jt+Xp/uY9xQAVH6+wkF5fxSeV7IVEY8qgYf7W6vSDKBngbpFM5
 1yXKxa+tuI/TlVQvY/dFse4A0txEUhQ1KLXNQXOsstZbNxNWm6fJwbiHlyn8HVoShL3x
 B5RYJ/E0j+QR3aDpPiSB9o8T/KX0n07axHeG/mRD9ie0FKyy+Tcbj8Z6FlNHmtGlV8oo
 zv62CpiQvXLVAHQcFSCOV36ilQ86GvipwJasv7OeGg6lNvoMYU1wH76S605qtFscdgh2
 SW3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=iJCb2jYcjAZrWMcIGd74mhhKeBUwaoco72itfmXHkXU=;
 b=hCG6X2RiWIgkv16lMB5sRiXaQ/cGc3/0kJ05dmS2UXGdTJw8RE1tsGqKf+h5JkKuHp
 0D8uCk4B31cwIBKDN50l6cNM7NpeC0vWlIDEcyNh6Kx1cqeXtSdHo5KAfKVKWZmRFN4p
 OZhJsGWA43kl4ndZ2uGrz5B+uM3st9/2w9ACRo242CwYv0LQQElpJf6I5NlgIxJqTkYh
 hQhhLh16o30SIkOmTT4lEk1n4qRc0y/gfx5L/gI/Mwfvi2o7O1zm3DLogWodSFF8XCC2
 KYDXq1uY1wLNJQyXd7OaeQK2bHM+ztDUNMSBPuwJpEhxRS42ADi66zWsH4S2Y4Gof88d
 felw==
X-Gm-Message-State: APjAAAW45dIpqG6Ylh3whUoX45jJxHeQz19JJvUDCwTuvSnl8ZIID3em
 2xcOgxRGcBWbmQqu+mikeHh6
X-Google-Smtp-Source: APXvYqzzM6VVCdeDhLfClbl67RJU+kMvUC92BBd3zncGW+nNyta244Glp50GWPHm6oVlBwvlY04uXA==
X-Received: by 2002:a17:90a:a105:: with SMTP id
 s5mr3047784pjp.51.1566355235323; 
 Tue, 20 Aug 2019 19:40:35 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7101:175:ddd7:6c31:ebc7:37e8])
 by smtp.gmail.com with ESMTPSA id
 b126sm26091608pfa.177.2019.08.20.19.40.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 19:40:34 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: ulf.hansson@linaro.org, afaerber@suse.de, robh+dt@kernel.org,
 sboyd@kernel.org
Subject: [PATCH v2 0/7] Add SD/MMC driver for Actions Semi S900 SoC
Date: Wed, 21 Aug 2019 08:10:07 +0530
Message-Id: <20190821024014.14070-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_194040_740910_04C3E6D1 
X-CRM114-Status: GOOD (  11.53  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hello,

This patchset adds SD/MMC driver for Actions Semi S900 SoC from Owl
family SoCs. There are 4 SD/MMC controller present in this SoC but
only 2 are enabled currently for Bubblegum96 board to access uSD and
onboard eMMC. SDIO support for this driver is not currently implemented.

Note: Currently, driver uses 2 completion mechanisms for maintaining
the coherency between SDC and DMA interrupts and I know that it is not
efficient. Hence, I'd like to hear any suggestions for reimplementing
the logic if anyone has.

With this driver, this patchset also fixes one clk driver issue and enables
the Actions Semi platform in ARM64 defconfig.

Thanks,
Mani

Changes in v2:

* Converted the devicetree bindings to YAML
* Misc changes to bubblegum devicetree as per the review from Andreas
* Dropped the read/write wrappers and renamed all functions to use owl-
  prefix as per the review from Ulf
* Renamed clk_val_best to owl_clk_val_best and added Reviewed-by tag
  from Stephen

Manivannan Sadhasivam (7):
  clk: actions: Fix factor clk struct member access
  dt-bindings: mmc: Add Actions Semi SD/MMC/SDIO controller binding
  arm64: dts: actions: Add MMC controller support for S900
  arm64: dts: actions: Add uSD and eMMC support for Bubblegum96
  mmc: Add Actions Semi Owl SoCs SD/MMC driver
  MAINTAINERS: Add entry for Actions Semi SD/MMC driver and binding
  arm64: configs: Enable Actions Semi platform in defconfig

 .../devicetree/bindings/mmc/owl-mmc.yaml      |  62 ++
 MAINTAINERS                                   |   2 +
 .../boot/dts/actions/s900-bubblegum-96.dts    |  60 ++
 arch/arm64/boot/dts/actions/s900.dtsi         |  45 ++
 arch/arm64/configs/defconfig                  |   1 +
 drivers/clk/actions/owl-factor.c              |   7 +-
 drivers/mmc/host/Kconfig                      |   8 +
 drivers/mmc/host/Makefile                     |   1 +
 drivers/mmc/host/owl-mmc.c                    | 696 ++++++++++++++++++
 9 files changed, 878 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mmc/owl-mmc.yaml
 create mode 100644 drivers/mmc/host/owl-mmc.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
