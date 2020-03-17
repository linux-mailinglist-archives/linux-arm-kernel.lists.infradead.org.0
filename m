Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0785F187E1D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 11:20:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9M1JL6ZCBCzZENLi4I0p0o80M1cMOKa55HpDoii6poo=; b=J6q
	kCg5zlx4hQiELh7Szq9ratBEAJmjZQEKyD/uXSc804RNA6TkVVJiGKfUIzcJmmAS8qJGJYpZhw2le
	Lv4E+8IUsOveddKh0KPnag39t7Qartey+BFz0ZiqOwmSmIajVXfUzWkCIiNImaHYUOXqSNIbrVSD4
	FVjjuqx1KgxKWrNKkK5wNQ3G1IelR/YeD1Ms2Ck0pkDuNMJOIlAjaybP75lH2Zl1kV0UW82gLL7nd
	12o2eLop6V7CsAiIvdI+bQti79KMiml5y5W26seiCfZ4SZxOYrlnc9FnrPEVW0kNvUJoeeb9qNN2l
	oZ1flHqeTdBf1TGVf/WG5n6r1rTKlKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE9Kh-00053Z-9a; Tue, 17 Mar 2020 10:20:23 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE9KU-0004oc-NZ
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 10:20:12 +0000
Received: by mail-lj1-x231.google.com with SMTP id g12so22148808ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 03:20:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=QfN9+apjqgrpyXVBAuhOdOy73M+EI8t13wRirUC/hq4=;
 b=CRsG0bSZgXP3imIAs+8w/8G8duiwcTZ6AFaxlOZU6lgbWcGnRCqO0xXJjgPQUdFhsi
 JqQFK5GYwSRle9CiC66EXEIeDcNbAj63aohv1a1vALQkm7PTW+6dxUvuGMnm8xPvwgJu
 5Va3eOWLSiNL4rO0ahN2PvGTJOEXlmYIQcIMhaS1ItThH14NcfrFgpvkainFSYKVy2Fl
 /z+U8kk4G/hhsi4qEvHCAfMne9DGjskZm2TGkW6YJjAt2sajqXSVS3cud/xOEgVoGI1a
 eJkhk3xy/uykwM1/NAxMzfVSZXGuxKFgRTDQJ5byoKdQEIsaF50qoAzD34XfxV6JPl+G
 +KEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=QfN9+apjqgrpyXVBAuhOdOy73M+EI8t13wRirUC/hq4=;
 b=hCp+O3ZL0D6JY6fZ8mLRanLlyAUuN/DOg50aSUjWUjS3fJCciMMpXkAvjzj41IWvSM
 h7a1lO6Q0Mo521rpP24AL39n4nPB31dZgM0QU/gKPGnBmAZaqOa/MBMO7WzPZ6BYobeI
 0d7PYszQ82OCT6Vwz3wSNh04FqC1Z65GXKCO+eT3nMEP2nV+MoSeXV07mvQPCubbq1A8
 QVTAkp5vaL53uvkFzApy6nF5rnzJi9EJdfEbMhs9qVy9D8ZSDZxOQv0yMn9xdojdzbji
 Up20fMLVnt3kEhC5v++ItRP0Sw6pKViZSXfGhObkTTpEynF3HiecIhhjtwmOLUY9F+U1
 7Klw==
X-Gm-Message-State: ANhLgQ0i8LuQPkHHBxeEkHCQ7H2t211xN7bNHlAsXd82QWvaB2YXDnvZ
 PLB2WzEbjUlcUeimjhThVHbIASVtRbI=
X-Google-Smtp-Source: ADFU+vvANbRH8hQuVM/g7obFDWw4eF8AgZ4x7wC3XCx7JToxciEnTVjLbWKiSQxm6JEPVDxIDNQZ0g==
X-Received: by 2002:a2e:b892:: with SMTP id r18mr2404764ljp.252.1584440407694; 
 Tue, 17 Mar 2020 03:20:07 -0700 (PDT)
Received: from localhost (host-176-37-176-139.la.net.ua. [176.37.176.139])
 by smtp.gmail.com with ESMTPSA id u10sm1974653ljj.88.2020.03.17.03.20.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 17 Mar 2020 03:20:07 -0700 (PDT)
From: Igor Opaniuk <igor.opaniuk@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH v1 1/5] ARM: dts: imx6: Dual license adding MIT
Date: Tue, 17 Mar 2020 12:19:43 +0200
Message-Id: <20200317101947.27250-1-igor.opaniuk@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_032010_801328_CF6560F2 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:231 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [igor.opaniuk[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Igor Opaniuk <igor.opaniuk@toradex.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Stefan Agner <stefan@agner.ch>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Shawn Guo <shawnguo@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Igor Opaniuk <igor.opaniuk@toradex.com>

Dual license files adding MIT license, which will permit to re-use
device trees in other non-GPL OSS projects.

Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>
---

 arch/arm/boot/dts/imx6dl-pinfunc.h | 2 +-
 arch/arm/boot/dts/imx6dl.dtsi      | 2 +-
 arch/arm/boot/dts/imx6qdl.dtsi     | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/imx6dl-pinfunc.h b/arch/arm/boot/dts/imx6dl-pinfunc.h
index 9d88d09f9bf6..960d300ea9ba 100644
--- a/arch/arm/boot/dts/imx6dl-pinfunc.h
+++ b/arch/arm/boot/dts/imx6dl-pinfunc.h
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
+/* SPDX-License-Identifier: GPL-2.0-only OR MIT */
 /*
  * Copyright 2013 Freescale Semiconductor, Inc.
  */
diff --git a/arch/arm/boot/dts/imx6dl.dtsi b/arch/arm/boot/dts/imx6dl.dtsi
index 008312ee0c31..77e946b3d012 100644
--- a/arch/arm/boot/dts/imx6dl.dtsi
+++ b/arch/arm/boot/dts/imx6dl.dtsi
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+// SPDX-License-Identifier: GPL-2.0 OR MIT
 //
 // Copyright 2013 Freescale Semiconductor, Inc.
 
diff --git a/arch/arm/boot/dts/imx6qdl.dtsi b/arch/arm/boot/dts/imx6qdl.dtsi
index e6b4b8525f98..75d746952932 100644
--- a/arch/arm/boot/dts/imx6qdl.dtsi
+++ b/arch/arm/boot/dts/imx6qdl.dtsi
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
 //
 // Copyright 2011 Freescale Semiconductor, Inc.
 // Copyright 2011 Linaro Ltd.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
