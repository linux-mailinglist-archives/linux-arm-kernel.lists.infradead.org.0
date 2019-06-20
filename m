Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3E34C66F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 07:02:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kOFdJyMFdb++o+ORuDuOUOO17D6fHB+VwZmp0TtTOCA=; b=HMRS/mefWyAyGNdq9CV/t5qXId
	nfnIpnrbBRjvO7X3g062WBnKvimzBYo1RiBQSEvostaxLN0dtVevOzdQRcie6cPNVFKn+BL/ZBoUI
	vadrqx8DYFcnKMqJIq0ZgGehkiK5akC/fd0LGz1WwcMxuHJB72H8gcfhRW0kHAIOozdW+9g00taIq
	1CZIDj4buP9CwutmvZdXUKc4RbSv6RHv7ltovMEPKGeG3dn/5e8gNJjQRRIotQv60PKUse6756rHx
	pq0v3fgGi+b8hYyw3Wo62AHBfPI3hJ0iWYTUAUghusL4jux0bXAVac1q4f+JiWwcja9IYak5etDSO
	Qo7V39Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdpDg-00062X-3i; Thu, 20 Jun 2019 05:02:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdpCu-0005cX-9H
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 05:01:57 +0000
Received: from hector.attlocal.net
 (107-207-74-175.lightspeed.austtx.sbcglobal.net [107.207.74.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3943A21721;
 Thu, 20 Jun 2019 05:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561006916;
 bh=itsDs6bwwjOLWNDexT7pVUG3W7qMWjLI0YgX8w0Xoks=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=E7GCrcYziBoa5qTuhvFc3l120rqg72ckMO1EK9AYDurah35lVt8pVT+yh9DHLKUZo
 oMaGtWOCmpcxJcMEPbhIIUwrMK7Xah8sqyG5ynBVCHdYfbr5ir7l65ngmMq7UmxePx
 6RJG0Q6AT3Gr4gSyAVDKGgcb/rscFqtaYW5m6eFg=
From: Andy Gross <agross@kernel.org>
To: arm@kernel.org
Subject: [GIT PULL] Qualcomm Driver updates for 5.3
Date: Thu, 20 Jun 2019 00:01:50 -0500
Message-Id: <1561006911-28519-3-git-send-email-agross@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561006911-28519-1-git-send-email-agross@kernel.org>
References: <1561006911-28519-1-git-send-email-agross@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_220156_359041_D2F2ACE6 
X-CRM114-Status: GOOD (  13.06  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Olof Johansson <olof@lixom.net>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-drivers-for-5.3

for you to fetch changes up to e1068c32c1d413eaf8818ac10497817af9d2f231:

  soc: qcom: geni: Add support for ACPI (2019-06-19 01:03:24 -0500)

----------------------------------------------------------------
Qualcomm ARM Based Driver Updates for v5.3

* Add ACPI support to Qualcomm GENI SE
* Update Qualcomm Maintainers entry to remove David Brown as maintainer and
  fixup typos and incorrect DT file entry
* Fixup APR domain id usage and making callbacks in non-atomic context
* Add AOSS QMP driver and bindings
* Add power domains for MSM8998 and QCS404 in QCOM RPMPD
* Add corner macros, max state support, and fixups for setting performance state
  for Qcom RPMPD

----------------------------------------------------------------
Amit Kucheria (1):
      MAINTAINERS: fix typo in file name

Bjorn Andersson (6):
      soc: qcom: rpmpd: Modify corner defining macros
      dt-bindings: power: Add rpm power domain bindings for qcs404
      soc: qcom: rpmpd: Add QCS404 power-domains
      dt-bindings: soc: qcom: Add AOSS QMP binding
      soc: qcom: Add AOSS QMP driver
      soc: qcom: apr: Don't use reg for domain id

David Brown (1):
      MAINTAINERS: Remove myself as qcom maintainer

Lee Jones (1):
      soc: qcom: geni: Add support for ACPI

Randy Dunlap (1):
      soc: qcom: fix QCOM_AOSS_QMP dependency and build errors

Sibi Sankar (4):
      soc: qcom: rpmpd: fixup rpmpd set performance state
      soc: qcom: rpmpd: Add support to set rpmpd state to max
      dt-bindings: power: Add rpm power domain bindings for msm8998
      soc: qcom: rpmpd: Add MSM8998 power-domains

Srinivas Kandagatla (1):
      qcom: apr: Make apr callbacks in non-atomic context

Vinod Koul (1):
      MAINTAINER: Fix Qualcomm ETHQOS ethernet DT file

 .../devicetree/bindings/power/qcom,rpmpd.txt       |   2 +
 .../devicetree/bindings/soc/qcom/qcom,aoss-qmp.txt |  81 ++++
 .../devicetree/bindings/soc/qcom/qcom,apr.txt      |   6 +-
 MAINTAINERS                                        |   5 +-
 drivers/soc/qcom/Kconfig                           |  12 +
 drivers/soc/qcom/Makefile                          |   1 +
 drivers/soc/qcom/apr.c                             |  76 +++-
 drivers/soc/qcom/qcom-geni-se.c                    |  21 +-
 drivers/soc/qcom/qcom_aoss.c                       | 480 +++++++++++++++++++++
 drivers/soc/qcom/rpmpd.c                           | 134 ++++--
 include/dt-bindings/power/qcom-aoss-qmp.h          |  14 +
 include/dt-bindings/power/qcom-rpmpd.h             |  34 ++
 12 files changed, 824 insertions(+), 42 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.txt
 create mode 100644 drivers/soc/qcom/qcom_aoss.c
 create mode 100644 include/dt-bindings/power/qcom-aoss-qmp.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
