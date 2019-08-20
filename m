Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C1F954E0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 05:13:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PBgRwDkOV5X5XLJzr5X8Uwp1hInBUcUilMeSdPPTJXM=; b=am2n7bYgIdQR2q
	HkVcgSQR+K8RO1IXefn+3IAB6gDsHSX9kc4VrjxtkBCi9buA42HNCUCMGRafBCXLRNuMZXzoRy2fi
	0pGvd94pUb7mRpFtRZKfwpE+udvGT6yvB8j690fPU4JGoChS+cPyizjf52ZoL4ofP0kqKFpIdaws5
	4w15UUEMURdFTRl63UH/kn32MZ92O9mVPqBgdDhJsdjKXnvQ9c9VTp+hCLmZm+sJk3JBmm4GUv/Q4
	oXoEC7A4OeUQcPH1Kgg2CGxAwec7JA+5L564kTAswOq8JOesryZzGR+qWYhN3UHK1D2UCXkw1g/h5
	RLiHFVNtMPc+s/GyMxEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzuaJ-0004gF-6c; Tue, 20 Aug 2019 03:13:23 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzua5-0004fV-Lz
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 03:13:10 +0000
Received: by mail-pf1-x444.google.com with SMTP id v12so2426962pfn.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 20:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XFH5jva/OE203un4N8xBzjPDuYVpmA9pAoQ7Ehj/aec=;
 b=EdcZaaaDZaM2VztWA+t44FMuIL/ZIR+uyq3NMxQprjpw9xRFXNpnVYCld8dWHVj75k
 S8M0f+VRMyE/mQ9DpDuIEV4ZtVdL2uIdGuAnYp+EdQjeYsvksObGWGKsEIZ1eX8BXKxM
 /VO8XxU3xoA0g1i4hE4LK3S6ITaaFZwD09Zq6SCfNU9LYVRklCok9hkypMHkM4dQvk9+
 qab71+2iRARRUIDefd9czxoeSkG9njKwcLVXvMyCyQa1akHUJBf4nbv+6+CSaKliJ+u/
 yBY5iFv/z3uFMkbu7tswRU9RkP7AO+QMFHoZxK2xBdhpu9xtfxfQnFWZIo9pbrbSTzA8
 fjvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XFH5jva/OE203un4N8xBzjPDuYVpmA9pAoQ7Ehj/aec=;
 b=P95IZIS6hT8TryNsC9d+fXawBTkJ2tpq6Due9BgCkulg1aaQIlUSIp3Wv6u718B/qw
 eCVhw4faLG0idew/wwyssyBDtrQmPX9/pb/qzwb3NImozwgq04XK7WT0KLK7sckAwJhh
 Ge0VJvcafT3koLpQEjxcrHEzvNg/ZVXbsSD79XMxa8iiUKjoyY92YJUhzVybM3n9AzXZ
 VDn6Z0AyN+LbwxzueYdKQD7Q5w3cSBa62LB1mXiHJwkMeHwU9R7AhnEl8PGD/xEFWFR5
 kPTT+bdhYT/iPBDpTtAQiJDRl2ZActFXcyWVtW+e2ulQ9zon1VFYXJFk3vuXmI8HnmQV
 M1Aw==
X-Gm-Message-State: APjAAAVTn86UmAxJp+pt6SmL69gMn5ikZ4PH+zAs2CznM7H69vAk/3Vd
 t8tHBoJf4CMoAMnM/zGb7faiylfrdHg=
X-Google-Smtp-Source: APXvYqwBieQOotgQYt2lM+Bx7jMH5oINwpP51n4NcZYPXJz9H6HYkAX8V4XrBWh/od2dSrmz0N4g9Q==
X-Received: by 2002:a17:90a:bf82:: with SMTP id
 d2mr13508669pjs.121.1566270788098; 
 Mon, 19 Aug 2019 20:13:08 -0700 (PDT)
Received: from localhost.lan (c-67-185-54-80.hsd1.wa.comcast.net.
 [67.185.54.80])
 by smtp.gmail.com with ESMTPSA id x10sm15100884pjo.4.2019.08.19.20.13.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Aug 2019 20:13:07 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: vf610-zii-scu4-aib: Drop "rs485-rts-delay" property
Date: Mon, 19 Aug 2019 20:13:01 -0700
Message-Id: <20190820031301.11172-1-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_201309_724802_2B691A24 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

LPUART driver does not support specifying "rs485-rts-delay"
property. Drop it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm/boot/dts/vf610-zii-scu4-aib.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/vf610-zii-scu4-aib.dts b/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
index 666ec27a73e3..d8c38ef6a98a 100644
--- a/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
+++ b/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
@@ -685,7 +685,6 @@
 	linux,rs485-enabled-at-boot-time;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart1>;
-	rs485-rts-delay = <0 200>;
 	status = "okay";
 };
 
@@ -693,7 +692,6 @@
 	linux,rs485-enabled-at-boot-time;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart2>;
-	rs485-rts-delay = <0 200>;
 	status = "okay";
 };
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
