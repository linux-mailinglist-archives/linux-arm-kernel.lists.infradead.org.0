Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FB643731
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 16:23:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U7/TZe4v26kmxTN2nxV2edEIrNt9GKu2Ct3s0KGEbJk=; b=p0w97JTMP1dSpT
	VjKU5P2ztb75pW9o26CuGQMwH+qdJkBwsktl6XgmJhsU4sMjCGFtW2E52zMYLgADLhXgwVGRXsFwp
	nG/mHhiBWqU09872RE4Tg1CtGntt6GxnF7ph6z0bkfMCg7I3h96OcxmGPCmVVg7657a4jZJiO7pvV
	TyPkRMd2rbXblUMjGfqFZ1ju4F1bYEC5oCj0GPOPHgO7Ywk4jQXFX0WoYs8GUpaX12yccd4ttiErg
	Z8EpOLSOHdEjvwOsdOQJoatK7CfVhYJlpWeLvEVs5HVFV6r3cfm/0paMHVOR07APrclWh0GIr9C5d
	ACYZshlRLqBifdRqus8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbQdM-0001yv-Tu; Thu, 13 Jun 2019 14:23:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbQdB-0001yc-Uo
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 14:23:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DFA14367;
 Thu, 13 Jun 2019 07:23:08 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 044963F718;
 Thu, 13 Jun 2019 07:23:07 -0700 (PDT)
Date: Thu, 13 Jun 2019 15:23:05 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: ARM SoC Team <arm@kernel.org>, ALKML <linux-arm-kernel@lists.infradead.org>
Subject: [GIT PULL] firmware: arm_scmi: updates for v5.3
Message-ID: <20190613142305.GC7283@e107155-lin>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_072310_030524_CCB91AB5 
X-CRM114-Status: GOOD (  11.01  )
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

Please pull !
Note this contains associated/dependent hwmon driver changes that is
Acked by Guenter Roeck

Regards,
Sudeep

-->8

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git tags/scmi-updates-5.3

for you to fetch changes up to ac778e62634eee0685b622605b063a49edf2f2d1:

  hwmon: scmi: Scale values to target desired HWMON units (2019-06-12 12:29:51 +0100)

----------------------------------------------------------------
ARM SCMI updates/fixes for v5.3

1. Correction to ARM document ID referred in SCMI protocol binding
2. Fix to correct bitfield definitions for SENSOR_DESC attributes which
   otherwise will calculate sensor values on wrong scale
3. Adds the missing rate_discrete flag setting so that discrete clocks
   are handled correctly. Without this fix it assumes continuous range
   which is incorrect
4. Adds support to read and scale the sensor values based on the factor
   read from the firmware

----------------------------------------------------------------
Florian Fainelli (2):
      firmware: arm_scmi: fetch and store sensor scale
      hwmon: scmi: Scale values to target desired HWMON units

Peng Fan (1):
      firmware: arm_scmi: update rate_discrete in clock_describe_rates_get

Sudeep Holla (1):
      firmware: arm_scmi: fix bitfield definitions for SENSOR_DESC attributes

Volodymyr Babchuk (1):
      dt-bindings: arm: fix the document ID for SCMI protocol documentation

 Documentation/devicetree/bindings/arm/arm,scmi.txt |  2 +-
 drivers/firmware/arm_scmi/clock.c                  |  2 +
 drivers/firmware/arm_scmi/sensors.c                | 10 ++++-
 drivers/hwmon/scmi-hwmon.c                         | 48 ++++++++++++++++++++++
 include/linux/scmi_protocol.h                      |  1 +
 5 files changed, 60 insertions(+), 3 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
