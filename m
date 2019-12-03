Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF59D10F4DD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 03:14:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VgZFb72l5DV0iGffbcDLJSXPqSBylKAXzDWfZbH834w=; b=fkInyqnKdVxub+
	SLdXS1gY3oxqGmpNHf5I8la3D7fT1SgxdtA2cKqKZkSWaVmN2wf93y6x+nrN2I3Q7jMX8flbybzh/
	Ge9tUvl2/wqVpN9IBou7qT6DTy5HLQLugAi+PaCBOW2Ug8HNswZQxqJzrifK+cWh/yr8sGc6zZBXh
	Ex7r1Tq0KCnaptADkxhayC+hDqqL0YjFcYzCub64gFP52eo1teBHEK9y+pw/5w7vIJO1gyclU9ypm
	Ch/QBr8IvOHNWJO89lgIrSOr+5OpI5wh96DbFVOC6R27Zhin001U4Lkxu27IHMlN5ywUAx40fC+mk
	e5LFbqLcJYh1ApmNTstg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibxi5-0002yI-MI; Tue, 03 Dec 2019 02:14:41 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibxhw-0002xx-0z
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 02:14:33 +0000
Received: by mail-pj1-x1044.google.com with SMTP id g4so785309pjs.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 18:14:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9KPgXU3E6Sr8Ubzx44nNFMIGdqQxtI966pQzecUZpvA=;
 b=LGXX2od9Dv4BFtWI7Z2tcOdykO5L4amDzI2vnG+zPiaVeqhsUQEJUh8c6FBGaxMIvO
 hzJMEaO3SPr6VnFlGXxoUh8OQ+SLy0DODfQ5NidpvlZwh07seFU0+688MeV9VJRHb610
 aFWeEG9KV4+nyN3V3Cj83iTd5gSxf35wTmqkE4sED5hiHJHHXw+Kh1L5Nnc7CYjiKA7x
 JxbEHBEreLo/11Xepy2qKdlitBHDayOqUazHUgtbjP7vAqaHIYwg2jiL1TjpxKfUT1nG
 XkwcIwOPbFFD0zE0YgPgX5siYWhxAK2tBJg2PD6XViveBALyMSnN6Z3sgm1cyq0Kurn7
 VWWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9KPgXU3E6Sr8Ubzx44nNFMIGdqQxtI966pQzecUZpvA=;
 b=lX0v8uTcu2j2L/Yrfd/G/u0DST7E1T2kt3AAKfaZ/M4MSYjbEkfKmhr9QKK0upDNEg
 xTCzjs78LqC1ARqPcGa7ikdwdtEb50wL9l37UwZK0o91+8xSSgmx9EwXg5x5CGl6iFzg
 4yCdnuelYrmGzu0WZdVl8ZlTcwk0i27jLN/SGT4khO5oYgy8Jl2MeNIfSQzAQeIgWeXn
 Vbwbxt46viSUuCppMYXdxb6gX0C0lGnczvZ5OZA13kJctpzgxGG/wTmdbD9W5HzRKaUB
 DDfmmC9ABs8notQfH9/IRc1A4GBGyjDFOwmPht/USuk+kAFOoLlR6mth48/TWvCnOLiW
 Sp+g==
X-Gm-Message-State: APjAAAWZCyrBBHkkt+h77OxhTCAg9l2ux1M9gumkeUQfl52300T6tfKz
 /s2jAlnYSHlKoxa/mVumQQE=
X-Google-Smtp-Source: APXvYqx5B6sHweZcdl06RHNrv7cwxjlpUX4+DkYw3Pcovt9avfdndMvedC5ziOW3Tw2ueV26ai5QRw==
X-Received: by 2002:a17:902:bf47:: with SMTP id
 u7mr2551220pls.259.1575339269628; 
 Mon, 02 Dec 2019 18:14:29 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id a12sm922528pga.11.2019.12.02.18.14.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 18:14:29 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: allwinner: a64: set GPU clock to 432 MHz
Date: Mon,  2 Dec 2019 18:14:20 -0800
Message-Id: <20191203021420.164129-1-anarsoul@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_181432_072834_456F4AE5 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

That's what BSP kernel sets it to and it seems to work fine.

Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 27e48234f1c2..0051f39b3d98 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -976,6 +976,9 @@ mali: gpu@1c40000 {
 			clocks = <&ccu CLK_BUS_GPU>, <&ccu CLK_GPU>;
 			clock-names = "bus", "core";
 			resets = <&ccu RST_BUS_GPU>;
+
+			assigned-clocks = <&ccu CLK_GPU>;
+			assigned-clock-rates = <432000000>;
 		};
 
 		gic: interrupt-controller@1c81000 {
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
