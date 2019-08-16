Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 831F9905CC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 18:31:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Lipa3jvK96QbGQEbTi4O6xQKezVzTJExcmX5aQGTNQs=; b=a8pGj73rwroQq9u9xdyRhpCOMy
	mDTcwErEYlJW1ePQz+jaZnjaYL44d+a1a7gZVi/F/2UXzdwKLAc1DlIeHcuixeB8bgUD9UnJcVe0M
	fEZQYxyjU4x0IugvAdYfJtz+IdFs+kWv7ZyqnNpyLEWrDmRSFMMjZu9Y2iF4XZpjhItAceFCh95xu
	zsKm3ByZEsw6rDbPI/+RdbmZbbzcXSvOFIsjZ9AejH/uRGRNXjZ+w3wZCS8J1nywb55UZO1ih2u3p
	ZWL6ScMpOOismAyt/fFhVMUqre+wnTy/sXFte25yhgZzEwtqxvpvvw1emnr89qbf8nNZnf2C1Djmq
	t/0kewcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyf8f-00062U-62; Fri, 16 Aug 2019 16:31:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyf7w-0005dq-7U
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 16:30:57 +0000
Received: from localhost.localdomain (unknown [194.230.155.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CF3CB2173E;
 Fri, 16 Aug 2019 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565973055;
 bh=0drG/IaIH9vyth4PWqswXAkHuJ4rjWgU6KRc7PlP06M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=U3IsXHEagErS2Pqmk7IVQ+yWuczqq5Eu2FUZ50hCL/9u0KAK0n3npjus+ABKYhOLc
 YqGuT0ITWXOQ+axriPm47UZSMm4TNBgYhSQC6oH099jyZucvBZIEbfWqkj7ZceR0af
 +ztGrafANd+4RS/szdY3QcXHW5tdl8lYR9oIPo0E=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL 2/3] ARM: samsung: mach for v5.4
Date: Fri, 16 Aug 2019 18:30:42 +0200
Message-Id: <20190816163042.6604-3-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190816163042.6604-1-krzk@kernel.org>
References: <20190816163042.6604-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_093056_322252_EE4E0502 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-soc-5.4

for you to fetch changes up to 1fa70c7f49132513fb0da4afa7643395eedc7d35:

  ARM: exynos: Enable exynos-chipid driver (2019-08-15 20:29:58 +0200)

----------------------------------------------------------------
Samsung mach/soc changes for v5.4

1. Minor fixup in plat code (S3C platforms),
2. Enable exynos-chipid driver to provide SoC related information.

----------------------------------------------------------------
Linus Walleij (1):
      ARM: samsung: Include GPIO driver header

Pankaj Dubey (1):
      ARM: exynos: Enable exynos-chipid driver

 arch/arm/mach-exynos/Kconfig                   | 1 +
 arch/arm/plat-samsung/include/plat/gpio-core.h | 1 +
 2 files changed, 2 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
