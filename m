Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34870183C79
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 23:29:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iKllt47BFsvnAQkzN6GXfFbbSSjnbHuCRsffCi2ocic=; b=eliqjprYqLLfEI
	YIk0ncFNvY/VZddynhx3HaBC9Dl+6UAp2LBs38YNwxG6N1561x3k01AcmTHZboyqZnE/lqQ0kIj4T
	VRl1zTC8NXtMAEKK/YmzrA7LVLJKKqmhp5twy7MnCr3BeeQByqQPls8+7mAJva7qNqDiAM9YJ5ZjH
	HIA7MG2tI+gS1Npkak+/4j3RWWzLBsXBHxCEv8AlfCgtvBryofVhtBcRiJm01nsfogBRDMkkf618p
	LzDI7wcToLYydJztIR92QG+04oLqqg26zsB3Dpl5rSpZIPh8MBN00r3d6ZWcoKLo7OhuVc7sy6A9Y
	gjmol1JHPkCTIZNs5ZTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCWKD-0002vW-QX; Thu, 12 Mar 2020 22:29:09 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCWJm-0002l1-3t
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 22:28:43 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 999851A11AB;
 Thu, 12 Mar 2020 23:28:39 +0100 (CET)
Received: from smtp.na-rdc02.nxp.com (usphx01srsp001v.us-phx01.nxp.com
 [134.27.49.11])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5DB571A11BA;
 Thu, 12 Mar 2020 23:28:39 +0100 (CET)
Received: from right.am.freescale.net (right.am.freescale.net [10.81.116.70])
 by usphx01srsp001v.us-phx01.nxp.com (Postfix) with ESMTP id
 C7CA840A63; Thu, 12 Mar 2020 15:28:38 -0700 (MST)
From: Li Yang <leoyang.li@nxp.com>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>, Timur Tabi <timur@kernel.org>,
 Zhao Qiang <qiang.zhao@nxp.com>
Subject: [PATCH 0/6] Fix sparse warnings for common qe library code
Date: Thu, 12 Mar 2020 17:28:21 -0500
Message-Id: <20200312222827.17409-1-leoyang.li@nxp.com>
X-Mailer: git-send-email 2.25.1.377.g2d2118b
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_152842_311160_F96D427C 
X-CRM114-Status: UNSURE (   6.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Li Yang <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The QE code was previously only supported on big-endian PowerPC systems
that use the same endian as the QE device.  The endian transfer code is
not really exercised.  Recent updates extended the QE drivers to
little-endian ARM/ARM64 systems which makes the endian transfer really
meaningful and hence triggered more sparse warnings for the endian
mismatch.  Some of these endian issues are real issues that need to be
fixed.

While at it, fixed some direct de-references of IO memory space and
suppressed other __iomem address space mismatch issues by adding correct
address space attributes.

Li Yang (6):
  soc: fsl: qe: fix sparse warnings for qe.c
  soc: fsl: qe: fix sparse warning for qe_common.c
  soc: fsl: qe: fix sparse warnings for ucc.c
  soc: fsl: qe: fix sparse warnings for qe_ic.c
  soc: fsl: qe: fix sparse warnings for ucc_fast.c
  soc: fsl: qe: fix sparse warnings for ucc_slow.c

 drivers/soc/fsl/qe/qe.c        |  4 ++--
 drivers/soc/fsl/qe/qe_common.c |  2 +-
 drivers/soc/fsl/qe/qe_ic.c     |  2 +-
 drivers/soc/fsl/qe/ucc.c       |  2 +-
 drivers/soc/fsl/qe/ucc_slow.c  | 33 +++++++++++++--------------------
 include/soc/fsl/qe/ucc_fast.h  |  6 +++---
 include/soc/fsl/qe/ucc_slow.h  | 13 ++++++-------
 7 files changed, 27 insertions(+), 35 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
