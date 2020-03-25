Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 404AA19265D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 11:57:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=CsG9N9TIcj8h+0IVvC4v3CWzFBkqIOSfmi2Dn9UtJuw=; b=Os2
	knbUntMXrzTIu1pQwDBdkCqkLbpa5CBm+3+1jMuKH4D+o4Ui0e7Zysm64HuYugNwE7HFD7VPBZgfe
	B2k0ywxVLYa8R77VrQhcbTkvDll+gQ6eLV/4ujkmOgkV7NGM7s+PR1R1FQ5s8i5EPJ0fuFPrfpEqg
	qvQLYJL0Sri8ILZ1zGBHyXKWMB4Jqt/yn9Iql1qHyXUiAXlf09rKqmEvb4yLLTt2N5ZF8ZWhm9imN
	mWqB6L6aoPMCJgRO3Ke2FJC6+XFj/vXQn5tgYvexJ/cNlURIBCEua9vVpX4D++fPOpn7fIViYDPpz
	9fbeXPk6umNbeov12atA/fMY1y56KqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH3jM-0007LS-0N; Wed, 25 Mar 2020 10:57:52 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH3jC-0007Ks-3B; Wed, 25 Mar 2020 10:57:43 +0000
Received: by mail-wr1-x442.google.com with SMTP id j17so2333599wru.13;
 Wed, 25 Mar 2020 03:57:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=LK/63VpRTinhiS72eGFe8hpGS9Ib9592eNpC47zP9eg=;
 b=STJZraM7KnNG5j/4mxy5/JwGK6u9Ls8g+U8aHGuB8OiwBRazBmk0EmDZVLasIpVg0l
 LorsN9AwIU5jU31QyO9MIuxJJW+sLYNIXrfLt4pYBdOE8Pu9Oj734hNYJNCkwEUnLk5l
 myQiEIBn9uX3gVw6J0TL7xoI12fBLhYqtTKXViXTBiOQsiDYTS65LvrfphITeNZzZI86
 nOxz0frKnPvmmxaYRS8Ntfuz6rcaJ1Ay0bjXlkUIVMiNa21MYbucmpJA2Q0GYyiCbs4T
 6XRBiv6s6z5p7ID+Zv2krl/rKyFjIbPLOqvQCItXfyFap7VfMmxa1WY1RjJS/qNiRnL5
 udXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=LK/63VpRTinhiS72eGFe8hpGS9Ib9592eNpC47zP9eg=;
 b=AdM97UZ4Dv3BaxxeBN9g357svhdQ9cpCy6k1W8jwopGsa8UDmcI7xo2UpqqLEAq6x5
 9Cy8Zc6eAyCMq+OAcSbt7N8zg9bn/GVslJoqaozDhE0JfmMYH+WqIskzNDKiTqSDN3yJ
 bBe5jB9lTLW/crMzfKGiOnINf/oVZHSHBE9qGQ+Aao5SD2IEAZzmPs0qr0Hm7L6FnU0D
 6bnJUm1vtVdyC1xodoSQ58LuHSs2XQ0Db7ag/Reov4TbK2j6PmSn9taPhj59u6Cfl1Md
 m/LYV29cOeseBaLRvZzAIK2k1SCHyslsiHfm4bptl0uhnT+1HYwzYJhrIxsoAwdWcKz2
 C1aw==
X-Gm-Message-State: ANhLgQ0MHH2QKZ13k8SYjLGEtI+JmDERfLi6qDuR1V2J3SbK4h3KjedS
 Oh+4TXbeNsrHSiXZ7/qyDCAtKSjb
X-Google-Smtp-Source: ADFU+vsNgfBpz3csz9luqYb8b7ZDiuvrOxIb4oqdh2Jlq7yApLxnA+XyWS3p4B5eABuEpP56HxycWA==
X-Received: by 2002:a5d:468c:: with SMTP id u12mr2983370wrq.394.1585133860900; 
 Wed, 25 Mar 2020 03:57:40 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id o9sm33867584wrw.20.2020.03.25.03.57.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 25 Mar 2020 03:57:40 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] ARM: dts: rockchip: remove identical #include from rk3288.dtsi
Date: Wed, 25 Mar 2020 11:57:34 +0100
Message-Id: <20200325105734.5868-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_035742_133073_EF75444D 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
