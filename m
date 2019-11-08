Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0466BF3FC2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 06:22:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s7Yh+3I+du3s6mTJU+WwjeUyUkfxIQzqNC/AFRQuhRM=; b=GShiRHCmrjGZti
	6kvAujuOcV/zj3S1c6YN+b8v3k8MnmRBPw7zH+P6F14U9vcNV56y0qUiq1wits8sbeil2JSsmsTah
	IfjIuwbLJwE7AP9InMEYWSyiJc10ivz8R84Z7J/kRynkgVNQSIXWn7mfAQFNoNjN6il+DhRQzrO6K
	VQxU1LnOUTuudclhNWdbdZIbTMZpgJzq5MsUVf5g7uw58CjEPceBEyokPbZhfXqEHrPkZmOfSXcjO
	DdAI0PnDYoyNF8k6DPkG8rrpXUG64U/rjNb1lcPvnkBJBz4RHccmbVLL4SAUAowoOXRaiPbrOIsqQ
	51hzsAsNiFOAavQwa0lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwj5-0004ze-UC; Fri, 08 Nov 2019 05:22:27 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwhR-0003Yk-L6
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 05:20:47 +0000
Received: by mail-pl1-x632.google.com with SMTP id az9so2427191plb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 21:20:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iGEIDbYmVZa9xwEGk6m/vD8N0Ug2Lhly+4TWkAdqLek=;
 b=DQV4QErwJZi1nk+I+ExV4GgrAt+hvlcVydeGwaA7/epaVfYBs5u+HOBas9IumvCH3N
 JxSoAVsemwQmhL9lwpjUyMccGjyCWAW8DMxKTol2RUQoNpM2zOk91ztHOozH88yCXnyS
 nQiyemAGRfY5zntLTi69NaA4DiECMQuM9cq9WdGTiSpag2j2HasNUGlKW0w9R5revTGH
 wvMIlyXkvzCyDczcv3X6NokPLYkJj8lxtymgsnm77GRivHxrwy3Wi2/uWPUWCQ7ka4u6
 P+8I074TJg0IbfKtoUmk7RQLoOBZytBQn4RkJywcfMiFBonHKqy1FHK7keHZCkf2uKMz
 SZTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=iGEIDbYmVZa9xwEGk6m/vD8N0Ug2Lhly+4TWkAdqLek=;
 b=lhwlg6BZYB6uZM7ru4yHqJQ8g6U9RI+FDliYtsPV3S1AOo4PiMNWZkQTHNP0ocK6rZ
 FM+TenwJ4Ja4gr9Kx4SFoT5vEeLoTmn/6wbalzn9psTCGuEBDacATawBwSGcaF/0JPdF
 +uusTb7SJulQun0/m6uMzMmITYpCesTPsNEwPIE0aWoZPTxReS93iyq/52aQ6TYerDEl
 onQOrxH/aJ8V8pnVySPP5OrlZwOAHuywkGrvklCnsIKUtTRDin8gwawuWsWyrsnMGu13
 NHJ6DA/LcPu6fXPPVfEIgpbUQhsSTbm26wU5oMcJuqiOxPHrpbtFy2PdrjXZmJ0abkMC
 33PA==
X-Gm-Message-State: APjAAAWh4M1nVyRrd0B4JMNdmCcrfciJFwhODJ0VOLlJN85iuR9Zdxuj
 ZzMjQ2V3u+T5s1DQBV4jiw0=
X-Google-Smtp-Source: APXvYqyJmTdzvKroBystEahMC17uFRguxhlGPq7x/hTDNn3eP4EFiK4iTnSCiGGTzjO5MGvvFRMNEg==
X-Received: by 2002:a17:902:ba91:: with SMTP id
 k17mr8454858pls.100.1573190443329; 
 Thu, 07 Nov 2019 21:20:43 -0800 (PST)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id v19sm3798443pjr.14.2019.11.07.21.20.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 21:20:42 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: Rob Herring <robh+dt@kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Jeremy Kerr <jk@ozlabs.org>
Subject: [PATCH v2 08/11] dt-bindings: fsi: Add description of FSI master
Date: Fri,  8 Nov 2019 15:49:42 +1030
Message-Id: <20191108051945.7109-9-joel@jms.id.au>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191108051945.7109-1-joel@jms.id.au>
References: <20191108051945.7109-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_212045_746571_1EC178BF 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:632 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Alistar Popple <alistair@popple.id.au>,
 Eddie James <eajames@linux.ibm.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel@lists.infradead.org, linux-fsi@lists.ozlabs.org
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
index 000000000000..b758f91914f7
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
+ - interrupts: platform dependent interrupt description
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
