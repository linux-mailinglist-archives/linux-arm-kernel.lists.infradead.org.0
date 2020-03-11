Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F609181EDA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 18:13:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IZEvVJ86Thbz0tj6RJkKBkFkEI9VRnZQUu9++z2HsQ8=; b=jsx
	ASf+AUwkQkk5YKz7CFuv4tbc6ZGXGtVNLeaIVFLhWvw73MAyayKp4za/mpdhuYTvxK3qnKRYv0HiJ
	ebPlxpbwfT3YcbhwNNjQxnroW5YZMUAhjE2TarHeZjovoDPuZsuhRLmOVPpgUKwM+s4GeNAJ2hNYp
	8bI8tYTEJPNevJC0oCp3vrcwyLTOP+6CIVLKKD521JEoHPBPIAA7/yDW+Zsn1vdBd+uoIHpgDz7fR
	ZK0FS8QHgodPhNwz1IT518hs+ewJdPhQYrfbQHmPPhAQR5ZNb/ZO+5nJyq4MeKuE6/QrZFQl3m7hg
	CZt6cVV7xuIDVyCFZ/CTBJh8jQyIWOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC4uu-0006DL-2l; Wed, 11 Mar 2020 17:13:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC4ug-0006BZ-Kb
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 17:13:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E91441FB;
 Wed, 11 Mar 2020 10:12:55 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2B2073F6CF;
 Wed, 11 Mar 2020 10:12:55 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/2] Fix Kernel failing to freeze system on panic
Date: Wed, 11 Mar 2020 17:12:43 +0000
Message-Id: <20200311171245.45443-1-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_101258_721959_A9C38397 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 james.morse@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

Since a while (~v5.2) it has been reported that on arm64 when a single
core is online and another one panics while booting up, SMP send stop
machinery fails to send the proper stop requests, and, as a result, the
system is still well alive at the end of panic instead of being frozen;
moreover, this same behaviour on the crash_kexec path causes to loose
one CPU on the following crash-triggered reboot.

This anomaly is still present on v5.6-rc5.

Given that a previous attempt [1] to address this issue in common code
once for all architectures, while trying to remove duplicate code, had
a mild reception (to use an euphemism :D), this new series goes back
to the original plan of just trying to fix the arm64 behaviour on both
stop and crash paths. (the issue has not been observed on armv7)

Thanks

Cristian

[1] https://lore.kernel.org/lkml/20191219121905.26905-1-cristian.marussi@arm.com/

Changelog:

v1 --> v2:
- rebased on v5.6-rc5
- dropped some useless comments
- adopted a common helper used across both patches as suggested
  by Mark Ruland

Cristian Marussi (2):
  arm64: smp: fix smp_send_stop() behaviour
  arm64: smp: fix crash_smp_send_stop() behaviour

 arch/arm64/kernel/smp.c | 25 ++++++++++++++++++++-----
 1 file changed, 20 insertions(+), 5 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
