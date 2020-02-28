Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6436173C44
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 16:55:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kGGrPRsjru1UI0HczW3lPp5y/o8RXBPAuDP7po8rw3w=; b=FZSG5dUtROZDqmQ8BWlzCQv3Js
	HkeOXjuvTDcKjBN/02CNw4ey4pSyTDWALUCN3M7rc4b3LTdRukqxB3TH5ILMb+O06B2JOAJZpejMu
	zePnn0mxXpkTDE8ouqJpuYqGQyixRkiYZtXL1FgM3XJ4tUUe2HAHaZ9XNwvClhPSIng2oHYLz+tyh
	AXN2CK7RVJyj8L0F4REtUiEUSjV45azH/CzPyC5vlTRWdxamOfNEbq9k0lMy6vF38JpoQDKwpIVxv
	OunzUfKPaTzecti4KXK37VKHtO585+KEz4oTgQheVSRPZKXxwfJMEcIuTpJsNXRVDNzCExv1HN/sV
	IO+esM/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7hyf-0003Vy-Ga; Fri, 28 Feb 2020 15:55:01 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7hxn-0002lj-6u; Fri, 28 Feb 2020 15:54:08 +0000
Received: by mail-wr1-x444.google.com with SMTP id p18so3467571wre.9;
 Fri, 28 Feb 2020 07:54:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=M9Kwu3SWVjUR0QlpKz+Qj4yHox2icU+uJW/FEvY6z9g=;
 b=iR/lE70WvXZfxCZGgNi3yNG8JV9JYIq9yGC/908jVx3v8HEpHbnf+VMxhIhHMQb2/w
 ANhVztbKYczLQwp7w0hh/ErfVlIgL/ZKFICmcz2E0rlrlglBDoQQfCk+EtOPtzLDlqCi
 +fRKmw4rAG5oBolmGB5kueTin2gVS5CSzpFyZ3lpeayC4P7vANVcq4oNnTiUxI92agC6
 XLisfb3so6N4ZA63WtInJZ0ZuxU9oK/H3BVWrJrzGVQbInwzSpBsntDajHpyQ3mw2XJi
 HlMcqXSoNbuPs9CuVJ7XhR4AjQKQPsl+sEJCv9wnQkqrUwvUs0ekXTtwl+wXopJq5Ug3
 nJKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=M9Kwu3SWVjUR0QlpKz+Qj4yHox2icU+uJW/FEvY6z9g=;
 b=dnHi8zQCy3riy5VV1SDnqYmhv3KTLgW4y5x3RTtZEav8YcZG8WUsGYH8XchQPcRu5a
 wmbGivM1UEgxTUazJ3ftzq9oDdgvvO6TuPHZBpnEI51BUKByUb4uzDqF9z9z5+0iPetR
 QNzz8wVejDoadmz9F36qdkBrxb4WvLK6usL/3gmRsHJNxK/5p+MwuHrX/I/Oi2afQnUb
 fUdiA6QyX5L+dCgdn/a9z1as9JIIUPn3HtD7ZYU+nKQpLWgy8H5Obkgg54mwx9GF9nSJ
 OAvuvxDOQUG+xDlkId3bKgiEg+yaL4+o32GMoIgDyejRI5HPQ9LDwWZaUA/0OGe2n2zv
 mBxA==
X-Gm-Message-State: APjAAAWS6CcjxBwz83FqAJxN9KY+G717a7TjWXD2PSHien/Y+U4YAtgk
 JwzLbrAcCa+1UrLWsgMa1LI=
X-Google-Smtp-Source: APXvYqwYXkK4g5VxFmULSk2KUCbUp0Rg3cowIjv95fjxucVHABt/NLUJdkgCdL+IWzIu/YSUAfbKuw==
X-Received: by 2002:adf:f846:: with SMTP id d6mr5288458wrq.125.1582905244576; 
 Fri, 28 Feb 2020 07:54:04 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id m125sm2706605wmf.8.2020.02.28.07.54.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Feb 2020 07:54:04 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 3/3] ARM: dts: rockchip: add sram to bus_intmem nodename for
 rk3288
Date: Fri, 28 Feb 2020 16:53:54 +0100
Message-Id: <20200228155354.27206-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200228155354.27206-1-jbx6244@gmail.com>
References: <20200228155354.27206-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_075407_257321_BDEBB5AD 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

A test with the command below gives for example these errors:

arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml:
bus_intmem@ff700000: $nodename:0: 'bus_intmem@ff700000'
does not match '^sram(@.*)?'
arch/arm/boot/dts/rk3288-evb-rk808.dt.yaml:
bus_intmem@ff700000: $nodename:0: 'bus_intmem@ff700000'
does not match '^sram(@.*)?'

'rockchip-pmu-sram.txt' inherit properties from 'sram.yaml'.
Fix this error by adding 'sram' to the bus_intmem nodename
in 'rk3288.dtsi'. But 'sram' is also a node name already in use.
To prevent confusion rename it to 'pmu_sram'.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/sram/sram.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3288.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 9beb66216..039e8aa70 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -718,7 +718,7 @@
 		status = "disabled";
 	};
 
-	bus_intmem@ff700000 {
+	bus_intmem: sram@ff700000 {
 		compatible = "mmio-sram";
 		reg = <0x0 0xff700000 0x0 0x18000>;
 		#address-cells = <1>;
@@ -730,7 +730,7 @@
 		};
 	};
 
-	sram@ff720000 {
+	pmu_sram: sram@ff720000 {
 		compatible = "rockchip,rk3288-pmu-sram", "mmio-sram";
 		reg = <0x0 0xff720000 0x0 0x1000>;
 	};
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
