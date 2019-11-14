Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29395FBE84
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 05:16:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QXJpckAMJWMcZQQKy/8grA9bqsDVPA4UUbAr/u/Ghhg=; b=cSLOXDwr+T+6Zw
	n2/04bSuMfYpe0tMB1m1IIsA7cOIWAAmGOHInMwMLs5wP8Og/hNP1XNaUiuHDlk+jmlunlxO9l+B4
	wDUTvi6JxtLe/h5BXysXyMwIsBvWZ8+gy5JTIawD2zd4A58AC9Enn4G0YH62kl7UWF+coN4dtiN/t
	2WX6WQBWsq9rZUs5Nymu2VRzsK0U/DvyV+Ly+pfsgyZMofkwM6zW+3fEpcCYS1JF8vgiYxH2wVdYZ
	V1xb/9yeNoiYJYs+Q9G7hDwyFsIvSgAn2RUmjeyvtxyNyT65+CMHVtqREQ5fSjM33IDfMsyPQeLNR
	NnJ1GbyMnXiIL2d65Img==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV6YJ-0003S5-Sb; Thu, 14 Nov 2019 04:16:15 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV6YC-0003Rn-75
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 04:16:09 +0000
Received: by mail-pf1-x443.google.com with SMTP id c13so3222043pfp.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 20:16:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=xX0IGDGxZ7reuqUqxv2ykfm89rjIDO860DefvQbuA98=;
 b=AEdGfcWCvY7niHYo86gHc9yGERFpCe6WrSATcr7cwx/TjEmNACXgn8/zSykyRaPTtp
 j+AMAYeYUZeIWLQxJbTMQgFf+f176qMfkwrUTl/OWJmYCBJ2IEnwlfsQA86lsGV6pGAy
 yc3z2dohp+S8120xpch2MjrfMQwMbY49rH+ZM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=xX0IGDGxZ7reuqUqxv2ykfm89rjIDO860DefvQbuA98=;
 b=dSniADXe6Sf3oBEhvyxqKezLkfxWfAZgDlZj+NYoNOr36JjMvryjKj4hliCebxbR3E
 h2Gsp00ZHe14Bbzm0oQKlZaf1AVNrrVZu+zyJGphuJS+R6tWf7hl7GPzzDoJVS2vowdr
 TH7j7e49cLHYYe76yY1ITvZ4hIWyIYCBmJY8gKinzbO4dn+pz3LFQ6PvWvIqaxZENelP
 qKmshO2GE+WyD81cj0ukc/1BzFciOQ6e7jHVZeWKbcaLAIU+FD1Jh203sfZQ4vM8iVN5
 eqYGUSeeRxDzlLZx//jKRF/QCRWi4xrYbiOqV8qRnqWUfzVlFDPY4uzRQeT8PxW4UEwV
 BJ7w==
X-Gm-Message-State: APjAAAVXGOJaTR4ncDhehfTyp0/aYLcHRhf+c9j1B9i3h/TMJ0loqK69
 HtfrCRpI8V/Xv3X/YsepR6VOE7Ik4gYG9ebiCJ+WnzEYrww=
X-Google-Smtp-Source: APXvYqye5GQ3dpU8avlSfFo3h9SALnUM70KR5nxoGWJtnrLSAdjx65WKjJWWtV5Blx8yCcHEJn80qKk5MMhOZTIqFpI=
X-Received: by 2002:a0c:edcc:: with SMTP id i12mr5075940qvr.20.1573704571059; 
 Wed, 13 Nov 2019 20:09:31 -0800 (PST)
MIME-Version: 1.0
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 14 Nov 2019 04:09:19 +0000
Message-ID: <CACPK8Xc3a=6irkTSfwyPrr=nWv_fa9nMxthtC2AyqFJEWvuMwg@mail.gmail.com>
Subject: [GIT PULL] ARM: aspeed: defconfig changes for 5.5
To: arm <arm@kernel.org>, soc@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_201608_255902_EB8042FB 
X-CRM114-Status: UNSURE (   6.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Jeffery <andrew@aj.id.au>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello ARM maintainers,

Here are some defconfig changes for 5.5. There is a diffstat and shortlog below.

The following changes since commit b50a85c023f494047a3767398ca589d1c801f22b:

  ARM: config: multi_v5: ASPEED SDHCI, SGPIO (2019-11-13 14:38:39 +1030)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/joel/aspeed.git
tags/aspeed-5.5-defconfig

for you to fetch changes up to b50a85c023f494047a3767398ca589d1c801f22b:

  ARM: config: multi_v5: ASPEED SDHCI, SGPIO (2019-11-13 14:38:39 +1030)

----------------------------------------------------------------
ASPEED device tree updates for 5.5

This adds recently merged drivers to the aspeed g4 and g5 defconfigs,
and to the multi v5 and v7 shared defconfigs.

----------------------------------------------------------------

Joel Stanley (5):
      ARM: config: aspeed-g5: Enable 8250_DW quirks
      ARM: config: aspeed-g5: Add SGPIO and FSI drivers
      ARM: config: aspeed-g4: Add MMC, and cleanup
      ARM: configs: multi_v7: ASPEED network, gpio, FSI
      ARM: config: multi_v5: ASPEED SDHCI, SGPIO

 arch/arm/configs/aspeed_g4_defconfig | 18 ++++++++++++------
 arch/arm/configs/aspeed_g5_defconfig |  4 ++++
 arch/arm/configs/multi_v5_defconfig  |  4 ++++
 arch/arm/configs/multi_v7_defconfig  |  9 +++++++++
 4 files changed, 29 insertions(+), 6 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
