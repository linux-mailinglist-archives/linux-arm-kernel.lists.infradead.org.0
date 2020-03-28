Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77067196666
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 14:43:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=juyEc48SHAS2lBLupMBt17NjfmjiQKkqEcu2K9DkE2M=; b=cDH
	XNC8Ma09+b3jgfyKTQrFBdiD8xfn4wWVzNzxPGEElP23QFDlhSXWUMZxPFJsTohThB2sbMGYbx4LB
	a+BgOEllmykXMgSyo8IzOC3s8iRZab66QMEyyG0sk/phb1OlEtU6YREyzzn7THNeSDfarTjQdK2KF
	+BmR6rckynRAvSbFlO3EzO/4hgNthowq2GUFbRnhVcrSF8zOIz4TCOxAzSqQs3OysiTTVYXL606Si
	pqA/smvZh156LPXLFJC9/Jb53QzaiTXdP9FYvVml2jDoXl68nsDB3rrHK2z/9jejfhocRYGCRpPTK
	aHOi6qD9uELyC8qHzp1usiWiFHT5oww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIBkA-0003Hw-Dd; Sat, 28 Mar 2020 13:43:22 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIBk3-0003HV-Tb
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 13:43:17 +0000
Received: by mail-wr1-x444.google.com with SMTP id m11so9262150wrx.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Mar 2020 06:43:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=UskpCEE5TUQheW2HfAHjtymRH8q/A2y17+Pe+kWt7r8=;
 b=I6vPkonjI1vmCLWrBbdBoShliZoMh2Q0CP1gRdVhAMsW1q/U5UeFVxKasJ6haMM8vg
 MmHM+eFI0T9PqRASKHYBxuCRzcVTnPEjn5ehRY09aiuBMv0Z5a2YF/HdeSeMYaAq7w4C
 fs6HKV8UGQ/oWYUMdz9ErBoML7qBrhSoXEL2gG8uWkxf6gcHBPcv7nQjq28bzOGNrTg6
 hpo2BRgAFChXpRjKqFfi6809WhdkanGteLp6KPH/K6+sr7juGPENz4KJHfDsJR8zyYC+
 ZVQCJMnhTgkPi/8G5U22gJyJFmpsoNbAwzWb4R05Ou4ipJE9YZ6GxMaTujlI8kS6+WbF
 NqKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=UskpCEE5TUQheW2HfAHjtymRH8q/A2y17+Pe+kWt7r8=;
 b=Xk7J1ICmRyIMs5HuZnyQdHPNAjYIdoNFRqbjKYjG0jhBMCYGiPi1RQW/CNyBnOzi1n
 +HiD8jZFQ9k1exyWfIbgSiR6bcqPy0gt6dCcoiLX46FvBUjWZMwJPSH4EywhGFeo8vOK
 dzyW/zVqp+Hw3gjq3huTrlIz+vNWWnxpPoSTsBKJwbz7xXcoe+8GkzwjMFlhoRJZhcFw
 IUP6/TjxnMhAjcs7DH1Z8o3M4E8ozs8oGqZnLJFHdcxivjbV5RA217TEZK2o+biAsTGf
 +fXR7GlkWw2RbwzhOu1SzbmuWtOtunMRKL3GhGwb+62B5t6OKWkRBahYZlyX4e6eCM73
 wgNA==
X-Gm-Message-State: ANhLgQ1JgYlWqOZnfsjKOyiCfN73PztKoMK7smpzw2F3wXSW6qg1TyuR
 OuuUXpoAC6iZEDfUxJBfDhI=
X-Google-Smtp-Source: ADFU+vu2jQ5CPsH2nB+2wu8Fp2D/gjd/7NJkKh2i8aKtFr+9rflUKnTWCv7i56dVnn7DBT/CUl6oRw==
X-Received: by 2002:adf:cd12:: with SMTP id w18mr4841366wrm.311.1585402994449; 
 Sat, 28 Mar 2020 06:43:14 -0700 (PDT)
Received: from felia.fritz.box ([2001:16b8:2dbb:cb00:7d36:e5ed:6ff6:44e4])
 by smtp.gmail.com with ESMTPSA id 23sm11515974wmj.34.2020.03.28.06.43.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Mar 2020 06:43:13 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Russell King <rmk+kernel@arm.linux.org.uk>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Gregory Clement <gregory.clement@bootlin.com>
Subject: [PATCH] MAINTAINERS: clarify maintenance of ARM Dove drivers
Date: Sat, 28 Mar 2020 14:43:04 +0100
Message-Id: <20200328134304.7317-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_064315_979825_2943F738 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lukas.bulwahn[at]gmail.com]
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
Cc: Joe Perches <joe@perches.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 44e259ac909f ("ARM: dove: create a proper PMU driver for power
domains, PMU IRQs and resets") introduced new drivers for the ARM Dove SOC,
but did not add those drivers to the existing entry ARM/Marvell
Dove/MV78xx0/Orion SOC support in MAINTAINERS. Hence, these drivers were
considered to be part of "THE REST".

Clarify now that these drivers are maintained by the ARM/Marvell
Dove/MV78xx0/Orion SOC support maintainers. Also order the T: entry to the
place it belongs to, while at it.

This was identified with a small script that finds all files only belonging
to "THE REST" according to the current MAINTAINERS file, and I acted upon
its output.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
applies cleanly on current master and on next-20200327

 MAINTAINERS | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 8b8abe756ae0..38fff0374082 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1979,6 +1979,7 @@ M:	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
 M:	Gregory Clement <gregory.clement@bootlin.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
+T:	git git://git.infradead.org/linux-mvebu.git
 F:	Documentation/devicetree/bindings/soc/dove/
 F:	arch/arm/mach-dove/
 F:	arch/arm/mach-mv78xx0/
@@ -1986,7 +1987,7 @@ F:	arch/arm/mach-orion5x/
 F:	arch/arm/plat-orion/
 F:	arch/arm/boot/dts/dove*
 F:	arch/arm/boot/dts/orion5x*
-T:	git git://git.infradead.org/linux-mvebu.git
+F:	drivers/soc/dove/
 
 ARM/Marvell Kirkwood and Armada 370, 375, 38x, 39x, XP, 3700, 7K/8K, CN9130 SOC support
 M:	Jason Cooper <jason@lakedaemon.net>
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
