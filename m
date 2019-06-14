Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26AC445FB5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 15:58:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QPt79JwL6gyF3M3yjPl/jU9kfSzeKFPDwkyVpDbRfXw=; b=P9wRx+rWdRwL+q
	289exDmGbpnIVPkjUWuCsPToR1OzMJnZG2/jM011K1zCOWIp9aM/8jZSUTHXcESBy3LtWiHDuFnY3
	TcYjMOu81wyn8ZU4m0hO/QE7ZbhNmyzvGiorOdf0z9k4VuoEb6YTsH4UW/P7JJbEHg+JnVzHtskVA
	Ii5f4+1iv+lxjiRW/HktKSuxNNupfTalthnrZ1ysk3nB0AQa7uZXyXdg/pJhQMzKEWIBg3uTTJK/O
	sLGseySmHL0TkhC02hymGXzZ+/cdpSGYMmMrahtyEY/BHetqfGOrApfLtOAWRiC/GFTYFB6/dz4x1
	xm40dSKAj5wHOdQXtnWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbmiT-0002Xf-Az; Fri, 14 Jun 2019 13:58:05 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmiL-0002Wd-BS
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 13:57:58 +0000
Received: by mail-pg1-x541.google.com with SMTP id k187so1620483pga.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 06:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=MtruUp1oeG0LlHvhP1csrfrOTlear+t2x5W6tuqfW9o=;
 b=FjvxiB4m662o2o7ihDbvXVjViUXtQk/zRrBeU/gUIaSw1TlRXI6JnyJfn3fu5dtZ6R
 aIaF+yJ3UoM6FaeOs3csYpHm/yPfjXGru2XL6vh9s/LH2fyRySbxMndioIspefjKTrMN
 WqV8bXMxY3Y/bFB4Ngnan5KKSs9nM0/bjwaH0G/9Z/g9b4/fJQ03ndLIyFstyZ7UwuLQ
 hN7mx9JnBHJp2U/7Ne2mCLeVISASVcUERm2xuXhQUKKxspUgatHhCETiWJ21WjLFtxjy
 gANvQq7yP+pvO16p7yeIuUl+V1hJSlCIe+SuXfjQlxq0swPiI5/orL84Vdg+jFjhmNme
 FJ9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=MtruUp1oeG0LlHvhP1csrfrOTlear+t2x5W6tuqfW9o=;
 b=jc6XDQQTGoFhXGNmk7uQAeLUGAOe31zZ9R2jI3IHCffMp+FdNoopdh2drfmxugD3Vi
 kQdlpWCJcya091BOOrb5hjqdg9djvvaxgSWZMlP+5lLu7CQTHVcYdAoPcSDeaU5f4KD7
 BYet79ZZT18m6289TXT4HayxWELXtRgU9hia65K8oQx9j0ks2LdTGL1meSYFV8aeFLsr
 B15uL45FC8d/PxMvwqPzB4j6OQOAQ7LJ+RmRLWv6IKTFb+mQcBFnPthltV/cTOwyH7De
 ZxdBNDZ0gG3W4/eCxq1Op0hb873zCZBTqCc8DrHvwwmqltPMd3jhihENnPxj7GvZmUpi
 duGQ==
X-Gm-Message-State: APjAAAWrzK0NgjWOgqA+FR4PPaAXS5iefGI6e6AmsfmGjPuXJMAGu3bV
 /igjPTtrDg4ROM48JbWKxAc=
X-Google-Smtp-Source: APXvYqwCuv7QBXZXeFNoRYeEMcV/bSanFhyVUI0XjKQwLWqnlL1ycXZR0IWC1MZ4dRWtWbcidAOa3g==
X-Received: by 2002:a63:3047:: with SMTP id w68mr18802903pgw.65.1560520675566; 
 Fri, 14 Jun 2019 06:57:55 -0700 (PDT)
Received: from nishad (p3261240-ipngn21201hodogaya.kanagawa.ocn.ne.jp.
 [153.202.122.240])
 by smtp.gmail.com with ESMTPSA id y12sm3064887pgi.10.2019.06.14.06.57.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 14 Jun 2019 06:57:55 -0700 (PDT)
Date: Fri, 14 Jun 2019 19:27:45 +0530
From: Nishad Kamdar <nishadkamdar@gmail.com>
To: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Santosh Shilimkar <ssantosh@kernel.org>
Subject: [PATCH] firmware: ti_sci: Use the correct style for SPDX License
 Identifier
Message-ID: <20190614135741.GA7244@nishad>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_065757_395853_A64F6410 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishadkamdar[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Joe Perches <joe@perches.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch corrects the SPDX License Identifier style
in header file related to Firmware Drivers for Texas
Instruments SCI Protocol.
For C header files Documentation/process/license-rules.rst
mandates C-like comments (opposed to C source files where
C++ style should be used)

Changes made by using a script provided by Joe Perches here:
https://lkml.org/lkml/2019/2/7/46

Suggested-by: Joe Perches <joe@perches.com>
Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>
---
 drivers/firmware/ti_sci.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firmware/ti_sci.h b/drivers/firmware/ti_sci.h
index 662dcffef311..d7b4cd3fce8f 100644
--- a/drivers/firmware/ti_sci.h
+++ b/drivers/firmware/ti_sci.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: BSD-3-Clause
+/* SPDX-License-Identifier: BSD-3-Clause */
 /*
  * Texas Instruments System Control Interface (TISCI) Protocol
  *
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
