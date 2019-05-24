Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BF729BF4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 18:16:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JWHnUIwIG68eohYA384+PreK1HGONzGkQi1sB7IGLrM=; b=AoXH8nk5BTfB59
	xZaEaiHDsPGC/i510FyRI6B+wSjmthBg3Jsl/mel9TuprjlLHlBUJuijB7etj0SHeJbqqXGocwRci
	KF6/SKDq/Eha3/vtt6ptcd5xU1jeMTlWuR2yqJu4Wdl3o9uAENY7Vgn+rRbx4l0dCxFzxxU6h1kdQ
	tlAdNlPdOyS1j00heI3PGznbpFhiKd71ixhghqGhy58UO9AAfh9AlwGMfqf4ntfy2csiv+4IgjvzE
	49qmEU/BYh8hdo/asGs4auDI4YKgpIb1Yl4zbndib5nbJM0yIS9AflkHq8ie0cJHIL9gLL995Xo/z
	s5/v0qz81YUwDkj3Wupg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUCrj-00067j-JH; Fri, 24 May 2019 16:16:19 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUCrb-00067M-40
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 16:16:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4B42D80D;
 Fri, 24 May 2019 09:16:10 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 186B03F575;
 Fri, 24 May 2019 09:16:08 -0700 (PDT)
Date: Fri, 24 May 2019 17:16:06 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: ARM SoC Team <arm@kernel.org>, ALKML <linux-arm-kernel@lists.infradead.org>
Subject: [GIT PULL] firmware: arm_scmi: more fixes for v5.2
Message-ID: <20190524161606.GD4408@e107155-lin>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_091611_160791_46499406 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Hi ARM-SoC team,

Please pull !

Regards,
Sudeep

--
The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git tags/scmi-fixes-5.2-2

for you to fetch changes up to cc6f83a7657e739257a5df1ee81ac0d83e816808:

  firmware: arm_scmi: update rate_discrete in clock_describe_rates_get (2019-05-24 16:29:02 +0100)

----------------------------------------------------------------
ARM SCMI more fixes for v5.2

1. Correction to ARM document ID referred in SCMI protocol binding
2. Fix to correct bitfield definitions for SENSOR_DESC attributes which
   otherwise will calculate sensor values on wrong scale
3. Adds the missing rate_discrete flag setting so that discrete clocks
   are handled correctly. Without this fix it assumes continuous range
   which is incorrect

----------------------------------------------------------------
Peng Fan (1):
      firmware: arm_scmi: update rate_discrete in clock_describe_rates_get

Sudeep Holla (1):
      firmware: arm_scmi: fix bitfield definitions for SENSOR_DESC attributes

Volodymyr Babchuk (1):
      dt-bindings: arm: fix the document ID for SCMI protocol documentation

 Documentation/devicetree/bindings/arm/arm,scmi.txt | 2 +-
 drivers/firmware/arm_scmi/clock.c                  | 2 ++
 drivers/firmware/arm_scmi/sensors.c                | 4 ++--
 3 files changed, 5 insertions(+), 3 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
