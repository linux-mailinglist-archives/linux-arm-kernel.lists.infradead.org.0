Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5349136E69
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 14:44:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HIzIFPSSQVzki/hk7TSRzjsEs7/o0NDQT92EAAuxzZY=; b=XIF
	KeyhI6DpevmxalIRlrWEE/RX2wQgHXgD1sYG0nyecPpT9kQrkp7bnZ24Kn04zq41gbrn7W8YYelWb
	nkI3RAcJcNWFzJsct3YPQc4tCdFplQvxMJQgvrSeA3QSiIcK2KhiQxW8K6ud5SnkwDRhxJ77aF42b
	d+SUmCnAGFV+Jd3vaw+TuATNfUhiMn1RdTZcZMG4ncMSGgSwTlqc9SjIzgIctv1GG0uWkUo3TLQ5F
	xqnrPQFtrzOyvprKNQ65xYOchNMzghRbPGZo/HJbkEKvgmZRpCrNG4+xthKIeA+SPGipLs8Evczh1
	KJgz4xGvGnNwg+RgFIoDKjrjvML7p7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipuaa-00024j-Um; Fri, 10 Jan 2020 13:44:36 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipuaS-000248-Tv; Fri, 10 Jan 2020 13:44:30 +0000
Received: by mail-wm1-x343.google.com with SMTP id d139so4449053wmd.0;
 Fri, 10 Jan 2020 05:44:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=g1iXX7TN7q8kc/bF8PanewJ7fQngTYXBHeGSeFjVWds=;
 b=DM68tMCOF7AcQsfPyRsge0ufcIZ8Z4FE+S0mhA2/9KrwvHWPWgBzdsGGuJD3eXrmtU
 RRZ9NJE9v7j6N6GKSN/nh8Uv5xQbRUKVzfVNf+Xrt5BFd9OMz0yBDnjrAbI8vrEL5vSw
 +zO251pYvU8nIPZb4ci5RHJoaqAfLqmEXF/N8dKBJpIeRSNSCLVW+1LxnxgY/BRsYIvd
 XoNUfcDSvOzrusnLdfPzU+DIY754tlTZ28GMT6vvdrBFMIXAy32/lf8hWgF2PT1MPjlW
 nUCR0lCgsRWshkt70v4jjae73b6svxgqP+fUl0svtgqqCFB4b+rP/5TWF89dE//ICbbF
 JxRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=g1iXX7TN7q8kc/bF8PanewJ7fQngTYXBHeGSeFjVWds=;
 b=GnJ0PpavrV132VFeFgz3k1UMtR3FA8nLeuzf37oP2/chOhKPZE/xNOfM4JyKJq6/EH
 MXbRVxAkIREkc+tY+5pBO7vsiRw8yTuE9FAoj0y41nog0ILDVLAu09rqz8ZvIOLAgSQV
 l3x5h/xjg/HCq1uyGzRl4z7+6lpA4v7Ad3KILaTFVQ9am+q91pyG9Zun+ApK5jWmuLtY
 eXlo7jhJMH2JJULRDXT0KR6pl74h2elqLfLj14dRNl12sA2fTOyexTn70fRFxecLYKYu
 c9iIbW0U4Igq2vd9ueMhdta2lX7H4NOunN4rTRLYLVK925JlxDid4w0rLYXeTVTYwwO9
 5s4Q==
X-Gm-Message-State: APjAAAXb7CA/iVqrOryRSjSfTAVt0jw1mnF5PbklnAR6NEi2ZQ64Oab4
 KgCHlMmLehfEKkcPbwL2BvTVpaOp
X-Google-Smtp-Source: APXvYqwqXBp9Rf/1rjxjmuLMJTD7KoBkIxYNWpnuqjQXo/kPVf/r0aciCxPP/fSmM6qLFWMCxW3qkw==
X-Received: by 2002:a7b:cb86:: with SMTP id m6mr4416957wmi.51.1578663867444;
 Fri, 10 Jan 2020 05:44:27 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id c9sm2213656wmc.47.2020.01.10.05.44.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 Jan 2020 05:44:27 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] ARM: dts: rockchip: add reg property to brcmf sub node for
 rk3188-bqedison2qc
Date: Fri, 10 Jan 2020 14:44:20 +0100
Message-Id: <20200110134420.11280-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_054428_963693_77189542 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

An experimental test with the command below gives this error:
rk3188-bqedison2qc.dt.yaml: dwmmc@10218000: wifi@1:
'reg' is a required property

So fix this by adding a reg property to the brcmf sub node.
Also add #address-cells and #size-cells to prevent more warnings.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3188-bqedison2qc.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/rk3188-bqedison2qc.dts b/arch/arm/boot/dts/rk3188-bqedison2qc.dts
index c8b62bbd6..ad1afd403 100644
--- a/arch/arm/boot/dts/rk3188-bqedison2qc.dts
+++ b/arch/arm/boot/dts/rk3188-bqedison2qc.dts
@@ -466,9 +466,12 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&sd1_clk>, <&sd1_cmd>, <&sd1_bus4>;
 	vmmcq-supply = <&vccio_wl>;
+	#address-cells = <1>;
+	#size-cells = <0>;
 	status = "okay";
 
 	brcmf: wifi@1 {
+		reg = <1>;
 		compatible = "brcm,bcm4329-fmac";
 		interrupt-parent = <&gpio3>;
 		interrupts = <RK_PD2 GPIO_ACTIVE_HIGH>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
