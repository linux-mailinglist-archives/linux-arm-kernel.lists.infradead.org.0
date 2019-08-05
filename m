Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F99381A1D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 14:59:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CxrOoh8QQ6QKwxu1BTgT6GkxqLminapDWlxiUxeCLh4=; b=bH1jZq5RCEP+wa
	T6AturDeUHbluQSeja+IiBC+I59Vc28C4Y15k2Ltj3k7+pHAlSloQgJJJ8TbL9Uh3darFMG4gU+Yj
	z7GmcOENlKBqTaG673Z0wqupAbWTeMmH29VLvJVKjeG7gJANZ+rMJ+Bd+c89k/VscgArKkIw6O6LG
	rPc1HeTy/X1b2Cv6kU6MMxFjibWxS1/k4hokzPHywg8GvLHTpWPutJYk2ZlAUf2RLkxFDgqW31qy0
	EjBUfBqj3FrUOANMAEcFmftDOzy1qcf1VqDJaRJINaJ8TAVXTiIBRIPzutdhN+5Cleh6O6fEdlxyi
	7KFJiFRZtd4Hq2E9NC6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hucaG-0004W7-Ai; Mon, 05 Aug 2019 12:59:28 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hucZk-00045G-By
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 12:59:00 +0000
Received: by mail-wm1-x344.google.com with SMTP id v19so72936174wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 05:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=98lh3VhEJYcNP4cO6bfAWLsXJomqXzKBLTJKfb0rfuY=;
 b=tMnBMEYxd6Lk47wVxq8np1s07LPbtohRCD9xifUu+u/mzgsVZzai5W9om02Rx3+Nb1
 tv62V9YKJ2x9GGQSuyYppVpgKlfNYYE9mhFKylGM4whvoeB5s2wWMLc+W4EmXTbO0gXB
 oLjGlL8FWWWdesfvwBYBq4LJ0Vi3usyG9KhMN/2TLtcowEOakLiV8qSWKkzmCeDfxKG3
 qRtvMzkDWgc63UQxW79fR00LSbu9OWNG0btdqFgsNig9WykCCzGhqwgfs0YLE6eL0ohl
 JWXR8vRNpcJR0AGTyBKmbK1NXKrbojwL7TVJmgmCvj8GHPKFPfPXoWH9f3Nk+MRf2jzJ
 qLpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=98lh3VhEJYcNP4cO6bfAWLsXJomqXzKBLTJKfb0rfuY=;
 b=G16ThEv2qFKZwOEbZ9gJNHetSchrWyqXQyBZ5FDGT7cxVori1h2J2vjPAYtbPXTbCo
 gvI6NT0OcpHcJtiGOeEZnoB2bnpD31Ac3OVlnm2Er3bv3ARp5GYJyd3/ne097JmgQZfh
 pVZjqjFW+qy39hJmYU8LC7sz+OGRby2Pk9ZDXJvglyOnkoUriLru3scAvjMZn/JbRODi
 JRG/LAXBOE62oxwvYMpYsf6JYAJVqv6MVaJQUbeXF/wnvi4bC2FE1RQFtHK22xXxhPPV
 c1gk8xL7s5t0DREHKDCaRsXCy8mngwXVC4teUuhW2DVJurQZHERVnflKsLTjCPeFuU2G
 k0wg==
X-Gm-Message-State: APjAAAVOYBRm4B3pfocsEwdpgcaibKPZn7ZzzGT+30OQZJCng99fQxc4
 KoOgsrCfu/NN3yejgCHBIW72Fw==
X-Google-Smtp-Source: APXvYqzsqQmdgJj3jeIDVq76HPcJpxfluPpf19/xxhP3uizn5JqLt/VNLa8L7aHlrqKs6BQBR3c4qA==
X-Received: by 2002:a1c:e108:: with SMTP id y8mr18411997wmg.65.1565009932852; 
 Mon, 05 Aug 2019 05:58:52 -0700 (PDT)
Received: from radium.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id k9sm15582779wrd.46.2019.08.05.05.58.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 05:58:52 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: thierry.reding@gmail.com,
	robh+dt@kernel.org,
	matthias.bgg@gmail.com
Subject: [PATCH 2/2] pwm: pwm-mediatek: Add MT8516 SoC support
Date: Mon,  5 Aug 2019 14:58:48 +0200
Message-Id: <20190805125848.15751-2-fparent@baylibre.com>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190805125848.15751-1-fparent@baylibre.com>
References: <20190805125848.15751-1-fparent@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_055857_669143_842F0746 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Fabien Parent <fparent@baylibre.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the compatible and the platform data to support PWM on the MT8516
SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 drivers/pwm/pwm-mediatek.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/pwm/pwm-mediatek.c b/drivers/pwm/pwm-mediatek.c
index eb6674ce995f..6697e30811e7 100644
--- a/drivers/pwm/pwm-mediatek.c
+++ b/drivers/pwm/pwm-mediatek.c
@@ -302,11 +302,18 @@ static const struct mtk_pwm_platform_data mt7628_pwm_data = {
 	.has_clks = false,
 };
 
+static const struct mtk_pwm_platform_data mt8516_pwm_data = {
+	.num_pwms = 5,
+	.pwm45_fixup = false,
+	.has_clks = true,
+};
+
 static const struct of_device_id mtk_pwm_of_match[] = {
 	{ .compatible = "mediatek,mt2712-pwm", .data = &mt2712_pwm_data },
 	{ .compatible = "mediatek,mt7622-pwm", .data = &mt7622_pwm_data },
 	{ .compatible = "mediatek,mt7623-pwm", .data = &mt7623_pwm_data },
 	{ .compatible = "mediatek,mt7628-pwm", .data = &mt7628_pwm_data },
+	{ .compatible = "mediatek,mt8516-pwm", .data = &mt8516_pwm_data },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, mtk_pwm_of_match);
-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
