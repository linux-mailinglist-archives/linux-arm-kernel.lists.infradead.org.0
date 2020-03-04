Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60345178B8C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 08:41:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=woLsRGmainesgdTxo8gT/Ti5eeSNHHrjEwh5s6EdYYU=; b=JFo6JE8b2XPS1udUpbU+fT1ZAN
	+SNAHlU1ccwb0tRaHGgi80xemu3/z2wHMvgCCQwVZUruDCO7rCU4maDJ0IKIgAdRA6VLgCljTN2As
	dZp1O6hF45kQ1efDqSgyMIhLdsuOKUEpSMncq+I8/gSrcKgVoW5WNel/k3IPj0QkwebMO3cqg02+/
	1L4QroUR10BlpTR1eQKes01d2pDuv4Wna51Bk7zDLKGOO6YhNWvQUA4l5ycpkld82wEQWJ6++XgUZ
	1F4GZvhxqqpzF2zkCOdjDz48w4j5Mtm8jg6/SDe5L7c4VP5Hk8u/P2R+R8nyXu4wKK4GBZmy6HxCq
	TK4IyEgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Of2-0004LV-8z; Wed, 04 Mar 2020 07:41:44 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9OeN-0003pj-Tl; Wed, 04 Mar 2020 07:41:05 +0000
Received: by mail-wr1-x442.google.com with SMTP id r17so1060263wrj.7;
 Tue, 03 Mar 2020 23:41:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=k4BHlmlIIly19yAcT+U9SlSGDpikfNDuftvz1GG3NyI=;
 b=c0xQuwHhk9JwKgTYK6r9zATBdT8/BEfX5u82mAw7YYFnnoo0VBAj9bhPdH7MlkajWW
 QzplPQBg07XeOGjHE7OrdajnzhLRw/x7Sx6VI7jH6KwYfaUuvCef+JAEZst3u2yJkZgG
 GkuC2q2u40I7iCUs7VUqd377iljejFdIH9S/cG7j4doP+wuLme/rLqP1Cc+k0T7uMJLW
 Hda2TU2esakWqOSoozZqKsU/k910Z5ih19rB21r9YWePl+XtiPOeHY5e1iAo9W13m0g+
 yWN3355quPmPbSfixbpoy0fAVQ5+AwE5HolSEUeyKPnPXzKWvuXUskBofwyqL6gLimuM
 VaNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=k4BHlmlIIly19yAcT+U9SlSGDpikfNDuftvz1GG3NyI=;
 b=hc0assmW+nBHn6kV/uHtGj8gvWaAhwoZA470T4aY8NUAfTptdCE9H99Mg/X9rVnMKQ
 quqPoHg35jLwZ8FjyUcTY7lgdVzszNHLkdZ1LefEgNpTHtWI22YhRKNrJGLJtdCx3PBW
 0GHTgS+jHtqi94hW/IRyLImAy+vdqACAlweXXQk9nBvP2Bbf+ydNCNghNakLpX4B446o
 8Lp+ev3fCpZfptifLtZdwzxGE7DYVVAUYuaL0d1avLpZ8nGFo53bjH+/T4TR6Ber2zV4
 uZVhDYnf3dn/UDvl4ShfpIkGpuuwEHH3zJh1RRegDKBY0oV58b5svNjmeUaBHy451n0c
 FfLA==
X-Gm-Message-State: ANhLgQ2/diENlaxKqGx/2NltSU3WEKc2qIHnb/3Jx6/+H+Uolg6rNVkg
 46U6zxXLKBUmQSknzuD94k4=
X-Google-Smtp-Source: ADFU+vv8LNXPX7dYoNHaEhkEjhyz2UCIJBozg6Jxq3WaU7ecnwHbK3BvyAVbfXxhgix9tDYSyj/LMw==
X-Received: by 2002:a5d:4f85:: with SMTP id d5mr1735598wru.130.1583307662453; 
 Tue, 03 Mar 2020 23:41:02 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id m16sm6410530wrs.67.2020.03.03.23.41.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 03 Mar 2020 23:41:02 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 3/3] arm64: dts: rockchip: add missing @0 to memory nodenames
Date: Wed,  4 Mar 2020 08:40:51 +0100
Message-Id: <20200304074051.8742-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200304074051.8742-1-jbx6244@gmail.com>
References: <20200304074051.8742-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_234103_957119_1F0ECCF0 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below gives these errors:

arch/arm64/boot/dts/rockchip/rk3368-evb-act8846.dt.yaml: /: memory:
False schema does not allow
{'reg': [[0, 0, 0, 1073741824]], 'device_type': ['memory']}
arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dt.yaml: /: memory:
False schema does not allow
{'reg': [[0, 0, 0, 2147483648]], 'device_type': ['memory']}
arch/arm64/boot/dts/rockchip/rk3368-r88.dt.yaml: /: memory:
False schema does not allow
{'reg': [[0, 0, 0, 1073741824]], 'device_type': ['memory']}

The memory nodes all have a reg property that requires '@' in
the nodename. Fix this error by adding the missing '@0' to
the involved memory nodenames.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/
schemas/root-node.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi           | 2 +-
 arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3368-r88.dts            | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi b/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
index 1c52f47c4..b9e2e4bc0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
@@ -12,7 +12,7 @@
 		stdout-path = "serial2:115200n8";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x0 0x0 0x0 0x40000000>;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
index 6cc310255..9435008d5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
@@ -15,7 +15,7 @@
 		stdout-path = "serial2:115200n8";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x0 0x0 0x0 0x80000000>;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
index 006a1fb6a..cf11175ec 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
@@ -15,7 +15,7 @@
 		stdout-path = "serial2:115200n8";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x0 0x0 0x0 0x40000000>;
 	};
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
