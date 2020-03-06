Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F4C17C5C7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 19:59:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6uSU6uqXfEVY4ztIYPN+U/5/FwDnOn+CiJxZB4Gnbak=; b=S+9
	lJZhrv3Nz1rbrssy/8e9Ylpvy4GrKOQC1Px8K5eIEphF2Jlnl96xnJhOR5ttekcoAQQHEiaj2zujL
	KwEkp2qivUyj1ytUetJjDOYHv88UVDHp9sV0/ukHNcgKfcPK+PZoLee+5eeia0p4gEZM+KVl8VTQv
	BZydYMaExIhStiZNKFZ15ET9Yw+NGYdDWLb3fq8wLdvWfDvegoJC9UZcH9OWTvWrLRk/E1KgmeyxW
	PEvZyR7iuWZF6j9G43WKZFMXR821EmI4WZrty/iuD26Vm+bW8zYRznGMCulrhLmShxhjq+bHFG0q8
	q00XJgnbJB91WzkYenKoKNpDEc+wUqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAIBT-0004Tm-Oj; Fri, 06 Mar 2020 18:58:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAIAb-0003o7-ER
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 18:58:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4F40D1FB;
 Fri,  6 Mar 2020 10:57:56 -0800 (PST)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 842BA3F6C4;
 Fri,  6 Mar 2020 10:57:55 -0800 (PST)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] Fix Kernel failing to freeze system on panic
Date: Fri,  6 Mar 2020 18:57:37 +0000
Message-Id: <20200306185739.3227-1-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_105801_586387_DF3F5FED 
X-CRM114-Status: GOOD (  10.50  )
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

This anomaly is still present on v5.6-rc4 (on top of which this series
is based)

Given that a previous attempt [1] to address this issue in common code
once for all architectures, while trying to remove duplicate code, had
a mild reception (to use an euphemism :D), this new series goes back
to the original plan of just trying to fix the arm64 behaviour on both
stop and crash paths. (the issue has not been observed on armv7)

Thanks

Cristian

[1] https://lore.kernel.org/lkml/20191219121905.26905-1-cristian.marussi@arm.com/

Cristian Marussi (2):
  arm64: smp: fix smp_send_stop() behaviour
  arm64: smp: fix crash_smp_send_stop() behaviour

 arch/arm64/kernel/smp.c | 29 ++++++++++++++++++++++++-----
 1 file changed, 24 insertions(+), 5 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
