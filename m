Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D6D153836
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 19:34:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kY2zKsNh0EPgaO9fHBQEoMcKOgPdBbqiQ0wSW7SZS5I=; b=m6MaLYdJb4wBBV
	6h1DsNC9aJfkZzczQX/h1z4adRZfjSzkY9pxO4bcL4YKmtCFfLTlGPppjJBnXfFve/a03uFqz9UuB
	qJSfQECiNpyQnzFJpU+23BNwHsAJTNJoGq+eU0WE5qxTV0e6HfmHM7V+Qj58CN4nPt75hVu+QrKNO
	LqEnOqw8A1eRRHmEefg5eNKMqP5MEKHWJFXSrDIbrz2XUG+sHMRbknrF2VY/7XzAA96QQRXJJn0yS
	svBLAv1UZLToQcjFy7c7GPZjCf05ydeDKPYaYjUDNQKar4wnGkXxOasLnfpKfH1DqopTpOlJ6tnrF
	BFAw7d3Uege4WMjh6nOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izPVW-0001gO-89; Wed, 05 Feb 2020 18:34:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izPVP-0001g4-GQ
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 18:34:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5270B1FB;
 Wed,  5 Feb 2020 10:34:27 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1A7DD3F52E;
 Wed,  5 Feb 2020 10:34:25 -0800 (PST)
Date: Wed, 5 Feb 2020 18:34:24 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: ARM SoC Team <arm@kernel.org>, SoC Team <soc@kernel.org>,
 ALKML <linux-arm-kernel@lists.infradead.org>
Subject: [GIT PULL] arm64: dts: juno: fixes for v5.6
Message-ID: <20200205183423.GF38466@bogus>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_103431_590638_2AB92882 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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

I was initially holding on until v5.6-rc1, but there's no reason to.
So sending it anyways. Please pull !

Regards,
Sudeep

-->8

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git tags/juno-fix-5.6

for you to fetch changes up to 3543d7ddd55fe12c37e8a9db846216c51846015b:

  arm64: dts: fast models: Fix FVP PCI interrupt-map property (2020-01-23 15:54:39 +0000)

----------------------------------------------------------------
ARMv8 Juno/Fast Models fix for v5.6

A single fix for PCI interrupt-mapping on FVP Rev C model. This is
present since the platform was added. This fix is needed to get VFIO
working correctly on this model.

----------------------------------------------------------------
Marc Zyngier (1):
      arm64: dts: fast models: Fix FVP PCI interrupt-map property

 arch/arm64/boot/dts/arm/fvp-base-revc.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
