Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5827E2FF20
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 17:14:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7ETE6NH9FFRW7u0D8x1XQl9zrZYx6MUBs8NqgYu0kLs=; b=EoqEtyXTajK4+za8FTtHotilYv
	LCDt9p/pFOReoVh6KDEiIQOUjq2gYopQ8tdFi//R67p3pLwFmpHiasZadRyeuYSvOpquBSYFml+nl
	AvPysdU4Xq5nVYEwDMwESIHlQlK8Z45oiJwPSHfwsizxesD9moocXf7urzNVyATQUKwyv0Yc690Ik
	cgGsmMBjwXGaY7+2aaoPpEpnqwvJFVpXGtSDuf91T6pgMeyzvIpYoIHQla3PTlUy6fM8gCTyo0J9s
	rvRQdknExg50YJz0wTcV70LxiLZBEVFG8sYgh+bEw1DRDsznyJI1+Q0hZtpMS5Ujd6RY3U9+TyrQF
	/SXEMtzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWMl9-0002NA-FS; Thu, 30 May 2019 15:14:27 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWMkp-00027I-3j
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 15:14:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F1BEE15AD;
 Thu, 30 May 2019 08:14:06 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 26EEC3F59C;
 Thu, 30 May 2019 08:14:05 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: kvmarm@lists.cs.columbia.edu
Subject: [PATCH kvmtool v3 2/9] update_headers.sh: Cleanly report failure on
 error
Date: Thu, 30 May 2019 16:13:07 +0100
Message-Id: <1559229194-3036-3-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1559229194-3036-1-git-send-email-Dave.Martin@arm.com>
References: <1559229194-3036-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_081407_153844_B6580007 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
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
Cc: Christoffer Dall <cdall@kernel.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Andre Przywara <andre.przywara@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If in intermediate step fails, update_headers.sh blindly continues
and may return success status.

To avoid errors going unnoticed when driving this script, exit and
report failure status as soon as something goes wrong.  For good
measure, also fail on expansion of undefined shell variables to aid
future maintainers.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
---
 util/update_headers.sh | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/util/update_headers.sh b/util/update_headers.sh
index 4ba1b9f..a7e21b8 100755
--- a/util/update_headers.sh
+++ b/util/update_headers.sh
@@ -7,6 +7,8 @@
 # using the lib/modules/`uname -r`/source link.
 ########################################################################
 
+set -ue
+
 if [ "$#" -ge 1 ]
 then
 	LINUX_ROOT="$1"
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
