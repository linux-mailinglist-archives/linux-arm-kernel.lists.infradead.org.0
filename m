Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D01119F97
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 00:36:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hQ1KEvv/cK1IuUaDtpB9lNvaj2zFsGjeoXYmPCK/QH4=; b=A0EJvXQPZi4U6cZGLTRx3k+0Q8
	F/IjsLgAYFbfHpinDhn5/YJy0gdxRRcE/ZQ2gu66FVqBMdtzcjQ2zG6J7IXH/2BXp6VbEdl3B9iMO
	3UllL96rQKLLTKDmYdreWqmnH3Apd0AB2M1hUVYRhuOSpGeq0t6oL+NzIALp72NKrDkyD3zKSdroV
	pbPZ47lyYr6o7wTjo36mhqX3G4s4ywX5TzkKfYo64vpCdfvwVHk/LQloJ0M+S9u/bLzv7FniLuOoC
	t8U8veCeo5e+kXl1OjicplApXXSq26R89cCLdgh43xz8QhWpR+viSSfMrt86XdNVpr/Zqu5+bx5dk
	uRV0aX3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iep3W-00040k-Ot; Tue, 10 Dec 2019 23:36:38 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iep2N-00036K-1j
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 23:35:28 +0000
Received: by mail-wr1-x444.google.com with SMTP id d16so21991911wre.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 15:35:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bz/VQlnz1v5AapS+5W6yfHgO6/GtfVjJurkUMo3Qj+c=;
 b=XMiO3uR/UOvB8/0OkYcGo0WzEqQthD3zK9VQDl1SgddDSMaOSCwhiuLqBrm5kd2LDq
 LCvn5ToNLJXtSnw1XMcptooNxusKlNCtsIbm3VgOfIx3Z/Rs6/KdC9/f67x8YYFarIJY
 8AiQIBM2DvN+jLNA+pMpQoJ0m6Ruj3zlMSM+/vDcKu25b97NDbSG4TOJp7dqJKkT4I3I
 Vz7nvOQ8ZvgLcUTFUY4d75hKbjjUYtL1y09agbpek9YYyq9xH/ozZskvupcHIMOCaCRa
 kjNR1yRdDlw8Ow4sorCd+JTxm0+OAyVPZtRTYaZKE5G1Stk8SEAvE0z/ul2rGUl0uqBF
 O1og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bz/VQlnz1v5AapS+5W6yfHgO6/GtfVjJurkUMo3Qj+c=;
 b=Gz05ZbaM5uxy/W7pCxLIiLZhIT/0dsMw+GqbT90zHj+cBqL55fEYoUMJnXwXf3uLLb
 4sM5+O8XqgMYgvpqbUpKJ7bCV8+9kx190YNabscEpvHIpbeNT869TXXTPMS5CchXb891
 OkZgONleZI8r133Zrn3rLm42BCyVCaMG2YSPlNaiHpTqx0gyi/vM/o5kkEiKsBA9Gq5k
 U1r4AjYHACllew/YqX1OqHSV+u3OosXhPn71nabZsBQlj66JIhB92mH4mQeP7ovWWHyx
 MbLOffYOc9qi1SBQr11cZ7DXMjQ6cTwkHrhMHTK6YwfUj5rNTISGRz6SW8KgE/dK4QQ4
 RVMg==
X-Gm-Message-State: APjAAAVwzLi4WCXl4fwcrK2br0ORJZFUK0Wb9ysSyTNnV4AVYj5EOeSl
 K1oTVtD1G3srq4kddWygoWYYmZxd
X-Google-Smtp-Source: APXvYqwIv3ahhcp5oA0qthC+C2oIZVWxnkywGlQdzWkYiCi0KoHVvw+BTTuKL/H1IUVai4VYIn36Uw==
X-Received: by 2002:adf:ebc1:: with SMTP id v1mr85673wrn.351.1576020925098;
 Tue, 10 Dec 2019 15:35:25 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id n16sm59478wro.88.2019.12.10.15.35.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 15:35:24 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/4] soc: bcm: brcmstb: biuctrl: Update programming for 7211
Date: Tue, 10 Dec 2019 15:30:43 -0800
Message-Id: <20191210233043.15193-5-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191210233043.15193-1-f.fainelli@gmail.com>
References: <20191210233043.15193-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_153527_105934_62EF43DE 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 open list <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a matching entry for 7211 which can be programmed with the same
BIUCTRL settings as other Brahma-B53 based SoCs. While at it, rename the
function to include a72 in the name to reflect this applies to both
types of 64-bit capable CPUs that we support (Brahma-B53 and
Cortex-A72).

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/soc/bcm/brcmstb/biuctrl.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/soc/bcm/brcmstb/biuctrl.c b/drivers/soc/bcm/brcmstb/biuctrl.c
index d766577bc5d4..61731e01f94b 100644
--- a/drivers/soc/bcm/brcmstb/biuctrl.c
+++ b/drivers/soc/bcm/brcmstb/biuctrl.c
@@ -107,7 +107,8 @@ static int __init mcp_write_pairing_set(void)
 	return 0;
 }
 
-static const u32 b53_mach_compat[] = {
+static const u32 a72_b53_mach_compat[] = {
+	0x7211,
 	0x7216,
 	0x7255,
 	0x7260,
@@ -116,19 +117,19 @@ static const u32 b53_mach_compat[] = {
 	0x7278,
 };
 
-static void __init mcp_b53_set(void)
+static void __init mcp_a72_b53_set(void)
 {
 	unsigned int i;
 	u32 reg;
 
 	reg = brcmstb_get_family_id();
 
-	for (i = 0; i < ARRAY_SIZE(b53_mach_compat); i++) {
-		if (BRCM_ID(reg) == b53_mach_compat[i])
+	for (i = 0; i < ARRAY_SIZE(a72_b53_mach_compat); i++) {
+		if (BRCM_ID(reg) == a72_b53_mach_compat[i])
 			break;
 	}
 
-	if (i == ARRAY_SIZE(b53_mach_compat))
+	if (i == ARRAY_SIZE(a72_b53_mach_compat))
 		return;
 
 	/* Set all 3 MCP interfaces to 8 credits */
@@ -261,7 +262,7 @@ static int __init brcmstb_biuctrl_init(void)
 		return ret;
 	}
 
-	mcp_b53_set();
+	mcp_a72_b53_set();
 #ifdef CONFIG_PM_SLEEP
 	register_syscore_ops(&brcmstb_cpu_credit_syscore_ops);
 #endif
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
