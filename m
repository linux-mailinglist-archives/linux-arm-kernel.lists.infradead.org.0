Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 517C019DA6E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 17:43:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=CsG9N9TIcj8h+0IVvC4v3CWzFBkqIOSfmi2Dn9UtJuw=; b=oJb
	hheV1uckAg9Cd5cMiheMki5tBtL6ufpm02y0BnsGV1st6i4/O7CPz8pGIgphIC+rexel9yPqzzUK5
	lYitAF3tugYMxh1iiyYTufnkx+Pt11mL4QnM762apNbETbYbpRczsEmCsE/YPSZpdDnoJHCWAXSkr
	gzjrD3sFHEFJBxpdPp3lIy/Y3E2+JKYMZELxEYfraazuBI/dD9Eh6yRK0BvyjTYLgeEPgUgpBEkVP
	yHUOX0ryzhJNlQMV/N16BxM3Y2fhLPw6WO4yY75k0gVwNxSF9hqVHXrSWd7wgzJv15/42oSFmp2nh
	d78MBeWy8O3AxkhClC3gocX3zy2EFSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKOTz-0007kM-9W; Fri, 03 Apr 2020 15:43:47 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKOTq-0007ix-63; Fri, 03 Apr 2020 15:43:39 +0000
Received: by mail-wm1-x341.google.com with SMTP id t8so7603984wmi.2;
 Fri, 03 Apr 2020 08:43:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=LK/63VpRTinhiS72eGFe8hpGS9Ib9592eNpC47zP9eg=;
 b=djFdKEvTwrwu3CjbnLd2DYvKdWWmT3nTiRUjzGLsXnWqQKq+R5eIyZqf6vy3qOHK8U
 lo8rz2LKF2oDOXC794xOJzkCiONvpaVCcKcGtnu9BO/nqiyyz+q45cdXr63dEVbNQBWg
 lWzogL2owQshIUBQ7VXOrlBLemWBhscnAdyoxUqGH2GVHdUTj7hjTqD8lxvFAFqjQ39q
 jBKSCTXH8pLWl1dYeQTmvLGda8KIKWYue+cUBo2RD5NOFJjE2wqLJZCNaN1qk8cWOxlf
 bGqi7ZGbePD5JHM+2En0vexg2XVAXFkak0ZTBdGS3mTBUOQAhKRR8VZKFrET3hS0ZdwY
 Th4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=LK/63VpRTinhiS72eGFe8hpGS9Ib9592eNpC47zP9eg=;
 b=k0mbtnZihFGchGPRKSeRIcrJ0bP0cg25xtelqGtxXXCazH1wnDYIIaCOQEGn0HuBey
 jqUI/LTROSIf66ThVzAqAxB0jzbh3Vz9Y4Ni1ir5iY/ABi+nbPOXd/X5ToASaIXoLbHg
 Z8qwToBUgdKZel5IYss8qR76AiXVtkyLQ+5sDeiH9W0u9TsEJNrnWY/vAGoAHKLn1mTA
 JaIL8HPRiAkzZb0leJ1Qld116XCLwPNbzsbGMVgyoESZ/yHVAfKK3jMytGpbfnFYmp0K
 7K7sbUJoTo/DqiLZz9iA+4p+dR+/vI3cwHEHUu+OIAlvSig3kwsGoRyKpZ3cnXqmB5iS
 2GSg==
X-Gm-Message-State: AGi0PuaQdws/sdCdo5sebmiIaOf6b06sdEeQGw9orz3SesvVQlNDYFzI
 quKQpC3nuuMwk3qVpRmwglo=
X-Google-Smtp-Source: APiQypLNXXcyKij1x2E3kI4jmxsZKz7DUFMVECFp2pVDbsBupYf2V9AJPCMBidDJDkAUQpQ4APKy4Q==
X-Received: by 2002:a1c:8090:: with SMTP id b138mr9695849wmd.55.1585928616606; 
 Fri, 03 Apr 2020 08:43:36 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id h2sm11701580wmb.16.2020.04.03.08.43.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 Apr 2020 08:43:35 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v2 1/3] ARM: dts: rockchip: remove identical #include from
 rk3288.dtsi
Date: Fri,  3 Apr 2020 17:43:27 +0200
Message-Id: <20200403154329.11256-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_084338_255040_9352A515 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are 2 identical '#include' for 'rk3288-power.h',
so remove one of them.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3288.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index e72368a7a..f102fec69 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -7,7 +7,6 @@
 #include <dt-bindings/clock/rk3288-cru.h>
 #include <dt-bindings/power/rk3288-power.h>
 #include <dt-bindings/thermal/thermal.h>
-#include <dt-bindings/power/rk3288-power.h>
 #include <dt-bindings/soc/rockchip,boot-mode.h>
 
 / {
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
