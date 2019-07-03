Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 006065E4A8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 14:57:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ekpt5nM3oE0gIIE9lpo51HN3cwSm32jMtVdFTeIzxk=; b=lxXoMp3Li55jLi
	liYTArLGDwA/fl/6QDhcXxyb8HpZTPV6CwJtpHP6mXxz9p5oV58YNM3QsQcrx25cnEIeTKOPGAVOM
	8idxx9FCSJd/81UdWAzeHH+aUJeoOGlrKUx6Fk0z5rIKA+jHum97CM2psB+ou4HcPcgblg20CrMvp
	FhKV8HixQ0LfgHEanvG5Wl+UGm/RRgjjGvaY/KWooNqBZGcCllsmXWL4d5xQyVEYyhWv49U250ir9
	9cIJXCogU7wH9+0mrKvZoh6RJDiSGZ6l7fOVGIlT2EMJw6bKGIVrQur6imsBt4sRhIRiCrPa4BrAV
	TdLrEKAFr1AcQfn+ZWpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiepO-0003Yi-JL; Wed, 03 Jul 2019 12:57:38 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hieg2-0003aa-S1
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 12:48:00 +0000
Received: by mail-pl1-x642.google.com with SMTP id bi6so1186202plb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 05:47:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=E66BJBj0lKscdTHg8FShQPxIXv/lJtWJWNrVUu1xJMU=;
 b=cFs6VL7Eip5vd6GVRMF6w9dh3WpNqCCuUcJFLQ/wXyTN2v3gkf3M4w5Y26tBoYY4n0
 OLBQ+tBKEyBOVVgz7hh1zm2aZ6yVKhuZSihzJUoEBDjKT5fnLdSSNev3x4gB0AwOU2H3
 y2ByBCs/R4D0eyreMR6DxumQHomvywl0KgU4I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=E66BJBj0lKscdTHg8FShQPxIXv/lJtWJWNrVUu1xJMU=;
 b=Hg7+krS0WC8AJFrxrmrhd2doiJccl3rytWWbzeE1n23CwPahCSZcqhwH/AwhaQsruD
 FvTnGzQAAY7aTgtyJcOyAPz6R/uV7zYJjyY075smLtRT3FwZo1sR6qirW/WQH6utynfI
 aj+ayn3eVMw5YYJX3sQTdeIaONLbTmKbrtCXheqHL63U/pSDrgMEU9WJgrf6UkGbFrrd
 K/9hktYrvxNiTMGQojuAqM6Wn1PXJV8/rTGgaZ86W8L98LqPljvVscRW/UNmXr3Tlvyr
 nAsRuf986kGMzGkGti6gEIJtNhSzENuETbIW0lql9n18Vdg3XQkzOhsdysBdcXU9cDQF
 dkVA==
X-Gm-Message-State: APjAAAUzAxzAoOHcyDjYYi2gsNs9GAz/N/UKoQOcjjZkh7AdeAe6wsxa
 qaNOBJaNaM6Sv/6G2v70r5WV6g==
X-Google-Smtp-Source: APXvYqzMJkEPdNiqyC9uGCqfZ9XypYQFC276AVboo57ryVdTNUuX5YprAGGDnwlCqlrIfs0WrT1QqQ==
X-Received: by 2002:a17:902:ba8e:: with SMTP id
 k14mr42156993pls.256.1562158077970; 
 Wed, 03 Jul 2019 05:47:57 -0700 (PDT)
Received: from localhost.localdomain ([183.82.231.32])
 by smtp.gmail.com with ESMTPSA id q1sm3735890pfn.178.2019.07.03.05.47.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 05:47:57 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 22/25] ARM: dts: axp223: Switch to use SPDX identifier
Date: Wed,  3 Jul 2019 18:16:06 +0530
Message-Id: <20190703124609.21435-23-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190703124609.21435-1-jagan@amarulasolutions.com>
References: <20190703124609.21435-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_054758_914070_E85C40FB 
X-CRM114-Status: GOOD (  18.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
Cc: linux-sunxi@googlegroups.com, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adopt the SPDX license identifier headers to ease license
compliance management on axp223.dtsi.

While the text specifies "of the GPL or the X11 license"
but the actual license text matches the MIT license as
specified at [0]

[0] https://spdx.org/licenses/MIT.html

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/boot/dts/axp223.dtsi | 39 +----------------------------------
 1 file changed, 1 insertion(+), 38 deletions(-)

diff --git a/arch/arm/boot/dts/axp223.dtsi b/arch/arm/boot/dts/axp223.dtsi
index b91b6c1278c7..77e8e26f1314 100644
--- a/arch/arm/boot/dts/axp223.dtsi
+++ b/arch/arm/boot/dts/axp223.dtsi
@@ -1,45 +1,8 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
 /*
  * Copyright 2016 Free Electrons
  *
  * Quentin Schulz <quentin.schulz@free-electrons.com>
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
 
 /*
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
