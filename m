Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2713DB65CA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 16:22:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ujg64yd41bxQnQXScYCpfGfPnbOL24d8663XNMaxnGk=; b=IfSLf5+6MmSTBL
	PPULDxhFEH2uIL7lS5OGwPvGgN6KCZiWO4q0ojQqdNHXZGh8WO15GYGKFXYO2cNgzOqluS6d5PAHl
	vkNDyp7M9gZP+zD3CWp+ZRHB89bdDNPjkVAGpJwAXRz+CNA+zjNC/Li87dt37LkA+PPu4hbnLqnpI
	uLZX0/9JoV+PkprzpumUzvPQj2zA0ao6g/1Gp1HJplXfoiZl2aqyitntW6LIqUSUcQSI/uPqCKtR4
	27uj5tQV/82NZjaJBTbyimnRPOL181Ysb7UGJ6ypXc43bUVyzM4QJeYRzFJznm2Jeu69lA/KdZM6u
	lwGgAl9jPXTa0d2iNh4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAaqE-0007Tt-Q3; Wed, 18 Sep 2019 14:21:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAaq3-0007TR-4s
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 14:21:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8567E1000;
 Wed, 18 Sep 2019 07:21:46 -0700 (PDT)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 82F873F67D;
 Wed, 18 Sep 2019 07:21:45 -0700 (PDT)
Date: Wed, 18 Sep 2019 15:21:39 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: ARM SoC Team <arm@kernel.org>, SoC Team <soc@kernel.org>,
 ALKML <linux-arm-kernel@lists.infradead.org>
Subject: [GIT PULL] firmware: arm_scmi: fixes for scmi-updates-5.4
Message-ID: <20190918142139.GA4370@bogus>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_072147_233272_B417397E 
X-CRM114-Status: GOOD (  10.45  )
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
Cc: Olof Johansson <olof@lixom.net>, Sudeep Holla <sudeep.holla@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC Team,

Please pull ! The changes in reset driver has been acked by Philipp Zabel
and agreed to be merged via ARM SoC tree.

Regards,
Sudeep

-->8

The following changes since commit c8ae9c2da1cc5d18b6d51d10160508a3dc3436bf:

  reset: Add support for resets provided by SCMI (2019-08-12 12:23:02 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git tags/scmi-fixes-5.4

for you to fetch changes up to 61423712dbb86e02af4aa5de65b9041493c92cac:

  reset: reset-scmi: add missing handle initialisation (2019-09-18 13:42:44 +0100)

----------------------------------------------------------------
ARM SCMI fixes for v5.4

Couple of fixes: one in scmi reset driver initialising missed scmi handle
and an other in scmi reset API implementation fixing the assignment of
reset state

----------------------------------------------------------------
Sudeep Holla (2):
      firmware: arm_scmi: reset: fix reset_state assignment in scmi_domain_reset
      reset: reset-scmi: add missing handle initialisation

 drivers/firmware/arm_scmi/reset.c | 2 +-
 drivers/reset/reset-scmi.c        | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
