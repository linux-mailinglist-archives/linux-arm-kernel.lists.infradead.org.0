Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E722F6C13
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 01:53:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=d5xIhyz1Py1iIgYC3zRwnJ1zZUcsniiv+8rLCqtdW2w=; b=W2L
	rRSIEg5MUqe2T/rQJ/V80zPyFTY46m02xchw6eu3+bRorv0oFOslg66D25wdWOEUgznned5lBn8Py
	MrpiBCLQCs8WdMuOm/VWATKrZqhKK4htqLEKmQBfx+gYW6QTZS2dUVzChlN+1+bfK2VBUoiGbb39E
	/3G7cFxuDCmB25fpFoYhIODkDWAwTTI3KvLaiFdE/35IDVPYQZYuCaj4aPNni1nByUoqZz9X1Hs27
	6doU+AjOzr+B37lLvc5nx/5NpfuuTzwNq3Rg/d2TrPbQ0UriNTC6t4jF2TVv60eG6lZM5vv3FeuCm
	/mjThPKVgpVSi1UdILdFX/k9BWfwb9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTxwu-0003eI-9l; Mon, 11 Nov 2019 00:52:56 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTxwN-0003Nw-Dh; Mon, 11 Nov 2019 00:52:24 +0000
Received: by mail-pg1-x542.google.com with SMTP id z188so2386114pgb.1;
 Sun, 10 Nov 2019 16:52:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id;
 bh=7JBZMDJ/jQpvGVhkPi30utKHejoieOrOST93jaHrfvk=;
 b=uuUZTZU4ugdpCAeFHhqDRbg8HA2vYG1ELckLdXzZrkOa3J9YX3rpx3TUbe8gn8j/AR
 cW5MPpJLNwnQ2F6EOJLzuA8WXQ3RIAbH8AJyX4vZzXgLuTOkCVTyYDA6k2a1JZ80GdMd
 Kwh3FoIyH3SpQBLtdPaOnPCpLIOEZHFcm+CLf2vR2PyuuwtltWXVipmyjbIubmZGRDgO
 KToeWqkbgRtYlXi0Thd2U3BuG2RX6WQjpmMrUvY/LlAGzY8g59ZK80J3c3IrGz5VdRyV
 Yxs5nqzGGqk+axRolveimuomUZoMc8EPNzCZiqwvjYhvsXjykpQnV6m5OhkFP7f2wcYA
 lFdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
 bh=7JBZMDJ/jQpvGVhkPi30utKHejoieOrOST93jaHrfvk=;
 b=FamIYBhCUt83gNSp9QppQMhh3WsgrwMXnElnEq5cynRtgu1Awy37Sg1NKYZffFEfmd
 oIagHqQj3sndcnlYMXzrAyF4PJ5pccgvVzaw/P9XPBZ4vfPNk2HHX+04L8vhPMgtppXc
 YlXDxOtvnpI2uolJiYXs3p39inRl3v8T3iozQw/i+mPM2j8xDYqtFaLUtyg7qGOCi9nL
 bQDZ8P1rZRBqR2RlOlcR5A7t+8nQWv9ujZlttInwxKZ1VBDf/jzohpgF0oRbCwJxj605
 SKh/u4FVBScoWs4W7NHqgCqPTCCGEPg8hV5wdhKvTuqAKK2Dh+Qpt5PLDyaGh6263WyG
 fXAA==
X-Gm-Message-State: APjAAAWAFI91cqqSBKvAPCCfDRZtcnbFeN4YAsPI9+k2w7JFa0ivzZ6m
 A5rgT42focsqItCrsQQCOb0=
X-Google-Smtp-Source: APXvYqwDRChvidhBwhHK5/pGQamQPfZb8pb7/YDluV+1KaXPBs9O8AoWBZkEJTB4TUYKdk4p9DdhvA==
X-Received: by 2002:a63:f94e:: with SMTP id q14mr21190084pgk.411.1573433538888; 
 Sun, 10 Nov 2019 16:52:18 -0800 (PST)
Received: from localhost.localdomain ([103.29.142.67])
 by smtp.gmail.com with ESMTPSA id e8sm12449215pga.17.2019.11.10.16.52.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 10 Nov 2019 16:52:18 -0800 (PST)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH 1/3] arm64: dts: rockchip: Fix min voltage for rk3399-firefly
 vdd_log
Date: Mon, 11 Nov 2019 08:51:56 +0800
Message-Id: <20191111005158.25070-1-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_165223_462403_FDD34405 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kever.yang[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Kever Yang <kever.yang@rock-chips.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The min/max value of vdd_log is decide by pwm IO voltage and its
resistors, the rk3399-firefly board's pwm regulator circuit is designed
for IO voltage at 1.8V, while the board actually use 3.0V for IO, which
at last lead to the min-microvolt to '430mV' instead of '800mV'.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index c706db0ee9ec..92de83dd4dbc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -206,7 +206,7 @@
 		regulator-name = "vdd_log";
 		regulator-always-on;
 		regulator-boot-on;
-		regulator-min-microvolt = <800000>;
+		regulator-min-microvolt = <430000>;
 		regulator-max-microvolt = <1400000>;
 		vin-supply = <&vcc_sys>;
 	};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
