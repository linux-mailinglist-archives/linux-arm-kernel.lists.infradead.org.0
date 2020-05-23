Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA981DF463
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 05:27:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XwnzA/9oi042VW1sBXMa/7ZNy6kZ9TsItXP6IoGx+Dw=; b=pi2zB9an8R3r4eB5LTuwTBx80R
	Wd/gxZRwDaTVcptpMGQjwu5DUAePIxYT8Dp/nmLgYiIHnOHxhF2fZ8JHMeBzLD9eGVKe8JPAlHdKQ
	fF6n95vk/wrioXl9KMySqwTcZWcnkNncXAWalpKQWeerEhaAINrsZKeBL8bOKegP0uB5OK/BZeC2U
	UzWoZVgZ5A1bZr06/R3QcSRuCrKxKI+VIGxklyPzGMJVisHQk980G73WmiOaXTS5ikWFDcJYuetQV
	J7JxrqJgc0r4fR27PAr6LzMBPmwTKzK+3VJL9X8pjG/oEzUS8sOvoRZh7AFlI+uAFFcGJz/FaPfOH
	nmnE5qfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcKoW-0001wb-7G; Sat, 23 May 2020 03:27:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcKn0-0000pn-I5
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 03:25:35 +0000
Received: from localhost.localdomain (80.251.214.228.16clouds.com
 [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9ED88207F9;
 Sat, 23 May 2020 03:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590204334;
 bh=y3zY9Oq6PihXsEzJGDsQ9Zh9SdcheJcvQMAXNtaIdWA=;
 h=From:List-Id:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pS6WmitEKqwNvPQbf8q9upppltL/ZiYHRSol+WuKgi1Lbj6r0cVG4Xpzvf/nfWwS0
 bb4j2hOo8MI276qnRoviFoPzps58D/7x79tzbF6Byi6CA63aWQMPNt6731d3Ngvx99
 BMAIcZpO2ZMp+7D8CZKNi+l19w5Z3pUaL+3wC+/4=
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org,
	arm@kernel.org
Subject: [GIT PULL 6/6] i.MX defconfig update for 5.8
Date: Sat, 23 May 2020 11:25:16 +0800
Message-Id: <20200523032516.11016-6-shawnguo@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200523032516.11016-1-shawnguo@kernel.org>
References: <20200523032516.11016-1-shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_202534_617390_C68963EF 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-defconfig-5.8

for you to fetch changes up to 5b4bf802427e3f49b9bca5e02ec7154e4d3d63ad:

  ARM: imx_v6_v7_defconfig: extend RN5T618 PMIC family support (2020-05-20 09:29:07 +0800)

----------------------------------------------------------------
i.MX defconfig update for 5.8:

- Enable RTC and ADC support of RN5T618 PMIC in imx_v6_v7_defconfig.
- Enable i.MX8DXL pinctrl driver support in arm64 defconfig.

----------------------------------------------------------------
Andreas Kemnade (1):
      ARM: imx_v6_v7_defconfig: extend RN5T618 PMIC family support

Anson Huang (1):
      arm64: defconfig: Enable CONFIG_PINCTRL_IMX8DXL by default

 arch/arm/configs/imx_v6_v7_defconfig | 2 ++
 arch/arm64/configs/defconfig         | 1 +
 2 files changed, 3 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
