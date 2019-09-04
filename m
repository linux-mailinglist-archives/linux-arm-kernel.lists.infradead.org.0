Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D35A8717
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 19:50:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5HsN/y6O1rPJ1EQmSkRoREmQPKZIQnRRkvcvmQ10Ajk=; b=FHPc7fPTZ8O6aBLID09AZXC6V5
	KMZoDrE6l9ajm0cDRA06hf6SExpPYVLdNUP60k0OzBXbZ49fp1Stone1Wk2KRF0yQbncRB/MgIK4F
	hqyzyepWx23wmXwBw54nPCIJVh/dd2UAe+YCYQfVhkhq1Op+x9iwLm8Ei7imVkBipn1/CdnFSUAoL
	W9pAZ0DsQ6ukDqB7vjMWKkVHL7CUgzpkQ/IR7C6g1OPDDFGrRyj7ZvxJevJc+keFvmuDdYH/YMjMk
	RjxYlnUzquhvP7LFrEMsJM1z8arpGgdT5K4ze+Hk8tYsrgwlcH9xntr/sruhOuwUY/4smH44IonW5
	UapRCGOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ZQh-00081y-Ts; Wed, 04 Sep 2019 17:50:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ZQE-0007k1-9N
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 17:50:23 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B9D8721883;
 Wed,  4 Sep 2019 17:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567619422;
 bh=atbT7s4nkjvbhxmdwbnCIhN5SlzuKsVKwEKH1bulJRo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AMTjTbKg++CGOzBWaUsr+7ZgA19CfHgJhUMl7nX8mIwAk5hoe6Pv8hNC8W2CuF5GW
 3X8dARXLh8lqllvJ4f+2t8exl8vAJoQhhCDgegGzxTmoXHih2zgJ3e3eKha98H+CFe
 IbFPJO6UPY7sfG97oBHOrNaglLdCPwICV5dDNVyc=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL 2/5] soc: samsung: Second pull for v5.4
Date: Wed,  4 Sep 2019 19:49:59 +0200
Message-Id: <20190904175002.10487-3-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190904175002.10487-1-krzk@kernel.org>
References: <20190904175002.10487-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_105022_491579_F3E8AF70 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi,

On top of previous pull request.

Best regards,
Krzysztof


The following changes since commit 40d8aff614f71ab3cab20785b4f213e3802d4e87:

  soc: samsung: chipid: Convert exynos-chipid driver to use the regmap API (2019-08-15 20:25:25 +0200)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-drivers-5.4-2

for you to fetch changes up to 28578825ede61834a2c46e7f9a89012c4c7a667f:

  soc: samsung: chipid: Select missing dependency for EXYNOS_CHIPID (2019-08-22 20:16:20 +0200)

----------------------------------------------------------------
Samsung soc drivers changes for v5.4, part 2

Fixes and cleanups for recently introduced Exynos chipid driver.

----------------------------------------------------------------
Colin Ian King (1):
      soc: samsung: chipid: Fix memory leak in error path

Sylwester Nawrocki (2):
      soc: samsung: chipid: Remove the regmap lookup error log
      soc: samsung: chipid: Select missing dependency for EXYNOS_CHIPID

 drivers/soc/samsung/Kconfig         |  1 +
 drivers/soc/samsung/exynos-chipid.c | 18 +++++++++++-------
 2 files changed, 12 insertions(+), 7 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
