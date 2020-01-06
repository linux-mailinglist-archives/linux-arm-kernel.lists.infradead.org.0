Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EBD6131852
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 20:10:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fbNL0xFGwIEdJTSdOzJvX2WQKoueIpWM1nJyAVPFCPY=; b=oIi
	okVt5WzP+0xDLUJNCW6JxrAchRaQNY1QFZJE7wl0a1RsyGuvHm399aHXMYRUFnD48BXKr/TY+J4Cf
	vzO99ZjlEthxqax5ESoSOt91aa+W+YtdylmlX6vKl5GV63xyq8SSlfsjBKd0QFe3vcMdu91kZyp7K
	nK/GRhR1OkKIPV+jrhP1scTziA1dD3b3osMK/CR84Zg+25sG0aHIe8B/hGyrC0Ha2/gp8uVYzha+t
	upAVYYuPsKSwCfPJHTfYpnW01D79hH2sO5wvwchZS8Y930DFUUVv8253jYUK15g5zVzfTL2x6pR5G
	2x9HtE2MkYh23gwGuWOGr9FxmHdmOeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioXlY-0001zG-SB; Mon, 06 Jan 2020 19:10:16 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioXlP-0001SR-84
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 19:10:08 +0000
Received: by mail-pg1-x541.google.com with SMTP id a33so27285762pgm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 11:10:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=fn2//En0NgtGPijhIqqwb8TihozuX1XJnjpZUHvZ4zc=;
 b=nIU4VhIxZOhYy39o1sjc1QjE5btWTxIyooXi5l878+gLXV8ZCfYhxWa3hYa5D12SXR
 ZNdVZOrxue+qeZJMJ5APJbAcunA1BsGXDxz6pOdbz8TNL4G6s4vJ4Krqd3fqIeEgXT5c
 uzZqy0+wqOCFEzr2f0LuH4nxqbgUxnyBI/0G07C1qRpKmhKbv857d4asnMGTzLzu+iCz
 kuxejP+XvlvHS1CqbU8EqKNLUrrarQcqQIS09gjejl3Aufj62biJFjlgxPt+CQIPl6Qb
 ShK6cOXmuJSw4ozd7adNW7xoA3sPl3upBPqROGXM99WHK8to5PaIqFU3PWhR0zbJfeHH
 u+qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=fn2//En0NgtGPijhIqqwb8TihozuX1XJnjpZUHvZ4zc=;
 b=qfsBtJYxv6hb16CZ7DmYedA0sKt1TzPKf7DKYGYeNKtRKT0cX1k9qeXHqXOR+jlfBe
 +Q37qH/31dLvb/xHSgVh9qMX7j15bSwJkvZH/hCZSGyDLaLbVZcdg3LOxk7skUczoRdR
 huB+j43UVKMHsmciwXAxcc310Z41pbzk1+4YI8ivnjZ4ThwzELXRwIaWab6M/fw+YxF0
 5iEOZqJadtu0Ew3nK701ZIywknyfiYIs+nJ3z893CdZJbJbKZ1Pb6Eeblsvr7xGjT+jk
 oXmWrtABL8P0p0w0HdruJ38e09pFnOpmdtthGQ6cN4zqvMSmIkZyF6vx0VEaRxG1xgsp
 F/LQ==
X-Gm-Message-State: APjAAAX7ZKTjuhuItS6xZwYfENHyWUd1Qs2mUOoKm1INxMgjoy6DPA9x
 fnydKPLcIlpJSJtP/K7Viqk=
X-Google-Smtp-Source: APXvYqzsKEDnC2EKtm0Ia2SyM+OMxaIbFAQ6+lS8DUu8VWdLD/BN8rQ9KdvdCNdNNOfmTymk5wR8Gw==
X-Received: by 2002:a63:f64a:: with SMTP id u10mr109381095pgj.16.1578337806306; 
 Mon, 06 Jan 2020 11:10:06 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id g21sm6425496pfo.126.2020.01.06.11.10.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 06 Jan 2020 11:10:05 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, kgene@kernel.org,
 krzk@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] ARM: dts: exynos: tiny4412: add fimd node
Date: Mon,  6 Jan 2020 19:10:02 +0000
Message-Id: <20200106191003.21584-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_111007_305577_40D5D4F2 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

The patch adds fimd node for tiny4412 device.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 arch/arm/boot/dts/exynos4412-tiny4412.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/exynos4412-tiny4412.dts b/arch/arm/boot/dts/exynos4412-tiny4412.dts
index 01f37b5ac9c4..2b62cb27420c 100644
--- a/arch/arm/boot/dts/exynos4412-tiny4412.dts
+++ b/arch/arm/boot/dts/exynos4412-tiny4412.dts
@@ -68,6 +68,14 @@
 	};
 };
 
+&fimd {
+	pinctrl-0 = <&lcd_clk>, <&lcd_data24>;
+	pinctrl-names = "default";
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+};
+
 &rtc {
 	status = "okay";
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
