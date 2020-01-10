Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D2313751A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 18:44:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+dUHJuSf9peW4dp3ph4gMWeZj4aXZ3S7BsLf02B9bmQ=; b=PWk
	xI2BEIjFwLNc9lBoumrR73BKOA0dcYO3TOpzhVJtGkZKHIXe7bwZeJ1s+csH52UU/wLKlVPLpzI9+
	bSS3CBzRhS9uUye2YKBN519h1QPfZ+3Ra2fxXv2K0ZhZD8W9CPoc8UvqkSwLwU7Lm7dFaYQ7WP4o5
	7RIxSy5fCaUM0NdHKREFX6g8HywL9aaoTdV8ZjfIBimKrnXTWBkSopyvqvhKWSMWcA6k2RQoQOLqg
	HD6kwximPfS4+yAoHPjxnqL+ZiTaC5u+qUte/NhqQ7mSWZAgJMpd7fIE/BaqeZ4Y5jDgq7Q6zlVW3
	qjCfp0idJkNpMBNTtVJwoRXeRn4hM0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipyKw-00055E-7P; Fri, 10 Jan 2020 17:44:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipyKo-00054Q-SL
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 17:44:36 +0000
Received: from localhost.localdomain (unknown [83.218.167.187])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9BB9D206ED;
 Fri, 10 Jan 2020 17:44:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578678274;
 bh=+XlasTsclIpK9sBFtzJ91eHhptB1H+p3XDQ+dPHG9P8=;
 h=From:To:Cc:Subject:Date:From;
 b=EBZniYie9cnWt7iquazlzLwNtr7fYI2ZXQhZre4JF3cJIxR0p5CQSnZp87RKCSkkQ
 6KkrGYjnVaHse6kCXceAqCSkLYSZtlGFjw3yOjKBOLFTQu/HViAZ/Q/ZaTREHT+Oxt
 5EGhTnygzSspBOzU04B8dHhF3ukhyZ1Z0wgEwlbc=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [GIT PULL] pinctrl: samsung: Pull for v5.6
Date: Fri, 10 Jan 2020 18:44:26 +0100
Message-Id: <20200110174426.5463-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_094434_935269_48BD96A3 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-samsung-soc@vger.kernel.org,
 Sylwester Nawrocki <snawrocki@kernel.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Tomasz Figa <tomasz.figa@gmail.com>,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/pinctrl/samsung.git tags/samsung-pinctrl-5.6

for you to fetch changes up to 225a2ec19aac426ef29f0e4accfc890c87d38bdc:

  pinctrl: samsung: Fix missing OF and GPIOLIB dependency on S3C24xx and S3C64xx (2019-12-15 12:47:52 +0100)

----------------------------------------------------------------
Samsung pinctrl drivers changes for v5.6

Enable compile test for build coverage (and fix exposed missing
dependency).  Clarify Kconfig option help text.

----------------------------------------------------------------
Krzysztof Kozlowski (3):
      pinctrl: samsung: Enable compile test for build coverage
      pinctrl: samsung: Clarify the option titles/names
      pinctrl: samsung: Fix missing OF and GPIOLIB dependency on S3C24xx and S3C64xx

 drivers/pinctrl/samsung/Kconfig | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
