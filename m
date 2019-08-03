Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F4580695
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 16:14:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nM5S0qoRV3y1qH4LvQjSwtl5K8smfbhEvy10m3ouw9s=; b=t8oDrwWHhM90M6
	zTy5ygfcED/t5mQToMVNzWoDPwPcx1mvMMEkLTUgWCGSVPJo1/NGbVTkJGF8uAdsfH31DyTjE7Y4Y
	rCrZgaO5xvwOo3HXagAt8rL5BfcATkCj8DVVe6YKE3jf9RDqlSsYuPJ90k0owbqiwDVgIYNOPB394
	OI73CkCubj1tDfayfvrJs59yjJO28aVrrGY89Cs8EybB4K2HGW/kWa/HkUIMt60KqG+HbW8CaVH4S
	WElxFjzBP+aWPgXi8XUPZE+xHhamfUKcHUgjfeY+Gtqq90m9a6ktF/H/DADBhm3fJDWchgWTKrgqA
	l5sw6zeDbj7X4BkOP/Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htund-0001vS-8r; Sat, 03 Aug 2019 14:14:21 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htunA-0001oL-W5
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 14:13:56 +0000
Received: by mail-pg1-x544.google.com with SMTP id u17so37485876pgi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 03 Aug 2019 07:13:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=2nW1qdYT+ls+yP7SZf0Ct0WsFONxeOJJreCKu5Wq5r0=;
 b=vXpncURIJuxiU45nZgakz+fsbMIciPseDLVeOBtMQSwBKOUqkNji0zExHlbGcox+7h
 A859cGbT9tgfN5TITg97JCDm/WkhwbPqNYG8W+NPEnyo/wjmUZuXfWtw24misjeNEMCx
 OgRHGXee0G00IV3e+5zsE5aWdsq4/aPF6T138e0RccQnvNSrGib0gZ8PGPER20BwqlRr
 V4jrBzx6G4P53o4AYpS3zSSROdjtgY4z+IuprdhBPVooHkZTR1+6zLnnvPaZ192JWVjA
 nk24/4i2yFXERL0+k6GwMn8JJAnwjLV3Jp/DX2zzzWZoqLYaupjolTKbhcvaImgEuGRJ
 PG6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=2nW1qdYT+ls+yP7SZf0Ct0WsFONxeOJJreCKu5Wq5r0=;
 b=mbu1mnHE+kAuu2SYX1AKMV9KECyyTavYV46jfvpNjM1BAVe/YyiuHuMnOmDvQwNmNu
 anoa7P9SL7m88S7IOJ0BX4az1a+jtsjG6wNmPpfuP2EiLUv+q2qhvnHacdUPJetMDzpW
 BCkHwt/N+QDERQCK+FgpA2LpSYDbJDFbB8RaMc9JzTBq4WrQsjAo94k5JzcyZr6ngQkt
 RtCN68yxcmSXJIsWdhFtXi4LH7pItGerO4EvcyoVs5i43YGqHnl9BPQlpLJ26OwhvoMf
 0njaUJL3CxsqYXHYRYxfcIv8FY1olyNUYODEU22ba+uDPNSdnDYfsZ+9FEI710WIpUGp
 6fBg==
X-Gm-Message-State: APjAAAWBgVDe4l7smdLScOsFobDc+4Hi7bWknTyaHZsNei+BfoAbcCk/
 o8onwCPIiXJbQbphjf2i20s=
X-Google-Smtp-Source: APXvYqyPilma59RFUQoDatZkRE5fdaK3QZsnXT7UVrQoypYHakMO16WqAbGIumdAE1KTzZGTg+UHxw==
X-Received: by 2002:a63:61cd:: with SMTP id v196mr2130652pgb.263.1564841622833; 
 Sat, 03 Aug 2019 07:13:42 -0700 (PDT)
Received: from nishad (p3261240-ipngn21201hodogaya.kanagawa.ocn.ne.jp.
 [153.202.122.240])
 by smtp.gmail.com with ESMTPSA id a12sm12704967pje.3.2019.08.03.07.13.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 03 Aug 2019 07:13:42 -0700 (PDT)
Date: Sat, 3 Aug 2019 19:43:35 +0530
From: Nishad Kamdar <nishadkamdar@gmail.com>
To: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>
Subject: [PATCH] i2c: stm32: Use the correct style for SPDX License Identifier
Message-ID: <20190803141331.GA3588@nishad>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_071353_395860_8DE6A829 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishadkamdar[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Joe Perches <joe@perches.com>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch corrects the SPDX License Identifier style
in header file related to STM32 Driver for I2C hardware
bus support.
For C header files Documentation/process/license-rules.rst
mandates C-like comments (opposed to C source files where
C++ style should be used)

Changes made by using a script provided by Joe Perches here:
https://lkml.org/lkml/2019/2/7/46

Suggested-by: Joe Perches <joe@perches.com>
Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>
---
 drivers/i2c/busses/i2c-stm32.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-stm32.h b/drivers/i2c/busses/i2c-stm32.h
index 868755f82f88..2c21893905a3 100644
--- a/drivers/i2c/busses/i2c-stm32.h
+++ b/drivers/i2c/busses/i2c-stm32.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * i2c-stm32.h
  *
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
