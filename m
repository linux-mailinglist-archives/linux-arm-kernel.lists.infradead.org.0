Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B844A1B77AC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 15:58:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G+GIGL9qBQcn8zMc8n3VAYPkGqB7hWDB5MPEuzcx6js=; b=aZdXNWrG9j85Om
	6J602PpAN2Ym6JEhRLXhbg60iZP/Md6n1y03oThkkzZ9tkKOnF+zNOvaOKxOdxTLqY1S3kPVjKTP8
	3Ef3j1asDmVWq89Y2r/XEaJKOJtqaXFbEkYUafVlOz5rWIDDK6iskhpp9qnk6ZcTHDURqY8KdEQfh
	gYLLkFfCFRnB2hicQ+cWWYpDu1JYZ17LM2e8A0Iq5qeP6dy2Vb1UsAoHROBT1jvz7mwJJIfJ3MHjH
	kBwt58JMIj1YkrpsW9qyWKm3yPMEhcZ3Pae6IYKzffk3X6OG8QiL/q+QSNAqzU8AYEHRaqK1rHmzY
	RBBvZamCT7i+CXy+Eadg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRyqc-0006pB-Gp; Fri, 24 Apr 2020 13:58:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRyqN-0006mV-Gg
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 13:58:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2FD1D31B;
 Fri, 24 Apr 2020 06:58:13 -0700 (PDT)
Received: from e113632-lin.cambridge.arm.com (e113632-lin.cambridge.arm.com
 [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 27AAD3F68F;
 Fri, 24 Apr 2020 06:58:12 -0700 (PDT)
From: Valentin Schneider <valentin.schneider@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] firmware/psci: PSCI checker cleanup
Date: Fri, 24 Apr 2020 14:56:55 +0100
Message-Id: <20200424135657.32519-1-valentin.schneider@arm.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_065815_604221_46E38C68 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi folks,

This is a small cleanup of the PSCI checker following Peter's objections
to its homegrown do_idle() implementation. It is based on his
sched_setscheduler() unexport series at [1].

I've never really used the thing before, but it still seems to behave
correctly on my Juno r0 & HiKey960.

Cheers,
Valentin

[1]: https://lore.kernel.org/lkml/20200422112719.826676174@infradead.org/T/#t

Valentin Schneider (2):
  firmware/psci: Make PSCI checker not bother with parking
  firmware/psci: Make PSCI checker use play_idle()

 drivers/firmware/psci/psci_checker.c | 159 +++++++--------------------
 1 file changed, 42 insertions(+), 117 deletions(-)

--
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
