Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA78FA47D6
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 07:56:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xFNox36EzuuDnGkc8pkfOybR9+OtpC/9vMNxfefeJPs=; b=t3SPPlJWrraUTiSEega8QkAc9e
	6G7isekpxtE0MiWXLOACeJHq3oPUfYuYAgN/vPw4GWKuEr1S6qVvYECsjtngdkcO1OL+odMO39RVs
	bN60g6E3/zeQDD1NTIGmidH9U2ZE6CS7KTwSHp+xWHpWZzekDlHoaKYIttYNMDx4ocD16OzZRf+Ip
	HQMPFXRFPXL2qmlWUQLJ/5fCOue/ofQsw0Cg3cVcGfrTszMZOJzkjiffN7rxHPmGw6lsuRJJhNbk+
	RPeOAVj7EcAjlD3uK64ptuYbcBUqRqYuYZ+vqvIJLMni6KEo3WoqeNhvVRpvFDuoH8mtfL4hk+kTt
	Zu4OssGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4IqQ-0001pq-Mb; Sun, 01 Sep 2019 05:56:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4IpA-0008VL-N0
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Sep 2019 05:54:54 +0000
Received: from localhost (mobile-107-107-187-231.mycingular.net
 [107.107.187.231])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5338D22CF7;
 Sun,  1 Sep 2019 05:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567317291;
 bh=nuNp/nbNuRsArDmj1Ltgr8jR+mEyDbvJ+/0zuHCnL6M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ydrJwlYLnsmTp+CY9l8jTtjq+0z0D4ffa6hodmflfRhdhkJxnIBjhYM/7huBr4Iee
 JiiIkEMWpQs3UTeV0eK/mFQQk5+kYWVROoJHl9UIPcjr84URDRZeSydrhP39Zw6jJL
 Is+A1cOJGtMFeCflsdpwHQc5ZgWCXlzopRHh3mss=
From: Andy Gross <agross@kernel.org>
To: arm@kernel.org
Subject: [GIT PULL] Qualcomm Driver updates for 5.4
Date: Sun,  1 Sep 2019 00:54:45 -0500
Message-Id: <1567317285-8555-4-git-send-email-agross@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567317285-8555-1-git-send-email-agross@kernel.org>
References: <1567317285-8555-1-git-send-email-agross@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_225453_200210_B41BD0FA 
X-CRM114-Status: GOOD (  12.78  )
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

  git://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-drivers-for-5.4

for you to fetch changes up to 1709510221c57fd566479c228434ff9edd6435be:

  soc: qcom: aoss: Add AOSS QMP support (2019-08-21 15:59:44 -0700)

----------------------------------------------------------------
Qualcomm ARM Based Driver Updates for v5.4

* Add AOSS QMP support
* Various fixups for Qualcomm SCM
* Add socinfo driver
* Add SoC serial number attribute and associated APIs
* Add SM8150 and SC7180 support in Qualcomm SCM
* Fixup max processor count in SMEM

----------------------------------------------------------------
Bjorn Andersson (2):
      base: soc: Add serial_number attribute to soc
      soc: qcom: socinfo: Annotate switch cases with fall through

Imran Khan (1):
      soc: qcom: Add socinfo driver

Sibi Sankar (5):
      soc: qcom: smem: Update max processor count
      dt-bindings: firmware: scm: re-order compatible list
      dt-bindings: firmware: scm: Add SM8150 and SC7180 support
      dt-bindings: soc: qcom: aoss: Add SM8150 and SC7180 support
      soc: qcom: aoss: Add AOSS QMP support

Stephen Boyd (3):
      firmware: qcom_scm: Use proper types for dma mappings
      firmware: qcom_scm: Fix some typos in docs and printks
      firmware: qcom_scm: Cleanup code in qcom_scm_assign_mem()

Thara Gopinath (1):
      soc: qcom: Extend AOSS QMP driver to support resources that are used to wake up the SoC.

Vaishali Thakkar (2):
      soc: qcom: socinfo: Expose custom attributes
      soc: qcom: socinfo: Expose image information

Vinod Koul (1):
      base: soc: Export soc_device_register/unregister APIs

 Documentation/ABI/testing/sysfs-devices-soc        |   7 +
 .../devicetree/bindings/firmware/qcom,scm.txt      |   4 +-
 .../devicetree/bindings/soc/qcom/qcom,aoss-qmp.txt |   5 +-
 drivers/base/soc.c                                 |   9 +
 drivers/firmware/qcom_scm.c                        |  47 +-
 drivers/soc/qcom/Kconfig                           |   8 +
 drivers/soc/qcom/Makefile                          |   1 +
 drivers/soc/qcom/qcom_aoss.c                       | 133 ++++++
 drivers/soc/qcom/smem.c                            |  11 +-
 drivers/soc/qcom/socinfo.c                         | 476 +++++++++++++++++++++
 include/linux/qcom_scm.h                           |   9 +-
 include/linux/sys_soc.h                            |   1 +
 12 files changed, 681 insertions(+), 30 deletions(-)
 create mode 100644 drivers/soc/qcom/socinfo.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
