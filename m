Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0BD3A1A9
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 21:53:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qrkxJ+Rq89vPaX/dpw3oyT1ppJtWsA8DtUVjVsRGnUQ=; b=lpO
	lGN6H1COzGv+/3h+a6oXfNlT95DUzCWSyu/B3yn48Zr5JkvyzANyt+czD+wbC32bceybsMv8RYQef
	27F04Ucqzqj40fV3SC96kemmCtVpeQOAsC3jCIqtM7O4FxuvNoOB0zI/GpLalbYAV3Xz4b6YnGLRw
	9T8QnftFiT3WzYKfTLj6rz4ndJCX3vRU/M7xdSnm0Ey0zlqHnORQ5AGmHT9NzOAiir0JDYuK4T2yi
	/bfhwvkI6YLmGK0aI88NiJIfliD0HTzY8Y6jTrXTyvSuZRrmX+B70Xx4yRYv59To6Q9NOhZmjYIn+
	61TGK9FrGYqScOpXOHeGhou4MJF6LsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZhPQ-0007M9-5Y; Sat, 08 Jun 2019 19:53:48 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZhPG-0007Kv-DW
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 19:53:39 +0000
Received: by mail-pf1-x444.google.com with SMTP id d126so3042797pfd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 08 Jun 2019 12:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=y4R+1O2JCF2sqyz0/RUxgRqX037Zf7Xz8+zI8QsEWlE=;
 b=Qmma1PwAldxzd2MM/p3res/Gcc/x5TAFEAC1p/QPRvFRAQm/2TXCS1FgMsS0p+MADA
 NxYVXKYgitXSUQIrtnBJ2K9hUNnzHvLJoltYx5Xl5v6AmkpPl1sMz834YlszFktEMY29
 4WQHnHhnGf20gu6gqDAAx4xhfxUnG63QqdlQ1jD2N5ClNsVmk2pT36ILXXAQ7FzvUfAB
 yhmSeE+TC275JwCydhX395OMgLyQo783CAxggL+vRclS5ttGwpFwHux0CH8rHTPk92Pb
 6r3ZNdbrGQv3gN1dNfvtlIek6Ei+71GWtjeJamvCirAtGQObgTYN5JP3BrqSXEZQ2Xn+
 qHtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=y4R+1O2JCF2sqyz0/RUxgRqX037Zf7Xz8+zI8QsEWlE=;
 b=tgLZIiAJJGe5953gw9cHyb30has7IYj9d2LMjsLk6v1Lp5eLF1iT0kcCdPi97QMJAN
 I0Gi2JpS846C7/M5RgqW655g+C2fjELjU1hNJKYEtSB5tBbm9NBaRHaJYIcWCtm4mYEx
 YGr88/Y1ppTGKh0VG7lIfL5hLWWiaxT7gltOWfEFY18nEwKGQi2d0AMe8n179r0CQeUp
 JG/E0oDTdZq0Am0m0CindEqODfEKaIxFjvc4L23qFPhJMiX5NaAsKX6eYplsp0I8dEyx
 z3oG0s98svzzMUw1zoQSkNpAHOKtso+U5MYpiRJaGZEb1KTPZKvQKj4ICA0U+y4T70R1
 SIMg==
X-Gm-Message-State: APjAAAWVmw1Dgp/hM39BAKIu6d6TO2Zl2tZUgyiuGWgJluDo2KZoxVCl
 sS/NISqaFwm0Ie9rPVwQqW+K
X-Google-Smtp-Source: APXvYqy5srgqec+REUk7+2CL2ALjfdnslRmdg1t73+gSHiRrm5XVwFsFfj8jbOA5sr6K2oMDGQfKwA==
X-Received: by 2002:a63:1e59:: with SMTP id p25mr8567873pgm.270.1560023616972; 
 Sat, 08 Jun 2019 12:53:36 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7185:fba9:ec1e:ad07:23ac:d3ee])
 by smtp.gmail.com with ESMTPSA id b35sm6034377pjc.15.2019.06.08.12.53.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 Jun 2019 12:53:35 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: ulf.hansson@linaro.org, afaerber@suse.de, robh+dt@kernel.org,
 sboyd@kernel.org
Subject: [PATCH 0/7] Add SD/MMC driver for Actions Semi S900 SoC
Date: Sun,  9 Jun 2019 01:23:10 +0530
Message-Id: <20190608195317.6336-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_125338_468574_903A77C6 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

Manivannan Sadhasivam (7):
  clk: actions: Fix factor clk struct member access
  dt-bindings: mmc: Add Actions Semi SD/MMC/SDIO controller binding
  arm64: dts: actions: Add MMC controller support for S900
  arm64: dts: actions: Add uSD and eMMC support for Bubblegum96
  mmc: Add Actions Semi Owl SoCs SD/MMC driver
  MAINTAINERS: Add entry for Actions Semi SD/MMC driver and binding
  arm64: configs: Enable Actions Semi platform in defconfig

 .../devicetree/bindings/mmc/owl-mmc.txt       |  37 +
 MAINTAINERS                                   |   2 +
 .../boot/dts/actions/s900-bubblegum-96.dts    |  50 ++
 arch/arm64/boot/dts/actions/s900.dtsi         |  45 ++
 arch/arm64/configs/defconfig                  |   1 +
 drivers/clk/actions/owl-factor.c              |   7 +-
 drivers/mmc/host/Kconfig                      |   8 +
 drivers/mmc/host/Makefile                     |   1 +
 drivers/mmc/host/owl-mmc.c                    | 705 ++++++++++++++++++
 9 files changed, 852 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mmc/owl-mmc.txt
 create mode 100644 drivers/mmc/host/owl-mmc.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
