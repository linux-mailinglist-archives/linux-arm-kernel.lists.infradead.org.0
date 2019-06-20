Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C804C871
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 09:34:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jZt47G8WrqN74LyxpWQHhB8bBpmnUQ39mfy2dE6XZio=; b=gVdvHI6/gOI0gM
	ooZQxhCZ/bbSJJ5175sbyBrq+9BZRuWTEg7TGButa/CFKUXyUDTvGSpEbcbO/IKnhg1YByijzqI1U
	0dKku6QDdL/c3WIocT8kIKO88MBPa7+qDntu+euldZUBpzRRK4sIIX7gjstMlmK+rN4ktG6BH5dXx
	Cjpf/rvlYUkZ3cXGJ1twztylcxttJht/yas8cSjOCPTI5az1WbMsLuUDnTBI4JjYPxIqhkb3/fKfu
	PieRf1iXlsMvryIsmkdCfBAvKB0a50WuuVCskLSG9zpxgQTQBdG8in/eL2PS7smuz6kYEVnKlPNPz
	M/tN9wfqiCu54Z5W7b4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdran-0001Kd-Lh; Thu, 20 Jun 2019 07:34:45 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdraZ-0001K9-T6
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 07:34:33 +0000
Received: by mail-qt1-x843.google.com with SMTP id s15so2206018qtk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 00:34:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=opL2zp18YnmTOfD3nJtvIoIaI7cchsn9/smGdNrpPY0=;
 b=HhCmBNDRtNjYnwGuG4f3HjzdaUVMsZ7BG2RnVud73GNk2EmJk/OCmTvs30j3n8WxR8
 gCWqVVTCsCzpBrzJ+rAPvmDMPoV+T9Xrq3D/xG/OrF+Zef45AtmJ2jggaOD313C6wqwT
 5bPkRE+APQxX3uwo8e79SEBxnin7s1Rm3mTvs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=opL2zp18YnmTOfD3nJtvIoIaI7cchsn9/smGdNrpPY0=;
 b=Wvg8giwBP36lDxDFZ5lVaCmh6F4EvO7yGC6/LIBRwS/17c969PJioWRweDs1rQHQja
 z9bMwcZIpFdKkgFJ+MNg8n1FfvQdH6YpEfQ53TcNn1DBdzDtII0jy1Zj4vhGM99qZGI9
 b7rl4L1yAnH0A4mrrl9ZCEG6h+Nnzyr3STM7IwsaoZIWr3m4c6RUm47i5lGr3LoUzcmW
 FTdjeXcEm70XrW3++iD4hMMtOM1ZkcAk5VAmBArUm+EIzUtJfj+rk6mBQ31vBXuWG5UV
 84cinkBXnMIfLMuuwLKsJ9auOfO83+MyspNEzC6/tkX48k9RRf/decCQKCs5j4rcCgn8
 1Lqw==
X-Gm-Message-State: APjAAAUhY7Vpl+yRSWpc6daW8hEWyWuM0q6fgmCyccQI87NjAvLh5Byp
 92AednRXdj0reR8LZ1eJ0yFmZG3GnlipXaNiMIE=
X-Google-Smtp-Source: APXvYqwRxXdtvtt6uzudgb1QKaYmA2gWC+s0AgywtWsHXoMeiZw60VhSib0MRWaRzLMmLIEy16khGqRajUx3G01G1qM=
X-Received: by 2002:ac8:2493:: with SMTP id s19mr90260592qts.220.1561016068125; 
 Thu, 20 Jun 2019 00:34:28 -0700 (PDT)
MIME-Version: 1.0
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 20 Jun 2019 07:34:16 +0000
Message-ID: <CACPK8XfMEzqvTGZz7JZxz0XQ0tBHzpJRDxtCEFB-ZzKCyDeuQw@mail.gmail.com>
Subject: [GIT PULL] ARM: aspeed: dts changes for 5.3
To: arm <arm@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_003432_088326_8CED2F7F 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Andrew Jeffery <andrew@aj.id.au>, linux-aspeed@lists.ozlabs.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello ARM maintainers,

Here's the ASPEED device tree changes for 5.3. Most of the patches
have been baking for a number of weeks, with a few late changes added
in today.

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/joel/aspeed.git \
    tags/aspeed-5.3-devicetree

for you to fetch changes up to 6084110a0e9c4bff75970f3d68091ceff9e2c2c7:

  ARM: dts: aspeed: Enable video engine on romulus and wtherspoon
(2019-06-20 16:37:26 +0930)

----------------------------------------------------------------
ASPEED device tree updates for 5.3

We have various device tree updates from the OpenBMC project to enable
bits and pieces in existing systems, notably updates to Google's Zaius.

There are some AST2500 machines under development:

  * Lenovo Hr630
  * IBM Swift
  * Facebook YAMP

And some AST2400 machines that have been around but out of tree and have
now joined the party:

  * YADRO VESNIN
  * Microsoft Olympus

----------------------------------------------------------------
Adriana Kobylak (2):
      ARM: dts: aspeed: Add Swift BMC machine
      ARM: dts: aspeed: swift: Add pca9539 devices

Alexander Filippov (1):
      ARM: dts: aspeed: Add YADRO VESNIN BMC

Andrew Peng (1):
      ARM: dts: aspeed: Adding Lenovo Hr630 BMC

Benjamin Herrenschmidt (1):
      ARM: dts: aspeed: Add Power9 and Power9 CFAM description

Eddie James (1):
      ARM: dts: aspeed: Enable video engine on romulus and wtherspoon

Hongwei Zhang (1):
      ARM: dts: aspeed: Add Microsoft Olympus BMC

Joel Stanley (1):
      ARM: dts: aspeed: Rename flash-controller nodes

John Wang (1):
      ARM: dts: aspeed: Add Inspur fp5280g2 BMC machine

Maxim Sloyko (1):
      ARM: dts: aspeed: zaius: add Infineon and Intersil regulators

Patrick Venture (2):
      ARM: dts: aspeed: Add aspeed-p2a-ctrl node
      ARM: dts: aspeed: quanta-q71: Enable p2a node

Robert Lippert (2):
      ARM: dts: aspeed: zaius: update 12V brick I2C address
      ARM: dts: aspeed: zaius: fixed I2C bus numbers for pcie slots

Tao Ren (2):
      ARM: dts: aspeed: cmm: enable ehci host controllers
      ARM: dts: aspeed: Add Facebook YAMP BMC

 arch/arm/boot/dts/Makefile                         |   6 +
 arch/arm/boot/dts/aspeed-bmc-facebook-cmm.dts      |   8 +
 arch/arm/boot/dts/aspeed-bmc-facebook-yamp.dts     | 160 ++++
 arch/arm/boot/dts/aspeed-bmc-inspur-fp5280g2.dts   | 846 ++++++++++++++++++
 arch/arm/boot/dts/aspeed-bmc-lenovo-hr630.dts      | 566 ++++++++++++
 arch/arm/boot/dts/aspeed-bmc-microsoft-olympus.dts | 207 +++++
 arch/arm/boot/dts/aspeed-bmc-opp-lanyang.dts       |   2 +
 arch/arm/boot/dts/aspeed-bmc-opp-palmetto.dts      |  22 +
 arch/arm/boot/dts/aspeed-bmc-opp-romulus.dts       |  14 +
 arch/arm/boot/dts/aspeed-bmc-opp-swift.dts         | 966 +++++++++++++++++++++
 arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts        | 224 +++++
 arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts   |  14 +
 arch/arm/boot/dts/aspeed-bmc-opp-zaius.dts         | 123 ++-
 arch/arm/boot/dts/aspeed-bmc-quanta-q71l.dts       |   5 +
 arch/arm/boot/dts/aspeed-g4.dtsi                   |   8 +-
 arch/arm/boot/dts/aspeed-g5.dtsi                   |  11 +-
 arch/arm/boot/dts/ibm-power9-dual.dtsi             | 248 ++++++
 17 files changed, 3417 insertions(+), 13 deletions(-)
 create mode 100644 arch/arm/boot/dts/aspeed-bmc-facebook-yamp.dts
 create mode 100644 arch/arm/boot/dts/aspeed-bmc-inspur-fp5280g2.dts
 create mode 100644 arch/arm/boot/dts/aspeed-bmc-lenovo-hr630.dts
 create mode 100644 arch/arm/boot/dts/aspeed-bmc-microsoft-olympus.dts
 create mode 100644 arch/arm/boot/dts/aspeed-bmc-opp-swift.dts
 create mode 100644 arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts
 create mode 100644 arch/arm/boot/dts/ibm-power9-dual.dtsi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
