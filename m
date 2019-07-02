Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1080F5D2D3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 17:27:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jPgm/H/tUvo8vC6FqDjgiHPeLsvOkwl07bY3mkzO124=; b=uhpWNggTMBHjHK
	6hwLUP9DkU45IXA8cuAKrdJ2sZDTPTARH1ih9xxUK3Af3iDnQBua0HgNU+VtGQxvE+67ouUW410WJ
	r4isJBZBYcaTqcWe0t0OuJaPQvj1KZSoeV/do6zWlrY5puE6h36nt6OrvbQvuCVR9ydIyEQJo/lqp
	Qitv1rJgFq52bfOIzP3e0jEq9UX68Q08noOawmQW4DzhXwLw70AaPl1BUKRn74IdYnbA6t5S+GrIX
	/kqI88gcSfDm6DqKbWZZzXqJS5EgV6ol9gKL1IoQE3nzmHNaMAT93YI90nLHSz/LJCDJCbmzwn+Cx
	3eDvVh6Ks+CUz9OUUFyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiKh9-0000TB-IO; Tue, 02 Jul 2019 15:27:47 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiKgl-0000Eu-F1
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 15:27:25 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x62FRHLs101138;
 Tue, 2 Jul 2019 10:27:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1562081237;
 bh=2ILa5BuYAfRIOvCY7PY0m0xuYn1+zoqO9nvM4xthmVE=;
 h=To:CC:From:Subject:Date;
 b=euHiayx9M7OYn0e3Qu/rJwIMbOVfz462E1aA1JOCtB3DT2HswFXrZJxc/Zq0B1zvq
 0Dd0kY/r02hkH0NjkjglZG+txO+DSFcxC+t2GrKH5KCtsYf7gIimNawgVZOgg9Q4IT
 RcYqK7vWHqBCxj5UIIDm/l9W47P56bPTXwDWNxNg=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x62FRHl4009093
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 2 Jul 2019 10:27:17 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 2 Jul
 2019 10:27:16 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 2 Jul 2019 10:27:16 -0500
Received: from [172.24.190.172] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x62FRExS021893;
 Tue, 2 Jul 2019 10:27:15 -0500
To: ARM-SoC Maintainers <arm@kernel.org>
From: Sekhar Nori <nsekhar@ti.com>
Subject: [GIT PULL] DaVinci fixes for v5.2
Message-ID: <3c31314e-1ac1-324d-5dfa-80b0c5074919@ti.com>
Date: Tue, 2 Jul 2019 20:57:14 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_082723_779829_3A60553D 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 6fbc7275c7a9ba97877050335f290341a1fd8dbf:

  Linux 5.2-rc7 (2019-06-30 11:25:36 +0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/nsekhar/linux-davinci.git tags/davinci-fixes-for-v5.2-part2

for you to fetch changes up to 4f2fe646770774d02d52a514849c181c9e0970f6:

  ARM: davinci: da830-evm: fix GPIO lookup for OHCI (2019-07-02 20:18:33 +0530)

----------------------------------------------------------------
This set of patches fixes regressions introduced in v5.2 kernel when DA8xx
OHCI driver was converted over to use GPIO regulators.

----------------------------------------------------------------
Bartosz Golaszewski (3):
      ARM: davinci: da830-evm: add missing regulator constraints for OHCI
      ARM: davinci: omapl138-hawk: add missing regulator constraints for OHCI
      ARM: davinci: da830-evm: fix GPIO lookup for OHCI

 arch/arm/mach-davinci/board-da830-evm.c     | 5 ++++-
 arch/arm/mach-davinci/board-omapl138-hawk.c | 3 +++
 2 files changed, 7 insertions(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
