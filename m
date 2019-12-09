Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1C4116E67
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 15:00:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jp/oSDSicW7uoX06YvYpIs+yDnYcESWNDEEDb+JHx3A=; b=k+AjdQ5s0/GX2l
	eBk7Y8NSw7clQS+jXEI2p2LJef9MzQaklUc6ib/l7jQiHY3+yTKbeh9KZWd4rMDZVR0r+R9XhjWPo
	oHfygwtx0LwrrNDHN11UWXppI2DN/aRJYOfji69s3Smz9EPAZKRe7MJCtxpVia/IWlqPZfHQzFXzV
	QGj/XozKCq7FYW1KKwICV/2vOstwsZ6JQCvKTZGS5kPqk7VlieXozUDL1ZHbOzzNwfby7zk4pyUJ0
	mEx1ftvVbwTLAiEC/3awrpRaz6sSZAyfXbJIa48yYPnOSJUag5XZ9qGHf3uaw4ZHEk3bGJQ0VZViu
	xM9+n5Oau8oyZEeNkeTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieJaj-0003Kv-71; Mon, 09 Dec 2019 14:00:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieJad-0003KK-1P
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 14:00:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 63686328;
 Mon,  9 Dec 2019 06:00:40 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2AD793F718;
 Mon,  9 Dec 2019 06:00:39 -0800 (PST)
Date: Mon, 9 Dec 2019 14:00:37 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: ARM SoC Team <arm@kernel.org>, SoC Team <soc@kernel.org>,
 ALKML <linux-arm-kernel@lists.infradead.org>
Subject: [GIT PULL] ARM: vexpress: fixes for v5.5
Message-ID: <20191209140037.GC25155@bogus>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_060043_128030_EDCA74A2 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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

I assumed Arnd's patches to move vexpress and versatile platforms into
one directory was part of v5.5 and hence requested cpufreq maintainers
to ack and allow me to take this via ARM SoC. They were fine with that.
I was also waiting for v5.5-rc1 for the same reasons but they were not
part of v5.5-rc1. Anyways no dependency on them as such.

Please pull !

Regards,
Sudeep

-->8

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git tags/vexpress-fixes-5.5

for you to fetch changes up to c9385887cbbf292ee367f75b400874f00ea34890:

  cpufreq: vexpress-spc: Switch cpumask from topology core to OPP sharing (2019-12-09 11:52:50 +0000)

----------------------------------------------------------------
ARMv7 Vexpress fixes for v5.5

Switching the cpumask from topology core to OPP sharing, as the topology
core cpumask can be modified during cpu hotplug to avoid setting up
wrong cpufreq policy cpumask.

----------------------------------------------------------------
Sudeep Holla (2):
      ARM: vexpress: Set-up shared OPP table instead of individual for each CPU
      cpufreq: vexpress-spc: Switch cpumask from topology core to OPP sharing

 arch/arm/mach-vexpress/spc.c           | 12 +++++++++++-
 drivers/cpufreq/vexpress-spc-cpufreq.c |  2 +-
 2 files changed, 12 insertions(+), 2 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
