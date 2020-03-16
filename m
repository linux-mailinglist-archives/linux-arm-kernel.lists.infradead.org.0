Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 514231871B4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 18:57:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=62+vRsuW6nImAPsEwpR7rI0oZLxQbPlr+jNKPSiMkDk=; b=imnPpvYY7pDkl/6mi2waERH9JY
	imFrG6mGbE69pzjl5HQyvvuQMG6DqSnxfV6936UYl02rQLBTkqKzElOYrsiPpztvNth2C8myoF+ei
	/VJc2/cCriiuCj3pv1I0uqRLSgQaAC/Hcv+b71RHrOrNBB2xws6vfo7oyR+QZUw8gmDsXFEw7WSxZ
	NvprmROHIfAqA0CBz79EMr2B10nB7r8mcfR9Tt8UNPEH4iV6zcH0dBh0Yj0/qb2U+1kVIEoTR1mgb
	6Nt1xbAktaccywn9mQLh0E/eSF49MSl9CTrCxJbOUJdXz/LF9YehfjMaF9fFhZ8HC+AvJnX8DMWY3
	Bg8oc81g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDtzT-0001GU-Md; Mon, 16 Mar 2020 17:57:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDtz5-00017L-4D
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 17:57:04 +0000
Received: from localhost.localdomain (unknown [194.230.155.125])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E01B320679;
 Mon, 16 Mar 2020 17:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584381422;
 bh=pa7OQ+XrbggekEblnQDvRv2Jd8gBw7bFq4uoU+CHb2I=;
 h=From:List-Id:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PlTRXEca3XMK07ZlaWqsBVgUrLeSfKMkuSWRfyMAr4JaD3CphsFDH0ZMd5YAUEodC
 7L2hH9AWUxIuty/tMeJC6BKp4s1mu+Z0I+WDhujeSVdrKi5hi4UmPoUDiHOKoc96EH
 eKwUzxB+k75MlOe/+JsWDYp4xtz01VsqgC67OEDM=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL 1/3] ARM: defconfig: exynos for v5.7
Date: Mon, 16 Mar 2020 18:56:50 +0100
Message-Id: <20200316175652.5604-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200316175652.5604-1-krzk@kernel.org>
References: <20200316175652.5604-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_105703_189696_102DC07F 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-defconfig-5.7

for you to fetch changes up to 182eb908b25030fbba1f585deb2b26fc42b40e81:

  ARM: exynos_defconfig: Add more drivers for GalaxyS3/Trats2 (2020-02-29 15:22:08 +0100)

----------------------------------------------------------------
Samsung defconfig changes for v5.7

1. Enable Energy Model and Multi-core scheduler because they fit common
   use of Exynos SoCs - mobile devices,
2. Enable more drivers for GalaxyS3/Trats2.

----------------------------------------------------------------
Lukasz Luba (1):
      ARM: exynos_defconfig: Enable SCHED_MC and ENERGY_MODEL

Marek Szyprowski (2):
      ARM: exynos_defconfig: Enable SquashFS and increase RAM block device size
      ARM: exynos_defconfig: Add more drivers for GalaxyS3/Trats2

 arch/arm/configs/exynos_defconfig | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
