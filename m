Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0336A1E84AD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 19:21:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XqTlj5veiXnaLc1Bru3ZJbqyjaPJr6yj5yQD+uVt46o=; b=OPrp/ZpcvNJTrY
	JVNMCfkW+0Hg7sgohHTsWLGFneOLd8/6kQNP1WO0hYmki6crBKpngB5+/t1UhRlDsThjQ2MCNj6Aw
	QoZLVxapUcEAshY6TQ8n7rTe/S8GKknXjB+Y3XGBuU12RCTSckXI6ohIei6gtZBVSpYZwITFVGA78
	GZN7Lh4/R9bag9DBQ3cT8QvXLoGhhH2O+nDyYAcCMW88BIWDZrqGzU6Jbhb1lCbN1Es5BIaANEj37
	wls1x7TTBamtJPaiaZQxzyneDVL/dFP7I0TNScDPDEGRzFPLuoebtN4DAYyFQbUXru+3uX3o7lipo
	/mdfXQ751lS7wiMsGIBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeigw-00033F-Dw; Fri, 29 May 2020 17:21:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeigo-00032S-Ns
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 17:21:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2E8AE1045;
 Fri, 29 May 2020 10:21:00 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 4D2C83F52E;
 Fri, 29 May 2020 10:20:59 -0700 (PDT)
From: Catalin Marinas <catalin.marinas@arm.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [GIT PULL] arm64 fix for 5.7-rc8/final
Date: Fri, 29 May 2020 18:20:55 +0100
Message-Id: <20200529172055.28307-1-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_102102_829438_12557788 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

Please pull the arm64 fix below. Thanks.

The following changes since commit 8cfb347ad0cffdbfc69c82506fb3be9429563211:

  arm64: Add get_user() type annotation on the !access_ok() path (2020-05-22 16:59:49 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-fixes

for you to fetch changes up to ba051f097fc30b00f6b66044386901141351a557:

  arm64/kernel: Fix return value when cpu_online() fails in __cpu_up() (2020-05-28 12:04:55 +0100)

----------------------------------------------------------------
Ensure __cpu_up() returns an error if cpu_online() is false after
waiting for completion on cpu_running.

----------------------------------------------------------------
Nobuhiro Iwamatsu (1):
      arm64/kernel: Fix return value when cpu_online() fails in __cpu_up()

 arch/arm64/kernel/smp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
