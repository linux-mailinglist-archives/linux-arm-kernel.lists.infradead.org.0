Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D32EC1D7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 12:30:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WIwgg64Ii6QNyj+dSX/SMddnvdwATiGKKKs6P9ribrQ=; b=sw7hf1/JXbl6xr
	ADo4cEVuycAsZ5Yr4CYzgPByLJpcUMPu+YqjG7n6gA2HfZfdPrwVh+EYGKN/RuXs1jLr4gP0NRZrm
	dFxK4TALh9CWy+QE9zL9hXz4DBZSSOOi733SJMxCeamyGhKrcLgh+0jnnCLT+iB9L1XsLdOxccw2y
	ddWAh04KHuv2TaH6/ADVLU2xitDs+lx02MhBKMez5YwJ8HAeSnHxg1rQr1Q+BHtLcSsk6EkaDwfER
	zEGA2MNnqRbajfOjsRplpF4XarEiplyKN4JejRqABP6Y2DBXtu1dpjH0BPLbzEQuPbHPLHw0zEzAC
	LnS8D7FLsRbfLq9VIwZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQV7u-0006To-OG; Fri, 01 Nov 2019 11:29:58 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQV7X-0006Ev-QF
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 11:29:37 +0000
Received: by mail-pf1-x444.google.com with SMTP id p24so355580pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 04:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=T4yR60OY8mdfdPHyuNjXPb3G3l2Y7DqgyO8YNCtTTi8=;
 b=saeMX5o9o7dLOr8zbt7HBdYkfDgKvi+dBZr1DhL8Cs0mymsTne+VwQ8Zyx5D9TI4u3
 94RWplO4PbbkYUGGCnlU9UmAyaeZzJLYjGHDvOJL5zVL8gAe005jwR0pCqm5IUVsTaZb
 RWyzbwf9nfRgb+uDIZIlVOXiCHuWxOEBDeCHpQxGO4jPzWG3o4nO3+SlW/u5NhMWMTwg
 uIH9w0GniUa5I91+z950pG9LXCncBsf6fIq32ynGMssxwY7MbABgzoQ/HFoDzXdTMHex
 faHZco7gxOiLZj58fl4VDQOGMOMnptgg0O19Fr2HK+c53TH3rrhZPM5+7w6psVbpxSrl
 kG9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=T4yR60OY8mdfdPHyuNjXPb3G3l2Y7DqgyO8YNCtTTi8=;
 b=uoBfE3hBkzseEgeKVaTUjKdlCneu5cCGVKs53rUqQYYAsIr6N5BIIrbY4P5fmS+KAU
 DmsORFGjekTecWABLJBR/VNwxuVBtSJ4ATR0JD+Xcldv2kw7JZlIKrGwS1HiztbT7iX4
 BhjQhLSBQ/cRDwm7p009bPG681w0RqDCqcy/pWHtVOKp70SjJvwtPanKXjorcuWujKJB
 c1iP+rkBCEYB4zphzLMRmzLlHgb7BZ9/QwtjXm4GZWAPcXPg7adCEPq25JYggdGZ2hSS
 7H0x0l6OFCt5SfMba+DFdKDc03xcQEyCTDOCw5FhhsbrGhCszY72khQJI+hwnVBQUGyk
 DKNQ==
X-Gm-Message-State: APjAAAUoC2d5W/6ZBcezotNePvIDJrJ4rn+DrkfXBDh03n7iDI3c9I0u
 9Vv9F87gbRkOKGJecZVghq4=
X-Google-Smtp-Source: APXvYqybJWi+D5zoN/EAlr0cYtoj/ItxMIK96HM0iVzu/zTz7xtx555y5DxsPlqJKlyyeVSiVVIQtA==
X-Received: by 2002:a17:90a:cc07:: with SMTP id
 b7mr6289460pju.135.1572607773917; 
 Fri, 01 Nov 2019 04:29:33 -0700 (PDT)
Received: from voyager.lan ([45.124.203.14])
 by smtp.gmail.com with ESMTPSA id w12sm1369427pfn.105.2019.11.01.04.29.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 04:29:33 -0700 (PDT)
From: Joel Stanley <joel@jms.id.au>
To: Rob Herring <robh+dt@kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 Jeremy Kerr <jk@ozlabs.org>, Alistar Popple <alistair@popple.id.au>,
 Eddie James <eajames@linux.ibm.com>, Steven Rostedt <rostedt@goodmis.org>,
 Ingo Molnar <mingo@redhat.com>
Subject: [PATCH 1/3] dt-bindings: fsi: Add description of FSI master
Date: Fri,  1 Nov 2019 21:59:03 +1030
Message-Id: <20191101112905.7282-3-joel@jms.id.au>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191101112905.7282-1-joel@jms.id.au>
References: <20191101112905.7282-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_042935_868039_3B81FE43 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linux-fsi@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This describes the FSI master present in the AST2600.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 .../bindings/fsi/fsi-master-aspeed.txt        | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/fsi/fsi-master-aspeed.txt

diff --git a/Documentation/devicetree/bindings/fsi/fsi-master-aspeed.txt b/Documentation/devicetree/bindings/fsi/fsi-master-aspeed.txt
new file mode 100644
index 000000000000..c804897fa936
--- /dev/null
+++ b/Documentation/devicetree/bindings/fsi/fsi-master-aspeed.txt
@@ -0,0 +1,24 @@
+Device-tree bindings for AST2600 FSI master
+-------------------------------------------
+
+The AST2600 contains two identical FSI masters. They share a clock and have a
+separate interrupt line and output pins.
+
+Required properties:
+ - compatible: "aspeed,ast2600-fsi-master"
+ - reg: base address and length
+ - clocks: phandle and clock number
+ - interrupts: platform dependant interrupt description
+ - pinctrl-0: phandle to pinctrl node
+ - pinctrl-names: pinctrl state
+
+Examples:
+
+    fsi-master {
+        compatible = "aspeed,ast2600-fsi-master", "fsi-master";
+        reg = <0x1e79b000 0x94>;
+	interrupts = <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fsi1_default>;
+	clocks = <&syscon ASPEED_CLK_GATE_FSICLK>;
+    };
-- 
2.24.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
