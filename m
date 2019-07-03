Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 378175E4AA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 14:58:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cixq6Z/qxLLiRHHJFB5RtS/dsnbKjOL9LM8TUIPqrEs=; b=FRW4EC/2KXSkav
	dHBW17FqopPDlu+gkPqX/iV/Ozo6TxtPaSLUYpVxKzhb0yzbe5tb/dLDb/N63+k1m/OYZQvUTcGHt
	C2dzMSwY+kDgjKO2dTypElbSzlV9+n2+DFjz9xGQm+wq5A/aQHcD7g7KkysZI4w4/1fWBPcJuC+Dh
	J/iX3rAgTpP0W+/7QsD94PofJbcOuhroa9rEFTZBBLpovzcYR3NkpkKqt/WBKvUK/ELAngJSHDLoO
	6xv5pi6P6Xiz99dM7PNdjmnDV8dp/7dmkLQueUdwXsvkteem6V7BLJmKofNnmAHzKSq0ZFzjI2l9T
	nXhp9sNKl6bN4oAKO5lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hieqX-0003pA-GK; Wed, 03 Jul 2019 12:58:49 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hieg5-0003dL-Tc
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 12:48:03 +0000
Received: by mail-pf1-x441.google.com with SMTP id u14so51213pfn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 05:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FMQphdJ64iQsEVpyBusVHfTIMxMniBqKY4+0bLvkoAA=;
 b=UA7UGlHR6Hwn5bSUrmKs5QLv1R4SRkBFGqJtRsXcsIgSbUXFU/nEYw0wNDyrExxOXQ
 hF/+GNW+Qmwky7+rUXr9jNc0cfpqOsh9Yg39dQ3L/PUXEoSMb/8pLkbw5oCNeGYgpvZT
 UO73nWHPua3f/JHaqule0B4IiwgqIZ42g62MY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FMQphdJ64iQsEVpyBusVHfTIMxMniBqKY4+0bLvkoAA=;
 b=cI1PLK6aiJKySrWFuMhCo3+R9HKW9sV+iAvHnUe3KCXJzrX9xBya6jD5EA8FrUMV2V
 9FjeWKLrk9il2vDDvTJdXDdrMAbzKumu+A08LZvZw2ToQuEn4xEIlM2Q63GDHmIGWFPU
 D4zHjDxt3yP1/GL1yEDgqP/jg9/WmzDt1747FB338ZHYYCNA5x1okDEsNMTRxDaMHY7b
 FsGmqZ7GVcs66XxwtQkEfFDSOvwEgU3W4SCVac9ixjC2w43WlUiFKBCjvx9+2biemfJS
 on3Rn+VZwLmMfWU2Z6EGSiICT2s87AMJPVJKNgrXdAKd1bbSAIeO4TVanLNGlLiV6Vbv
 vaIA==
X-Gm-Message-State: APjAAAVcD127tctRi/13+2UG362JGBJf8llqMmh3mLCnoBolMAtgkfSE
 KMG8uGwbvo618jOAd+GVJq5ugw==
X-Google-Smtp-Source: APXvYqxLiEYgPyMNbx3XxrQIXXIjt/6A59kyKAqEgoW99PXOWerG4iymshDm9C2zM0qOpwr1vHlo1Q==
X-Received: by 2002:a65:6454:: with SMTP id s20mr35365529pgv.15.1562158081276; 
 Wed, 03 Jul 2019 05:48:01 -0700 (PDT)
Received: from localhost.localdomain ([183.82.231.32])
 by smtp.gmail.com with ESMTPSA id q1sm3735890pfn.178.2019.07.03.05.47.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 05:48:00 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 23/25] ARM: dts: axp22x: Switch to use SPDX identifier
Date: Wed,  3 Jul 2019 18:16:07 +0530
Message-Id: <20190703124609.21435-24-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190703124609.21435-1-jagan@amarulasolutions.com>
References: <20190703124609.21435-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_054802_060770_61857C54 
X-CRM114-Status: GOOD (  18.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
compliance management on axp22x.dtsi.

While the text specifies "of the GPL or the X11 license"
but the actual license text matches the MIT license as
specified at [0]

[0] https://spdx.org/licenses/MIT.html

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/boot/dts/axp22x.dtsi | 39 +----------------------------------
 1 file changed, 1 insertion(+), 38 deletions(-)

diff --git a/arch/arm/boot/dts/axp22x.dtsi b/arch/arm/boot/dts/axp22x.dtsi
index 65a07a67aca9..900317df05ff 100644
--- a/arch/arm/boot/dts/axp22x.dtsi
+++ b/arch/arm/boot/dts/axp22x.dtsi
@@ -1,45 +1,8 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
 /*
  * Copyright 2015 Chen-Yu Tsai
  *
  * Chen-Yu Tsai <wens@csie.org>
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
