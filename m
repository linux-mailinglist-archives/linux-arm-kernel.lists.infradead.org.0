Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89EB71C7E2A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 01:52:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=G8csNRY4+5SVlBgJ2Q23ECPdiBQXiQ/iJq57x8nvrJk=; b=K5vaRCXGYgRN2Dn8vlWSV7TFgb
	3jfSddCv7ZHujqfg2VyRzL7yKLElWWd3C/JFSjmtlEezBtgP2ShNrdWs3drIYO1PYgyviidpqzc6l
	W8/GcEdffEuIAGQdjy/kz90kMj+qJnPL7C6aEPkZfMK2xioTHBU5MVkrOEQcqbtHGbCHPqzvYYcMt
	leFQhDQc4ir1FXUS3/1DG4OQzAQrYd8yzedRUioGNUajfubrRyUTV5OwR+LosJzlUKfTTd7ZiUT8f
	Q++oaVn4ylXKAMjDNsl7mwLxwR6ME9Ta8PVy37KlHD0fs2Ab05sIdR2uSIsfuvhc91DM1kTUPZv8Q
	qQmjGV1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWTpX-0000GO-7L; Wed, 06 May 2020 23:51:59 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWTp8-0008TW-0X
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 23:51:35 +0000
Received: by mail-wm1-x342.google.com with SMTP id x25so4394467wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 16:51:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ltGioWcYxUH4N8+ZRYzzTejLF96hqh5RHCyUIqstWAY=;
 b=tLmNih9wiY2CWcjFxudlYQuX6H3Kf4bfNZbbmHJKhKgYL+WQFI2N+jYIo6mL0LX0fV
 ogZVhc/NnpYvgwzEl8D0qyO4rYPaRKJ9j1D7PxNlndIlJ3T8Pyqg9m8EXZKnHKalK2Sg
 dRM8cD8FO6DfPxmpMdEezaGB6ATaKwGkUPDsCtdvvRyuBCWdc+FRl3+K9oy4GWB5lGpk
 XcCjSQ+Qo/22jMeTY/oFX8foJfYJRXrC1dggnMBahu/BRpqzyOwgwvP0/BrROAt8lnIt
 BAGrEf3pxOZojPAD0SKsjyHuEiHyTBpjiS6G/r/jtXPO4XDlrfZxLNe1+ct4k7R7zja7
 8Fzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ltGioWcYxUH4N8+ZRYzzTejLF96hqh5RHCyUIqstWAY=;
 b=HmHCUSXIHxcgKY2DPsYi0Li/7rl8QoGIRL6ginwK15LH2Ho3KVuTgXsimVGU0S0nXj
 lqChRZORf5Fpki+rAUZ9pZ+rULCIVU5JA7NJRFSjaXlOKRiVFTaE+eKHjPGnImKPDIz6
 Mg9pkg38Y3qzZXv2JxQAlF9IwnmvvVTdZBWqQdth9Ltp4gPpt9UsT8j54dOdQCSK7k9D
 zH+aDTHBXa5OSTZ/EZMmnv/D/+Zr2XnhioEp/5p7cXQm7vh3RoT+lQ8OAZzgxuLkY+8I
 en3Sp4b3iERyVFlZZ4vlSGSh0xPto9w7ytECMpavpP31/xW61OjF70gNbUghRfTiHKk+
 9Q5w==
X-Gm-Message-State: AGi0PuYwbVB8zvVmkRzpM3NHfT0qV+QGh8dM4Kz7B6wj+iF/1XUqD2wE
 oHP8sdOG+tGbtTzuhnvywIN90g0T
X-Google-Smtp-Source: APiQypIRNUWPoKZfJRvKeY1tuTmoKgwnoco8aUv+s3MsXUO7VI6LJklbO0NLJWK77vnimYoE5rk9tw==
X-Received: by 2002:a1c:9cc6:: with SMTP id f189mr6972476wme.75.1588809092307; 
 Wed, 06 May 2020 16:51:32 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id b20sm3693161wme.9.2020.05.06.16.51.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 16:51:31 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] ARM: Remove redundant ARCH_SPARSEMEM_DEFAULT setting
Date: Wed,  6 May 2020 16:50:08 -0700
Message-Id: <20200506235009.25023-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200506235009.25023-1-f.fainelli@gmail.com>
References: <20200506235009.25023-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_165134_050700_EE37A146 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Doug Berger <opendmb@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 sboyd@kernel.org, Kevin Cernekee <cernekee@gmail.com>,
 Mike Rapoport <rppt@linux.ibm.com>, rmk+kernel@armlinux.org.uk,
 Florian Fainelli <f.fainelli@gmail.com>, Gregory Fong <gregory.0xf0@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Kevin Cernekee <cernekee@gmail.com>

If ARCH_SPARSEMEM_ENABLE=y and ARCH_{FLATMEM,DISCONTIGMEM}_ENABLE=n,
then the logic in mm/Kconfig already makes CONFIG_SPARSEMEM the only
choice.  This is true for all of the existing ARM users of
ARCH_SPARSEMEM_ENABLE.

Forcing ARCH_SPARSEMEM_DEFAULT=y if ARCH_SPARSEMEM_ENABLE=y prevents
us from ever defaulting to FLATMEM, so we should remove this setting.

Link: https://lkml.org/lkml/2015/6/4/757
Signed-off-by: Kevin Cernekee <cernekee@gmail.com>
Tested-by: Stephen Boyd <sboyd@codeaurora.org>
Acked-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Gregory Fong <gregory.0xf0@gmail.com>
Signed-off-by: Doug Berger <opendmb@gmail.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm/Kconfig | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 66a04f6f4775..5986277296c3 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -1518,9 +1518,6 @@ config ARCH_HAS_HOLES_MEMORYMODEL
 config ARCH_SPARSEMEM_ENABLE
 	bool
 
-config ARCH_SPARSEMEM_DEFAULT
-	def_bool ARCH_SPARSEMEM_ENABLE
-
 config HAVE_ARCH_PFN_VALID
 	def_bool ARCH_HAS_HOLES_MEMORYMODEL || !SPARSEMEM
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
