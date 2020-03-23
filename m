Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C2218FCF0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 19:45:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=huaGZMs9ArbN0GoTltxoRlLDP02LL6bAT1yTeS/1VDs=; b=p7m
	OZwYRa4CEotztCMt2ZLCux4YjCQKubebfHX8MsV6HJ9GkqA5KkUXbSWf07s9PdQDFD/i79IGG5hoj
	oDqlqx4XkPsjE8pUElM7nqd+RGZDCvdTEud8kRkF+7sR5DOabdL2QoXWBmM0HiQQOxxBHHIReDFMX
	NtQrf5o+drPjbEr/K+jKXm3uFfI0PlJrI4S0dg+GbxXkn6SgEX8BJ0qaOYDvHwW2kxazbbPvCCC1+
	g58EcQdmKT7sPKT18r+8OPQF2sQT9MDBXWd8OCCRfP/X8WMClPfTPDJNpGejl8FCsaUHFslRns04L
	AYesh8YYVUM3UNJBQb4gI8/VRUSM58g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGS4j-000737-B9; Mon, 23 Mar 2020 18:45:25 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGS4Z-000725-Eg
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 18:45:17 +0000
Received: by mail-wr1-x441.google.com with SMTP id h15so6222746wrx.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 11:45:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=LCaz4zZs1aCSOHSQ8R4NAVFFxp0HA9sa68+Q6bJNoEg=;
 b=Z2L0NHm0/DP66X60AMkTybtIvDblGHTTE+O/O3GWrMWgq9KHUQg9aw2nYX4rbUuK0C
 ZWQb+9CWIfE/IkSDHHXb/uWNgctO93j/x77wbuhMlXxtX9r3xu9PAyskYU4ejiI+TBs8
 oj2uKOjUelFpifS/emDmr/+LKjJSoLjosqEnGBac4ps9U6RPrs5gy91i0yujS3tvRjD5
 ntn0Si4VEbBPXf71n1KVdY5IKUI/G0w8e89lwEOwqACzz2TKS8bO+MRt/spbnbWIizkD
 T3n21W7em2wXGSPWlyv8NpFZcSmKfH29kzDrPV3Gno0DvF1Cpyv7GaEm+6wU4jty7qio
 jNUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=LCaz4zZs1aCSOHSQ8R4NAVFFxp0HA9sa68+Q6bJNoEg=;
 b=P5lip5sbx2fhYl/Cj0eRFYkAI6bHnihVad6OxZRMVY2lKZzs6TsGqSXXQsO4VFK8uL
 /7Fs/w5k2ZFui/ChRRPDtdT3KBj2WWGmnrWpR7bPTe1l2nkYhptM8kDAoECYWh37iyO0
 RyP3tJvHipzl8rNe/eQAucV0u5VX2d79x9BtUwflKd71bMbcHfCGedDSGZPQT9mSZY9h
 2ApEfA0GEtUtSnpuVMxGH+45IxkuT2YBPjsLdGoROK5gcGCKwphbsh4OriMHOMd7gv4u
 QOXFZ7t+tl5bdhcKZ4F2EdA6ZcbA5YU8ah/8Lq8Lnfljf7b9SoTax1a0GsqT7pwgSmXp
 gj4w==
X-Gm-Message-State: ANhLgQ107Gta5X7ljgiEOtd2Z67/8iNhbCrRyDjE3Heng4M13eyPezBq
 M2BNBqvvu7BVYU4k76SO01s=
X-Google-Smtp-Source: ADFU+vuW4HLuD0FDasodB1FXs8xARXjsr4HrDo5pYrVBJfdjyyLH327SzcH+ukRJyO07PQOXdNMtNw==
X-Received: by 2002:a5d:4003:: with SMTP id n3mr16928921wrp.176.1584989112212; 
 Mon, 23 Mar 2020 11:45:12 -0700 (PDT)
Received: from felia.fritz.box ([2001:16b8:2df6:1a00:4528:2a39:b5c4:c34d])
 by smtp.gmail.com with ESMTPSA id 195sm633235wmb.8.2020.03.23.11.45.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 11:45:11 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH] MAINTAINERS: adjust entry to ICST clocks YAML schema creation
Date: Mon, 23 Mar 2020 19:45:01 +0100
Message-Id: <20200323184501.5756-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_114515_519855_E0212A20 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lukas.bulwahn[at]gmail.com]
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
Cc: Rob Herring <robh@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Joe Perches <joe@perches.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 78c7d8f96b6f ("dt-bindings: clock: Create YAML schema for ICST
clocks") transformed arm-integrator.txt into arm,syscon-icst.yaml, but did
not adjust the reference to that file in the ARM INTEGRATOR, VERSATILE AND
REALVIEW SUPPORT entry in MAINTAINERS.

Hence, since then, ./scripts/get_maintainer.pl --self-test complains:

  warning: no file matches \
  F: Documentation/devicetree/bindings/clock/arm-integrator.txt

Update the file entry in MAINTAINERS to the new transformed yaml file.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
applies cleanly on next-20200323

 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 07888a277f6f..69e94d712e8f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1297,7 +1297,7 @@ L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	Documentation/devicetree/bindings/arm/arm-boards
 F:	Documentation/devicetree/bindings/auxdisplay/arm-charlcd.txt
-F:	Documentation/devicetree/bindings/clock/arm-integrator.txt
+F:	Documentation/devicetree/bindings/clock/arm,syscon-icst.yaml
 F:	Documentation/devicetree/bindings/i2c/i2c-versatile.txt
 F:	Documentation/devicetree/bindings/interrupt-controller/arm,versatile-fpga-irq.txt
 F:	Documentation/devicetree/bindings/mtd/arm-versatile.txt
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
