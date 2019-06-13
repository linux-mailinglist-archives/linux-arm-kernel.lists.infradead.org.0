Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF07446A5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:53:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YrZztpkuKrtlJZ0sLT6VquZs6gAmc71pHCO1mx4+zwI=; b=hCh97ScO0W4VaH
	1xywr7TZvHqoEi03Bfo374gEXlYNzvoNOcV3Z0JquGiO/aKqbqZWOi/NX7kQ5OD69gOs67lWU5/V5
	6EWbvrv419X/HPAuwj8ng4kuQd1XUA6gzNfR6ca7QKrmHOpl/X3Ryogzn7Afxu9d6lUcZSczW/Gwo
	MErhU3HJrRHzSDKEAw4c0y8/gd0Lz6hzs69im/cxyGJEivdCATR0kaeRhwpDsd/8jkybGszArweDU
	qwHfXIpWgYfw1QDqWaYDeuki+WHZJgk9ofvjM67DLtYGESCp/mFV6i52E5VWu1w9x+wP9n7+x50xh
	tVe7Yw3NjMjipqZfYpfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSyy-0004Hp-EV; Thu, 13 Jun 2019 16:53:48 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSyk-0004Gr-RK
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 16:53:36 +0000
Received: by mail-wm1-x341.google.com with SMTP id h19so7033481wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 09:53:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Xo+8K/7HEyUS1rYNunK9octJlI7FpY8zAV41iZk/7W0=;
 b=cWVixu446QAAW5gfz9ln0uVRjzMyXoGtTwa01V440cB6noOTLHB5AHACm02ZhD7pOa
 m9tIYn8gA+Eq7DMMVvRRRinPz2OFWI5oX9/dK4tJDUlnxbRQOcqYAJ2hxeGDlQJCVdJV
 oT3a73Qcr9/qHwbxD6mi3puZgzKwb9srFbqfvalDMsPL1fbmkF01rNS4+x3jfdkr0GKh
 j7ChSVzsS140a5rvU+AQdxmw8KVq673i7sjWdICI3a3G8XKynqQuSM2YsZN9U+yjNKP+
 D+0BDC6TxjZvb6e2b7u5ziIx82tavzuYTrV6oxeO1WITlVv7J8DN8Cisja5W9yAP+NLi
 3W1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Xo+8K/7HEyUS1rYNunK9octJlI7FpY8zAV41iZk/7W0=;
 b=Nm9NQbdLWkUkdokPJBqgycucyCTaCYwcCHWNfUpiHGsv/ePx55C4/x3DsmtJTAeFfR
 mbEyltVFavyxAxj85mq1VaXBEt/vbPVX/A4w42wRr5x4fx5FZN07ZoBcaIx5Rraz1/U0
 GDMI26HvX3KDJGcNALbKwgaiXJdUHQ+KV1b3GXel8rGgHX+c1ZYxp02GVP167bioqa8E
 2FTWnljGbGWEbVwHBtfSP8drBlvLCTnBnbAo0BKM+n0ZUH+50yA7LlsVAiWg3GgO3Iht
 bqM4kSn7Jtg1/861grI11r+6AZQrR431AsEmhEc0caWJtP6hGndvRJamDbK6acFzcgq2
 D2UQ==
X-Gm-Message-State: APjAAAVvP8KuePX+tHLALgzmJrLBLp27veVeS0qcwa7avKnwbUdLe83K
 xaOb7HC2YuUWXDHRoIMg06Q=
X-Google-Smtp-Source: APXvYqzxHZekdHxI54daZODLw4jqiBKpvYkD8jNkkJUk1u+uHMWSD45JwxHrswC/4d3TWb7a6Y+/Sw==
X-Received: by 2002:a1c:5453:: with SMTP id p19mr4053864wmi.148.1560444813439; 
 Thu, 13 Jun 2019 09:53:33 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id l190sm559800wml.16.2019.06.13.09.53.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 09:53:33 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 1/4] arm64: tegra: Add ID EEPROM for Jetson TX2 module
Date: Thu, 13 Jun 2019 18:53:28 +0200
Message-Id: <20190613165331.8689-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_095334_889643_7941849F 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

There is an ID EEPROM in the Jetson TX2 module that stores various bits
of information to indentify the module. Add the device tree node so that
operating systems can access this EEPROM.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi b/arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi
index 38ad1053f21a..4bbee83d9943 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi
@@ -124,6 +124,17 @@
 
 	i2c@c250000 {
 		status = "okay";
+
+		/* module ID EEPROM */
+		eeprom@50 {
+			compatible = "atmel,24c02";
+			reg = <0x50>;
+
+			address-bits = <8>;
+			page-size = <8>;
+			size = <256>;
+			read-only;
+		};
 	};
 
 	rtc@c2a0000 {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
