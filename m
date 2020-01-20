Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C931C14313B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 19:02:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Ou1mDgsIjBvl+MC0CjL+QkzWfwqvfxItamJlrVUGz1U=; b=X+i
	8Qmd9s+M4JbF+uuEX1MPUSmXVXmfchd0jtMImZGL6wYP0FlP2JeuotlAw8b6nIrRZ0Sa7KT58Y1rP
	FDSzWDsEv6IXjujHdViBfeykBBiH9crbrmFRKDZaumPGeqRzFv2RwYbc3dObkbPne5xI6BjKKqDsJ
	yBzMH6ow6WQSGD/axO0VtdvVLm48mg53wob900vjf4wOOKasm0QK2/U1bbQnQ03IDJxycmyhZP6F+
	JZtKIdhbrxiJ50InK1aTF2GiZwZMg2s7oqbF2VPS8jZGztQ7M8EQbAAKU3z/sEbvHf6r2kx7Rz8yR
	SNV+gSDiS8d0x1m3KqDJ+8V3l/N/+uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itbNy-0004mq-9n; Mon, 20 Jan 2020 18:02:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itbNi-0004m2-UW
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 18:02:40 +0000
Received: from localhost.localdomain (unknown [194.230.155.229])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2DFE522314;
 Mon, 20 Jan 2020 18:02:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579543354;
 bh=5g+nhNLBu3QaKcp7T3GYytUhOVrS04sl1IWrP+4wSqk=;
 h=From:To:Cc:Subject:Date:From;
 b=r2hEtFLB/hocwTKWiMWXITcsdVBrZg7eEOoxP3U3OvU4tVMZVxa/qtumf7KuOsFAh
 JB70raMw7aosIAQP3fV7enDBefarYoslwimkcYRBEPAUBbZU2qLHbOnCFWJT+sJzpQ
 LuAD+Xk5GJeM2eWK5I5ZnnWx2Ld91bsUBbeHaNa4=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] ARM: defconfig: Samsung defconfig for v5.6
Date: Mon, 20 Jan 2020 19:02:27 +0100
Message-Id: <20200120180227.9061-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_100235_003207_9DBB82C1 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi,

I hope it is not too late for these defconfig changes.


Best regards,
Krzysztof


The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-defconfig-5.6

for you to fetch changes up to cdfc88f1cdbf12b666dcf2da3f1de38fb1512262:

  ARM: multi_v7_defconfig: Enable devfreq thermal integration (2020-01-17 20:28:54 +0100)

----------------------------------------------------------------
Samsung defconfig changes for v5.6

1. Bring back explicitly wanted options which were removed through
   `make savedefconfig`.  savedefconfig removes options selected by
   other symbol, however developers of this other symbol can remove
   anytime 'select' statement.
2. Enable NFS v4.1 and v4.2, useful in testing/CI systems.
3. Enable thermal throttling through devfreq framework.

----------------------------------------------------------------
Krzysztof Kozlowski (3):
      ARM: exynos_defconfig: Bring back explicitly wanted options
      ARM: exynos_defconfig: Enable NFS v4.1 and v4.2
      ARM: multi_v7_defconfig: Enable NFS v4.1 and v4.2

Marek Szyprowski (2):
      ARM: exynos_defconfig: Enable devfreq thermal integration
      ARM: multi_v7_defconfig: Enable devfreq thermal integration

 arch/arm/configs/exynos_defconfig   | 9 +++++++++
 arch/arm/configs/multi_v7_defconfig | 3 +++
 2 files changed, 12 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
