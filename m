Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8C6F9D98
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 00:00:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+lcMkq1CGUR2Hqz5WLGaEgVxOYJ/hTib+PF03HkM24M=; b=gd8
	3EPLgaB8816O7DG8dqUH1lULeoHBtdsLXbJUlAZu54tDDKZNRdj2d7rYuHsRCVjU+HaHfS8zQhxu5
	EmZKO/sQnmR6KSKVC3ORQ89kp8iCxAZ1vEG96PW6Tb7pFFNP0OFa5Dff1JUQScxA/Web7GdDFf/qq
	IMogkA9muAudC8rDPhfea4KRGa1T67BIXyOv3TRPoUXwwWbaTCxq/j/sDuJT3HLjKURAQg9nXnPkg
	Ljwp45FeLpk2N/d7NRTyKH/GwXxmvbdkWrBglPwJeGePezTlqyH/6HeO1zkRfRhCtRTt0j8FYBGZR
	0bb73qhz0wZrxNgMI5Vxy1fNamVk2xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUf8v-0004zL-UN; Tue, 12 Nov 2019 23:00:13 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUf8k-0004Q1-Cz
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 23:00:03 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 4DF681A0A61;
 Tue, 12 Nov 2019 23:59:56 +0100 (CET)
Received: from smtp.na-rdc02.nxp.com (usphx01srsp001v.us-phx01.nxp.com
 [134.27.49.11])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 14F9E1A07FB;
 Tue, 12 Nov 2019 23:59:56 +0100 (CET)
Received: from right.am.freescale.net (right.am.freescale.net [10.81.116.70])
 by usphx01srsp001v.us-phx01.nxp.com (Postfix) with ESMTP id
 5646840CB6; Tue, 12 Nov 2019 15:59:55 -0700 (MST)
From: Li Yang <leoyang.li@nxp.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL] updates to soc/fsl drivers for next(v5.5)
Date: Tue, 12 Nov 2019 16:59:55 -0600
Message-Id: <1573599595-31411-1-git-send-email-leoyang.li@nxp.com>
X-Mailer: git-send-email 1.9.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_150002_584475_88F1F961 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: shawnguo@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi arm-soc maintainers,

Please find the pull request for a new NXP/FSL SoC driver to support system
wakeup with RCPM IP.

Regards,
Leo

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/leo/linux.git tags/soc-fsl-next-v5.5

for you to fetch changes up to 3b8db0348c503823fb09b5f304b196c3362754ea:

  soc: fsl: add RCPM driver (2019-11-12 15:26:05 -0600)

----------------------------------------------------------------
NXP/FSL SoC driver updates for v5.5

RCPM driver for ARM SoCs
- add RCPM driver to manage the wakeup devices for QorIQ ARM SoCs (HW low
power states are supported in PSCI firmware)
- add API to PM wakeup framework to retrieve wakeup sources

----------------------------------------------------------------
Ran Wang (3):
      PM: wakeup: Add routine to help fetch wakeup source object.
      dt-bindings: fsl: rcpm: Add 'little-endian' and update Chassis definition
      soc: fsl: add RCPM driver

 Documentation/devicetree/bindings/soc/fsl/rcpm.txt |  14 +-
 drivers/base/power/wakeup.c                        |  54 ++++++++
 drivers/soc/fsl/Kconfig                            |  10 ++
 drivers/soc/fsl/Makefile                           |   1 +
 drivers/soc/fsl/rcpm.c                             | 151 +++++++++++++++++++++
 include/linux/pm_wakeup.h                          |   9 ++
 6 files changed, 235 insertions(+), 4 deletions(-)
 create mode 100644 drivers/soc/fsl/rcpm.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
