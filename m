Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2C3128225
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 19:21:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mVRzA9WYNVVd0n+5kzOS90NLWMQiP7Nmpa8SgDZpdCo=; b=orU
	sfqgoWFxlmBRa2TNpheOZk7r5MYF1SA8YyWCsPPok8FTfpJyQT9HTz2j5DYU0orKFdba4p7WpGY4i
	/kWROHyQyR9zuaj3PyU7Gck7HndX7daun/LRoWladzdktzwDyUpHkLeg+7xbnLElFlPxxdXreR3wt
	zDdmnikpLfgSUIj++rRjhgk5sGXDWbBTYR2LdtDxYDcUhWeb5aw42wudJFrIYsl0JlitpPC0UgVBE
	GFYou//YEYAPlLfI2GAI9WObTkFIoUJwuIZSOdbPbIk2Cpx3Kofe0LeS8tuZ2HSRLFd6MpyhJj/5n
	/GRy1scExLyzLr6im5UO/xLQvwbcNyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiMu5-0000Vg-Iy; Fri, 20 Dec 2019 18:21:33 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiMtv-0000V3-Hz
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 18:21:25 +0000
Received: by mail-wm1-x343.google.com with SMTP id c127so2352308wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Dec 2019 10:21:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=qTJ3cquW0XuyFYsbbi/ZSR/dYPKMLNEhqFQed36KyGg=;
 b=EA6bnQkN3I5mnUvyqfN6iuASBHNiU6FQUwTdf52zmWtFHnRCjgXLjjICWxHaPvei4k
 ZzNIU21yBTEdt/bKyWdkPVyRhWiHxGnN1PYKsuGWjr2U8MQ99ZLsQhxuIfxOZdwWbn0h
 idEpb7YhgYCNIitVFR+D+TMsbb5XTOv1KO99Q1FbEc2DjyL2AOLlyI3aIyTzqOM8dbtd
 m47841TOSNZakrgqUuQUJBsJXFJQowmkbeuYJdHStb0JG/WG4qLwmMEPOGCfH89ZUPBu
 J2oyvrC0B06Fa02cF3sqxXYLHS2qY9uwWsAfMtHlfdNwEkBsb7UJe3o9I3UgOQCwPg+M
 i3dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=qTJ3cquW0XuyFYsbbi/ZSR/dYPKMLNEhqFQed36KyGg=;
 b=P1RWXoAotp+Dz4VNO8+lqBqWOWoJdE7spGGR4nnyC0/FKNeb8EUXNhTtZ3LYbdI7QY
 Dm5Y49q++G+/mM3XIM3TVJ/FLkQpdkNfe3l5Tf36fw6h5816aGVtpKqDUXoeaG/snKoS
 7DDGZnSOEJ4H6Nq7zqZlpXDOt9S/Sb7mZKsETCQqBaxRf9IYBV6TSfJk9GbND5IgelOi
 UOHFPhJoOOQAnyoXgzZZwKnqHwFwiUTlhT3Mf1Kk0Of1XVbtFwR1eafNadj0ArKiZHYm
 RNGRYbd/NGPqNtfy+6JMOwR40qehQ9l2CuIC92dcCVyBuxCQYLZQadyHJQ1Mr/kxlpm8
 2UPA==
X-Gm-Message-State: APjAAAVCBHuvtZMHuJlA8Q9+umkPKC5RNVECJ4E/qOoxShDSiaWCx1zN
 T5jSarzB45+/I6ZpBlc3kbKNbuY9
X-Google-Smtp-Source: APXvYqxl3RwZSpdloklWw9dclz7/yBgJqHZrjgVEJH3o6o1OG/vc8E5tucTppdiLGSTGp0dayGZG1g==
X-Received: by 2002:a7b:cb4a:: with SMTP id v10mr17721850wmj.106.1576866080672; 
 Fri, 20 Dec 2019 10:21:20 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id s15sm11441520wrp.4.2019.12.20.10.21.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Dec 2019 10:21:20 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: bcm: Select ARM_AMBA for ARCH_BRCMSTB
Date: Fri, 20 Dec 2019 10:21:15 -0800
Message-Id: <20191220182115.26318-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_102123_615658_C947E8DB 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Russell King <linux@armlinux.org.uk>, open list <linux-kernel@vger.kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

BCM7211 uses a PL011 UART and is supported using ARCH_BRCMSTB, make sure
that we can enable that driver by selecting ARM_AMBA.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm/mach-bcm/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-bcm/Kconfig b/arch/arm/mach-bcm/Kconfig
index e4e25f287ad7..fcfe2a0e8058 100644
--- a/arch/arm/mach-bcm/Kconfig
+++ b/arch/arm/mach-bcm/Kconfig
@@ -211,6 +211,7 @@ config ARCH_BRCMSTB
 	bool "Broadcom BCM7XXX based boards"
 	depends on ARCH_MULTI_V7
 	select ARCH_HAS_RESET_CONTROLLER
+	select ARM_AMBA
 	select ARM_GIC
 	select ARM_ERRATA_798181 if SMP
 	select HAVE_ARM_ARCH_TIMER
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
