Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9995E487
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 14:51:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FW3STqMwnBMzpQNX8oH8oITA3j4ttiStiC1jxb0C2lI=; b=ha5KMgCmqbb4dG
	X4VpHgeEc2N0hyrpeEHKALjaB0rztGcuvSMxyNltA1m3sLYof6JspFR9q12hbr5wT/a86BfSiCcyd
	cEw3vM1Xc+uV5yoFZ0mdiXU1HnjFOV/77aLqUpHR29i+yq3ZmpRmaRUH/r/wsWmoS5e5MYHXLHzsQ
	yOGe7T5ppErNVYffzYGjms7zmZZPxjZe8GXG2kbO5OqVzK8ytcPu7WokTlsBHN3pdhAqf4kWPko+/
	VT3McAuf302uct5ZzHB8nEwEN7hioq6G9p31TkDL7q1F8eCUH4wjl8zFtLKbJGepsIFDuxLt0Rwg8
	m2N0q5t/pfDcFQHR0Ezg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiejL-0006zA-GV; Wed, 03 Jul 2019 12:51:23 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiefS-00038Y-Rk
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 12:47:26 +0000
Received: by mail-pf1-x443.google.com with SMTP id u14so50313pfn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 05:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yNi+jgx3lQdMBEwMmP6BN4Xd0pkiX3oYg56Fvm+D/U0=;
 b=fU2w0i8/igNZZ4XzvDL6UGujBxNiSXj9kZJ5A5CJeafo4jd3Qg80YUst6aAtRnCrS3
 dEzd5z25iEVtZf7gNHPEFmOaocmwKALv40d3MALPoqJC6eFz0IS6MeAmKxeMOqe4HW6q
 CrO/Hp8IKQkzOE6F/DGYpVb01OliaiC9+DSSw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yNi+jgx3lQdMBEwMmP6BN4Xd0pkiX3oYg56Fvm+D/U0=;
 b=hXGh4+rDP8LSnwdcKHjLViZqZIAMp1lb6XLPPvxGPPVvRpg5j8x0TG33CA1691sIUc
 GwnUH60GP1XAcSndz2yJ/rzL/ubG/qxf0UFzlxFxVZai2ejjQqmA4SXXIdu+6/dV47BQ
 xDprExGgqn9irS1ufwBj8mONkKqB0C47oi3AxABK3UHYtLZ+CQGZHXhNTwVFlQaxGaML
 XAgV/nLZ2sjuxNHK0VJlpgS45D0KY5hATMCc45d8SLarsl3oe4si70EReC5m/i3q4JkS
 ya+NMBmgH+3F63k0rPx6pBSES8O99tii96Drxq5mTJoP9ZFC0JfSXMnh04X3ilggjxtx
 7qVg==
X-Gm-Message-State: APjAAAXGR4eynpeqRBJxDQx2oNP/Qfz+eoXu7lBOPhugf31CZ9U1/64n
 r4qdOS7uDrHfYypKQFY9DpQVyw==
X-Google-Smtp-Source: APXvYqyP76v0X/60PBMXUNT/tKb15DU8UxzaQ3Gwk5FrUdNvWD39oKr0U4qQ4cdiev+OVYnaeTDe/A==
X-Received: by 2002:a17:90a:1904:: with SMTP id
 4mr12945020pjg.116.1562158041934; 
 Wed, 03 Jul 2019 05:47:21 -0700 (PDT)
Received: from localhost.localdomain ([183.82.231.32])
 by smtp.gmail.com with ESMTPSA id q1sm3735890pfn.178.2019.07.03.05.47.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 05:47:21 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 11/25] ARM: dts: sun8i: t3-cqa3t-bv3: Remove legacy license
 text
Date: Wed,  3 Jul 2019 18:15:55 +0530
Message-Id: <20190703124609.21435-12-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190703124609.21435-1-jagan@amarulasolutions.com>
References: <20190703124609.21435-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_054723_136799_4D93CCAA 
X-CRM114-Status: GOOD (  17.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Hao Zhang <hao5781286@gmail.com>, linux-sunxi@googlegroups.com,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This dts file already used SPDX Licence identifier and
forgot to drop legacy license text from

commit <382744d35916> ("ARM: dts: sun8i: Add board dts file for t3-cqa3t-bv3.")

Cc: Hao Zhang <hao5781286@gmail.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/boot/dts/sun8i-t3-cqa3t-bv3.dts | 38 ------------------------
 1 file changed, 38 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-t3-cqa3t-bv3.dts b/arch/arm/boot/dts/sun8i-t3-cqa3t-bv3.dts
index 6931aaab2382..cf35c0b930ee 100644
--- a/arch/arm/boot/dts/sun8i-t3-cqa3t-bv3.dts
+++ b/arch/arm/boot/dts/sun8i-t3-cqa3t-bv3.dts
@@ -3,44 +3,6 @@
  * Copyright (C) 2017 Chen-Yu Tsai <wens@csie.org>
  * Copyright (C) 2017 Icenowy Zheng <icenowy@aosc.io>
  * Copyright (C) 2018 Hao Zhang <hao5781286@gmail.com>
- *
- * This file is dual-licensed: you can use it either under the terms
- * of the GPL or the X11 license, at your option. Note that this dual
- * licensing only applies to this file, and not this project as a
- * whole.
- *
- *  a) This file is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License as
- *     published by the Free Software Foundation; either version 2 of the
- *     License, or (at your option) any later version.
- *
- *     This file is distributed in the hope that it will be useful,
- *     but WITHOUT ANY WARRANTY; without even the implied warranty of
- *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *     GNU General Public License for more details.
- *
- * Or, alternatively,
- *
- *  b) Permission is hereby granted, free of charge, to any person
- *     obtaining a copy of this software and associated documentation
- *     files (the "Software"), to deal in the Software without
- *     restriction, including without limitation the rights to use,
- *     copy, modify, merge, publish, distribute, sublicense, and/or
- *     sell copies of the Software, and to permit persons to whom the
- *     Software is furnished to do so, subject to the following
- *     conditions:
- *
- *     The above copyright notice and this permission notice shall be
- *     included in all copies or substantial portions of the Software.
- *
- *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
- *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
- *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
- *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
- *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
- *     OTHER DEALINGS IN THE SOFTWARE.
  */
 
 /dts-v1/;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
