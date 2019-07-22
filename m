Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F4A706EF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 19:27:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jyYar9WfudtDjmpRtTlQMVgMjZSSLjymhj1wzOWaSnA=; b=dsfFDzS+pH8oLm
	PZCbizp8kjz2e+/pKaovqFWJv78riju9LJHgFkyK4PMjIewAo3Y9cMrIsqD1rMCD7y+2N7cCEKO1b
	jBiaKSzauTCtjKL8T74qytue3iSEevK5WvhqKUmH3hfLrDSEZpQnenf3UiWTr688mEDbGwz8Uaq7+
	AVfEyCN+fCMfArDGnQz2guP/upuaRxWvgB0HHv/UYCjubgSZ9bgRNwNLrUGpQcNQZzw+etZBT8WaD
	kYI5EdPyXbz3VUwy8NuWNwcH4RS4LUMgcSMVNHkFP2HtV8KvB3wm5v6H9ow759KoOQTS+/sZyz2Z/
	SEyFT4QEygcXxaQGqF6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpc5j-0003FL-UW; Mon, 22 Jul 2019 17:27:16 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpc4y-0002y3-Ti
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 17:26:31 +0000
Received: from localhost (p54B33E22.dip0.t-ipconnect.de [84.179.62.34])
 by pokefinder.org (Postfix) with ESMTPSA id 205654A149A;
 Mon, 22 Jul 2019 19:26:24 +0200 (CEST)
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-i2c@vger.kernel.org
Subject: [PATCH 00/14] mfd: convert subsystem to i2c_new_dummy_device()
Date: Mon, 22 Jul 2019 19:26:07 +0200
Message-Id: <20190722172623.4166-1-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_102629_113880_0D7EF7B4 
X-CRM114-Status: UNSURE (   5.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-omap@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series is part of a tree-wide movement to replace the I2C API call
'i2c_new_dummy' which returns NULL with its new counterpart returning an
ERRPTR.

The series was generated with coccinelle (audited afterwards, of course) and
build tested by me and by buildbot. No tests on HW have been performed.

The branch is based on v5.3-rc1. A branch (with some more stuff included) can
be found here:

git://git.kernel.org/pub/scm/linux/kernel/git/wsa/linux.git renesas/i2c/new_dummy

Some drivers still need to be manually converted. Patches for those will be
sent out individually.


Wolfram Sang (14):
  mfd: 88pm800: convert to i2c_new_dummy_device
  mfd: 88pm860x-core: convert to i2c_new_dummy_device
  mfd: ab3100-core: convert to i2c_new_dummy_device
  mfd: bcm590xx: convert to i2c_new_dummy_device
  mfd: da9150-core: convert to i2c_new_dummy_device
  mfd: max14577: convert to i2c_new_dummy_device
  mfd: max77693: convert to i2c_new_dummy_device
  mfd: max77843: convert to i2c_new_dummy_device
  mfd: max8907: convert to i2c_new_dummy_device
  mfd: max8925-i2c: convert to i2c_new_dummy_device
  mfd: max8997: convert to i2c_new_dummy_device
  mfd: max8998: convert to i2c_new_dummy_device
  mfd: palmas: convert to i2c_new_dummy_device
  mfd: twl-core: convert to i2c_new_dummy_device

 drivers/mfd/88pm800.c       | 12 ++++++------
 drivers/mfd/88pm860x-core.c |  6 +++---
 drivers/mfd/ab3100-core.c   |  6 +++---
 drivers/mfd/bcm590xx.c      |  6 +++---
 drivers/mfd/da9150-core.c   |  6 +++---
 drivers/mfd/max14577.c      |  6 +++---
 drivers/mfd/max77693.c      | 12 ++++++------
 drivers/mfd/max77843.c      |  6 +++---
 drivers/mfd/max8907.c       |  6 +++---
 drivers/mfd/max8925-i2c.c   | 12 ++++++------
 drivers/mfd/max8997.c       | 18 +++++++++---------
 drivers/mfd/max8998.c       |  6 +++---
 drivers/mfd/palmas.c        |  6 +++---
 drivers/mfd/twl-core.c      |  6 +++---
 14 files changed, 57 insertions(+), 57 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
