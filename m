Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C24FF187E22
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 11:21:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VYdjTXE3rU1IPf8vxRQOvmbedCLUZKq9qhRCO743U8M=; b=WmDva2Vx4PJR6DI/4x3UmcBVDF
	oNcq8PmN7W8PuwL7IGzq+QKXAeU9pd5sBb9qVFwSg+LHNajpurZf5xKPbrOwnjDXHhuOZKL5nT7y3
	WUIESZLDzRRsPU/1OQYVXnIQj++zt1QxZN9S4h+R5JGkoNamWRtA5aiGaeK+tnQLCmtZGoSl02his
	jWAGw+we0zQJ8mHn1Rb+jcjvZIWYkvJgTzIgZgh7R/ZYukPUJaDVisxZvwOo93IuS6Bdq8o/bOg2V
	z2GM14LYmmttVHqwMkBWfDEimY9GH/uroEpF94f+0GtMV6u0Sz9dWY3qVexIVbvyldRzIiJKwfJQZ
	A5EyDcUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE9LC-0005Ug-9U; Tue, 17 Mar 2020 10:20:54 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE9KW-00052h-FC
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 10:20:13 +0000
Received: by mail-lj1-x243.google.com with SMTP id u12so22149777ljo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 03:20:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=TGItJuz5W+h2gk6C+B6NIbPkvJZ2cZOlOG/P+lQP9D0=;
 b=JFZQuTgf0ix5GURciyxJzWH0sf14opuwqmkI7yvs/F5Adnfkifh53/Erfv3MQTmy9/
 9GQY7KikuoGDq/yCVcBDkdMFy3/kh7ZhPUiHw2lGonWtoSOaIFA2KhsqhfzSlN2rPWfG
 IlXWiOriBmkqXsDsZNrFxijHgX2FRmzOEdxtc1ijrDL2F2M2s4ulfcWlt2AN0AC3diI1
 s5rjK2JxOg8XUC9PJybzYaqxvBKFukvPzQH/pjfB1j83zku/E8mskdc33c8vCKAr4aW3
 inpShlE9qeQPQIWCfAZmUMCh8N/1dztWnZmGKEvsohgeY2GjsUB/kdzujVEVzcqlx22+
 fqug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=TGItJuz5W+h2gk6C+B6NIbPkvJZ2cZOlOG/P+lQP9D0=;
 b=n5ngPqr9/JGkrG0vVbacawrE+PFXL51LjWZJ71+bTCYIUHHj27d9x6d3Yw1fmXds83
 zmVK10P+AgSr8yCYWPGVhtSvvM4n/dB9PVzKB4M+MV8FC174NrHRDnJCgkGu7g9C/Ubp
 GZRfuUbYCE1wqtDPHC2tCkvU7PY6TnM/ztUjMA39bcECZySsrdoCeRWUGcyLl9pscIYv
 qATmBIhtIEImEtIMaRxIoe662t7lemvq+qFILHbapaHKzVeH1yRt8zFUyWq7Ff4TwACV
 wdL30k5qM0XregSX/RunQNTsPo5G0qO+u9GV19jjUwzfJtM27xY8IJIokrs3Q0CHoVb7
 CSNw==
X-Gm-Message-State: ANhLgQ3Iba8m+VhGY/aXCyFX10pt9De3jWE/CfuzqCAzDCFfryBw6Q3b
 fo1pdLwPaardLhz2xtPujj0ByXxjfCw=
X-Google-Smtp-Source: ADFU+vslGfTWII4zYbs4+SWZVmzcm1asQXYP0xCVtUNvJ3fqgQvjprHgGlIsriWG0xbiU7Nx1gBO4A==
X-Received: by 2002:a05:651c:1058:: with SMTP id
 x24mr2423894ljm.248.1584440410561; 
 Tue, 17 Mar 2020 03:20:10 -0700 (PDT)
Received: from localhost (host-176-37-176-139.la.net.ua. [176.37.176.139])
 by smtp.gmail.com with ESMTPSA id m18sm1956945ljj.52.2020.03.17.03.20.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 17 Mar 2020 03:20:10 -0700 (PDT)
From: Igor Opaniuk <igor.opaniuk@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH v1 3/5] dt-bindings: gpio: Dual license file adding MIT
Date: Tue, 17 Mar 2020 12:19:45 +0200
Message-Id: <20200317101947.27250-3-igor.opaniuk@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200317101947.27250-1-igor.opaniuk@gmail.com>
References: <20200317101947.27250-1-igor.opaniuk@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_032012_507864_5B151F87 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Shawn Guo <shawnguo@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Igor Opaniuk <igor.opaniuk@toradex.com>

Dual license files adding MIT license, which will permit to re-use
bindings and dependent device tree sources in other non-GPL OSS projects.

Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>
---

 include/dt-bindings/gpio/gpio.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/dt-bindings/gpio/gpio.h b/include/dt-bindings/gpio/gpio.h
index c029467e828b..01c528708208 100644
--- a/include/dt-bindings/gpio/gpio.h
+++ b/include/dt-bindings/gpio/gpio.h
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: GPL-2.0 */
+/* SPDX-License-Identifier: GPL-2.0 OR MIT */
 /*
  * This header provides constants for most GPIO bindings.
  *
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
