Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B3F1AB3A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 10:33:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SiQ2Fpn3+cepQ43uy7LMgCIsSrUCN5LPn3fACir6vrM=; b=tcE
	A6thh3Au7oANP7yGpFbXuV91fqa8qEcfr6imCXBhA/0kDxaf7LGivX/Xtfe+jwld81qVl0P174xBr
	HG+moVXxmud9xAIB8QUxshJ/+hwuBTko7RuSDs+zQvJTW91pq8wHjlWzCAsoV5AIT5bWdhiAdptpB
	QY63VKBOdg+r0ZrPgv/LvanmkUgVlxL8sUkwf2bN/O17iO74wowON4ewaq4qp+IvJKZzM2YO6K2hE
	1XDF+n7+rra2yWTyxHRyqFyOaAlHYy918xVMQdkF2+ydcwZK47xuEmqTVm/cz4K7NdH4KWQ2WRfxz
	zDdBAGwo/y9Yn18sSMFiA3eFw/DOocw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPjum-0003LX-00; Sun, 12 May 2019 08:33:00 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPjue-0003LE-Ue
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 08:32:54 +0000
Received: by mail-pf1-x444.google.com with SMTP id s11so5490642pfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 May 2019 01:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=So49QM/G0e1w0Tw1JbHTUsVfTVbAXUEky8Oa0BHWDOE=;
 b=DtOdcTD2JCgcbPghfxWCN6MaD3kT9q0wiAPsmd6CBiPpgBx/En9lh04YNvIexlK0+R
 /zkzNidnYwSNO6m0W0JXAgQbmVdbdj+n0CwIiFowdiCBxNvwuFgzs7Ti/j6jaiIKlDsC
 hBjyDI04/YPxPFUHp8tKEBXhbJ/uuAQOd4HrQjsI95SHlE3dUTDyzqCLhOkHcO37T9c3
 jJUYNUubHOne16swK2waxI6c2BYHZfpW9YTrGh61geDfWHAjNmC767kbI+h3JG1+sPjU
 VcUnhEW3Xau8kT4XVBg3n7eGCy1n8SbtXUe+yJvUUB3JIsFGfmbIXt7Od2DF/HUo93YL
 Tp/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=So49QM/G0e1w0Tw1JbHTUsVfTVbAXUEky8Oa0BHWDOE=;
 b=qyqxuNHc8gt0VguudE9QvtJwPo+1xgqF/IocG0HKt5TRKysVDrTMTQyy4GFMRIDCll
 dqhmiqtvBAbhSNN9kIA/APSKgMt+vRLTqeJyBll0iuk7s0iROGY7dojnA+NRj3R8cFg8
 Boe+asgYXanOxXwDVDuv1klJ5QHyQkeTC1jqvRzIqVnS8bKDowh6EkpKuh4fVhlWdWqU
 82OlSWTmM+3kyBxPuiTF92JZK0jIRUZHMjg6k+OjhjfRlPlOdjFkhoLMiZmc2thxWy9j
 iuUN/akriseRS5Po8GnMFLIo3LNRPSvEmGTXpcwUYaUIWhPiW2tic0NpI1tBMd82WhE/
 fouQ==
X-Gm-Message-State: APjAAAWRwRHkfUdyERon4+C3LFU0JRsESVVE2hVeEvjgsT0I/Y7/58Yp
 s0abWXuCPD9AW7SrlWwbrx8=
X-Google-Smtp-Source: APXvYqweVnvcwSjuHuUcc1OM3+ZMw8cyKqWLSc4nMOpfa6sB66dX9dD56Omee0QRO0iGZy8ytlkJAw==
X-Received: by 2002:a62:1a0d:: with SMTP id a13mr26330956pfa.198.1557649972136; 
 Sun, 12 May 2019 01:32:52 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id b67sm12076538pfb.150.2019.05.12.01.32.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 12 May 2019 01:32:51 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: jic23@kernel.org, knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net,
 maxime.ripard@bootlin.com, wens@csie.org
Subject: [PATCH] iio: adc: sun4i-gpadc-iio convert to SPDX license tags
Date: Sun, 12 May 2019 04:32:41 -0400
Message-Id: <20190512083241.9191-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_013253_021320_4FEAC9E5 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-iio@vger.kernel.org, Yangtao Li <tiny.windzz@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Updates license to use SPDX-License-Identifier.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/iio/adc/sun4i-gpadc-iio.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/iio/adc/sun4i-gpadc-iio.c b/drivers/iio/adc/sun4i-gpadc-iio.c
index 04d7147e0110..f13c6248a662 100644
--- a/drivers/iio/adc/sun4i-gpadc-iio.c
+++ b/drivers/iio/adc/sun4i-gpadc-iio.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0
 /* ADC driver for sunxi platforms' (A10, A13 and A31) GPADC
  *
  * Copyright (c) 2016 Quentin Schulz <quentin.schulz@free-electrons.com>
  *
- * This program is free software; you can redistribute it and/or modify it under
- * the terms of the GNU General Public License version 2 as published by the
- * Free Software Foundation.
- *
  * The Allwinner SoCs all have an ADC that can also act as a touchscreen
  * controller and a thermal sensor.
  * The thermal sensor works only when the ADC acts as a touchscreen controller
-- 
2.17.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
