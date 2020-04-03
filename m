Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0627219DD62
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 20:02:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=CsG9N9TIcj8h+0IVvC4v3CWzFBkqIOSfmi2Dn9UtJuw=; b=pkM
	QbnaFeu/WlmoVxnK7f2UazzfB8c2VrVgnCzTfCVeas/eE5wAEJNS+G1a6Cleo33ryKq8nLQE3lTdq
	GqhEmhh1uJdiZRorz0as0UYxCaN3ymnuWDp2qvQTVVb6mm8iNO/ea9DM7jPh6n9PWEgMWIIFbDnRg
	5JQPvBYE7XZYcP8ZRnZTA7Q8zXlRXlvShoNfxynAYiOkTnNGpu0pGVhAGxPXC3X600OC2phiCwZl8
	/btKtXxn362ECQ4dUX4ceYhiMvOKDt5jBshI7wFaousPlWpf3ThaNv/TSyQ6pZCrMcKNTzVgC3TGS
	YES/ftFf64OgVNgWgesLtrfk3soe0OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKQe4-00055y-Kn; Fri, 03 Apr 2020 18:02:20 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKQdw-00055F-B4; Fri, 03 Apr 2020 18:02:13 +0000
Received: by mail-wr1-x442.google.com with SMTP id w10so9623755wrm.4;
 Fri, 03 Apr 2020 11:02:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=LK/63VpRTinhiS72eGFe8hpGS9Ib9592eNpC47zP9eg=;
 b=gECGj7gco55CQi8eVKo1AAsMyzI0Y0o7rmDW5QCJXbr5LCVDnHUz/qtiOz9HHljK9T
 u9pdBmKtyx175zDh0dSSJuFkNmrR/NQ0gMX1nMxBD7a+bRWQ/Yjlxsa+7k4njHtxJDFs
 VxVe3xlwewOPBdJ6Q3mAV6CzGsrFDwVVuleFj7uruyY4cigK+mToq1Ef9rmOSJpMKORu
 vno9S9n95Ue7BiIwgIRV5fS9wBKJp6kWKwNyvNQ9bBDuL1erUi+VSboMHYBpquB1LgcU
 6XiHGEBC+V/siyW7Q/sXeeWBDxsoTgNbi6suhqpuri0rcQS16rFrSfmVmAn/7aT+I5o+
 AZgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=LK/63VpRTinhiS72eGFe8hpGS9Ib9592eNpC47zP9eg=;
 b=dgjdYV640racQ0oESBSue0UXHWdI5agX9p/Njd/lLjUsn8GBbuNhA6L9f0DljG7sE8
 kwvOvVAoJmc7cbAuhyv74TktGDRDg4NA4IZ81Vp7dF6qgrDKMGBo9at74HfhoVW211dZ
 frZrGNcRI0sOfBbW/cXLS2ykE01vv0cVtnAzRVb93Yc+ItOKjWd58lWwkttq03OA83b7
 STvWLiLjfFMP0tPShHX8jofghJqd9L/qO68MHv8BRpo5lRt5/3lEmTQFvcHIkTQgvtvN
 qSSVckflKLE42eON7gUanLgtUyuDBjfUaofRwrZqfvZfHTXTLRpurar34DiRgItJ0Adz
 OT2g==
X-Gm-Message-State: AGi0PuYXDL/zHRJn8ekeFNOAPShI5zFidIR9v52uLPvCqFQ/CquRtEUg
 Fkzvkb2dJIQ/J9iA6YaTJ7tDw6Qe
X-Google-Smtp-Source: APiQypKVCRnue8W4nhBRXSD3dBoOHLKYUZYejfQvBtxGqmi0wdjXQIZrIC9WjOlCYfbVLWup7ZCNgA==
X-Received: by 2002:adf:f68b:: with SMTP id v11mr9853798wrp.270.1585936930550; 
 Fri, 03 Apr 2020 11:02:10 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id j11sm13005492wrt.14.2020.04.03.11.02.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 Apr 2020 11:02:09 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v3 1/4] ARM: dts: rockchip: remove identical #include from
 rk3288.dtsi
Date: Fri,  3 Apr 2020 20:01:56 +0200
Message-Id: <20200403180159.13387-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_110212_378717_5D3CC193 
X-CRM114-Status: UNSURE (   9.94  )
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
