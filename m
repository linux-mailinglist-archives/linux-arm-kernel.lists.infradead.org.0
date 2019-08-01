Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3CC7DDC7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 16:24:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7CI9JXONkB+gjFBBs937RFU6gdGNZU9Dkjmu46DnvAk=; b=Wqw
	bFT9YbyeTj3UlYDE7Fmi+sJWIr4GoXnL7SnARkbx+AickA4SOOYM+Nn5Ez9SKvkFAuCMOnIfGcMXe
	hOdUZfmgCCcZrR0l9VZ6MUm23PMbgnBf48bJ1uIubEhZuW9W3y5qtiHPLWhPibMT6B80+Aq+CbJlW
	lgZAlT7iTSMD1MhSE13sBlpc42vdr6lRx5whfaZ5hHXvYzKHLkwDJSNc4YuSPVx/+rEi0ro1JRFKw
	ogJ6zKFwRVV+zPE1jLVLxb88BDZOWI8PZtiIg7fgIeFacw0ndUGyi38vKz4ZpuIuP16s1T0k3JyFL
	YVQhIZbAxxHNQJmwrZ7eIwEUmn/mZUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htC02-0007ll-0m; Thu, 01 Aug 2019 14:24:10 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htBzb-0007Xn-4p
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 14:23:45 +0000
Received: by mail-pg1-x541.google.com with SMTP id k189so15258120pgk.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 07:23:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=gEHkLVhFpaWyVkOWtSOnh5cikq+qzc45obgcO+XHLmI=;
 b=S9pbw3QLBQrAGR1FPGl4+HGr+DUGn/RFUHFTpeMdQ3sQs73nnvlcG82KrdI9/EEBYz
 Zq/8ugI7UdsJll7Avws1B2d/sLbI/ie89wuUQqouqLBYrM/c6x6u+WN4vGvQVipK/214
 VJfAHP2jAeAN/iGReraGLvC3O4IMNydK02ZxJ0TlzYxuy8TUJCPnllwF+RhoPkFhdxtI
 WeUe08RCT8YwJzgzQ7TnjZPNWsgn95WhtOtBcJKgJUvQB1c38MgF8BnnzfnumBhMsLeb
 tRVbAf1GBlj35cZXcb10a7wDLhraDUg1Q8aK+pAbwl0aYkJsjeoHx6GWQ44e4GfFGfHP
 21PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=gEHkLVhFpaWyVkOWtSOnh5cikq+qzc45obgcO+XHLmI=;
 b=DekjN9ItpsU2BTMLZjqo/ZXlv0TSDKYZ6DEKCvQQvosCHor9QSmlDceWyJ9UzwFkdY
 yiIxR08RrLPxeyeunQwMtEf65RWfmemj+59t4VpYX4LBpQAH9gcJKfyci8EVVNk6d0I6
 CttiJJIlecAcwbOu3iV1nlFWMdrMrIvNKBUU2kGlspmGnwpeB0NkohOdGZlncwrOa254
 o/Ja8RLIAn5+DJ8EKV088L2OwVzp1Rnq6uk+79Wt2npSPMKPDF8rLG3KuE2fEjmuhlrW
 tRzXFF7RIQgtTFXduArvT1luBbDWc7jFxOeoG5Tne13wr41EXM+9zYIZSYbYnWR8Yvue
 me/w==
X-Gm-Message-State: APjAAAXOoND7ah3Ki8l5tLbTKXIzhNjal/er7no7aC409pmO8rAcBb73
 d6A1ydSWZZjbhKoxNKbFlAo=
X-Google-Smtp-Source: APXvYqwzFLQLK93RztXK1efleqDv65R10XUo4b8mRBiYQQNyRFopUWRdlAyX8rpFzlRV77f0hiP1nQ==
X-Received: by 2002:a63:561b:: with SMTP id k27mr19892459pgb.380.1564669422641; 
 Thu, 01 Aug 2019 07:23:42 -0700 (PDT)
Received: from localhost.localdomain
 (p6796086-ipngn28101marunouchi.tokyo.ocn.ne.jp. [114.165.92.86])
 by smtp.gmail.com with ESMTPSA id s7sm4217689pjn.28.2019.08.01.07.23.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 01 Aug 2019 07:23:41 -0700 (PDT)
From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH] arm64: dts: renesas: r8a77980-condor: sort nodes
Date: Thu,  1 Aug 2019 23:23:34 +0900
Message-Id: <1564669414-22553-1-git-send-email-ykaneko0929@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_072343_626780_58741311 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (ykaneko0929[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ykaneko0929[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Magnus Damm <magnus.damm@gmail.com>, Simon Horman <horms@verge.net.au>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sort nodes.

If node address is present
   * Sort by node address, grouping all nodes with the same compat string
     and sorting the group alphabetically.
Else
   * Sort alphabetically

This should not have any run-time effect.

Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
---

This patch is based on the master branch of Geert Uytterhoeven's renesas-devel
tree.

 arch/arm64/boot/dts/renesas/r8a77980-condor.dts | 42 ++++++++++++-------------
 1 file changed, 21 insertions(+), 21 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a77980-condor.dts b/arch/arm64/boot/dts/renesas/r8a77980-condor.dts
index 5a7012b..3dde028 100644
--- a/arch/arm64/boot/dts/renesas/r8a77980-condor.dts
+++ b/arch/arm64/boot/dts/renesas/r8a77980-condor.dts
@@ -22,35 +22,20 @@
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory@48000000 {
-		device_type = "memory";
-		/* first 128MB is reserved for secure area. */
-		reg = <0 0x48000000 0 0x78000000>;
-	};
-
-	d3_3v: regulator-0 {
-		compatible = "regulator-fixed";
-		regulator-name = "D3.3V";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		regulator-boot-on;
-		regulator-always-on;
-	};
-
-	vddq_vin01: regulator-1 {
+	d1_8v: regulator-2 {
 		compatible = "regulator-fixed";
-		regulator-name = "VDDQ_VIN01";
+		regulator-name = "D1.8V";
 		regulator-min-microvolt = <1800000>;
 		regulator-max-microvolt = <1800000>;
 		regulator-boot-on;
 		regulator-always-on;
 	};
 
-	d1_8v: regulator-2 {
+	d3_3v: regulator-0 {
 		compatible = "regulator-fixed";
-		regulator-name = "D1.8V";
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
+		regulator-name = "D3.3V";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
 		regulator-boot-on;
 		regulator-always-on;
 	};
@@ -90,6 +75,21 @@
 		};
 	};
 
+	memory@48000000 {
+		device_type = "memory";
+		/* first 128MB is reserved for secure area. */
+		reg = <0 0x48000000 0 0x78000000>;
+	};
+
+	vddq_vin01: regulator-1 {
+		compatible = "regulator-fixed";
+		regulator-name = "VDDQ_VIN01";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
 	x1_clk: x1-clock {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
