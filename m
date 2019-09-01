Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E0AA47D3
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 07:55:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=72g7MvxSQ8PrHOqcmpXzPdrXJ0n1EHoc39CTfNdHvMA=; b=SVG
	8pD9OwgBZWTO0PTTVyVgvnK9ovM6/75WC9LejZKTBxtE5vYpl2Wdmy1IrF2IJRQ9VQERAZzYlu+mB
	Ia/0htmwbluOgOTXiL5UQAe3RFEARSypiZtaQr40aTSbmg6mxEFUdAsh3xxoRUJ3kxgU3gEGNeny/
	qHa+kOHyOH265sKPRt6oOVc8tLwLtM8iRObcuilYc9vHrQdjovE9IcebC0of0grwszqM7+TnUKfiv
	IXarOaHLrm6CLagaxwOScEwJA1gUBFRp52iqEgpPV/Lx0x/AEkVt5KMZU5fd2mR1gfD9uR6fqPPwJ
	p00R6MTAGbmjr8S9o1hWXHLHK5MeqUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4IpH-0008TL-Ez; Sun, 01 Sep 2019 05:54:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4Ip5-0008Sn-4W
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Sep 2019 05:54:48 +0000
Received: from localhost (mobile-107-107-187-231.mycingular.net
 [107.107.187.231])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4E0FC21897;
 Sun,  1 Sep 2019 05:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567317286;
 bh=hYNpfCdsssYnFefu4UrSMeq2HNFfaASOrL68acUZ+Cg=;
 h=From:To:Cc:Subject:Date:From;
 b=fPQa0Fj0tuKxh6NzYoeTsBqy4iv4GwTY4h8fWgG4EzpHhF/kuvIsXPrtFPDYipe+X
 Kzzpl9n1c0oKRNZMVzC4CMSdX0sXTXhopodQMWQqe5PzG9ofqD/eseXHP7fqHAYA9v
 otA1CRqjREihnPtw0tELMlxgqt+Wv7z9kntR1G4o=
From: Andy Gross <agross@kernel.org>
To: arm@kernel.org
Subject: [GIT PULL] Qualcomm ARM64 Defconfig updates for 5.4
Date: Sun,  1 Sep 2019 00:54:42 -0500
Message-Id: <1567317285-8555-1-git-send-email-agross@kernel.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_225447_206117_82293FF3 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Olof Johansson <olof@lixom.net>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-arm64-defconfig-for-5.4

for you to fetch changes up to fcee7de608a2e4cb3481fd224b11242427d8ec28:

  arm64: defconfig: Enable CPU clock drivers for Qualcomm msm8916 (2019-09-01 00:42:53 -0500)

----------------------------------------------------------------
Qualcomm ARM64 Based defconfig Updates for v5.4

* Enable Qualcomm MSM8916 clock drivers
* Add DRM_MSM to ARCH_QCOM defconfigs
* Enable Qualcomm SM8150 clock and pinctrl drivers

----------------------------------------------------------------
Jordan Crouse (1):
      arm64: defconfig: Add DRM_MSM to defconfigs with ARCH_QCOM

Marc Gonzalez (1):
      arm64: defconfig: Enable CPU clock drivers for Qualcomm msm8916

Vinod Koul (1):
      arm64: defconfig: Enable SM8150 GCC and pinctrl driver

 arch/arm64/configs/defconfig | 5 +++++
 1 file changed, 5 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
