Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 126EF5F6B2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 12:37:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FwJ45fthAdDZsDsC/asBBcjxxGB6WashXpig3V7chts=; b=oTuxV6SRLaEM+b
	eEPwKRtZdcZrpndsH6ywvDNaYNS3KyILEJRhXd2UeS5AGcpM4du1tSWPqiJWFqPD1dq3/V+y5/GTr
	5tZ12PyWQlK+bxfPvwzTpv9auZ43frjOONUfLzShUX2w+TuuAt4l0wuQ/hlM4yoXZ8KKDQMBIgihe
	lfD7heorlFXzZpUYCxFxBOtDi1xDKAkFILFcVLAzKQbFy/FlbcU5T8Q8HYV6YCRmL2DdhnXz0vnae
	M9ZPv0bFhHDO2RXiTUc2ydrmQQPjSGYSMhIL4OFQAZbMWjqilBE9asWRI1OyMCrodEKrDeLJHKJNc
	mICBy0EGXSg0q+xgpTTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiz7B-00082O-LE; Thu, 04 Jul 2019 10:37:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiz6y-00081G-UP
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 10:37:10 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1hiz6x-0008Me-7G; Thu, 04 Jul 2019 12:37:07 +0200
Received: from pza by lupine with local (Exim 4.89)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1hiz6w-0000uQ-Tg; Thu, 04 Jul 2019 12:37:06 +0200
Message-ID: <1562236626.6641.13.camel@pengutronix.de>
Subject: Reset controller fix for v5.2
From: Philipp Zabel <p.zabel@pengutronix.de>
To: arm@kernel.org
Date: Thu, 04 Jul 2019 12:37:06 +0200
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_033708_982454_4026CB02 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
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

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.pengutronix.de/git/pza/linux.git tags/reset-fixes-for-v5.2

for you to fetch changes up to a71dcd3757e29cc8b43383ff18595d707cf08345:

  reset: remove redundant null check on pointer dev (2019-07-04 12:10:55 +0200)

----------------------------------------------------------------
Reset controller fix for v5.2

This tag removes a redundant device pointer NULL check from
__reset_control_get_from_lookup to fix a static code checker
warning.

----------------------------------------------------------------
Colin Ian King (1):
      reset: remove redundant null check on pointer dev

 drivers/reset/core.c | 3 ---
 1 file changed, 3 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
