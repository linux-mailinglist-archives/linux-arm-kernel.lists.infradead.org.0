Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00970E7277
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 14:15:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KC5kGaa8Xb+Hzxu0V9zY7v8aby9nE4HrsUw88Z4LIms=; b=MZ+eC/o+jihN3F
	vrIWGWd3POmpLnoLEKjkgIRjvrgY3xhjZL3bhw20y1xO/QSyT7Ag3gNhzj6UVFesuy/vlOIfnAwPE
	sad7ttur771e9hY1ehOXSXgJQMqEDzmKWWPBGqIlzBND+b7rlO4Tyg+Mw+Ats0RzL83W6/VJq2197
	yRABeYr0qYS7o+QFQuzvYbfyWbbj2udUmCUK2kxSRN42E+IYRFxxyJMBsNxVq8pJ9BUB7PVMUa7ir
	VpobPSRMLDKflXIg1jhOqLSBNgEqelNvGiBDUPvj9+WNgvJK1tiT8LIVtYdCnGtRDnCopplReoXo2
	G8BIDyHy7BwMP6mcOGgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP4s3-00086W-VS; Mon, 28 Oct 2019 13:15:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP4rt-00085z-H1
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 13:15:34 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1iP4rs-0004hu-8E; Mon, 28 Oct 2019 14:15:32 +0100
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1iP4rr-00081s-V7; Mon, 28 Oct 2019 14:15:31 +0100
Message-ID: <cbc2af1aece3762553219ba6b5222237dacaea9d.camel@pengutronix.de>
Subject: Reset controller fixes for v5.5
From: Philipp Zabel <p.zabel@pengutronix.de>
To: arm@kernel.org
Date: Mon, 28 Oct 2019 14:15:31 +0100
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_061533_564141_96D909C8 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear arm-soc maintainers,

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.pengutronix.de/git/pza/linux.git tags/reset-fixes-for-v5.5

for you to fetch changes up to f430c7ed8bc22992ed528b518da465b060b9223f:

  reset: fix reset_control_ops kerneldoc comment (2019-10-28 12:18:23 +0100)

----------------------------------------------------------------
Reset controller fixes for v5.5

This tag fixes a memory leak in reset_control_array_put(), which is
called by reset_control_put() for reset array controls. The other
patches are small kerneldoc comment fixes to avoid documentation build
warnings.

----------------------------------------------------------------
Kishon Vijay Abraham I (1):
      reset: Fix memory leak in reset_control_array_put()

Philipp Zabel (4):
      reset: fix of_reset_simple_xlate kerneldoc comment
      reset: fix of_reset_control_get_count kerneldoc comment
      reset: fix reset_control_lookup kerneldoc comment
      reset: fix reset_control_get_exclusive kerneldoc comment

Randy Dunlap (1):
      reset: fix reset_control_ops kerneldoc comment

 drivers/reset/core.c             | 5 +++--
 include/linux/reset-controller.h | 4 ++--
 include/linux/reset.h            | 2 +-
 3 files changed, 6 insertions(+), 5 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
