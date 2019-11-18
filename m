Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87250100461
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:39:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jv3qZq3unXn4Qh9YcToSmR2MYzSq2Vj1iUpyPZ9yuRg=; b=at/nbmymIjxYLK
	LJ33zuDvLpjahv2EmcMNkMEyJ/tMa2K4ADEtP9FHVVSNFq31TH81SJZ/7fIVeFfqElUZs0QXgoEfD
	gRoIXvKXrxq1vMVxeAM8MM6ftUHnlKTLS4xHLD0LIlqbSMaaSqaXaDeFBwr4e+OYvbY3Cpa6TSoN/
	Pn8nO9g3vmtwt9rtzQYMj/nsIqBYa0BpEIZ2ObE6S4VT6Is7knXRL7e+pZc1GOwIm6fmbBen6jSEY
	Mwnk9Z6DnZQCkS1gi55CRa9AR+zIiWkaBBvZm44OBOIthKF081IoW0IBm+7VUe+kWrAueRFpA/3OI
	DECYdvapUy//1lZEzMXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfMu-0000KF-EX; Mon, 18 Nov 2019 11:38:56 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWf91-0001jG-Nl
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:24:37 +0000
Received: by mail-wr1-x443.google.com with SMTP id b18so17548143wrj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:24:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZltWz01c8oCLmnoDvGrjVYpDxnidbYU1IX5rZmzZKUE=;
 b=bV6Z9fOx1VItspILAPRI5W8VOzo91dJcPE/eE8sUJW2P4w2Ur80bjp3SPzzP/d4z/E
 MNBEe1oPE/Q4EqZMdrWa8+KFp0Tesxe54lIFXB7D363t3pkjemC+wSS4s6kTqXeCXtQW
 aUbLE4f3qMlzjD6rC/R3oG1YYH6Zub7/X+FKI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZltWz01c8oCLmnoDvGrjVYpDxnidbYU1IX5rZmzZKUE=;
 b=TeWBfHHzWC+E4t1FUTF4X62qnJKgWRt6+sRTHUdI3snQa35Z2zVHs7yXdCqSOyJAG/
 TZNg416oX0CiFQIpTupGMCuQyUVE7Uy3Re2vvsh7diQGhLKJJYI/LMtj/Pw4SOPBNzXm
 /q7obDHlgX2IC8SLJqqpO0UslNqQJqH0xqdP7JZooVbxfHy2DYZLuInKpFKtNJjdUnr0
 C8Q2vyDYDguFcZEhHYdWq1ln8bsQ8onREoz/3QzvSDQpKY4PaweXHxM2YvKz3IF4K7Su
 h0oN6dRg8hp6w7eymYRsI7I5iq4A/2ZOKPygMemtHCcXyvgjBmklynGFu62kSieHd+E1
 rguQ==
X-Gm-Message-State: APjAAAXB3s5ght5nLKAAu3xMKfXT9IZBGTYoUTlvbU8DAyuPOJ2lT2Nn
 Yz9BZn+YuAFqrAYP+aQBX7d0Xw==
X-Google-Smtp-Source: APXvYqwv5rLwOET/SNGVGrdd9i02wz6KfyE1CgBtoScH76g/+bIKbBO7+P1A77J80UsjXI2JMZ20tQ==
X-Received: by 2002:adf:ef51:: with SMTP id c17mr16069888wrp.266.1574076274319; 
 Mon, 18 Nov 2019 03:24:34 -0800 (PST)
Received: from prevas-ravi.prevas.se (ip-5-186-115-54.cgn.fibianet.dk.
 [5.186.115.54])
 by smtp.gmail.com with ESMTPSA id y2sm21140815wmy.2.2019.11.18.03.24.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:24:33 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v5 48/48] soc: fsl: qe: remove PPC32 dependency from
 CONFIG_QUICC_ENGINE
Date: Mon, 18 Nov 2019 12:23:24 +0100
Message-Id: <20191118112324.22725-49-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
References: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_032435_791761_7F8A1E7F 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [5.186.115.54 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Timur Tabi <timur@kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are also PPC64, ARM and ARM64 based SOCs with a QUICC Engine,
and the core QE code as well as net/wan/fsl_ucc_hdlc and
tty/serial/ucc_uart has now been modified to not rely on ppcisms.

So extend the architectures that can select QUICC_ENGINE, and add the
rather modest requirements of OF && HAS_IOMEM.

The core code as well as the ucc_uart driver has been tested on an
LS1021A (arm), and it has also been tested that the QE code still
works on an mpc8309 (ppc). Qiang Zhao has tested that the QE-HDLC code
that gets enabled with this works on ARM64.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/Kconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/fsl/qe/Kconfig b/drivers/soc/fsl/qe/Kconfig
index cfa4b2939992..357c5800b112 100644
--- a/drivers/soc/fsl/qe/Kconfig
+++ b/drivers/soc/fsl/qe/Kconfig
@@ -5,7 +5,8 @@
 
 config QUICC_ENGINE
 	bool "QUICC Engine (QE) framework support"
-	depends on FSL_SOC && PPC32
+	depends on OF && HAS_IOMEM
+	depends on PPC || ARM || ARM64 || COMPILE_TEST
 	select GENERIC_ALLOCATOR
 	select CRC32
 	help
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
