Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6646D1BCD01
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 22:07:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZAbxKeLDudHPAZkwptAXMkI0xDtK8CFjhCY7beSkVnY=; b=O1uGHJ4oD1tRz9
	hYfG1tmro3Oj2mDhJvrrixMtYUJzaawKqM+8nOdGhVowtEISiDYLZZm+HLHEx7xeTD4Yq9UUOK7ca
	IyrRvZ8uoABXbjfDE1tjD8xiMyG9cc2agG/Ew5FtvcElXYrB+SzyH9B6xzqjs0iZvXnL0slvvJy4c
	xcykndn9ZKF4ewhbL3gr4bEkkO9GkwbdNC0TDs7cfWByaQgqXX7wS1jKC1dlgYPmr2gHaNKsHTZmx
	bQlSbUgrwPgqBmqqtQ7oU/wsxsJ5+zeeDC/2k/seoQE1FQ62/YpNjjnJMu6FvTM7h/8fvRXH2zwgh
	tkNKCKXxfBeq6b+lpazw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTWVa-00088B-7s; Tue, 28 Apr 2020 20:07:10 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTWV5-0007sp-Ow
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 20:06:41 +0000
Received: by mail-lj1-x244.google.com with SMTP id a21so42354ljb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 13:06:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=xzpI/0Q3qhWnTBJk5r843bg0n7flzvg59kiM9TC6O1k=;
 b=EiBdxKXcFX4q2+J+sUMwftbyX/bD4ztacPlhwQjDaP/2vJDvdFdSJNKWyYFDriNDmF
 Tvua0FlHuOMcX1QjY4VlRkHQSMMg2RVssSAz5lbi28htSKmOhEsOKcy5RKnmyUJKlZ25
 0QDw96zUsEdx39cS/Y950SGnUBzxZM9gNtgbPljoj9JgIv8tC8MFaJlJZN7IUV7ZVuSE
 TBiefxmgxClPJAoQH7gg87CwdIDKLVAheeEN9CahC5NuzA/S4pj4eMSpQHrUo3ZgPis8
 r11rLnTB7jS3RAynmQj7nowOCU6Qr6V6h62ieYbBpvItS02X7QBZ+vxrEUei4MmyW/Me
 4hOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=xzpI/0Q3qhWnTBJk5r843bg0n7flzvg59kiM9TC6O1k=;
 b=E3vX0AviKNZtWdxlMRWhaxRZXcOQRtT7nkf6upNLTjYnDjLVmaXvY+x77KH20aJEG7
 I5fPDQ7lgq/KSMTupbkgyqycYhXlxV49Tdk+aan5hixaPMPUjIBk/fep0KgBu6QFuTDT
 0++7GAcHAzSEAud1/RyVl9BuA9yZk31snhRQ1fsR8jl5VbJkH3ERnHi/KdtnSs/4yaI3
 iSUBu5n0/T0xwm0ATF/hutD+8XyPhCLkPdpsWtaeTmoQllrczDQIiwg0T3VoT8fj1lXC
 EDycU3qHDtgjAumyeGv3fhb4gjGcfuH7o00xXWAAQJ/LWm65WARXU2Dk89Xk8nP5ZcXU
 8FOw==
X-Gm-Message-State: AGi0Pubi7AjY02r1gPcZhLuF5WUQGvALKJTSQ38zjiy0xihY3ISIKHeV
 bdM3jYqQUl+ELQMM2L3O1dzVcafiBtc384hQUAcslg==
X-Google-Smtp-Source: APiQypKOrgl7c/mSuterAckJn0jABIhaEyxAqlKn3++tpCgM69xr7/UHazqJ+a6i5hHYvndHAjFrrn72luRNxeCzNT0=
X-Received: by 2002:a2e:2ac2:: with SMTP id q185mr9830198ljq.125.1588104396570; 
 Tue, 28 Apr 2020 13:06:36 -0700 (PDT)
MIME-Version: 1.0
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 Apr 2020 22:06:25 +0200
Message-ID: <CACRpkdZ-28o+pPdP7i_fc+7g4ndPWf+SWTsjnhFEegTggiXVSg@mail.gmail.com>
Subject: [GIT PULL] Versatile DTS updates for v5.8 take 1
To: arm-soc <arm@kernel.org>, SoC Team <soc@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_130640_000206_8BA7422F 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi SoC maintainers,

here is a set of DTS updates for the Versatile platform,
actually just the Integrator/AP.

Using this I had better than mainline integration of the
IM-PD1 using graphics with the PL11x DRM driver using
the special on-board IM-PD1 RAM.

The DT bindings for the bus driver was in the previous
Versatile pull request, as well of the deletion of the board
file code that this DTS now replaces.

Please pull it in!

Yours,
Linus Walleij

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-integrator.git
tags/versatile-dts-v5.8-1

for you to fetch changes up to d67ef24adf3c3fbaed62c31551d6e36f24fece16:

  ARM: dts: Add devicetree for Integrator/AP with IM-PD1 (2020-04-28
21:59:38 +0200)

----------------------------------------------------------------
Versatile DTS updates for the v5.8 kernel:

Create a new device tree for the Integrator/AP with the
IM-PD1 expansion module fitted in the first slot.

If we want to augment the slot where it is sitting, we can
alter the device tree or make the bootloader do so.

----------------------------------------------------------------
Linus Walleij (1):
      ARM: dts: Add devicetree for Integrator/AP with IM-PD1

 arch/arm/boot/dts/Makefile                |   1 +
 arch/arm/boot/dts/integratorap-im-pd1.dts | 270 ++++++++++++++++++++++++++++++
 arch/arm/boot/dts/integratorap.dts        |  53 +++++-
 3 files changed, 320 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm/boot/dts/integratorap-im-pd1.dts

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
