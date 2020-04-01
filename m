Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B06A19A46C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 06:48:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2+Cq5ulzH69w40a0N0ZQQ3DE3NiSnpT/nw9Y3YU6gD8=; b=MJIMxnlUQXVXZ4
	1J/4RhxCfrMkflYUugSVkJv6sMYD7HdJrlKm7JVO5xaxuFri+4PTlorbmICdfyiSRs0iDkAy7kegU
	oxbReCy9x2B758Bm4knxq8Drl7zFiToodooNGXRkH3DV+Pe+aK6tVk09byc2aCMSWvr102i70MdOy
	llPChRmoG4zEZh0/4srOFoWrp34BjAkH6nugbYBUfVxiTQtvkca6HpunvVYZy23kMYPwZRkjQcNxn
	OSWf2wTWPyxh7jysxZNSw41ZlTHI80CJsaF0xRse+mRsoyyyywvxW7TgqLx70cI5mB7keqn7siUSR
	O1YM3yuA8RI1LcX/dDwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJVIY-0004PT-Oz; Wed, 01 Apr 2020 04:48:18 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJVIO-0004P6-Sg
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 04:48:10 +0000
Received: by mail-il1-x141.google.com with SMTP id t6so18185524ilj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 21:48:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=yBNtDDyEZFLUMk99HIbSZunA51hK1hAXkAOVSNWlPhE=;
 b=gHHvm2+EYiTjiYnXL9ZQC35zh8qy4MzJo/SxFMKVeirEvOXDfWObiT+GJVmi2tHFH1
 qS8IWcfYxxcJRGfkUR/Tge7RS4pMc6LJa8zxcGgq+Go7O8BsToi+FjD7DQhoYtgWYuj3
 87S6JMzI1P4zTqoH9LUyQ7Od67OL6v6WqlhtnSdG+NGwxuBbWsp8jBqi17h+vvsWWNbv
 YRr5WP/8YHqN/S5Upjusaq+c5k80vXOXzw7/CfPf6a+VGT+6i8edQG0xDqoMLO1GC2wJ
 eleNmILDjveiVyFGQ7bYU5UumjrVsRw8Pd9Yw3T0AEmXh/KID0c12pInY0cynlGPvHwR
 SlTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=yBNtDDyEZFLUMk99HIbSZunA51hK1hAXkAOVSNWlPhE=;
 b=syXLsHTLSvb/z7lPNGs6Qh1jlcVtb1EzgKMnRlopEBh4pcJEC9OUzWLcCIVFKd5GJJ
 NQca8cZh84R0bvtUkkMLvaDyDYSyAb6mTH3SDqgBWbl9QQ9Rs88Gk04P6GehYZG2s8Un
 FcWgP9qUZc+63ZUTE8HdzM2UnOANMh1C+9v4CVm/wiz3L6JEMqccFyLGNkEJtJwMHTu6
 fvAHxHpS8xup1L3iOenUXoP1PdHt0jiEkNWBk6ryGKy/XH8R8FeeO4FpuPOYXDxfNwLt
 hKijuINJ1+FqI51BomuzlWC5zFkmFu3kRWT5zrdYD17dfYx3CMa+jfd+s7qSqfCJifsH
 dIxA==
X-Gm-Message-State: ANhLgQ3zNkDljNVHBrJQevIC9iGsaBL5/cjZ9ZnnGf1+uL1hpFc1p9Pn
 37STp05+B+gJ+Gv8YfeCNhkNvv9Rt3W9FoRxuj4=
X-Google-Smtp-Source: ADFU+vv3ujcF3LXkt0pbsCBwIDFrWPnbm2URgmFYXVqHOeM458ygbF9LTJKfV6jzpTxLc86+wXzKR4a0/jckOotShuM=
X-Received: by 2002:a92:c787:: with SMTP id c7mr18189425ilk.87.1585716487274; 
 Tue, 31 Mar 2020 21:48:07 -0700 (PDT)
MIME-Version: 1.0
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Tue, 31 Mar 2020 23:47:56 -0500
Message-ID: <CABb+yY0-q+5+pqP-rBHCYpw-LmT+h80+OU26XL34fTrXhO+T3Q@mail.gmail.com>
Subject: [GIT PULL] Mailbox changes for v5.7
To: Linus Torvalds <torvalds@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_214808_949497_840CA36B 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jassisinghbrar[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

The following changes since commit 6c90b86a745a446717fdf408c4a8a4631a5e8ee3:

  Merge tag 'mmc-v5.6-rc6' of
git://git.kernel.org/pub/scm/linux/kernel/git/ulfh/mmc (2020-03-19
12:45:14 -0700)

are available in the Git repository at:

  git://git.linaro.org/landing-teams/working/fujitsu/integration.git
tags/mailbox-v5.7

for you to fetch changes up to 0a67003b1985c79811160af1b01aca07cd5fbc53:

  mailbox: imx: add SCU MU support (2020-03-19 23:04:32 -0500)

----------------------------------------------------------------
- imx: add support for i.MX8/8X to existing driver
- mediatek: drop the atomix execution feature, add flush
- allwinner: new 'msgbox' controller driver
- armada: misc: drop redundant error print
- bcm: misc: catch error in probe and snprintf buffer overflow

----------------------------------------------------------------
Bibby Hsieh (3):
      dt-binding: gce: remove atomic_exec in mboxes property
      mailbox: mediatek: implement flush function
      mailbox: mediatek: remove implementation related to atomic_exec

Peng Fan (3):
      dt-bindings: mailbox: imx-mu: add SCU MU support
      mailbox: imx: restructure code to make easy for new MU
      mailbox: imx: add SCU MU support

Rayagonda Kokatanur (1):
      maillbox: bcm-flexrm-mailbox: handle cmpl_pool dma allocation failure

Samuel Holland (2):
      dt-bindings: mailbox: Add a binding for the sun6i msgbox
      mailbox: sun6i-msgbox: Add a new mailbox driver

Takashi Iwai (1):
      mailbox: bcm-pdc: Use scnprintf() for avoiding potential buffer overflow

Tang Bin (1):
      mailbox:armada-37xx-rwtm:remove duplicate print in
armada_37xx_mbox_probe()

 .../mailbox/allwinner,sun6i-a31-msgbox.yaml        |  80 +++++
 .../devicetree/bindings/mailbox/fsl,mu.txt         |   2 +
 .../devicetree/bindings/mailbox/mtk-gce.txt        |  10 +-
 drivers/mailbox/Kconfig                            |   9 +
 drivers/mailbox/Makefile                           |   2 +
 drivers/mailbox/armada-37xx-rwtm-mailbox.c         |   8 +-
 drivers/mailbox/bcm-flexrm-mailbox.c               |   2 +
 drivers/mailbox/bcm-pdc-mailbox.c                  |  20 +-
 drivers/mailbox/imx-mailbox.c                      | 288 ++++++++++++++----
 drivers/mailbox/mtk-cmdq-mailbox.c                 | 128 ++++----
 drivers/mailbox/sun6i-msgbox.c                     | 326 +++++++++++++++++++++
 11 files changed, 733 insertions(+), 142 deletions(-)
 create mode 100644
Documentation/devicetree/bindings/mailbox/allwinner,sun6i-a31-msgbox.yaml
 create mode 100644 drivers/mailbox/sun6i-msgbox.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
