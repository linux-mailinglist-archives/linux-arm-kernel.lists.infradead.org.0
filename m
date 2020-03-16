Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FAB3187053
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 17:44:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QP286lV39ofFA+emYjSTkeNUswSLvk44Y7s3QsI5dSI=; b=SivYZ23Z5ACz6U
	Wqs0OoHpyp0PsVAo54zUpUR/7TFO5wkG7CebWYcUR2LqXlI5iHDHIvmO45py+dTaKbsNRMYH4nvtp
	tJwoGtgVrmiv6qO7rWPc1DCoXOV2pXySUWE42OUdQHhmNmTANezLVEeH0tvJ/P3h8JFrhwBgKWoxB
	LwI90SGYMTzguwk5TCAtJQ4nxXQmmftIvD0nTpOYpZqQySj/Z/e49COYxjCPqa9shuMqrJyG5rQ0V
	L8qO2zcV3IV+eE1TlTackUarjk3o/T4dm+jnJUDA139Q83c++Lba37kWFqAYGOP/AibKRg8d4AHZI
	TeLwaLPTJlYYU2rSBY5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDsrB-0001l0-Ms; Mon, 16 Mar 2020 16:44:49 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDsr3-0001bc-K2
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 16:44:43 +0000
Received: by mail-pj1-x1043.google.com with SMTP id mq3so9017161pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 09:44:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=OzTibJtwHWvgkYEqJ0BJY+oA4+jt7ssN/aIUWbaaV84=;
 b=V3fGpkqkFtEjPimrGJV0q10vLHNWAa+tM8qZwtIwuhKOiGhd7jeXVRM0ZgDbMd3sb/
 KIUY0yo3hhvD3juiaq7+p93GnfPlGpDHE6HLf7rOemeDRnHy1wlUaOAt0D3EkTqYBtHX
 CshSpdAmN3y63ZHMJKAvgq+hNO0GWX4KGeKfC+fY9x1+7F0ec8LfaPK435zXsZzqm26k
 0f4EzkvaJmMbOmtE9FmMTAfvbY3suqXSJJVgcrsWLU/BqvybOtn1gJzzUlq2F4pV70lM
 S/qrlksKby46Vd4KIzAKht7gHoh3m/2zIkB9AkWfrZF4fqDIadKPCyHl4GdB/bJNEZPt
 LPjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=OzTibJtwHWvgkYEqJ0BJY+oA4+jt7ssN/aIUWbaaV84=;
 b=GEuTOntPyLaof8FhkGoYGqYbewlEnglLtbia2ORSzQdEEMpd91EoBD/vwLu7SBgJ3Q
 MUjdCmL9VVn9qrq+1Q2gv3wCCLv3evXKxQT3tjanW+/uxC4sBh1pO7ddOwnKDWOPqVn5
 sAr3Se/DcMEMfZwdvBDnoZvrHBgPZetxH6ZXJBWFP9WSI4dSGxbqWuspt74CaYOzUTaD
 oStrGaECjgskF0T+0Ac6bTU/OOHCMxH+peR0qIaZvszg3GWqdHv0HheOA+Ccw4umVZgK
 FcIYpNVjG+yRmuVlVTbU3vbF/FJDDOtyd7qOeb1iIyZT/p5X++e4GJpVkmPTNbSd90PR
 tvpQ==
X-Gm-Message-State: ANhLgQ2i8+ngMAloxQIftZ4Lyri4EhAcqAU3Fv25CRPPDdZqNjaLlRoc
 jSCz3aZniFwXyu+IXXVBqaYgRg==
X-Google-Smtp-Source: ADFU+vuHs/YqjTagHQi8/SIGIi44ZkuT3e9cdVdLX441TK+A0Z2om/47O08Fbn3La/oetfhgCq1UYQ==
X-Received: by 2002:a17:902:b901:: with SMTP id
 bf1mr59761plb.133.1584377080944; 
 Mon, 16 Mar 2020 09:44:40 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:dcc4:2a10:1b38:3edc])
 by smtp.gmail.com with ESMTPSA id gv7sm332411pjb.16.2020.03.16.09.44.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 16 Mar 2020 09:44:40 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Christian Hewitt <christianshewitt@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: meson-g12b-gtking: add initial device-tree
In-Reply-To: <1582985353-83371-3-git-send-email-christianshewitt@gmail.com>
References: <1582985353-83371-1-git-send-email-christianshewitt@gmail.com>
 <1582985353-83371-3-git-send-email-christianshewitt@gmail.com>
Date: Mon, 16 Mar 2020 09:44:39 -0700
Message-ID: <7h36a8w8p4.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_094441_669038_ADB8B717 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Christian Hewitt <christianshewitt@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Christian Hewitt <christianshewitt@gmail.com> writes:

> The Shenzen AZW (Beelink) GT-King is based on the Amlogic W400 reference
> board with an S922X chip.
>
> - 4GB LPDDR4 RAM
> - 64GB eMMC storage
> - 10/100/1000 Base-T Ethernet
> - AP6356S Wireless (802.11 a/b/g/n/ac, BT 4.1)
> - HDMI 2.1 video
> - S/PDIF optical output
> - Analogue audio output
> - 1x USB 2.0 port
> - 2x USB 3.0 ports
> - IR receiver
> - 1x micro SD card slot
>
> The device-tree is largely based on meson-g12b-ugoos-am6.

It's more than just based on, it's identical (other than compatible
strings and whitespace fixup[1].)

Both of these are based on the W400 ref design, so please make a W400
.dtsi that can be used by both ugoos and this.

Sorry to be a bit picky here, but there's a prolifieration of these
boards out there based on the Amlogic designs with little/no difference,
so I'd like our DTs to reflect that.

Thanks,

Kevin


[1]
$ diff -u arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts
--- arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts	2020-03-04 07:06:17.089604752 -0800
+++ arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts	2020-03-16 09:38:06.983705705 -0700
@@ -14,8 +14,8 @@
 #include <dt-bindings/sound/meson-g12a-tohdmitx.h>
 
 / {
-	compatible = "ugoos,am6", "amlogic,g12b";
-	model = "Ugoos AM6";
+	compatible = "azw,gtking", "amlogic,g12b";
+	model = "Beelink GT-King";
 
 	aliases {
 		serial0 = &uart_AO;
@@ -200,7 +200,7 @@
 
 	sound {
 		compatible = "amlogic,axg-sound-card";
-		model = "G12B-UGOOS-AM6";
+		model = "G12B-GTKING";
 		audio-aux-devs = <&tdmout_b>;
 		audio-routing = "TDMOUT_B IN 0", "FRDDR_A OUT 1",
 				"TDMOUT_B IN 1", "FRDDR_B OUT 1",
@@ -532,7 +532,7 @@
 		shutdown-gpios = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
 		max-speed = <2000000>;
 		clocks = <&wifi32k>;
-	clock-names = "lpo";
+		clock-names = "lpo";
 	};
 };
 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
