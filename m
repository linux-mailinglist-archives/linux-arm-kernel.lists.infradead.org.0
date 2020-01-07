Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2597B132F0C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 20:10:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nzXHdOwpRzatEZ+52b092sy1olSDKRrccttDnUS4+0k=; b=AzR
	z3svFRu/HSJyrMbMHqO3agScPd5WI/xV1ZLPqSDNXt/wH7UpQ8fLvlLyNoo/Fq08yf1FnVHWbqfaW
	Xsl5asfVNGoZO+zxrLznQFvY/hBloOzV5YRA4HLUdlAJ0OglLZw8UK8K7mW6G0JyKdfkF1xQSDulN
	9Uph3tcTLxao/6S8ZuP2vjmvesuN+f59Ov9JsJhM0yWXzphzynlKPpoet6//oF128LznlEQ1vN31Y
	R+E1DM5L6CqRFUQhYT4Z/Af+Pd4tBrgDV0vrEwfeu1STlLciNR2JCLMiMkL0aHyGA6cH0p8E4G9kl
	ZI4yxo4vyUkasEvM/M5/29im3YenxRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iouFO-0002Lg-Js; Tue, 07 Jan 2020 19:10:34 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iouFH-0002KS-Om
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 19:10:29 +0000
Received: by mail-pj1-x1041.google.com with SMTP id bg7so190057pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 11:10:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=udxb2nz6/O0HfR1mRrdKFyNfS9Q09XXu4H95tu0JCZs=;
 b=acgjS9YUAcyPamemAb1Nj3Ec3zSSVYS9z7m2SeFGysjQJcpak11/bjEbqTf6TsZ5/Z
 nmZMY8WoZI3nH5qzbrPt/udBt8ITZwOFx1ogVStEHvnKQ6IgBS62CPOpoku7bpS5OcDw
 AqoDnrqlfHeWBxKiXghnmOEZkWYNGx+rwe2NdGja40iLS1Hac0lyATVyYqEePrC7+jQX
 u8l0N/qIn+fvT25hJGnUjeDuEwxQRiLC+ydXDaz2N1lAqJkR5NGp8N/WeEkO7BbndWzs
 xZlFQw4Y1Zx3kKGJWSkaI01JzGj/MAyxn5wrURDHPv5tnz/xrKBT7SoYsGbsCgJzZGzu
 KgUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=udxb2nz6/O0HfR1mRrdKFyNfS9Q09XXu4H95tu0JCZs=;
 b=JXxrGOaHG7m4SrlS9Di4+maGd84Zhjjhhxvn7MAmWe8/Xl/gOolDsu8XTMlUCtgRnA
 DdCuuXiyfKetrPB3+w2TsbHt95E0eyZytq0vqtuwcAaoVnLV5BNS6p1h2SOok0uVRj94
 Dtp8WhIOXu3UT6Nc2qeEvXtcKPT+rpG5suPPr9BqOx2xzjbtaCkbEUScZPO2Fs/v3eHb
 hx95L4vfIIa/H4hrrSxzlQ6c6E3dkO4qi/+I2orw6DhLk5K5M8vIL8gqGA+ZkmPAf+Fk
 bjUKoKiYmfj0vrw7PkapncM/jgWlhhzSppdtXP+JvJngAJaGlKct+d3l3MFgBwi3klRe
 takA==
X-Gm-Message-State: APjAAAV41hpbOOuQuZ2Zjr8gbQipzRaLxExhV5Q2K20jALHi6mg4nwn9
 wqnfSpmCWv1H2aAjNzDpngc=
X-Google-Smtp-Source: APXvYqwDRiU7nES6NK298Wl7FIXAxcCBKJmxGZr5Hcbhc7ypDJiUD4Wl4SjDYqFbTiKPrv8b7Kk8wA==
X-Received: by 2002:a17:902:7c85:: with SMTP id
 y5mr1141774pll.227.1578424222460; 
 Tue, 07 Jan 2020 11:10:22 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id s7sm324776pjk.22.2020.01.07.11.10.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 Jan 2020 11:10:21 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, kgene@kernel.org,
 krzk@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] ARM: dts: exynos: tiny4412: enable fimd node and add
 proper panel node
Date: Tue,  7 Jan 2020 19:10:20 +0000
Message-Id: <20200107191020.27475-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_111027_805988_72074402 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yangtao Li <tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable fimd device node which is a display controller, and add panel
node required by it.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
v2:
-update commit msg and merge to one patch
---
 arch/arm/boot/dts/exynos4412-tiny4412.dts | 25 +++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm/boot/dts/exynos4412-tiny4412.dts b/arch/arm/boot/dts/exynos4412-tiny4412.dts
index 01f37b5ac9c4..3a91de8a8082 100644
--- a/arch/arm/boot/dts/exynos4412-tiny4412.dts
+++ b/arch/arm/boot/dts/exynos4412-tiny4412.dts
@@ -66,6 +66,31 @@
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
+};
+
+&fimd {
+	pinctrl-0 = <&lcd_clk>, <&lcd_data24>;
+	pinctrl-names = "default";
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
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
