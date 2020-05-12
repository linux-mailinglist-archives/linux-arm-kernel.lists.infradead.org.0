Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3AF51CF45D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 14:30:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7YQdGn7YpWVt8cuvS7Gqvs5pUSrvmh88w7dnDV+/EJ0=; b=ZI9Zy7lti4kcan4HuScEj3UuqD
	i9z1pMSSixd5Z0bXhVq7t2Lt6r/oXRlKkF6tBPKmTQJHKmfeBHxoJhjvXb7/akm3pdd/6eOz7ykNO
	uVZY31yuvN+0JMxVr2WXhWJ0OPyKYt9ScyFgCC+UpU1LeIvKArq+g/bHeDEQFvmfSrVy5m3UX86/Q
	xOAyAfdTiosMOQ71+eueu13wp3b8iorZ5OUQHNW08iFco4mMXPIliXdyWSa5fjunwF9FiPeQvRxa2
	ylsJmEjDq1x/1OMbX9J7Qf2h+DCgpkSsJlSS3Q3xarhzedAd7nfTj3Rm1yjNW28LePkRfsjnYxoKD
	is9kAyzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYU2z-0000ts-HG; Tue, 12 May 2020 12:30:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYU2T-0000Vh-Tu
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 12:29:39 +0000
Received: from kozik-lap.mshome.net (unknown [194.230.155.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A3DE820675;
 Tue, 12 May 2020 12:29:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589286577;
 bh=p5Js5GS+HDKY5sjeBfw7GbhV47dnBqQRVQIe0Hlt10s=;
 h=From:List-Id:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JTPsHgkZbWB3sEBMVj2fRha3pUIQj9vJC8fT+W8maEBJhAOSN4HM8SxbqJPYm1ysE
 TpBw75apKXQw91szBDucqcT2yPwQx08Gi+SYn5ZECkYTCDuf0xkzwWiVedQp7y3v5O
 FLEL10dfdMZEnyfiOqo3ppbAgyWZyOgmHQkGE6DI=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL 3/3] ARM: samsung: mach/soc for v5.8
Date: Tue, 12 May 2020 14:29:22 +0200
Message-Id: <20200512122922.5700-3-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512122922.5700-1-krzk@kernel.org>
References: <20200512122922.5700-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_052938_010687_7CDB0DC2 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-soc-5.8

for you to fetch changes up to 06b29212c3a2467ef9d25876fe82b77fa3d09ac2:

  ARM: samsung: Use devm_platform_ioremap_resource() to simplify code (2020-04-21 11:35:00 +0200)

----------------------------------------------------------------
Samsung mach/soc changes for v5.8

Cleanups and code simplifying.

----------------------------------------------------------------
Tang Bin (2):
      ARM: samsung: Omit superfluous error message in s3c_adc_probe()
      ARM: samsung: Use devm_platform_ioremap_resource() to simplify code

Wolfram Sang (1):
      ARM: s3c64xx: convert to use i2c_new_client_device()

 arch/arm/mach-s3c64xx/mach-crag6410-module.c | 7 +++----
 arch/arm/plat-samsung/adc.c                  | 8 ++------
 2 files changed, 5 insertions(+), 10 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
