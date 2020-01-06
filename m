Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 207C4131853
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 20:10:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8i26GlzmJ8ZMTZp4EWkGnmM0h1LQVQ8X6qVYF23dl/E=; b=XkNnH/2+bYS5PMHhJOslKe2Inx
	jvvn2aEMLmm/sAqDFb/fcfM9Gdb0T1TaarLkWXgl7Nm2cIkDpjlT09pO2g4L+6mAf4UmknOMktMNo
	z2YvvAl4lQZD/vYmzbPuCuL2Fgx7T3k8YlJSWDAuOMqbTeDoY+TVIvbpAOjKY486y4GEU9DhCm3hM
	qzfMSZvJ+OnqMHzo+LhWwFRDZTvrvSx3TdyVC7ab9MxJPIZcdd/sNh8e0VghYh/b5MqFnmgP/Bn1V
	/xO5jFFuGuRqilZ/bclulqp9HYQ6injQSDKzXBoqz4UAjoEaPm8lvV9cP/RNyc3bKWxX1C52kC9rS
	OBjsNjKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioXlv-0002CG-Lq; Mon, 06 Jan 2020 19:10:39 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioXlR-0001lG-3w
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 19:10:10 +0000
Received: by mail-pf1-x442.google.com with SMTP id 195so26509319pfw.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 11:10:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=5UWJNKwGSnZRp2VqvhJODGUDqM6guG99MwzXRTV7Nb0=;
 b=ipVTd/8WzUVxxKpTAZ5SKS4Qu+ymKDslRCsM2dW8CGQMRNF6NzHNamg6TOhJBPyGg4
 ORhCV/Q5T8y2fc6B1zO52fudCe7Ri99+HF+7CYMnu/g6aUg/jkTAxDng5wgqVlYQPW5M
 Eb1mHgurqw9jEMBxSZrCkCc/YNhvW1uG9OzYyDLsfbfTLtq8DxHe2/KfwxYAVG5uY07m
 Bu+Es72kW0OdrMRIyWbKxuwGZnqRBRvhXad4hOpPqKc9VD/hJXtap77MbDviSyNM10Wi
 rq9UBlVrwtu3Xybe/h9VTxYu7wSVEZitLRu2ig4aK71hqy34yItwhdaoDe3AQ1acwACR
 8n1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=5UWJNKwGSnZRp2VqvhJODGUDqM6guG99MwzXRTV7Nb0=;
 b=SPtWpJwtUqy2kzb2mR/FpvHG0tumbB9NTPQdmaRI3f4qNHhIm4o0Js8Vid3X/mpK/Y
 HPlFZIS9QL+dFY/+g9vwM+7AJeuyBdMKIUp+2ZZ5SVRiP0f1/JDS3I5wh49iD119o+SR
 BzHX3ZiabJMOi+bPa1xecYAtyhvKV3Ck7tTh1oS7H/lo+/ywH7TAkstMF7biXBFFoR96
 LjtGJjGNAVQdPC1hRDu1QfHJrZnACiipscqJxTZIs4XSXT+vCiGYi0v2lOod4ip5iSzJ
 XUCSjkpFjTyx1vV/FyMw0voprJ6L20oIcHM3EWAh3i2RHSLtSJexQT17K2jasic+GWqH
 j/YQ==
X-Gm-Message-State: APjAAAWoHZymN101XSpzGSwp1tkRid3Un+yXCwbU9+TQis9PJjtn4Fut
 EWzYXsPlCkS4ZjZg0PzcBno=
X-Google-Smtp-Source: APXvYqy3M3OIjOkADUaBh75HkL/X1n2uuXocdJbwJl2rTbC++kuHHBua+mNCifGNrP3hQMUCclRBEg==
X-Received: by 2002:a63:7705:: with SMTP id s5mr110197804pgc.379.1578337808378; 
 Mon, 06 Jan 2020 11:10:08 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id s24sm24868480pjp.17.2020.01.06.11.10.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 06 Jan 2020 11:10:07 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, kgene@kernel.org,
 krzk@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] ARM: dts: exynos: tiny4412: add proper panel node
Date: Mon,  6 Jan 2020 19:10:03 +0000
Message-Id: <20200106191003.21584-2-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200106191003.21584-1-tiny.windzz@gmail.com>
References: <20200106191003.21584-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_111009_162173_99F6DAF7 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Yangtao Li <tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch add at070tn92 panel for tiny4412 board.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 arch/arm/boot/dts/exynos4412-tiny4412.dts | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/boot/dts/exynos4412-tiny4412.dts b/arch/arm/boot/dts/exynos4412-tiny4412.dts
index 2b62cb27420c..57f9d09233ad 100644
--- a/arch/arm/boot/dts/exynos4412-tiny4412.dts
+++ b/arch/arm/boot/dts/exynos4412-tiny4412.dts
@@ -66,6 +66,16 @@
 			clock-frequency = <24000000>;
 		};
 	};
+
+	panel {
+		compatible = "innolux,at070tn92";
+
+		port {
+			panel_input: endpoint {
+				remote-endpoint = <&lcdc_output>;
+			};
+		};
+	};
 };
 
 &fimd {
@@ -74,6 +84,12 @@
 	#address-cells = <1>;
 	#size-cells = <0>;
 	status = "okay";
+	port@3 {
+		reg = <3>;
+		lcdc_output: endpoint {
+			remote-endpoint = <&panel_input>;
+		};
+	};
 };
 
 &rtc {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
