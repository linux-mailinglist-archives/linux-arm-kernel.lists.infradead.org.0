Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5674242FD3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 21:18:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pWKelZUl4VVX/lWyrYRKEegAZ5iftG2XB/tF7+VqgAg=; b=e7WfMo2HZ5cmwx
	baey/+DB7eQk7UB01KVDfdGw5MAJG6J4g0sp4D4lvonu7nIrqe/lQyph+83CpP05l80YlJwkMEkG6
	PJEVYwsjE+zRAoxjOeDTO7l6evuXy5VjKvTprvLY1gbhwaOubarN70SrnSc0dMwLC/KLUMjLNpijo
	0f4fYMxd2MdgOC7T8lW0B2H3KYxp39DqPrVJPdC9FRmmsbu24YK80bPWreY4L1D+5pycWdPvnINpm
	sEYbGqfBTjHXJZz+KzICrZW8NNbK/ZSyoywflivel1YjfYsKaj2a/GBRfbdsYkj1ci+XVVccSMaIq
	BxvNcVbEttFpXqnu7nnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb8lq-0006u9-Kv; Wed, 12 Jun 2019 19:18:54 +0000
Received: from smtp13.smtpout.orange.fr ([80.12.242.135]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb8le-0006tg-Lh
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 19:18:44 +0000
Received: from belgarion ([90.76.40.119]) by mwinf5d74 with ME
 id PvJc2000C2aFDoA03vJcsm; Wed, 12 Jun 2019 21:18:39 +0200
X-ME-Helo: belgarion
X-ME-Auth: amFyem1pay5yb2JlcnRAb3JhbmdlLmZy
X-ME-Date: Wed, 12 Jun 2019 21:18:39 +0200
X-ME-IP: 90.76.40.119
From: Robert Jarzmik <robert.jarzmik@free.fr>
To: arm@kernel.org
Subject: [GIT PULL] pxa for v5.2
X-URL: http://belgarath.falguerolles.org/
Date: Wed, 12 Jun 2019 21:18:36 +0200
Message-ID: <87o9321uk3.fsf@belgarion.home>
User-Agent: Gnus/5.130008 (Ma Gnus v0.8) Emacs/26 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_121842_993736_ECDB021C 
X-CRM114-Status: GOOD (  18.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robert.jarzmik[at]free.fr)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Haojian Zhuang <haojian.zhuang@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Daniel Mack <zonque@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd, Kevin, and Olof,

This is the pxa pull request for 5.2. Can you please consider pulling ?

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  https://github.com/rjarzmik/linux.git tags/pxa-for-5.3

for you to fetch changes up to e0c5facc5bbfcae6fce6ce11b78981ede1535276:

  ARM: pxa/lubbock: remove lubbock_set_misc_wr() from global view (2019-06-12 12:17:48 +0200)

----------------------------------------------------------------
This is the pxa changes for 5.2 cycle :
 - a simple cleanup for lubbock
 - devicetree pinmux support for bias on pxa3xx
 - devicetree pinmux bias usage for raumfeld

----------------------------------------------------------------
Daniel Mack (5):
      ARM: pxa3xx: dts: Add defines for pinctrl-single,bias-pull{up,down}
      ARM: pxa: raumfeld-controller: fix 'dock detect' GPIO key
      ARM: pxa: raumfeld-controller: add pinctrl for charger pins
      ARM: pxa: raumfeld-common: fix comments in gpio_keys pinctrl node
      ARM: dts: pxa300-raumfeld-speaker-one: add channel output mapping for STA320

Russell King (1):
      ARM: pxa/lubbock: remove lubbock_set_misc_wr() from global view

 arch/arm/boot/dts/pxa300-raumfeld-common.dtsi     |  6 +++---
 arch/arm/boot/dts/pxa300-raumfeld-controller.dts  | 21 ++++++++++++++++++++-
 arch/arm/boot/dts/pxa300-raumfeld-speaker-one.dts |  3 +++
 arch/arm/boot/dts/pxa3xx.dtsi                     |  8 ++++++++
 arch/arm/mach-pxa/include/mach/lubbock.h          |  4 ----
 arch/arm/mach-pxa/lubbock.c                       |  3 +--
 6 files changed, 35 insertions(+), 10 deletions(-)

-- 
Robert

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
