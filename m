Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0945A557DE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 21:36:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uQ0Pf3CwFFDV2V4JbIX0N/N8XYD9c57Ik1DV+124YBo=; b=uB3aNtCa6UoakGRjehe/tqJBD+
	2t2ea7hBuBzYQda+El/gkumvHk8RvTlS+srBu+T1W34wkX69qIsRrgkb5l/VAh8IAJDryN1RvYJqg
	ZEakk/HVxvO5VmtM8MVpp77J60wEjKyJmY5TS5pWgEH25qw6Djg9uo1SkelJKsqJzZrWjWEh/ziAw
	xvsgrMts7aeC17u1pw4qj2tvF5Uh3Y5YXZSAx3reAlDInSnar/Mxrj29BK6ZudIWrylGfxBuTtEPp
	bz2iYj/W6BpfRVu2nJfjaZRdvT3YxkaH8a1FPIKICfqLJ66TmbYEtAotKegcPpbnDAm3mHlH8ZAUc
	BQBVlYXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfrEn-0007Qv-IJ; Tue, 25 Jun 2019 19:36:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfrDf-0006WV-95
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 19:35:08 +0000
Received: from localhost.localdomain (unknown [194.230.155.151])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0027120883;
 Tue, 25 Jun 2019 19:35:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561491307;
 bh=aRij1mR2Y7fwBDGuFaA7Kzzg9Y6e90L+q57nwMwS4+0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rVzEt3Nb68tTb0K9jdU1XJISzbdNzEpg4V/4IYkGYX2jO1kULCNEFCCNAIDqcKX8h
 pH1NF/KB/3ziCIc6F1GchXk+0tysPPzOpZYxz/JHVHXYTAwp1DJkQcPopMPo7PJuBk
 zQ7J/mHIEFLSl9U/R4wH0L+TcA7HzVYJ+Zn2xRME=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org
Subject: [GIT PULL 3/4] arm64: dts: exynos: Pull for v5.3
Date: Tue, 25 Jun 2019 21:34:50 +0200
Message-Id: <20190625193451.7696-3-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190625193451.7696-1-krzk@kernel.org>
References: <20190625193451.7696-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_123507_473009_B51D20CB 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-samsung-soc@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-dt64-5.3

for you to fetch changes up to 4dc2a25d058d71f39e41da986777327b423b92f1:

  arm64: dts: exynos: Add GPU/Mali T760 node to Exynos7 (2019-06-24 19:52:48 +0200)

----------------------------------------------------------------
Samsung DTS ARM64 changes for v5.3

Add Mali nodes to Exynos3 and Exynos4.

----------------------------------------------------------------
Krzysztof Kozlowski (2):
      arm64: dts: exynos: Add GPU/Mali T760 node to Exynos5433
      arm64: dts: exynos: Add GPU/Mali T760 node to Exynos7

 .../boot/dts/exynos/exynos5433-tm2-common.dtsi     |  5 +++
 arch/arm64/boot/dts/exynos/exynos5433.dtsi         | 51 ++++++++++++++++++++++
 arch/arm64/boot/dts/exynos/exynos7-espresso.dts    |  5 +++
 arch/arm64/boot/dts/exynos/exynos7.dtsi            | 11 +++++
 4 files changed, 72 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
