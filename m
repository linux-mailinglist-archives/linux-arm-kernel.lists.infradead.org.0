Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2663D19904
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 09:31:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=liDcGXN9/i/WsxkeqCfQ/WGg9vVHnrM77pVbBSwW8J0=; b=jAIQeXgdDiz34D
	C9A4lhoeh8MkOOqhqJ5tEQ2jcViPjhTJfwnw1XNb8hJp2oLwJQ/DFjWbklBAti+lkb6lXcHxmGjQl
	pzal2/fGx387uf229W4iZdgBMSnWXwlF6L29xSka7uDDmOibfyiuhMXODmI4qRxAIJGvIe/5qaeQO
	58ca4+bgBxWce2z1ZG7ioVw8/KG1qZC0JPuX6K/vhEymhEAogOTVQk8iMwCkcQCqmeSg7M0bVT5TI
	YJJieQ07zqfEotPf8Sr+UV/mkaI4rwxZa5DZy/ktE2uQrfia9Yi1gBYRpkcVlAgBCfxlErqHft2P8
	FvLFwMeWJkeeaTz66Gng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOzzl-0000KT-0a; Fri, 10 May 2019 07:31:05 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOzzb-0000JT-CV
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 07:30:56 +0000
Received: by mail-it1-x143.google.com with SMTP id q65so7849615itg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 May 2019 00:30:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=tPx4WWgKD5fMIHB8bGFbha+k6EVA9D8G5KNNwnNFOts=;
 b=d3CGRCfUgt1wekx979HlBmcTfzlIkeNmVtfq21n2h+J2cWrI1iuyHGmJrFamFD3+I3
 B8jOOgdg5dZXkn4mIQXxube+OtP3mx0DoJskklbQOoQAPVK6Pte0G6EKcU7yl2k6EmCW
 Yt/4bqKw9GXsVNZl/vSNP05CskxpxTOLej4BGzaOBZArBZ0bM9BCh4m5TSpBDiU9CaZa
 BDhFYNWnU8IpHblMeZjqpQOrm7a56VVSE6hLKmhMBEoCJg2ZJ+p8CPJgVXX3g+Ei5GTO
 3LgRU/BWI68nsWD15k3EqVlmRxTg7a5PrCaexRcUuK0EIcQq2H18kFJQF7vdhcRTVWsz
 /jIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=tPx4WWgKD5fMIHB8bGFbha+k6EVA9D8G5KNNwnNFOts=;
 b=fWauSY/t+tj/NeJxCy4azQDKMDkqUlzehx9aBTulD8FETKbg6A/jL43At8nhFAdbXr
 zUh2oEbJH+arBbz541J1alISjF04v7LNkIhE9g9hoyv8RJAfHuTHyzeDSc76rAivyL0a
 SZOR5pwziBEQ+CUbY6Pbe/YJBitBoVS4IiCnedwUlIXbIQh6gNmde69Kxz/UIJrWoTYj
 MBGa1tqsuV/1V4vh1/GRD4eLUzE31LsH8nSI7mXZSLFFM2xeWUaS2fAo+gHPQ6aP2pmp
 eg7iTPOKetW5FibLESuIz+hePHUYkOKtc5956MyAT/7dePAk36VZCliH5py2Orkp9fK0
 xM0w==
X-Gm-Message-State: APjAAAUlRJpGFi0rWMrHAEIo7gUOZeYx85wGCZU6rUaqnD96EeD6J7UJ
 WcIZTHyxwRdKtzP5Mj3TJhiVRVcDHi5dpmtW0sg=
X-Google-Smtp-Source: APXvYqwcGW2ugr017R+z4A1uYJBG9CeVuq1Hti0KvbMilmjAMjdatVVKN434nVhXD/nfUp3lEWKTh4l1d6sfmilxKJI=
X-Received: by 2002:a24:97d2:: with SMTP id k201mr1625763ite.151.1557473454035; 
 Fri, 10 May 2019 00:30:54 -0700 (PDT)
MIME-Version: 1.0
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Fri, 10 May 2019 02:30:42 -0500
Message-ID: <CABb+yY2cJiXMVaPX+r7TS_mFa=o-dj9HEOjZ2+8GEbs8kUX1Xw@mail.gmail.com>
Subject: [GIT PULL] Mailbox changes for v5.2
To: Linus Torvalds <torvalds@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_003055_446848_99FBD48E 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jassisinghbrar[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

The following changes since commit 37624b58542fb9f2d9a70e6ea006ef8a5f66c30b:

  Linux 5.1-rc7 (2019-04-28 17:04:13 -0700)

are available in the Git repository at:

  git://git.linaro.org/landing-teams/working/fujitsu/integration.git
tags/mailbox-v5.2

for you to fetch changes up to 8fbbfd966efa67ef9aec37cb4ff412f9f26e1e84:

  mailbox: Add support for Armada 37xx rWTM mailbox (2019-05-09 00:41:00 -0500)

----------------------------------------------------------------
- New driver: Armada 37xx mailbox controller
- Misc: Use devm_ api for imx and platform_get_irq for stm32

----------------------------------------------------------------
Anson Huang (1):
      mailbox: imx: use devm_platform_ioremap_resource() to simplify code

Fabien Dessenne (1):
      mailbox: stm32-ipcc: check invalid irq

Marek Behun (2):
      dt-bindings: mailbox: Document armada-3700-rwtm-mailbox binding
      mailbox: Add support for Armada 37xx rWTM mailbox

 .../mailbox/marvell,armada-3700-rwtm-mailbox.txt   |  16 ++
 drivers/mailbox/Kconfig                            |  10 +
 drivers/mailbox/Makefile                           |   2 +
 drivers/mailbox/armada-37xx-rwtm-mailbox.c         | 225 +++++++++++++++++++++
 drivers/mailbox/imx-mailbox.c                      |   4 +-
 drivers/mailbox/stm32-ipcc.c                       |  13 +-
 include/linux/armada-37xx-rwtm-mailbox.h           |  23 +++
 7 files changed, 285 insertions(+), 8 deletions(-)
 create mode 100644
Documentation/devicetree/bindings/mailbox/marvell,armada-3700-rwtm-mailbox.txt
 create mode 100644 drivers/mailbox/armada-37xx-rwtm-mailbox.c
 create mode 100644 include/linux/armada-37xx-rwtm-mailbox.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
