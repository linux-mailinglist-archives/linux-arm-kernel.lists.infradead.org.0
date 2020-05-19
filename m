Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B0C1D90A1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 09:03:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=noyIFrwNQIVo6rvFjoGH4Akiin6Ty1igY7pNaZgPIjY=; b=Dj9
	BRzVtUdBXtaPJM0prJ6N2Z96OUDcFrGTo47DMgW/mOTUlVJmDt/toDMGXvuqg7Rettk2R9BYSSsqY
	BLQkv47YQmiemWp419/nZKANZ5lzUmplUxuLu5jZ2cUsn8fQW+IUGJ5Wn/jggfIqV6cPYIwslrptX
	4iQKCEdYhLFHnqHaTy7O2EQ3lg2vMQGdQBLBEdWDwanqt36gKVGofPy8cdKEKHRdQ8WtvJTVXxYC4
	52YdvmU99tWWaeqlYGoel+xNH/OkCohMJy4IZmCd6cyQxjRALFbU0bYoSg+i2/0VWBHrsaSkhUV/U
	8ffxOf9JXjPRL4n3RShad8iEZmC//yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jawH9-0001eK-5p; Tue, 19 May 2020 07:02:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jawH0-0001di-Di
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 07:02:47 +0000
Received: from kozik-lap.mshome.net (unknown [194.230.155.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4B9D820758;
 Tue, 19 May 2020 07:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589871766;
 bh=e6I5AOn+MQNsuOpreKE6NJenPK7FVfv6kOvYka10ELY=;
 h=From:To:Cc:Subject:Date:From;
 b=awQZp2nd6CFA2Y0PZyd0ULpBlUuqnu7eK33JFfn9BtF78mF9rD+k32PIIcnwjmdsW
 t5QPJW4DEdCz2nIHkLQGAkmM0Ek6zPYdBZBWk3RY+KlTwOQqYewjMD8Rlkdvn+7O2H
 i3Ehoe90lgSpEMQLKm6mYgrTKpL06AX3n75V10Cg=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [GIT PULL] pinctrl: samsung: Stuff for v5.8
Date: Tue, 19 May 2020 09:02:40 +0200
Message-Id: <20200519070240.6510-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_000246_481524_B97C64B3 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
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
Cc: linux-samsung-soc@vger.kernel.org,
 Sylwester Nawrocki <snawrocki@kernel.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Tomasz Figa <tomasz.figa@gmail.com>,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

Minor updates for Samsung pinctrl drivers.

Best regards,
Krzysztof


The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/pinctrl/samsung.git tags/samsung-pinctrl-5.8

for you to fetch changes up to f354157a7d184db430c1a564c506434e33b1bec5:

  pinctrl: samsung: Save/restore eint_mask over suspend for EINT_TYPE GPIOs (2020-04-28 11:38:11 +0200)

----------------------------------------------------------------
Samsung pinctrl drivers changes for v5.8

Two fixes for S5Pv210 pinctrl driver: setting proper external interrupt
wakeup mask and restoring external interrupt mask value after system
suspend.

----------------------------------------------------------------
Jonathan Bakker (2):
      pinctrl: samsung: Correct setting of eint wakeup mask on s5pv210
      pinctrl: samsung: Save/restore eint_mask over suspend for EINT_TYPE GPIOs

 drivers/pinctrl/samsung/pinctrl-exynos.c | 82 ++++++++++++++++++++++----------
 1 file changed, 58 insertions(+), 24 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
