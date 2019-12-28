Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1F312BCF9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 08:48:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j7mBs5jbY1u+U074BO6THIKqXCF/18B51kKHF7W3h8Q=; b=eUAzCchxc9evfj9UbAhTZ7mlXO
	DM7mc26a3dqjBBL8ZyvJPAmr8IfpSwU2kX2KKzvFQ4S7CWrvBUbGddeIJCO6T3fbkdmVV6rFuuwMa
	2sbz5nWXiy03cm3XAa4G9mDNmRR3EAlzCu/rpA4lgkBlG64htxO8gB85XIk+h08FSTyY9cjfgC//d
	sMFcMwnsqeYTEG8BjMp7jUMkWJ0y5dgnm0lUA8amG1J+hR3+zpDJU1hu7YR6FxI2Ksh/LelOjqBBm
	8OJ9mCGUHn0968HDSUFC5qGIM+kjagrCgDTtJ4qZa9EGGoLpVfEfsNpaiCnMai8UYaVZrx0FInlk+
	pOwH9vPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1il6pZ-0002hl-PN; Sat, 28 Dec 2019 07:48:13 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1il6pT-0002hL-9c; Sat, 28 Dec 2019 07:48:08 +0000
Received: by mail-wr1-x444.google.com with SMTP id z3so28069592wru.3;
 Fri, 27 Dec 2019 23:48:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=hxfnZMBs1EEg7q0rSJrZ/QwgArDGkn1GU7trZB2ysxo=;
 b=IcVDWAGvv3NwbPgy6alH+NmPo2MqsIxTURvGL/WI5jN6mTyp3nhN4Gka3bC97hItnI
 o3in/nW7Tja1ASm47AYQ9t36ddYobpfx+mFpH9JWOFFeELlGLsFyO+IXwNa+oEc5vsVt
 3HjI6rwdFK18YGHlgNIoVFdZoE+vRTOAt1doILPt7GrLgp4BnhNZZNa/12TcaqQvguGR
 qB07U74euKi0+VpI2smpmU/5oSL/fQipvYOD4rUXMwaDeD4c50oBLTgop0OQSXi+s4o1
 oZ7dWW0xAVZGHOYk49k8cg2mPfO7rkL+9aYlwughmFJQ2ha09o/duP+vfyTKwhQs0RIN
 hqhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=hxfnZMBs1EEg7q0rSJrZ/QwgArDGkn1GU7trZB2ysxo=;
 b=SLY6mlTDz3aP5vNYYyOsghKYr3Xj9LUUh0+X+FkM+X9IqIh9hc9Rhh1e8AK+s3SaJe
 KgitWkMiUWn3nOuLYPJGkMtgCdq8P4CXd1qx2X2g9ntnIvouHdn8vj0OLq1hE8Hye9yJ
 R3P9LK0dKedUDPL9ASgPtEP3NCTXiUwv4gYwsXpDBgyUIdaXWV1KX8LejxpvMtGHJ4NP
 2JDltswy+rj4H6I/n04gp7t9asihJDszyeYUhSuncbQlnUMtioh1B6e98OYCY4pyEmjF
 jwNjwLD/V7gY+sb+YPeQBnXD1wv20V9FVspkMYspdjJgAU6sv6ajm0TrXppzM9IRV36s
 MRgA==
X-Gm-Message-State: APjAAAUxAN5AGRA6PCPyocuxeItbRBWbuZEpl/ukDLw6UuH3I7ISZdG4
 B3Xk+lCahHQ6g8fmkHdiin8=
X-Google-Smtp-Source: APXvYqzbeDGPi6mv9YGx0XuuDAd8x/X+KAyCAU9avVfvpQmcfji8fwkI4Qi+dD3S4rYyS2qlcAlAUQ==
X-Received: by 2002:adf:e591:: with SMTP id l17mr50523032wrm.139.1577519284705; 
 Fri, 27 Dec 2019 23:48:04 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id s19sm13553258wmj.33.2019.12.27.23.48.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 27 Dec 2019 23:48:04 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: robh+dt@kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: rk3368-lion-haikou: remove identical
 &uart0 node
Date: Sat, 28 Dec 2019 08:47:57 +0100
Message-Id: <20191228074757.2075-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20191220125520.29871-1-jbx6244@gmail.com>
References: <20191220125520.29871-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_234807_359012_0030A56D 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are two identical &uart0 nodes in this dts file,
so remove one of them.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts
index 8251f3c0d..cbde279ae 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts
@@ -83,12 +83,6 @@
 	status = "okay";
 };
 
-&uart0 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
-	status = "okay";
-};
-
 &usb_otg {
 	dr_mode = "otg";
 	status = "okay";
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
