Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A96B03C0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 20:38:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dH+XkCn8QI5CevUfEQsX44ReIUjgVyONoHuE9bqsvcE=; b=FsIO65H/JNBD623ezbGXKO2k79
	UCRx5XkILgLuSnIzcl55p58kTq8q1BeMR2WWGqE7Msh4DNzYytFpXh477iHca/Ft4+ovfnqtuDOBQ
	k5yoBNDga9PHdsiGzYzjNNF1JCBbaoEvBVkgwDJvPSSRTsLHMm4NkFJkOsqGc3nikoIm6DVU6UfAI
	ktR4SkdWTHy14UUmYg+BoUlZB9vS9PBhCOIZ2cWKdevmgWqVj9p0Dy3GSIrR05RvEe3Jxx2W4sc1d
	5Od6evBkqFkX0QfE5L0JLAWg9aQsMqGkaHwTr7abkBzBIQtEaxvA56dcPq/zyATVGtwTaKrm4RtmW
	OqwCT/qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i87V4-0001vs-4G; Wed, 11 Sep 2019 18:37:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i87Ty-0001Mn-FR
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 18:36:47 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 957EE20863;
 Wed, 11 Sep 2019 18:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568227006;
 bh=zGc5nUnSrcLmCATImTaZ81stiof+h7AVsb7mMRzglHQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=epMIAbtK1rFqZ/4CHUz4ELsJLowpBnDvtMQa5AC8jk3ZcGbRCfG3hxX+yVp0ptnOX
 lWUjPThKTgxtTOgLaH9oQhQ+1iirO09jCTZrcF8SxagFJTFYTusBjn3P87l4Yu9noY
 pgVN93YEcJlobSwuyLEjXAT+RUKLCkgSUD2e21MM=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL 2/2] ARM: samsung: mach/soc for v5.4, second pull
Date: Wed, 11 Sep 2019 20:36:32 +0200
Message-Id: <20190911183632.4317-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190911183632.4317-1-krzk@kernel.org>
References: <20190911183632.4317-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_113646_611008_AA0DDB2A 
X-CRM114-Status: GOOD (  11.81  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi,

Late pull, on top of previous pull request.  Unfortunately the patches
were applied right after closing the linux-next.


Best regards,
Krzysztof


The following changes since commit c663d542bfb40eeeb6d393ed155c23a4666d65e1:

  MAINTAINERS: Extend patterns for Samsung SoC, Security Subsystem and clock drivers (2019-08-22 21:04:45 +0200)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-soc-5.4-3

for you to fetch changes up to 13aeb3fe4d5bd78a6dc7bde32986a7296da420d3:

  ARM: exynos: Enable support for ARM architected timers (2019-09-09 20:56:43 +0200)

----------------------------------------------------------------
Samsung mach/soc changes for v5.4, part 2

1. Fix system restart on S3C6410 due to missing match of watchdog,
2. Enable suppor for ARM architected timers on Exynos.

----------------------------------------------------------------
Lihua Yao (1):
      ARM: samsung: Fix system restart on S3C6410

Marek Szyprowski (1):
      ARM: exynos: Enable support for ARM architected timers

 arch/arm/mach-exynos/Kconfig           | 1 +
 arch/arm/plat-samsung/watchdog-reset.c | 1 +
 2 files changed, 2 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
