Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3383F4CF2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:16:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YPWLmOcSIJBhJerDC5WxPxdTVG0mifJb8y+xUSQqRtI=; b=RUpkStsC2g5nMv
	TrRK8p6t7U97RxZAZwphsiHEjJ3eq95Lql82AsaIOuMT8/VZoJ75LJZGgpZ/9pvzuLicVwf/WtFix
	n8JbRMw30nAdl9Hn1XgPHnHp9Wv4AE4Smw3D3T6h0pdSiq/zB+/tIwyd0+K8nax8YKKl3aZmvFIag
	dA5Awf3OQGjDafqB4syp+QCC3PQmULNTOMjaU95I/LTYETzmAiSVLzFY7bOxlquGTkFwDcqNlU3SM
	s0OkQhTslJyQ6X5Rhh6gPX9BRLnt4GF4VDxNPxpxIvucTKN2k98AVK4s42F7T5QlarEn5iRNDDcax
	/1CW4Vme/GY1Vws6ZZfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT47m-0003Ts-S4; Fri, 08 Nov 2019 13:16:26 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3uF-0004xA-TY
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:02:32 +0000
Received: by mail-lf1-x143.google.com with SMTP id d6so4019437lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 05:02:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eoU6yRz6gH6qOWyRe/vJLGf2pgvTpCjyg96xNihJCPI=;
 b=O/6AGo/ZGsFlsmLzJdyEPO3mV8xhZwNRXLRrD1SwfTKq6IMDjQUNw7j0VpK1oVFyLL
 wc5e8wLviGXZ87K0ZB9XM3865S7c5VlogZhWCTbefzWUbe06CEYaPSev0sIHG2QmP0NR
 92+WT/4laZ948//hxG0mEeosoGrg8VxvjMNyk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eoU6yRz6gH6qOWyRe/vJLGf2pgvTpCjyg96xNihJCPI=;
 b=X+xXQb+WluO7q0S9YbaCINoDORSUnkH/y1eDl57jq4qnv1kE03yPfjOc6XuKQa7QXJ
 mByfpTyCmfr5rC0t1nZ5ZbiC7VD4kX1hNIf6aptJych2k+/VSfSiqrmQVXKELthjuKS2
 BkN9jsX+h0HDHxK5ApiIlVXbiqiSI9nAjX0cOl0dvdl4yo9CJ++ZFqIlZ7lwEj7oT2JD
 Jmrwflr1PRTuCiawTj4wWqfAi3MGfH2HTdh0jZgcN/LClbfJTcphqXcQ+LpD2zJO0BeT
 sfStkoAeUURpCZTMZNTiSr7npHQqtDZVFOVUn4CPSNnsl5dD/fsiBhm3/wj9yuxSlIn/
 pmfg==
X-Gm-Message-State: APjAAAVi8b6ZYO7kUkgCWgW+g+MVMCXczQHqMSz5/cM41rEn189tKu6c
 juPOfK8TY74fg488yHP6iICxxA==
X-Google-Smtp-Source: APXvYqwxS6IOvsV8gHqknaTDjoYrWzUraN+5B9FEomuPHvbNlLsU0KSDBbHmOzMq8nrZpelvp/lTbQ==
X-Received: by 2002:ac2:5097:: with SMTP id f23mr6576512lfm.90.1573218146378; 
 Fri, 08 Nov 2019 05:02:26 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id d28sm2454725lfn.33.2019.11.08.05.02.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 05:02:25 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v4 47/47] soc: fsl: qe: remove PPC32 dependency from
 CONFIG_QUICC_ENGINE
Date: Fri,  8 Nov 2019 14:01:23 +0100
Message-Id: <20191108130123.6839-48-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_050228_164635_3794B450 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Scott Wood <oss@buserror.net>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are also ARM and ARM64 based SOCs with a QUICC Engine, and the
core QE code as well as net/wan/fsl_ucc_hdlc and tty/serial/ucc_uart
has now been modified to not rely on ppcisms.

So extend the architectures that can select QUICC_ENGINE, and add the
rather modest requirements of OF && HAS_IOMEM.

The core code as well as the ucc_uart driver has been tested on an
LS1021A (arm), and it has also been tested that the QE code still
works on an mpc8309 (ppc).

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/Kconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/fsl/qe/Kconfig b/drivers/soc/fsl/qe/Kconfig
index cfa4b2939992..f1974f811572 100644
--- a/drivers/soc/fsl/qe/Kconfig
+++ b/drivers/soc/fsl/qe/Kconfig
@@ -5,7 +5,8 @@
 
 config QUICC_ENGINE
 	bool "QUICC Engine (QE) framework support"
-	depends on FSL_SOC && PPC32
+	depends on OF && HAS_IOMEM
+	depends on PPC32 || ARM || ARM64 || COMPILE_TEST
 	select GENERIC_ALLOCATOR
 	select CRC32
 	help
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
