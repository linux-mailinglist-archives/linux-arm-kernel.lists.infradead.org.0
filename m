Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CACE1F44
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 17:26:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=59wGJ/bjvF+K4BhC3Ovy1n4Z+jLU1okKlo2Gf7Dta5U=; b=dhPJTeAaxTK9t5
	CvDD2JS2s0XqqXC16FO1V3UgzLCrvXfcKZfTINI+dNdXdRNiE3MPOx4LrLQPPK4U0bnFsjkoGUqSf
	Pa4Ykx9yr244mN+3dpqx2/cGyUKfc0Tbe2HVY4/X2AyI2irhQLVIe9PhGD1gPTtau+3fQoctuRiJo
	QlJyh56sB894btOMHIK5Ug8XuSZu+bzmmxnUiKQ+XhLTOXabTGf6Jnmas1cPhy9azU7mqtNfqg/V2
	xm62wvBjczZ8vwqwz/xk8eozvMvmdBnOcauFiiNi2xWm+BNK3tOV6xJqvaGDdvRTFKPcjuG9VWGPE
	H8NaZR4Qavt4HXC0WfzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNIXI-0005Pq-BO; Wed, 23 Oct 2019 15:26:56 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNIX8-0005PQ-Nu
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 15:26:48 +0000
Received: by mail-pg1-x541.google.com with SMTP id 15so7000756pgt.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 08:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=eB8tBI6yDFyKa7RDqC5m4uIkOsXMXVXVRZ+cXb0whiI=;
 b=bt4/svf29WjLyXtdV/XTOBIt3Q+Q3s0L4pf6nH3frdrJltuIWuw4kc/D/yHT03/yIX
 33R2LmJhWwWva9Xr8g1JiQioza0GRzkJR5kwSYBehMSTr6pPXkLoYe5nLkH+lBwCGEIX
 MypnYI93gJIiuc8vfZp0v7Sv9HbsQAxrNPbtqI5RJug8YWy5fBH6+/Hh8gu/Zl1ts2SL
 hUH6OjfLrxhIeh4vk2bAyJG/eY99dZOKtP7ZxjYUqFainhP7jWoQxf1vmiYjQs/ykAS2
 j9JZeVzb63Au67+2PiAPVjMSS53I8Q9WrYNQzDfXU8hssZp8Z68uNKnaIgK+qMMT1pBN
 Kq7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=eB8tBI6yDFyKa7RDqC5m4uIkOsXMXVXVRZ+cXb0whiI=;
 b=HztXgWLQNDJXQseHKUHjrENC1IqF/OyRmmUF2ApGrUJyFRPq/QWIjRiZeISs3T6FZb
 yvVTcws5v4jjN0KrRdXdqcgXBRnurAg0HY8hpE0JrLzr2fX+y5GscmpiGMXMdVl2Lyjt
 TXV+vmtog595LbdadlwQsrZ3bU+UyA6YjyT0dr2t3lu4CaLzUzEaQaipyPNxivill8PF
 IV8dfcGMDx0dsiC30yywWOStYZm3Hy03yU2WWkJHPaa3RkKYefgm6clZF6btJsQM/+kF
 wjwFZym/q+Hs6qjgQ1nbcvt2BSsLf3MXgD66ARPx76twJ8m0nxL3D5f+T/FlgME00VAv
 VQIg==
X-Gm-Message-State: APjAAAVXNVOqTGzxcHGYcoQoMLoFLyEMfPfsALdPIKljERHVlJ+KO/ET
 QA6Qt40Jf+FaMXlhQoDx0g0=
X-Google-Smtp-Source: APXvYqyIu2N5oOaT8KT0563kjSMOnaymaWdlyH/6wjqSwBA6M7dEp0dcvB2RactEHhIT3daWCrVzyQ==
X-Received: by 2002:a62:8248:: with SMTP id w69mr11477291pfd.236.1571844405770; 
 Wed, 23 Oct 2019 08:26:45 -0700 (PDT)
Received: from nishad ([106.51.232.103])
 by smtp.gmail.com with ESMTPSA id k17sm32510265pgh.30.2019.10.23.08.26.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 23 Oct 2019 08:26:45 -0700 (PDT)
Date: Wed, 23 Oct 2019 20:56:38 +0530
From: Nishad Kamdar <nishadkamdar@gmail.com>
To: Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joe Perches <joe@perches.com>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: [PATCH] net: ethernet: Use the correct style for SPDX License
 Identifier
Message-ID: <20191023152634.GA3749@nishad>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_082646_805071_094C716E 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishadkamdar[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch corrects the SPDX License Identifier style in
header file related to ethernet driver for Cortina Gemini
devices. For C header files Documentation/process/license-rules.rst
mandates C-like comments (opposed to C source files where
C++ style should be used)

Changes made by using a script provided by Joe Perches here:
https://lkml.org/lkml/2019/2/7/46.

Suggested-by: Joe Perches <joe@perches.com>
Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>
---
 drivers/net/ethernet/cortina/gemini.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/cortina/gemini.h b/drivers/net/ethernet/cortina/gemini.h
index 0b12f89bf89a..9fdf77d5eb37 100644
--- a/drivers/net/ethernet/cortina/gemini.h
+++ b/drivers/net/ethernet/cortina/gemini.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /* Register definitions for Gemini GMAC Ethernet device driver
  *
  * Copyright (C) 2006 Storlink, Corp.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
