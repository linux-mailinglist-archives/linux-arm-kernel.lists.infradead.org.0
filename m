Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E7A17C370
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 18:03:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GDJpt+/8axbAozKAKPHIc1hAeYOM23FBg6ouaIePtgk=; b=t5wn6za6hPFDxE
	8NIM89iWfTbu5bCSu8S/Ag8u8Mt/wagTjhWwPUr3fYUU73wqf0r3gfCzDZDUXVtGD8gZBtBX1/4wE
	YrF3MyEXDbFny3RKkOSp04SV10xddMq8h7AB+kcnW3zx3nug7CzAaTwvL+jh/iqn65H1PjcQqECsx
	xtPP2gxMLiQeiCI+hBeW3D6I5eddCbmxMdXxcTm5pGrGrfb/MVeaGdv3oeXZ1YCncKmII/+NFwbCj
	wHiOd1R+Y87jHRp7BfihBmQUKr9cCAYk6rgU2kfsWijb5PlUl3UWOzhxeREnqK41XKlLLSZSp0P5m
	u3z47p4FppZZ4a/55NqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAGNR-00009r-As; Fri, 06 Mar 2020 17:03:09 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAGN6-0008UD-TT
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 17:02:50 +0000
Received: by mail-oi1-x241.google.com with SMTP id t24so3232272oij.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 09:02:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2MFc1XVpBGgk6AEcnsNBIvE9WhmmAcbUo/Cvs2xI85c=;
 b=RpPj9Y5q4+UJn9pW/b7Kwdrg3bhORj+0YM/8eBslXez9OwpgpeOt6UHBJPfOu92wJ2
 852AAeE2hTCZLHKpR3LXX2NcUiFqQ8kcOLS0ZnNUnS4ZOP6VJSaYrmFEz8le4qhggVaa
 pKBiNNpoRQgcVK8GUQWwQ4wFRUiJZkIlhUoH36ewsA+HX8Zz3h0yM45u0fJ3nXVEU6L9
 oORvrLHyd/alUSBEd73siT+jnOReoL/x9mgT9AGRpDOrFLsPA8GXtEAhRyfvl6gJfDh8
 Ev1AgVzuDQaDfamdchvdXXrYtXy1bQ9EZQXJ/Wt9BzTn1DMsGrMbJnUgqzkSL9Anv+4n
 7TjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2MFc1XVpBGgk6AEcnsNBIvE9WhmmAcbUo/Cvs2xI85c=;
 b=Pin+Q7PyZz7544hN3LPpoVKGkJGKeRejBSTv5PW4zFIQV5VshQ2gijRAvCdwlDm8wk
 BYkLQ5CpVtXdgEd+kQ5bDZLil3MxWzood1kS4P/X0TiB5RPPBTzs+J7DhVnH83jP2dTW
 S68Y0fE/1l2CRG4fzGyCWeCLllhn44PVMOv6B/il7o3XOT/r4IYNcdPVUHV1mbk/pRzB
 VMM8SWIbGzeatszpCzeNgz/9LubiaLpefWQ+DqTKPdfsZbXmtRbnXbOcOB6vUuR0WpHn
 P2tsERrqOhS+P8eUXLGu1OVqCIhrcBMxbzPPWN7uC4xoMgow+olmy/gudKh1wSsKd7tb
 rDzg==
X-Gm-Message-State: ANhLgQ2FPk/m+67SytHrTTw9XkHZz5fp/PPpDmTxHXt8tHzuVAdMsym5
 2az1JJhcBqNFJxOOKq5Tpdo=
X-Google-Smtp-Source: ADFU+vtYviDTTw2iA0J9RyZkZwYpL04cVYUjDVyejtYkAWydvd+wZPz49nK+4daEeyjDhKT92rwoFg==
X-Received: by 2002:aca:3081:: with SMTP id w123mr3017028oiw.31.1583514166604; 
 Fri, 06 Mar 2020 09:02:46 -0800 (PST)
Received: from andrews-mbp-2.austin.ibm.com ([129.41.86.0])
 by smtp.gmail.com with ESMTPSA id t9sm11550743otm.76.2020.03.06.09.02.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Mar 2020 09:02:46 -0800 (PST)
From: Andrew Geissler <geissonator@gmail.com>
X-Google-Original-From: Andrew Geissler <geissonator@yahoo.com>
To: joel@jms.id.au, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] ARM: dts: aspeed: zaius: Add gpio line names
Date: Fri,  6 Mar 2020 11:02:18 -0600
Message-Id: <20200306170218.79698-2-geissonator@yahoo.com>
X-Mailer: git-send-email 2.21.0 (Apple Git-122)
In-Reply-To: <20200306170218.79698-1-geissonator@yahoo.com>
References: <20200306170218.79698-1-geissonator@yahoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_090248_966602_8DD300F6 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geissonator[at]gmail.com]
 0.0 WEIRD_QUOTING          BODY: Weird repeated double-quotation marks
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 FORGED_MSGID_YAHOO     Message-ID is forged, (yahoo.com)
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
Cc: linux-gpio@vger.kernel.org, openbmc@lists.ozlabs.org,
 Andrew Geissler <geissonator@yahoo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Name the GPIOs to help userspace work with them. The names describe the
functionality the lines provide, not the net or ball name. This makes it
easier to share userspace code across different systems and makes the
use of the lines more obvious.

Signed-off-by: Andrew Geissler <geissonator@yahoo.com>
---
 arch/arm/boot/dts/aspeed-bmc-opp-zaius.dts | 37 +++++++++++++++++++---
 1 file changed, 33 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-zaius.dts b/arch/arm/boot/dts/aspeed-bmc-opp-zaius.dts
index bc60ec291681..4bcc82046362 100644
--- a/arch/arm/boot/dts/aspeed-bmc-opp-zaius.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-opp-zaius.dts
@@ -478,32 +478,61 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_gpioh_unbiased>;
 
+	gpio-line-names =
+	/*A0-A7*/	"","cfam-reset","","","","","","",
+	/*B0-B7*/	"","","","","","","","",
+	/*C0-C7*/	"","","","","","","","",
+	/*D0-D7*/	"fsi-enable","","","","","led-sys-boot-status","led-attention",
+				"led-fault",
+	/*E0-E7*/	"","","","","","","","presence-pcie-e2b",
+	/*F0-F7*/	"","","","","","","","checkstop",
+	/*G0-G7*/	"fsi-clock","fsi-data","","","","","","",
+	/*H0-H7*/	"onewire0","onewire1","onewire2","onewire3","","","","",
+	/*I0-I7*/	"","","","power-button","","","","",
+	/*J0-J7*/	"","","","","","","","",
+	/*K0-K7*/	"","","","","","","","",
+	/*L0-L7*/	"","","","","","","","",
+	/*M0-M7*/	"","","","","","","","",
+	/*N0-N7*/	"","","","","","","","",
+	/*O0-O7*/	"","","","","iso_u164_en","","fsi-trans","",
+	/*P0-P7*/	"ncsi_mux_en_n","bmc_i2c2_sw_rst_n","","bmc_i2c5_sw_rst_n","",
+				"","fsi-mux","",
+	/*Q0-Q7*/	"","","","","","","","",
+	/*R0-R7*/	"","","","","","","","",
+	/*S0-S7*/	"","","","","","","","",
+	/*T0-T7*/	"","","","","","","","",
+	/*U0-U7*/	"","","","","","","","",
+	/*V0-V7*/	"","","","","","","","",
+	/*W0-W7*/	"","","","","","","","",
+	/*X0-X7*/	"","","","","","","","",
+	/*Y0-Y7*/	"","","","","","","","",
+	/*Z0-Z7*/	"","","","","","","","",
+	/*AA0-AA7*/	"","","led-hdd-fault","","","","","",
+	/*AB0-AB7*/	"","","","","","","","",
+	/*AC0-AC7*/	"","","","","","","","";
+
 	line_iso_u146_en {
 		gpio-hog;
 		gpios = <ASPEED_GPIO(O, 4) GPIO_ACTIVE_HIGH>;
 		output-high;
-		line-name = "iso_u164_en";
 	};
 
 	ncsi_mux_en_n {
 		gpio-hog;
 		gpios = <ASPEED_GPIO(P, 0) GPIO_ACTIVE_HIGH>;
 		output-low;
-		line-name = "ncsi_mux_en_n";
 	};
 
 	line_bmc_i2c2_sw_rst_n {
 		gpio-hog;
 		gpios = <ASPEED_GPIO(P, 1) GPIO_ACTIVE_HIGH>;
 		output-high;
-		line-name = "bmc_i2c2_sw_rst_n";
 	};
 
 	line_bmc_i2c5_sw_rst_n {
 		gpio-hog;
 		gpios = <ASPEED_GPIO(P, 3) GPIO_ACTIVE_HIGH>;
 		output-high;
-		line-name = "bmc_i2c5_sw_rst_n";
 	};
 };
 
-- 
2.21.0 (Apple Git-122)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
