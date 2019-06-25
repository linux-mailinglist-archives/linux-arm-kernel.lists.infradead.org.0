Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 949565256B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 09:53:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jay4+oVWDWiQsj1OwlaM8TyaWn//3HRVcW20HycikFI=; b=jqJ
	u7tF5LS6jPG0DrAlEPoMc7TfzyatP9q3zifHFw6ue6lSuxEHJoTzHk11ROenZ5ZmBbs5zayWdKl12
	OHw33OhpEbRD7LkaaWGR+ZHV3PupQl6bxGZnkoLdfShCt4aLrrPMjSSyjjJytkfoBDE5bLMLmk0gk
	Jje8GVTZqJx3wj455Eop2oS0tUW/d0zLSPBUbRZzlNjaJrsLWtRBz4bWiiBi+0LusR1LqmegA0J6c
	HvWAEP/EEQnaPbodEKhG5cTKZzDqY9vYQ3qRTHajZ9eDCqPFzmfaCD1cUSt+mXkPd8FxWwQF1gMOb
	LjZTSiuCPBvx/ZQ7FvTzihUdn6XGEMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfgGk-0006u1-5b; Tue, 25 Jun 2019 07:53:34 +0000
Received: from mail-vs1-f65.google.com ([209.85.217.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfgGU-0006sp-G3
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 07:53:19 +0000
Received: by mail-vs1-f65.google.com with SMTP id h28so7291687vsl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 00:53:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=hGbJ16OPS/qhwBdjyYL1sKL80fCBHudKyok4Ykbiono=;
 b=laBw6LnjUf34XHzdnxq7Ihbuzz2hhMb9n7UfTprzf356ETbOdqn3ip7Gv/e/KSni/S
 2QmazzodHFTBNghJ4bpwGKm89j7GfQ2yT+bRTsC+7RwkBcFd5HVDS0hbmH514wZQCaxR
 ygHz4byV+Mbcl4FIVTBu7idfNGzRgc9j0CjiAuxkIivsi2kivam9j+cB8Tjh9sjdObSl
 NVxCdmO7yOojOZtseDMKu90yyBiUxpuEeqaNxIsMj1r+jFKlgjHkAw/FZzNiLLF9LZy7
 /m7rL4CFTSMUMsnkT1tsT/e8BIXk/0SdtAu/TvF1JXB33RWjx2PD5nyZmwmjISMrbKpE
 pIhA==
X-Gm-Message-State: APjAAAUoF2Mxe6IIdg4csDaUb0ED9ailG5mUasCQ2iZjcHy+l+6S2SLL
 VJ8PioG5llYKQaP9o+rniLFeyQ==
X-Google-Smtp-Source: APXvYqyGwh5eSl3ncHe1yWf4RrfoNS28n9szBO57yWBWHuxSLjddX7/bfUbLQcXlQYw9ACp04wXaVw==
X-Received: by 2002:a67:fad7:: with SMTP id g23mr83651188vsq.22.1561449196950; 
 Tue, 25 Jun 2019 00:53:16 -0700 (PDT)
Received: from localhost (li1322-146.members.linode.com. [45.79.223.146])
 by smtp.gmail.com with ESMTPSA id g184sm6942204vkd.47.2019.06.25.00.53.15
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Tue, 25 Jun 2019 00:53:16 -0700 (PDT)
From: Shawn Guo <shawnguo@kernel.org>
To: arm@kernel.org
Subject: [GIT PULL 1/7] i.MX drivers change for 5.3
Date: Tue, 25 Jun 2019 15:52:59 +0800
Message-Id: <20190625075305.29082-1-shawnguo@kernel.org>
X-Mailer: git-send-email 2.18.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_005318_535118_756B5DFB 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Shawn Guo <shawnguo@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Li Yang <leoyang.li@nxp.com>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-drivers-5.3

for you to fetch changes up to db10496c0064ba3355936de801cd3ba0b6711bd1:

  soc: imx: Add i.MX8MN SoC driver support (2019-06-24 09:15:57 +0800)

----------------------------------------------------------------
i.MX driver changes for 5.3:
 - Add i.MX SCU based SoC bus driver for i.MX8QXP SoC support, which
   talks to SCU firmware for getting SoC ID and revision.
 - Update soc-imx8 bus driver to read imx8mm soc revision from anatop.
 - Add i.MX8MN SoC bus support into soc-imx8 driver.
 - Various small improvements on soc-imx8 bus driver.

----------------------------------------------------------------
Anson Huang (6):
      soc: imx: Add SCU SoC info driver support
      soc: imx: soc-imx8: Avoid unnecessary of_node_put() in error handling
      soc: imx: soc-imx8: Correct return value of error handle
      soc: imx8: Fix potential kernel dump in error path
      soc: imx8: Use existing of_root directly
      soc: imx: Add i.MX8MN SoC driver support

Leonard Crestez (1):
      soc: imx: Read imx8mm soc revision from anatop

 drivers/soc/imx/Kconfig       |   9 +++
 drivers/soc/imx/Makefile      |   1 +
 drivers/soc/imx/soc-imx-scu.c | 144 ++++++++++++++++++++++++++++++++++++++++++
 drivers/soc/imx/soc-imx8.c    |  63 ++++++++++++++----
 4 files changed, 204 insertions(+), 13 deletions(-)
 create mode 100644 drivers/soc/imx/soc-imx-scu.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
