Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56501F00B2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 16:05:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fHWzVhrCknG7AFoiCXfSyJ2LlkCmztTW+90oAnul/P4=; b=Tp2Sxml6cWN0zki57ajqKjt8+D
	kg2zjHdDTFABuhcmPxm88ARB/iD/6bz9ZW2hpjBGeE6+pZLvlnU4i3aHgnfxiKb4h8SlT4b/NipOR
	RD1LBtQrINn1HytVM1wmoBDhxodo4dnOSVVyQM6QBEYhI/1aTauVV3sgVwVuVt1hBMdzVjPUS9TkA
	1gQla9aSaJPh16k6qOO9jX66KBq8d1JylyLxi0yW2vuqvJj/IXhoOfXWW8xkHssGivqSpqelKxkOd
	XLZ9hLWxNXO5H+QsXIi4IcoWs+WtLH9XVMK3gMzz48kTgB0TU0YbQHFAEVEeq1JVBPWXJB856yG4L
	DO+0/Mfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS0OC-0000EW-2q; Tue, 05 Nov 2019 15:05:00 +0000
Received: from mail-vs1-f67.google.com ([209.85.217.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS0NI-00081U-Pf
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 15:04:06 +0000
Received: by mail-vs1-f67.google.com with SMTP id m6so7079288vsn.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 07:04:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=T0S7AYlW0zORtZ0zEI7jCKf2JCk13MAX2atc+Ns7nEM=;
 b=Re4MWXLiUM2aUk7qNzjWH/2ln16GrzO4iWupTCl8U51OMoQeJuJZpRISaH4p2C9fgF
 x28T6A+zqP04TBSCtWFt/wam44EdhKYb11iWYwHmwhvVbtupC3guwVFFVN3hyJjMJ4t4
 +VepVxLz7IrskMVAqYrKP5iNGFefL+aakmHBS/0vPIyLqGIAMjHQqt6U0NL+SOda//U2
 7DLuAflkq8+u7kNtwfFw63s7UleMMJMXi/hvbYiEXNV3TCOl2EEl5YrsXw2ZKYb7DQu5
 yLrg4/sCYZX2MMbG5mXKeUvgG44+nTFSRf17/8OTszGw0n6jGPLcez4GRaTCwN4N9xlI
 eczA==
X-Gm-Message-State: APjAAAXIj0q1qxILtuE1lycWFAIfWsWq4eN6RUz9wWLsUIMBR9h1I/VY
 XaYSQapjWUoKKD5lgtHWOi93rQ==
X-Google-Smtp-Source: APXvYqxI8CH/kYT7sLcIsJyCHzKtqEukX6maLLlSP+V2+lCLxhgWxzwYB3GBijncMDIjrmk/DKR4Bg==
X-Received: by 2002:a67:7d54:: with SMTP id y81mr15655350vsc.134.1572966243495; 
 Tue, 05 Nov 2019 07:04:03 -0800 (PST)
Received: from localhost (li1038-30.members.linode.com. [45.33.96.30])
 by smtp.gmail.com with ESMTPSA id o7sm5966717uai.15.2019.11.05.07.04.02
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Tue, 05 Nov 2019 07:04:02 -0800 (PST)
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org,
	arm@kernel.org
Subject: [GIT PULL 6/7] LX2160A TMU device tree support for 5.5
Date: Tue,  5 Nov 2019 23:03:14 +0800
Message-Id: <20191105150315.15477-6-shawnguo@kernel.org>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191105150315.15477-1-shawnguo@kernel.org>
References: <20191105150315.15477-1-shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_070404_942324_5EC48F68 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.67 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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

Hi Arnd, Olof,

This single patch becomes a separate pull request from imx-dt64-5.5,
because it conflicts badly with commit 07159f67c771 ("arm64: dts:
lx2160a: Correct CPU core idle state name"), which has been merged as
part of imx-fixes-5.4.  To make your life easier, I merged imx-fixes-5.4
here, resolved the conflicts and sent it as a separate pull request.

Shawn


The following changes since commit 95993238b29b3f0f9a5eb9db84e0e38e5bfe76d8:

  ARM: imx_v6_v7_defconfig: Enable CONFIG_DRM_MSM (2019-10-14 21:27:47 +0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-dt64-tmu-5.5

for you to fetch changes up to 5363eaaeb8e58ad0e73f0dbabd58f5fadca86735:

  arm64: dts: lx2160a: add tmu device node (2019-10-28 21:46:53 +0800)

----------------------------------------------------------------
LX2160A TMU support for 5.5:
 - Add TMU (Thermal Monitoring Unit) device node to enable thermal
   support on LX2160A SoC.

----------------------------------------------------------------
Yuantian Tang (1):
      arm64: dts: lx2160a: add tmu device node

 arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 108 +++++++++++++++++++++----
 1 file changed, 92 insertions(+), 16 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
