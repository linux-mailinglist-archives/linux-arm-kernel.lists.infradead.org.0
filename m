Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 299344372E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 16:22:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LEDzLEX8EZTcVGNevfCS4/8W5P4qYSyH/oICvJRXM7I=; b=YC97OsOQOzJw+b
	lH0ZIqDhkf1kb90k/kJgeG/Ow14uLd0YsIrgwpzjxs/RQ2oet+k0XijSsMZdBbNAmtfMYJ3oGhtqH
	4giMa7RewNkrTDQZHo9PDpMq0anuDaX182RcbZqSVkbYHSsSuOdp+dvpzcjZ6a+feTSzmr1lAIK/I
	CH6bjuEHikE4/87nZq4kXHvsKue7yZ9sxAuhqH83RH2FTHfSjKZP9caWtzAKdXafSkjOm0FpSjcVZ
	kF1Z6JnfS69LJifRj1/6hBEqCpNGumaQPA9kXrwvxg3fDu3J1fFq+SERewDKpjr6cThdJO4QV1Wv8
	RiTPXgHv+PkwV/zVh55w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbQcD-0001SO-Lz; Thu, 13 Jun 2019 14:22:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbQc1-0001S3-Cl
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 14:21:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 69657367;
 Thu, 13 Jun 2019 07:21:55 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4B07A3F718;
 Thu, 13 Jun 2019 07:21:54 -0700 (PDT)
Date: Thu, 13 Jun 2019 15:21:48 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: ARM SoC Team <arm@kernel.org>, ALKML <linux-arm-kernel@lists.infradead.org>
Subject: [GIT PULL] arm64: dts: juno: updates for v5.3
Message-ID: <20190613142148.GA7283@e107155-lin>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_072157_477395_9D338EAE 
X-CRM114-Status: GOOD (  10.74  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Olof Johansson <olof@lixom.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC Team,

Please pull !

Regards,
Sudeep

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git tags/juno-updates-5.3

for you to fetch changes up to 7f8e78ca90e257e5fc8c1f34be309637fab688cd:

  arm64: dts: juno: set the right partition type for NOR flash (2019-05-28 11:35:11 +0100)

----------------------------------------------------------------
ARMv8 Juno updates for v5.3

Couple of updates switching to use new/updated bindings for CoreSight
dynamic funnel components and NOR flash partition type

----------------------------------------------------------------
Leo Yan (1):
      arm64: dts: juno: update coresight DT bindings

Linus Walleij (1):
      arm64: dts: juno: set the right partition type for NOR flash

 arch/arm64/boot/dts/arm/juno-base.dtsi        | 6 +++---
 arch/arm64/boot/dts/arm/juno-cs-r1r2.dtsi     | 4 ++--
 arch/arm64/boot/dts/arm/juno-motherboard.dtsi | 4 +++-
 3 files changed, 8 insertions(+), 6 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
