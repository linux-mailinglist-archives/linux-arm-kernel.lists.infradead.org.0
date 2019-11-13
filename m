Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BCC8FB6FF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 19:04:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1ryMJ4Y+8v1m/6qAoA9eXj9Ptant9KewTosY82dEFlM=; b=mZo50eDW6LWsAQ
	cbiYED5mRpV44z9qlhrp4g8IRCz8Mu+QcG+XMh6kayxnbDIpMBBJ5rLukO/8JYeWDB5L7zokMPHdT
	6DSulfXX28iA/MBHTkHUCBq6sCPy/plPW+NQn/z6TkB6sYXZMVH1xNlxqgKONWF/egvovQ8Cs+nWx
	SQtlFRLvf3Fd5v7R6pURondOqt/865oCJlG7cZMUtlGoP93A/PawKZvjVhfRPdjeaPpesuoSk0c8d
	19tcTY0ndYelmkAvTk1Tlt+FuQqCV8hqf4laxCOZaDiVATxoFTHLtH5YyD/eCttZRFAXIzIepT98C
	U70BqY2qrIOx/cPcLdRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUx0C-0006f7-0Z; Wed, 13 Nov 2019 18:04:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUx04-0006ed-Al
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 18:04:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8E63630E;
 Wed, 13 Nov 2019 10:04:13 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8A6A83F534;
 Wed, 13 Nov 2019 10:04:12 -0800 (PST)
Date: Wed, 13 Nov 2019 18:04:06 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: ARM SoC Team <arm@kernel.org>, SoC Team <soc@kernel.org>,
 ALKML <linux-arm-kernel@lists.infradead.org>
Subject: [GIT PULL] firmware: arm_scmi: fix for v5.5
Message-ID: <20191113180406.GA12601@bogus>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_100416_414532_9A05EEE1 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Olof Johansson <olof@lixom.net>, Sudeep Holla <sudeep.holla@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC Team,

Sorry for the late pull request, but since it's a fix for bug reported
recently, I am sending it anyway. It's too late for v5.4 and not that
urgent IMO, so can go for v5.5

Please pull !

Regards,
Sudeep

-->8

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git tags/scmi-fix-5.5

for you to fetch changes up to 9a6edfe32f3741163e7bf30f264cc114e7cb38b7:

  firmware: arm_scmi: Fix doorbell ring logic for !CONFIG_64BIT (2019-11-13 11:48:32 +0000)

----------------------------------------------------------------
ARM SCMI fix for v5.5

Just a single fix to correct the SCMI fast channel doorbell ring logic
when CONFIG_64BIT is not set.

----------------------------------------------------------------
Sudeep Holla (1):
      firmware: arm_scmi: Fix doorbell ring logic for !CONFIG_64BIT

 drivers/firmware/arm_scmi/perf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
