Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 105A9182B75
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 09:39:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=I/GcZvYebm21vmrrKcAw6+D8FpdY6W3DFUI1CTjulBk=; b=IrmLNyGAyGg8AakTYBGIFbCFhn
	qBm1uOhWLrGnQIJxPcAmMQ+J9lkDKudhFDqZAQdBUCTcrOPJgsKiB1rD/3cEE+CNIOC0Za2DVEsNd
	bZlI4fIwNQzm21v7VUjb2tZGiIfs4cT3ibXpY4gPdWc2CljTF7n4CohFflSaKQfniASknAvYgk7KB
	BqynsiO6ZYw6qyaITs26o3SpJ5mn/DOTbeCwDLlx5SwQJFN0nWd4wc6ifq2hCAUicC0asPI4oEs4a
	7HQeoG/Z3UKPzdnhpRkgncITVNMGnmlDQ2KDOcdut2X5p8126imNEVAdG8CbYj0/5Pgq7TfXADXTL
	FZeXnUNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCJND-00074L-UW; Thu, 12 Mar 2020 08:39:23 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCJMY-0006do-CC
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 08:38:44 +0000
Received: by mail-lf1-x143.google.com with SMTP id q10so4063170lfo.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 01:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=lY/cNtiIqZN3IuWyQzKrhQZaxRDvnT4LxOerUCbf4Zs=;
 b=RUbLWtCHTM31TxY2f3kUq1CMDAP8hFtW6dQbs2/RVYDCwsCzIscNlrIEcjMROWAc8s
 0HbtwBkwcsX8gHp1KXRr8A2mc6zhjrbrXcboR7pO8RyHeaPIv/A22bwZ/P4hqyxbpnx4
 3PFKP/u9lCWneggVfNlIWXvuUCszvRdTgduiGOxCsr0hyZEuNzTzh+yNwOlbC6FCeHqJ
 uzKkZsyvIDR9dSlO0qcO01Cg/f/TmP1fW/EMoQv+YQe8dbX2VmG9VJ9ASx+jf7bhZgN4
 V7UzSX9VxZLMZ5nJnEH+/XUx/D8aV3Jvb7W/rYq1lfgJPW/qMQlSyEFmIKC1GA+lyOCh
 3akg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=lY/cNtiIqZN3IuWyQzKrhQZaxRDvnT4LxOerUCbf4Zs=;
 b=CzVQ96G2vaL6W+0uc89ZImco0oa8SBwGBWpIq7VLSgVbDwRYvHgP8hAM1sdPwX8Jwe
 Na5tcmrRy+Y5zaaJ4P7dlAkaZmN/ooa717GzcNQRWV0SyH4Xk416Gwa/nVemXf6KpyUp
 Qz2DXvUzl5uFTp7jPWS/DcBs/wmIS7HOsHhe9zoTZGFlzkjKVDYiyZffALjvCvrG4hE1
 zogjFnsAd906Z1uyOoZKCZtEbwO7mSM4/LAYFHS9zRfBUZsBaD08x51cHv4SVovmynxn
 OSdhmxL/zsne20pyszXtAfCADigCrUM78hRVTzl1F82n2vHXvT+h8uCKQzIQw1x2EBmN
 36Jg==
X-Gm-Message-State: ANhLgQ2O7wpHjiENY+xfxwJNFK2UpWAOahUsHDZql+nzTVEs7LefnnMp
 yTG+y0mXDNwx5Vo95HbgneeGxzyDhLU=
X-Google-Smtp-Source: ADFU+vs5aQvXDcT9ZAZDw9nCF5KCyBqD0qg0Dh3xLa7IoQtJ65obUXUjAa0LFj2bybXIiehWgaFjQg==
X-Received: by 2002:ac2:50c7:: with SMTP id h7mr4747412lfm.101.1584002319742; 
 Thu, 12 Mar 2020 01:38:39 -0700 (PDT)
Received: from localhost (host-176-37-176-139.la.net.ua. [176.37.176.139])
 by smtp.gmail.com with ESMTPSA id r23sm10703863lfe.53.2020.03.12.01.38.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 12 Mar 2020 01:38:39 -0700 (PDT)
From: Igor Opaniuk <igor.opaniuk@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/3] arm: dts: imx7: toradex: use SPDX-License-Identifier
Date: Thu, 12 Mar 2020 10:38:29 +0200
Message-Id: <20200312083830.18011-3-igor.opaniuk@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200312083830.18011-1-igor.opaniuk@gmail.com>
References: <20200312083830.18011-1-igor.opaniuk@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_013842_433399_821437A1 
X-CRM114-Status: GOOD (  18.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [igor.opaniuk[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Igor Opaniuk <igor.opaniuk@toradex.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Fabio Estevam <festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Igor Opaniuk <igor.opaniuk@toradex.com>

1. Replace boiler plate licenses texts with the SPDX license
identifiers in Toradex i.MX7-based SoM device trees.
2. As X11 is identical to the MIT License, but with an extra sentence
that prohibits using the copyright holders' names for advertising or
promotional purposes without written permission, use MIT license instead
of X11 ('s/X11/MIT/g').
3. Replace "Toradex AG" with "Toradex" in the Copyright notice.

Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>
---

 arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi | 41 +--------------------
 arch/arm/boot/dts/imx7-colibri.dtsi         | 41 +--------------------
 arch/arm/boot/dts/imx7d-colibri-eval-v3.dts | 41 +--------------------
 arch/arm/boot/dts/imx7d-colibri.dtsi        | 41 +--------------------
 arch/arm/boot/dts/imx7s-colibri-eval-v3.dts | 41 +--------------------
 arch/arm/boot/dts/imx7s-colibri.dtsi        | 41 +--------------------
 6 files changed, 12 insertions(+), 234 deletions(-)

diff --git a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
index 6aa123cbdadb..146f00dbf852 100644
--- a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
+++ b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
@@ -1,43 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
 /*
- * Copyright 2016 Toradex AG
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
+ * Copyright 2016-2020 Toradex
  */
 
 / {
diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi b/arch/arm/boot/dts/imx7-colibri.dtsi
index 04717cf69db0..729ba8b75310 100644
--- a/arch/arm/boot/dts/imx7-colibri.dtsi
+++ b/arch/arm/boot/dts/imx7-colibri.dtsi
@@ -1,43 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
 /*
- * Copyright 2016 Toradex AG
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
+ * Copyright 2016-2020 Toradex
  */
 
 / {
diff --git a/arch/arm/boot/dts/imx7d-colibri-eval-v3.dts b/arch/arm/boot/dts/imx7d-colibri-eval-v3.dts
index 136e11ab4893..87b132bcd272 100644
--- a/arch/arm/boot/dts/imx7d-colibri-eval-v3.dts
+++ b/arch/arm/boot/dts/imx7d-colibri-eval-v3.dts
@@ -1,43 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
 /*
- * Copyright 2016 Toradex AG
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
+ * Copyright 2016-2020 Toradex
  */
 
 /dts-v1/;
diff --git a/arch/arm/boot/dts/imx7d-colibri.dtsi b/arch/arm/boot/dts/imx7d-colibri.dtsi
index e2e327f437e3..c59d72e50920 100644
--- a/arch/arm/boot/dts/imx7d-colibri.dtsi
+++ b/arch/arm/boot/dts/imx7d-colibri.dtsi
@@ -1,43 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
 /*
- * Copyright 2016 Toradex AG
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
+ * Copyright 2016-2020 Toradex
  */
 
 #include "imx7d.dtsi"
diff --git a/arch/arm/boot/dts/imx7s-colibri-eval-v3.dts b/arch/arm/boot/dts/imx7s-colibri-eval-v3.dts
index bd2a49c1ade6..aa70d3f2e2e2 100644
--- a/arch/arm/boot/dts/imx7s-colibri-eval-v3.dts
+++ b/arch/arm/boot/dts/imx7s-colibri-eval-v3.dts
@@ -1,43 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
 /*
- * Copyright 2016 Toradex AG
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
+ * Copyright 2016-2020 Toradex
  */
 
 /dts-v1/;
diff --git a/arch/arm/boot/dts/imx7s-colibri.dtsi b/arch/arm/boot/dts/imx7s-colibri.dtsi
index 6d16e32aed89..94de220a5965 100644
--- a/arch/arm/boot/dts/imx7s-colibri.dtsi
+++ b/arch/arm/boot/dts/imx7s-colibri.dtsi
@@ -1,43 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
 /*
- * Copyright 2016 Toradex AG
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
+ * Copyright 2016-2020 Toradex
  */
 
 #include "imx7s.dtsi"
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
