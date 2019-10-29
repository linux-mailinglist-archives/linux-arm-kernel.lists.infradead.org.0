Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D618E8AF1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 15:38:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l7uD5Oa8zfYUmIKPutIKy/Az+YaWIsQdigmzURZjDto=; b=cyBz8M+XdBRXJL
	ho+C+fPDiVluhI7KLe77kfAmxJM1KzuM/dllP96iFXjmeNaqWZ4Idl+EXAL5qfAIgFRpWizRbIcky
	LERjfqGbzaGO+di0IFEgL+jgz49benYbIk4KdvcmylY99oj+9SoQJPHiUYYMulon20nhM/OTAiHt7
	+Ejkz/lF7i5NOvgHAI9jwfixRu/OpRsVw7feJ+ccQHYWLTZmfi1cppGGjw81sTgQGuiekUmRZsRbp
	JHaHerrRIIl70J+DBp20u0R6BHOX0pySHqvOLiJwgS7wbPg9il35+nYDW4bzPGjC1mawT75oFTjZv
	0GWarPEVpegszFBgLr6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPSdH-0005VR-Lz; Tue, 29 Oct 2019 14:38:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPScw-0005MW-5D
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 14:37:43 +0000
Received: from localhost.localdomain (cpe-70-114-128-244.austin.res.rr.com
 [70.114.128.244])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8BA5E2087E;
 Tue, 29 Oct 2019 14:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572359860;
 bh=o3O2Kho0bvBu4SZiYNT8+KvMzrzd8CV/zFbl4tTj23M=;
 h=From:To:Cc:Subject:Date:From;
 b=QrwJLnE7ihAITWlA121e/YBeA01B/jTfCjT9cbLWTCTGOOfMUmvukZ7c9dhpjrXQN
 gTMgFJqbqaaX0lxODyhxDHTNgbivtmGhiCR+1saqVLHhRew26VH0mrHCjbDygMPyk7
 eoH+GSiQ6VutksY8Q5t4NN+bIO3q7wt037l2XP6Q=
From: Dinh Nguyen <dinguyen@kernel.org>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL 1/2] SoCFPGA DTS updates for v5.5
Date: Tue, 29 Oct 2019 09:37:36 -0500
Message-Id: <20191029143737.24850-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_073742_225237_554CEEEA 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dinguyen@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd, Kevin, and Olof:

Please pull in these SoCFPGA DTS updates for v5.5.

Thanks,
Dinh

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/dinguyen/linux.git tags/socfpga_dts_updates_for_v5.5

for you to fetch changes up to aa74337ee73df5de3cb6c920100d01c3d95346cc:

  arm64: dts: agilex: add service layer, fpga manager and fpga region (2019-10-21 22:49:09 -0500)

----------------------------------------------------------------
SoCFPGA DTS updates for v5.5
- Arria10
	- modify QSPI read-delay property
- Agilex
	- Add QSPI support
	- Enable USB and LEDs
	- Add service layer, fpga manager support
- Stratix10
	- Update QSPI reg address

----------------------------------------------------------------
Dinh Nguyen (2):
      ARM: dts: arria10: Modify QSPI read_delay for Arria10
      arm64: agilex: enable USB and LEDs on agilex devkit

Ooi, Joyce (2):
      arm64: dts: agilex: add QSPI support for Intel Agilex
      arm64: dts: altera: update QSPI reg addresses for Stratix10

Richard Gong (1):
      arm64: dts: agilex: add service layer, fpga manager and fpga region

 arch/arm/boot/dts/socfpga_arria10_socdk_qspi.dts   |  2 +-
 .../boot/dts/altera/socfpga_stratix10_socdk.dts    |  4 +-
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi      | 32 ++++++++++++
 arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts | 58 ++++++++++++++++++++++
 4 files changed, 93 insertions(+), 3 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
