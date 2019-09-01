Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF43A47D5
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 07:55:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ma6B/rNisOC7Ss/x57Y8FmxOfNovsQ41mkFyZM0Tvcc=; b=lKr892Y14bG+zIysxlCyhdZzKG
	MxYgf52Hcx2/lnE8cP4Z46l7IqAEp2ASSIwFX6QCDA1Otl4Kc5rgaD5EPSm3MLXgIxa0dIrZ1F6m0
	iEhp0BDBL+FN3vjc55ZmzYbyGPlNchneMI65Q7EZ1HI07pSFTKkGLNui9ZsJ0aLKYlkusNLjf/Ss6
	McoVJY51T4UqI8FCK09MigsdDwdCOh+s3BX9noWzqjdjrer9CXx0h+d7OjcDn3+9wpLCJ+i56GOqK
	8Lmk2mX3jiLKpPeg5Ca/NdYtyyRdXygZCw42aDdH6ScGKiRJBmLx7g06VnSFlQFnw8PUVuU913lOv
	vEnYBjyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4Iq3-0001cp-SI; Sun, 01 Sep 2019 05:55:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4Ip8-0008Tu-9A
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Sep 2019 05:54:51 +0000
Received: from localhost (mobile-107-107-187-231.mycingular.net
 [107.107.187.231])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AC29121897;
 Sun,  1 Sep 2019 05:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567317290;
 bh=CZYuBAjGTPwLFZHb8DN2Pf0WfGrbWSpU3EmT4Rdvxkk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AYY3UjfVDKOV07yjmY9N7ODhqTx2aI2KuDwCrQvkgWGWB1L1q5ofavav/NAXSNDkK
 IrAgISRB8/KuQFVRGquHnQdHcrVr6pvsLuJ1tJsyxUYgqu1785/a/fRHYtdQLJMX1b
 4qz3Teoy0NZK3JQeoSwDgL/evt7cM5rzTcRGPJb0=
From: Andy Gross <agross@kernel.org>
To: arm@kernel.org
Subject: [GIT PULL] Qualcomm Defconfig updates for 5.4
Date: Sun,  1 Sep 2019 00:54:44 -0500
Message-Id: <1567317285-8555-3-git-send-email-agross@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567317285-8555-1-git-send-email-agross@kernel.org>
References: <1567317285-8555-1-git-send-email-agross@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_225450_356694_A169F6DA 
X-CRM114-Status: GOOD (  10.18  )
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

  git://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-defconfig-for-5.4

for you to fetch changes up to 1cd3e52a07b86cf03079e05968d1a2641b6261c4:

  ARM: multi_v7_defconfig: Add DRM_MSM to defconfigs with ARCH_QCOM (2019-09-01 00:37:54 -0500)

----------------------------------------------------------------
Qualcomm ARM Based defconfig Updates for v5.4

* Add DRM_MSM to ARCH_QCOM defconfigs

----------------------------------------------------------------
Andy Gross (1):
      ARM: multi_v7_defconfig: Add DRM_MSM to defconfigs with ARCH_QCOM

Jordan Crouse (1):
      ARM: qcom_defconfig: Add DRM_MSM to defconfigs with ARCH_QCOM

 arch/arm/configs/multi_v7_defconfig | 1 +
 arch/arm/configs/qcom_defconfig     | 1 +
 2 files changed, 2 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
