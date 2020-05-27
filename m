Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C031E50C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 23:58:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JuVNOj/lrIRIVfPz0uiHi8aPDDT+akrjiKLR5A6FXGM=; b=mp1jxUqJ5zo10k
	s9k9ytyi6uM09u7U5pTQeqm4jan0K8Hqmvqe6OjMxBbS3GuKMtB+BPJe2lkqung0tS3QUIH4EfujJ
	385DsfNqTp6GUvuGWIKL97tdB8hoH0iqBqltar6F58xPENR0xy5ACkzBDDf1WeBQD/fGNSTG1FRqa
	sW95eMpIFlS9oH1quABySOHUwaHyUrOK/jc9JUUTNoI+tZWJnRkZgM6ULEQxtibw2NrM5YenkOFGb
	2bsSZRTCbxbkQvZbPxbhwpyorq4w+3YCyXhmoylxiVU9XUes3jM32D4MzV8CebkIYfGSzmqyrUcOb
	ZEzV5EvSntED7jdhq6+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je43g-00039v-R6; Wed, 27 May 2020 21:57:56 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je43W-00038u-C7
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 21:57:47 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D81951A0989;
 Wed, 27 May 2020 23:57:41 +0200 (CEST)
Received: from smtp.na-rdc02.nxp.com (usphx01srsp001v.us-phx01.nxp.com
 [134.27.49.11])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9F6DD1A0984;
 Wed, 27 May 2020 23:57:41 +0200 (CEST)
Received: from right.am.freescale.net (right.am.freescale.net [10.81.116.70])
 by usphx01srsp001v.us-phx01.nxp.com (Postfix) with ESMTP id
 DE9AD40A5F; Wed, 27 May 2020 14:57:40 -0700 (MST)
From: Li Yang <leoyang.li@nxp.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL] soc/fsl drivers changes for next(v5.8)
Date: Wed, 27 May 2020 16:57:40 -0500
Message-Id: <20200527215740.9279-1-leoyang.li@nxp.com>
X-Mailer: git-send-email 2.25.1.377.g2d2118b
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_145746_549080_73C5EC05 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi soc maintainers,

Please merge the following new changes for soc/fsl drivers.

Regards,
Leo

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/leo/linux.git tags/soc-fsl-next-v5.8

for you to fetch changes up to e9e4ef9116b12951eaee3f8447ba9bbb40ab3620:

  soc: fsl: dpio: Remove unused inline function qbman_write_eqcr_am_rt_register (2020-05-22 18:11:03 -0500)

----------------------------------------------------------------
NXP/FSL SoC driver updates for v5.8

DPAA2 DPIO driver
- Prefer the CPU affined DPIO

QUICC Engine drivers
- Replace one-element array and use struct_size() helper

Cleanups in various drivers

----------------------------------------------------------------
Colin Ian King (1):
      soc: fsl: qe: clean up an indentation issue

Gustavo A. R. Silva (2):
      treewide: Replace zero-length array with flexible-array
      soc: fsl: qe: Replace one-element array and use struct_size() helper

Roy Pledge (1):
      soc: fsl: dpio: Prefer the CPU affine DPIO

YueHaibing (2):
      soc: fsl: qbman: Remove unused inline function qm_eqcr_get_ci_stashing
      soc: fsl: dpio: Remove unused inline function qbman_write_eqcr_am_rt_register

 drivers/soc/fsl/dpio/dpio-service.c   |  6 +++++-
 drivers/soc/fsl/dpio/qbman-portal.c   | 12 ------------
 drivers/soc/fsl/qbman/qman.c          |  5 -----
 drivers/soc/fsl/qe/qe.c               |  4 ++--
 drivers/soc/fsl/qe/ucc.c              |  2 +-
 include/linux/fsl/bestcomm/bestcomm.h |  2 +-
 include/soc/fsl/qe/qe.h               |  2 +-
 7 files changed, 10 insertions(+), 23 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
