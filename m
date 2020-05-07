Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2951C8395
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 09:36:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0zBkQftCUf4+h0WHqwJT3q4Q0Zog67v5iB5kQV1oQSQ=; b=OzN
	9/nVymyEWTZtGmYCreekKTpQ8vVeKOef4w3+1IGjK1GeS1Lwa55b5yLBcNtKDN9vul3qIMtV2Rxa4
	7CC5ILlDHGmFTOhxKcIHDeuFYaNRQE+TDPv83e8QFWt2HMBRCX00BnFGTtKA8QZ4RVTk6wxRMaqt8
	O7kjaCVfWOI8OeCluVQJLc32koXgCZPRd00hvIte1JR5OXB0nJSbLTa7sfKP+FyOF2g1YdcZfJQbM
	6tMioHGEn0JsBEdDqUUifG2LgmTPSx3xC3nZexcsRmShHhyk+X8db8hvT/TD64BnYqeXVf63Y/JCp
	dxYYBGWCURxVjuwN2+LU0yRjNJXON1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWb5J-0002IE-D7; Thu, 07 May 2020 07:36:45 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWb4N-0001Xr-C9
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 07:35:48 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5C619200F19;
 Thu,  7 May 2020 09:35:43 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 4DDB1200F10;
 Thu,  7 May 2020 09:35:43 +0200 (CEST)
Received: from fsr-ub1864-111.ea.freescale.net
 (fsr-ub1864-111.ea.freescale.net [10.171.82.141])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id F394A203C5;
 Thu,  7 May 2020 09:35:42 +0200 (CEST)
From: Diana Craciun <diana.craciun@oss.nxp.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 00/12] bus/fsl-mc: Extend mc-bus driver functionalities in
 preparation for mc-bus VFIO support
Date: Thu,  7 May 2020 10:34:19 +0300
Message-Id: <20200507073431.2710-1-diana.craciun@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_003547_547635_0E3E014E 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: stuyoder@gmail.com, gregkh@linuxfoundation.org, leoyang.li@nxp.com,
 Diana Craciun <diana.craciun@oss.nxp.com>,
 linux-arm-kernel@lists.infradead.org, laurentiu.tudor@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The vfio-mc bus driver needs some additional services to be exported by the
mc-bus driver like:
- a way to reset the DPRC container
- driver_override support
- functions to setup/tear down a DPRC
- functions for allocating the pool of interrupts. In case of VFIO the
interrupts are not configured at probe time, but later by userspace
request

v1 -> v2
- Remove driver_override propagation through various functions
- Cache the DPRC API version

The patches are related with "vfio/fsl-mc: VFIO support for FSL-MC
devices" patches, but the series were split because they are targeting
different subsystems. However, the mc-bus patches may suffer changes
when addressing the VFIO review comments.

Bharat Bhushan (3):
  bus/fsl-mc: add support for 'driver_override' in the mc-bus
  bus/fsl-mc: Add dprc-reset-container support
  bus/fsl-mc: Extend ICID size from 16bit to 32bit

Diana Craciun (9):
  bus/fsl-mc: Do no longer export the total number of irqs outside
    dprc_scan_objects
  bus/fsl-mc: Add a new parameter to dprc_scan_objects function
  bus/fsl-mc: Set the QMAN/BMAN region flags
  bus/fsl-mc: Cache the DPRC API version
  bus/fsl-mc: Export a dprc scan function to be used by multiple
    entities
  bus/fsl-mc: Export a cleanup function for DPRC
  bus/fsl-mc: Add a container setup function
  bus/fsl_mc: Do not rely on caller to provide non NULL mc_io
  bus/fsl-mc: Export IRQ pool handling functions to be used by VFIO

 drivers/bus/fsl-mc/dprc-driver.c      | 181 ++++++++++++++++----------
 drivers/bus/fsl-mc/dprc.c             | 103 +++++++++++++--
 drivers/bus/fsl-mc/fsl-mc-allocator.c |  12 +-
 drivers/bus/fsl-mc/fsl-mc-bus.c       |  64 ++++++++-
 drivers/bus/fsl-mc/fsl-mc-private.h   |  28 ++--
 drivers/bus/fsl-mc/mc-io.c            |   7 +-
 include/linux/fsl/mc.h                |  29 ++++-
 7 files changed, 313 insertions(+), 111 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
