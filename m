Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D34D118E4F2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 22:56:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5JicfJuzTKUtv6LXfVNeagHJSWPIFArDhUh3+RxhSy0=; b=HjrNWWxsntpY/Yk/rklb+e2KT5
	TlnMFUjUrhy31ZBNTPMlLs2lkWWuZCC9zd6lZF/O01EQof+CMbu+ogv7z8jAqHS7+XzKbfgyzaWrS
	OR97Kkv2OgwxVK9PQf5iS7hRWLc2YANh09W2OVu65oA2W13yNSQ5mwZSRURe8vzMEr1EQFzhda60V
	wyDNCMbOoI4zbdF4GPNxUS30wndb69g3oYwDbbkVTJK8se/plW+ipriNKsPCOc2SuSJ2aBQv6h/IS
	vbNUIzr8BGrHVlZu7n83uW4TQKA5efRvgVtvj+xBS4wTf3uUxxAkVWu0FF6lPkFUWvl8buJG8RlC6
	mT/ZSRew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFm5w-0005aY-Gx; Sat, 21 Mar 2020 21:55:52 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFm4i-0003bJ-4K; Sat, 21 Mar 2020 21:54:37 +0000
Received: by mail-wr1-x444.google.com with SMTP id a25so11909161wrd.0;
 Sat, 21 Mar 2020 14:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=CRbOK0Ug5vXhs9Z5fx1QPwSTD+scMmXofqeuZ2mekL0=;
 b=ZeU5GSaazwnBvQe4FiH0Pxb6wa5Q9/UWZtE29jPBGqMsThgxKNMe2flZjSeEa7evUG
 xm9aj/xmgysYMgjKSMGjkduMqHh7Vh2nDZZEwBJxZY5oQPvXbTKaJJCd82Q1knkRK6dH
 0XqGEKxQxGLfexoPbESNTIeE8AMICKO1JkAHG+EGnZES+3F2S8bugNdjF2tQe9vRNJX2
 zVC8kReytt4t7UMbwa7rlFrZdzPyAItaBm7tSCctbSGH+6bV5wNwKlO8EVzdGlPxEVRp
 PxPFE8Ks1e+z/fM9Jl/uIBC78R/9hPjPn3kfdptZNMH49Vcr7g8uI2uyJPpKSBbXCf5a
 Q9bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=CRbOK0Ug5vXhs9Z5fx1QPwSTD+scMmXofqeuZ2mekL0=;
 b=Hn+dSNttar50h3gskQJdmtnPaxaLF/Z7j5jGGRtNR09xxJakiFPDMlIH08fO9/2Xxp
 2akVolzdjzh7tIc7NDY3tfRMd6mQt6FlG+kay12CAzgKTPwarJmdsjIAAjbkMi3cuEp3
 dhOLpi3aBYVu5ATVYLtlytq1vVLjmVjSMuBYS5HkbvqySLD5fd3mS/yc8yb+NaNfUBem
 vJaCkMk1a1xpFkkLrZ6/8uhIradEcukMlgVfw+yp58oo3K+JD6LrjySWwv+fNlf5IOd+
 miC2b+teSke3EM+D7tVp9ukeRoLttQ7Ztg8dxYiU4Awavg3SXq1d3i8nPIHSQfvH1Wa7
 BE6A==
X-Gm-Message-State: ANhLgQ1vtJMXoaXxVwNhd0Uhszrijm8NnvQPssp/FftZUs/tQ0l19VrM
 h6L1qyq/a5BQksT+pR0rYePGh8gv
X-Google-Smtp-Source: ADFU+vtATJV3UPOuxt1SDCJN9hIZRqrM8HTS/NXRJUM+lx3c5VqCCNm2IXp0T90Nk916rwvxDgkyAw==
X-Received: by 2002:adf:f7cb:: with SMTP id a11mr10473149wrq.79.1584827674881; 
 Sat, 21 Mar 2020 14:54:34 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id l83sm14113796wmf.43.2020.03.21.14.54.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 21 Mar 2020 14:54:34 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 5/6] arm64: dts: rockchip: fix rtl8211e nodename for
 rk3399-orangepi
Date: Sat, 21 Mar 2020 22:54:22 +0100
Message-Id: <20200321215423.12176-5-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200321215423.12176-1-jbx6244@gmail.com>
References: <20200321215423.12176-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_145436_206268_6D39DEA3 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, aballier@gentoo.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below gives this error:

arch/arm64/boot/dts/rockchip/rk3399-orangepi.dt.yaml: phy@1:
'#phy-cells' is a required property

The phy nodename is used by a phy-handle.
The parent node is compatible with "snps,dwmac-mdio",
so change nodename to 'ethernet-phy', for which '#phy-cells'
is not a required property

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/schemas/
phy/phy-provider.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
index f9f7246d4..afbcd213c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
@@ -214,7 +214,7 @@
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		rtl8211e: phy@1 {
+		rtl8211e: ethernet-phy@1 {
 			reg = <1>;
 			interrupt-parent = <&gpio3>;
 			interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
