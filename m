Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E4918450F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 11:38:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=woLsRGmainesgdTxo8gT/Ti5eeSNHHrjEwh5s6EdYYU=; b=YpGxQ+5VPYTf6rj3UvqPINHlRL
	+Bc0uB/+r2XmczHxgd3HrCtPTW5aR+VQXX4TPks6cATIz/HVfEI0UfQ51mnbqXjXwL2qRnQY+d9xJ
	z01DQlhONo7HcmvnhKLD3oLgXBqs9zedNZ3+ZfyMyj5ZK+jBWprdHNyZyokM6RbbQ47PHDtd7lrOV
	bV9W2e8yohfINOhl7eNa6uLO0Q8axwFCMq1upi8FTq44JkErcUZktjd3PoUxV+ZNjya5Apt2Xos0O
	T0JYkefa/h9K2R6AroiUIMe24X/4oOgrDdR7hROQACPv6/Sy3jYfB7LlBXZ7y/oOvJo87S1k/zOPm
	6hkoKSQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jChhZ-0005rI-Jn; Fri, 13 Mar 2020 10:38:01 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jChh9-0005eM-Em; Fri, 13 Mar 2020 10:37:36 +0000
Received: by mail-wr1-x441.google.com with SMTP id r15so11423425wrx.6;
 Fri, 13 Mar 2020 03:37:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=k4BHlmlIIly19yAcT+U9SlSGDpikfNDuftvz1GG3NyI=;
 b=n+VQkJt4keLrX9Z1cmab2rKVIEKUzaRGvqgCHicwB+TzWWb5sc/zEKZvz0m2BFBtYY
 2VfKrgvos4hhjRRo0Lig266Xz4lUDFlz0+LWVKUa42psEC3f5hWh6veiR84uBFMKuSWL
 MKTsF0XdvTidRIbMHj1jEl5I+pK2xg7chztbVijEKZMNFzrJvT1KlcPd17Bq8QUtIYQ/
 3/ktCL+6KVRPqV18k3mAf5q+3wzF2sw8GuTnE9SMeZdrJpXsH5W/RtNXsGNBll9I0a6u
 ScfrJyaHFuO36hRHZeXmlB7kheCnmgP0rirvPSvk2hiuMkLJ3e3Wxxu4WQqno5EXcjsC
 pN4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=k4BHlmlIIly19yAcT+U9SlSGDpikfNDuftvz1GG3NyI=;
 b=XIDhC/n4++qG9zEk2OBTsY5jrT3Fnz4qwDsO9MZIuA61S2Jfxq2mXEduD4/6RFiAp2
 oANbdgqVk3QxnTMuQbMzkluUrKYFvBLV3UzN+ZqV8Ka4blj58Vo/ePdBpvJ4Vp2TIG57
 P4YNVjacSH2D7QPSdwDcKd3ew+HsLowqnmP8UnCDXQjWqZ7qlR008D9wdC1adxcHLOuQ
 3I/SjSdy9rxjepfxCPJ/Vd+mnxfULWExibqdSdLb1W7w2ODPmMOHXco+g/6eLWaEJiLR
 JsM5CvhIUW3Gm44CFeDUxXXbHRcRT8RZSpY+y8lFN7hQAMylowFUI88N6Dp19OZx8NvQ
 KX8g==
X-Gm-Message-State: ANhLgQ2YS80gIPN/M19ZgU5pXHcxaoACSWCZLJH2+k9HiAEn9L44eP8a
 EP82rZzGjQ8kG5ITVDNkTA8=
X-Google-Smtp-Source: ADFU+vsCE/NjGMEqAImu3YZBGZWMwPRv2f7D0Xn0qVCk5kqumgbi15H0AYaphrhjWzVuCayVI52zQA==
X-Received: by 2002:adf:fc0d:: with SMTP id i13mr16858848wrr.364.1584095854238; 
 Fri, 13 Mar 2020 03:37:34 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id o3sm17688551wme.36.2020.03.13.03.37.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Mar 2020 03:37:33 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v2 2/2] arm64: dts: rockchip: add missing @0 to memory
 nodenames
Date: Fri, 13 Mar 2020 11:37:26 +0100
Message-Id: <20200313103726.1678-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200313103726.1678-1-jbx6244@gmail.com>
References: <20200313103726.1678-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_033735_491248_CD5E8463 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
