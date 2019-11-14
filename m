Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 372B2FCAFF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 17:46:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vxwWsvBMyZi0PBVJmT79m3mpl0Pgez5xMhocKlvMJnA=; b=ReoBo3c5l/hTIr
	cxzIy7WLvc+YDklnwOA2oNhR15U+jotTPyDdaaYlK8JfEtne5lwaXCqY9egEuPLybk9eXz2gizjbi
	VMXFXrbQ5GmOiXjPatpjObolluEbqqLE57OK3BptlShJ0kP3Q0yKuy3aWMDRT8od5CmgeemVIr5Mg
	nL1CBRk0Hdy5joYsYQHGUCiTZAahmob0DAlMMbCKaCTUPeP8z0ta5c90KBmdV/M/4lgQE0a85U+7n
	k0rixwWbi2zRlH9zsze2rnod6Uaplu03yXPzEgGxKOax+Roc2lHjr8nj07Nm0tN7XJZ382/NTgIRZ
	KmCMpGL9TCoDue07RI4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVIG2-0007av-Kc; Thu, 14 Nov 2019 16:46:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVIFu-0007aN-Tw
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 16:46:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 10CA7328;
 Thu, 14 Nov 2019 08:46:02 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0D3053F52E;
 Thu, 14 Nov 2019 08:46:00 -0800 (PST)
Date: Thu, 14 Nov 2019 16:45:55 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: ARM SoC Team <arm@kernel.org>, SoC Team <soc@kernel.org>,
 ALKML <linux-arm-kernel@lists.infradead.org>
Subject: [GIT PULL v2] firmware: arm_scmi: fix for v5.5
Message-ID: <20191114164555.GA19398@bogus>
References: <20191113180406.GA12601@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191113180406.GA12601@bogus>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_084603_010469_2BE93513 
X-CRM114-Status: GOOD (  12.82  )
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

Stephen Rothwell reported issue[1] with fixes tag in the commit. I have
fixed the same and re-tagged it. Please drop the earlier PR and use
this one based on your preference(I am not sure if want to ignore or
fix it). Sorry for the silly mistake.

Please pull !

Regards,
Sudeep

[1] https://lore.kernel.org/lkml/20191114202122.0f38eab6@canb.auug.org.au/

-->8

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git tags/scmi-fix-5.5

for you to fetch changes up to 7bd39bc6bfdf96f5df0f92199bbc1a3ee2f2adb8:

  firmware: arm_scmi: Fix doorbell ring logic for !CONFIG_64BIT (2019-11-14 11:13:50 +0000)

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
