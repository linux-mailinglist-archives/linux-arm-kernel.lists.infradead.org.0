Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E036CC10BF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Sep 2019 14:08:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0fjrs+PIMthtmucBjAhK4MHSy1MBtsaObzsRVLuh/Xw=; b=QWoXxKxwjM+cVjvtRFHW5Ak8Ge
	RG1PGmKaFGT0d4jeE0qDh/wzZwsHK2uEYza4ElJU5ss+qLkUUXlMfXHPXj0Zn3NPP9S6KtbeHsYLa
	qnYpDDMgCylAy/9tTz5LqVfjuEMFhONEpkw0sQiIFMjZq1PC6v7IP15fF2130aQJMh24F/tOsB6V0
	2d8KePlPJiB2KicIYIv9G1HV3Af5me+teZUVsXOyCQSJf5eWYWr4LIwCxknBmBJzl0smFJ/tKVbFI
	FXZs5/9VMs94dYq/EDLGrHQX5ibhoszchK92JVaDyXOFnJtf56bFNrtBZwWuyfHHrmtbTCMRagzQU
	2/u5hTKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEBWQ-0006mU-SX; Sat, 28 Sep 2019 12:08:22 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEBVu-0006Z9-LL
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Sep 2019 12:07:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1569672456;
 bh=Uiusfd++iO6W8WtYRF60ANQDODpBG+UQSmFz88xtJgk=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=dQQAfY4vF9eIiMhhnPGoT5NglegGATZLY2pWt5aHEKQTfHpbo5mXmBA2lOMMYtol9
 0RYl9Xdf72oHrJejRZvgtxira0cT89r516zxoKJBQpQogQGbjbFKM/28zYVRed4eaT
 1rCKc0ib8NpCUf/BH2aTQVuWU7ShKx1WkQMEmd9A=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.130]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1Mk0Ne-1hlkaO1gXA-00kMD7; Sat, 28 Sep 2019 14:07:36 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Subject: [PATCH V3 1/8] ARM: dts: bcm283x: Remove simple-bus from fixed clocks
Date: Sat, 28 Sep 2019 14:07:07 +0200
Message-Id: <1569672435-19823-2-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
References: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:Qtvp3jbppime3Xe7fPvHlPdRWaE4I5Ik5MHiGVEb5DsNMGaIWjk
 VKQScuoHMcCmlS9y5vS4d3x+5fVvOllNTYU9pqisHOQI03U34MOGTzQCmdjyaBmm+z6pSsq
 PfBJnqBGdYamgCBvo/LP9ZbfAE/lt9bRqM5zLAIkR0UtaSM5+7EdYMYqGgRrxKcx8X7qqZ4
 8bnsG4ILMaGfP4K0PFrVg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:b3YvHamCSD4=:9/VGlDodTXtRD2VUougHaS
 AJd7T1yanl95AH22mpgekYcnltdSxncVFWd7p9D4VjpOA2lWhCjhcd+tCvB7uk3uYo1PI78yl
 dG6zYU+LwEzwtMCUMnF77XL5/kJi4Waya71RhCRo6p0UifZ183Tzn4E9zIdTArV+OrXwGj8un
 0LjCgyv93C3Zmtn1vBIAGzZHthTFSB3DhrUZfuUOQ3n9ET6DKvcdiw8tAFlx0O28rTf3+iix+
 qyGHa0Tve1JBtuv6lXkJJUEYbM517UzkCU7JHnctOtYHjRMVwYhPCz8yrz4HkIGiALHVX/6dI
 MOAHfCswJEJQkxKXRUWHY5amfYsOCxXdfPt74mjbPoN8G698NiUHjDdhKIwDURiIK1DLNzxQM
 nAJjolUF1t25+Quqtny2SkKvhiIup2xrYZ7kOzEl54FPIRykR3gLtg4lZ+JBXQHmOGEYYtiOC
 7OKHnCZ3jXQDov6RMeI4xlLBw3TqDU+mUBaE0LfKI45no4XYPnEmxQtkF6qsAGKwex3rz4Dh4
 9c1E0peVbVSLovs0cMJcs7v9haXtCPVcVR+114tHZ3d3pD+uWxBhTNLxthADxerlZYmm5bDpE
 Hl906ScNr+21ETKFGVQO0SfhdSe78Dfh6xeEwjqAU7PvLC0eQ+swXcwJ7uh8WeYI+UJfiYRTH
 /AqVvfzYLJBZoqOq3p6ydsfwigpT9jzHYStB96jMIyxxw0pGPohr8yH08x/JVuc5aShJalrHv
 nWhhUL8D/bw8nAVUwpXQXV+sWNy39+D5EtsDa+gcI9Gf7AnmdwORvB3BNZ/Udvi6f2ZU/BJYw
 HJ3DRch/R223wqQlzT4qqZoxOeB7Wf2loDkEtJRhX9NTxfnJg0rK0nmrgnQYYHRLC+SlfRPQo
 NwMnH/wYQ43yRvi3mC0khxKDVBoBNnVb10pAyxwPrv6ox3tCHjlfxUWg7n8XF6yx4R0+Sq/Ob
 Bgw26uphkGX00YRMxUWzo5223DJvUiLSnD6J0wyi+sjKCLJV85Mh1aMLzi9Xp7bEq+0Wgf149
 u4e/KRNTdJZnLxa2ayoYIJwS0vXuxydewt3ubMjKm5csistwzcexb2Q6C3aXpPr1Z+BllBrkI
 WK1LU5u28og2R1jqHSqCxF/vcj5yKE3zYN4mjBypAK+gsCZI5wcbyCqdCUH6d8+DY3YaS+lw3
 gTJnN1iXzwsT6Xuf2Bt5Sk9It2/XKhal2IXZ6gzDc0yc7b9qeKDssQgI3K3omc4+M8OFuyvJ7
 gEucJ7VG3anMiF6mkHrsN4bBibSbz9tKwLNFlsg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_050751_023033_457C8E5D 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.15.18 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
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
