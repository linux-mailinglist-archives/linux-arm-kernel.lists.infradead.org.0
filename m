Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A357E1934E5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 01:13:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K/TksyVTrZqrv2+3X9yndVQHI2U0RCPwMoT3gj9VPv4=; b=CaeKLnfOTl/Rd/
	x7BMIdLG9Ycn2BJGtLN1ssh23v2I2qhvnPaEeEmYUS9sdKnllOwFo92M60vc69fcYsyQ6dBO6neUw
	kwaoShsY9+wBigXtLUh9Y6cRB44Lu4niAfvJ5Eyw679vj0MYVPQsnCiVArNrGwbeZj5aEUBN7HViI
	qy0SETTwI4ncy8BdBcyUP2BazsGofp9wMFt9a9ZlyxBFbFE4+qpG7Y2QFMeQvbsTtzt2yjgdmQvml
	Kyf6Jp+NaVDfphDIx8Z24Oq3ev1k95Z3cbREWAqNHkSgwgVE4OdkWlliSNwErMLHX6ddYLbF/1Sm3
	G3DXaqXtkt237g6segMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHG9C-0007Xl-QQ; Thu, 26 Mar 2020 00:13:22 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHG92-0007XI-Bh
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 00:13:13 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id CB6CF1A072D;
 Thu, 26 Mar 2020 01:12:58 +0100 (CET)
Received: from smtp.na-rdc02.nxp.com (usphx01srsp001v.us-phx01.nxp.com
 [134.27.49.11])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9232D1A0728;
 Thu, 26 Mar 2020 01:12:58 +0100 (CET)
Received: from right.am.freescale.net (right.am.freescale.net [10.81.116.70])
 by usphx01srsp001v.us-phx01.nxp.com (Postfix) with ESMTP id
 D006D4040F; Wed, 25 Mar 2020 17:12:57 -0700 (MST)
From: Li Yang <leoyang.li@nxp.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL] soc/fsl drivers changes for next(v5.7)
Date: Wed, 25 Mar 2020 19:12:57 -0500
Message-Id: <20200326001257.22696-1-leoyang.li@nxp.com>
X-Mailer: git-send-email 2.25.1.377.g2d2118b
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_171312_539639_9E243A51 
X-CRM114-Status: UNSURE (   6.67  )
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

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/leo/linux.git tags/soc-fsl-next-v5.7

for you to fetch changes up to 461c3ac0dc46ba7fc09628aadf63c81253c4c3de:

  soc: fsl: qe: fix sparse warnings for ucc_slow.c (2020-03-24 19:09:40 -0500)

----------------------------------------------------------------
NXP/FSL SoC driver updates for v5.7

DPAA2 DPIO driver performance optimization
- Add and use QMAN multiple enqueue interface
- Use function pointer indirection to replace checks in hotpath

QUICC Engine drivers
- Fix sparse warnings and exposed endian issues

----------------------------------------------------------------
Colin Ian King (1):
      soc: fsl: dpio: fix dereference of pointer p before null check

Li Yang (7):
      soc: fsl: qe: fix sparse warnings for qe.c
      soc: fsl: qe: fix sparse warning for qe_common.c
      soc: fsl: qe: fix sparse warnings for ucc.c
      soc: fsl: qe: fix sparse warnings for qe_ic.c
      soc: fsl: qe: fix sparse warnings for ucc_fast.c
      soc: fsl: qe: ucc_slow: remove 0 assignment for kzalloc'ed structure
      soc: fsl: qe: fix sparse warnings for ucc_slow.c

Youri Querry (3):
      soc: fsl: dpio: Adding QMAN multiple enqueue interface
      soc: fsl: dpio: QMAN performance improvement with function pointer indirection
      soc: fsl: dpio: Replace QMAN array mode with ring mode enqueue

 drivers/soc/fsl/dpio/dpio-service.c |  69 +++-
 drivers/soc/fsl/dpio/qbman-portal.c | 767 ++++++++++++++++++++++++++++++++----
 drivers/soc/fsl/dpio/qbman-portal.h | 158 +++++++-
 drivers/soc/fsl/qe/qe.c             |   4 +-
 drivers/soc/fsl/qe/qe_common.c      |   2 +-
 drivers/soc/fsl/qe/qe_ic.c          |   2 +-
 drivers/soc/fsl/qe/ucc.c            |   2 +-
 drivers/soc/fsl/qe/ucc_slow.c       |  33 +-
 include/soc/fsl/dpaa2-io.h          |   6 +-
 include/soc/fsl/qe/ucc_fast.h       |   6 +-
 include/soc/fsl/qe/ucc_slow.h       |  13 +-
 11 files changed, 935 insertions(+), 127 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
