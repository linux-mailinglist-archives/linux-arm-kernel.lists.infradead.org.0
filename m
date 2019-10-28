Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B119CE6BAA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 05:00:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CdEwtQF9WGXspm3A/A2BdAHZ0pg+zcr1XxLj78An754=; b=MMw/PTM5X+pdv2
	7YBRsmx+c687SiCquJCjqX64J8II8Bu7oQhDX4z2ANbXvN/25QH9qsAcG2DkIcCKuewLPfoQkgalc
	5wSvFPRMou1YlXBAEagd7RShInOO8jlyVKKoa/yF/4dyJ4C9tj8JZHx86J/mfK2NkMiJOvh0oQY2w
	tAjrW31dP/EPNnSjYYuCHjH2+Ke++/nbf4KHPqqROqlSsQtYOUurNxEimwAZehMVlmiTVMIZ+vBlw
	s/ato40ELW0G3f51vWuTTY+Gb4iSRh36ibmMYNPTBQ/YPmElfbumy5PgsQ2mQl6917Xd+l3ZNAmqP
	KCkZu9oPwiO9XJ+dW/Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOwCv-0006zR-E4; Mon, 28 Oct 2019 04:00:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOwCk-0006yy-Cn
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 04:00:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0333E1FB;
 Sun, 27 Oct 2019 21:00:29 -0700 (PDT)
Received: from e107533-lin.cambridge.arm.com (e107533-lin.shanghai.arm.com
 [10.169.107.24])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CFFDD3F6C4;
 Sun, 27 Oct 2019 21:00:25 -0700 (PDT)
Date: Mon, 28 Oct 2019 12:00:22 +0800
From: Sudeep Holla <sudeep.holla@arm.com>
To: ARM SoC Team <arm@kernel.org>, SoC Team <soc@kernel.org>,
 ALKML <linux-arm-kernel@lists.infradead.org>
Subject: [GIT PULL] arm64: dts: juno: update for v5.5
Message-ID: <20191028040022.GC20568@e107533-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_210030_474019_9A580560 
X-CRM114-Status: GOOD (  11.45  )
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

-->8

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git tags/juno-update-5.5

for you to fetch changes up to 577dd5de09906e37a407a4326d17e58f6051fa2d:

  arm64: dts: juno: add GPU subsystem (2019-10-21 15:32:56 +0100)

----------------------------------------------------------------
ARMv8 Juno update for v5.5

Single patch to add support for Mali GPU on all versions of Juno.
Though it's disabled by default, it is very useful to test panfrost
drivers.

----------------------------------------------------------------
Robin Murphy (1):
      arm64: dts: juno: add GPU subsystem

 .../devicetree/bindings/gpu/arm,mali-midgard.yaml  |  5 +++-
 arch/arm64/boot/dts/arm/juno-base.dtsi             | 27 ++++++++++++++++++++++
 2 files changed, 31 insertions(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
