Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC70BCD2DC
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 17:29:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0fjrs+PIMthtmucBjAhK4MHSy1MBtsaObzsRVLuh/Xw=; b=nU3zJwmrFZBs0hdyNDWgOamhIT
	KDAwwR6D78cge9JNpZxnLsQkELmwS+QuyRS22/YbhjDQJzcXcgf6sDXwoDZaXu+qa3az1lOu9L6FD
	Sspji1L6fVL74t4ZcqhXLmk+Cjkojn+iJksurLbYKjH7y+OsZ4M8g/P70jxEg6+pL9I9YEnhvdpD5
	AN9zDliHLKvv2vLz346wrFbnIiZ85aQF5mSoTzt8BamjfMLxZOTnHCsyY0SxxYIo02WEwRs/PtJBw
	jSQ5DkmwqXSoGC/KzjFqq52VdmqBbh1A0np4NSRbnC/o08j2v7jMPRIbpsc/pXVNBd5n5iNX/Irxa
	JGzmg2mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH8TH-0007td-6y; Sun, 06 Oct 2019 15:29:19 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH8T6-0007qz-0q
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 15:29:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570375737;
 bh=Uiusfd++iO6W8WtYRF60ANQDODpBG+UQSmFz88xtJgk=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=hAJsRPygpz5yPJxWUAzlPKY8+matr0x7fsIjsmkXPg8wz97u2ol9vKp/9MWEHshpn
 sDrUJYE6N/SGya6tlaROjUmUWdR1MXEAS4E19A/ZZncuxhfE43UNDh7dtM4KJon0kp
 yHMMfFr85KdXCjXbocomutVGquJIgQc8JCGvK8vw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.116]) by mail.gmx.com
 (mrgmx104 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1Mg6Zq-1hc2cB10Aw-00hfKa; Sun, 06 Oct 2019 17:28:57 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH V4 02/10] ARM: dts: bcm283x: Remove simple-bus from fixed
 clocks
Date: Sun,  6 Oct 2019 17:28:20 +0200
Message-Id: <1570375708-26965-3-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
References: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:i+h4gvRfF9vHSRzrDVG9tj8BWytU3V7SOKB7jSlFNNT5OZnTdf7
 zwcxT0kJKG6dK1uSFnDU+1PJ7uYF+10rUxWvssuotj32NMbuslu5fe0Y/XEZSbXXeubmRqz
 rmlCHfNnBnZR7Js398llpq1oPS5KKwKSmp7TAy4TptEdM8nyGHD4svOi7jP/z55k0c5Vxj3
 4i9oDDVNso6y/PExitqsw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:qHIs3v19TaA=:uuLAVFU7rYjRbXHJzsYs5S
 liQTvF/wRD4kP3xO78s+ggITe7VaGMFOoaLDZjmU2kGptd7RVy/GovKC41JevdOJirYfLE7L3
 xgRds8qqK3gVSpV21/kaREDJuPIECuqavMgtm6sr7PXYb4c/BwytDVhMOz4x3aX9/44zO8dZ0
 VKEZtIUydQbFvCq+ZhzQN2r4tf34cnY1Yv0AZdy/Hf5yuxFro73Dot7WZB0LGyORENx9a4TB3
 v6EXdmA1YECKdwNS4Sz0SpVEhnCHhE/gBGCKspR5OFSoDB09tyI+VVbkO4ZGFgdrZDRs2WsaN
 ncs9Hpl4HFfHrRHk0mSMosfJ8VAIMeOST3i22d7n5qUad9wiNoxsd4p1W4lIeQsZHed40D2fi
 uh2b2wUsjc+u0LucruIH1eoHow/qSe49f+GlJE5vj9FsIxDte3MNYK4gWatbdHf5xMUl98+Eh
 DP/YiQp2LbhGBYvLnNoy/+/GIcwZneocE++tTAXb6MzwPVpIpW8jTxTa45cKKkwoEM/s7xhY+
 fqond8zdtib0lhkGzj6cAi8ynWNZCcIVZWgMfNA9h3uqsbPR/Td6SPJTrDbNwLAI4ixMZ8OQm
 F6OPKX50h16JBBayhb+wxCykybN42G9M4Z2pLDJprl77XNsEKC2g2qUUNDjkBbpVKrWnfbTkb
 BpWzDret0jbgiOMA4jUyEu/lcnhIMxf35enTCUTpcqmxDEC8G3EOmjgj/QHjwtGFsdhCDErqp
 ULlcgzhpeG3pHdDaiudy0Ez/P3s3bYeTEiuqb1LVbyxXmGG7d2s42UQId6q2rSY6Rj8uKWYBi
 +QiYY91Yo0/MNBDIUxVg9IEUGsDg8PHle27hfl5xiNfzt04azjO67f4T79+TlPJ5aS0FM+14k
 rqozmsu+1H/ymPrtK/yATVPB24z2I2ypR1B/o7eJDHDSe1znh+djpQYI0j4ulqfr8SMTM4zsR
 SbFVAh7C0K3bk2l1Nn7Fz18QFQrDkR85uA4uaFC4/Oe740VpfMDFpxMrTBfIrLySQaU9AlDYd
 cFXYsfZGaPtEqmZ4TehGwhvAz4nWMT5Ffu3vuQkWOk3ratwMGyT9iLgrlc0hYiah+/x7mDNRw
 ITSaaKFSX4EGnfBef7Fmb5Ws5//z3S8DLu4gXI5Yerqda57U4QETgfGznFu2BVi6CMuYxlGSB
 vVaHdVQ6O5APEM6iNMcYPWvX8G3P6gazxmVVQjuo74MrpNYVK/I+1HIANz4dFudE5hu27qYcj
 Rgnyj1ZLMJkQX2jEdR7BwLt84F0vQWu6KiGjp1g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_082908_395823_FABAD404 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.21 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-bluetooth@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The fixed clocks doesn't form some kind of bus. So let's remove it.
This fixes the follow DT schema warnings:

clocks: clock@3:reg:0: [3] is too short
clocks: clock@4:reg:0: [4] is too short
clocks: $nodename:0: 'clocks' does not match '^(bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'
clocks: #size-cells:0:0: 0 is not one of [1, 2]
clocks: 'ranges' is a required property
clock@3: 'reg' does not match any of the regexes: 'pinctrl-[0-9]+'
clock@4: 'reg' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 arch/arm/boot/dts/bcm283x.dtsi | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/bcm283x.dtsi b/arch/arm/boot/dts/bcm283x.dtsi
index 2d191fc..f16899d 100644
--- a/arch/arm/boot/dts/bcm283x.dtsi
+++ b/arch/arm/boot/dts/bcm283x.dtsi
@@ -650,22 +650,16 @@
 	};

 	clocks {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
 		/* The oscillator is the root of the clock tree. */
-		clk_osc: clock@3 {
+		clk_osc: clk-osc {
 			compatible = "fixed-clock";
-			reg = <3>;
 			#clock-cells = <0>;
 			clock-output-names = "osc";
 			clock-frequency = <19200000>;
 		};

-		clk_usb: clock@4 {
+		clk_usb: clk-usb {
 			compatible = "fixed-clock";
-			reg = <4>;
 			#clock-cells = <0>;
 			clock-output-names = "otg";
 			clock-frequency = <480000000>;
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
