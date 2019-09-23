Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F4EBBB2F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 20:22:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KHxPwwrPnAaZzo+cyxTAXhv2tWijmlWozbpzvg+ZuDc=; b=bVQ
	gwL3vtA4YWNOcP7246FuODQJ8sIgMWZTtm8oSnILWixyNwCwIIq69zBg5zfPS01i+nid8KEv65zI9
	ZBomH3cTBMfFL1sJdw0PZKGxILaT4EcO+dvxbtO4ASAkxj6/GAB1gcgwWX110HfMNgaZOYWBK6mwP
	ws7+zNfcjr0x8iRLPSsB9Rjvy5fSoDa4o0b4xPHn/W3s2S7GyVKLTEYgA8EKheES2beo8THXYEE6/
	cfms7zlGWRl/eTX8axro2JkNYDxMn1ngb8RR90abUNjYwT3oBTQRqBuplL/GrX0yRxTELCqggNdy4
	7HG4QVpBssmT8+fr02oicC4p26o2SUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCSyY-00005B-C6; Mon, 23 Sep 2019 18:22:18 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCSyO-0008W4-1z
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 18:22:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1569262919;
 bh=5fqLlgaDAUd0B1OqfK2eFQBKyzeMwv7NydMsh4IxCQI=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=Ad325JkRiFRy9RiRL2B5KeFofySVaJ1b6sqOvfVk8T+396iWkYI+nDp3WgsQcJHV4
 6WxtkaGAj5tlYqyN563qs+eWxeio2jbmAfraMscnHFkANyh3cJEFGbXS/2j5YM9bAd
 jUMJHejX5A0pfVuMwvpioJUixXdmSYVtMuL1TH88=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.90]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1ML9uU-1iUgZo3nyE-00IAV4; Mon, 23
 Sep 2019 20:21:58 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Subject: [PATCH] ARM: dts: bcm2835-rpi-zero-w: Fix bus-width of sdhci
Date: Mon, 23 Sep 2019 20:21:22 +0200
Message-Id: <1569262882-9955-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:xNSThDfZxwtxmYd/wIj+7672bOeOHuCP0EV77Tbq7lswewHeSe8
 DkMMM8KQgDgrN3ZhWsH6efSLGdsxlwCa0Yg1Dcs+U+OPSe1nrZrpqzoSWZf4e/OGh/TNGqs
 hPcTuuaEURvJwvZ/+l4uvp3Kdkl9Z1kXp6AXUjTCWbuQaowYEyb2fRkoXy6eSF2khx9EZz6
 ZOU9bqRKi26I3+I85APgg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Lm9afGT1AK4=:JgrH+ej2z39LDPLXJRJhpu
 o/xO//7tRMNLVzHoOLh4+XOTylcyWacPIRfykjXU/O/GzBX9fQdPxjgcNwroGbmAlFClq+TmM
 TWAyzl4Wq/I4+zM5JVZFTnk1NAHiyPxFVYrGy5s6tdnGm18hinW+eck1qTvrq87+CtMO8pVoY
 NSfUcxpYJk2qttnuo54++MnHMdIrcvsYe5muYCou9hyB0MKGT02hTyWV73Py+BjkAEA04IfpR
 wzyxR/F2L9j2Vv+wBaan3cbX/Nv772QfaWXarMZKCV5BdAfD+aQNzJwZ0jVOFsxSvagbib7Z7
 I9QPTa6qQgdqJD8VM1ffuA2RRloReL+SXP4tHVHmDU8Zl7mURx6R+hy3VPecT6fZ9o81Yp/yN
 uXR9XYOnMNODX/yJRcE1aO78YHfIhZfJ2Ene+HMuCyQ1PDLy83gDKeRMKaCSTEPUnaEqW+Wue
 G3xrsNOppFXcGox7ro7TJIHvsUMGI0tDhgmaXtwhodZcJf2oyaiao6nnFevkSmy+Jwt6vqq0o
 ZPe5l6tn23yGUhr/a20jiyNz02vQRlyqQzfKKU2hR63h7n9S4wEgjcOFLTRPtSYJ0OhO+NQ2r
 k8Q85PKepWW78zijpBIkJBl8P05mEsouonqG9P961Ss0KZAHgpMA6GGslkcnwf1HQ8THyVTrZ
 VugQXCShZD7/J5kAhUJgXny8T67kQLFRdkhN01VT887e3TbQW2rQXrbQKoXvlueb4HmEIvj4N
 s/4wr1+t5fTgq0MgjXcG7m5OHGYjRH/9BpxpInoSO+Sj/nqyoJ/A8igin0KWUHP2zjS1MxRIr
 fsLPSwOIUf0jKBOaWrPSJVeCZ4x7x09J6BSvGGE4o7wn1xYJtL7KinX+nQHF+bayAW5aVvWWF
 eQNSfu5FqevpKbwtw0OBxbHfpKZIaiFZs3kfYYsh3ueICJR3lJv3eZjPp4QkrpSKd44shy3vo
 ljKU/16arzp77S+eCyAhIa/P1GQNUWlNfnZwRE5KRKoz49x89WQk/ehzD/CQc98TnzklztQpG
 5JMJAatKWDLTAZgg93danLw3cUKpVOxSlzCRPV5l8Ulo5wm7gU1Py1PTMjDXSuWv8BxLb3gWz
 Z17wnb4mDX0GerKavKXYcpUCkK2pP45T7ceQoVf40ruEUUOoRLNQbMYMLjNGyCnwoFxggq/Fd
 j5Aq67Xf2Dd3Z70dP723dsWLRN/RBf/U9Hn6rNkr+JJcOlpnrD+BaxZljKtKul7GsMqEJusDE
 ck/RZf1kbD7R0sISv8dSXu4f52DEMXSXuWFWgjHlHxn88yG+PedxSNxTB8Pw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_112208_431264_80A1B269 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The commit e7774049ff25 ("ARM: dts: bcm283x: Define MMC interfaces at
board level") accidently dropped the bus width for the sdhci on the
RPi Zero W, because the board file was relying on the defaults
from bcm2835-rpi.dtsi. So fix this performance regression by adding
the bus width to the board file.

Fixes: e7774049ff25 ("ARM: dts: bcm283x: Define MMC interfaces at board level")
Reported-by: Phil Elwell <phil@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 arch/arm/boot/dts/bcm2835-rpi-zero-w.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts b/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
index 09a088f..b75af21 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
@@ -113,6 +113,7 @@
 	#address-cells = <1>;
 	#size-cells = <0>;
 	pinctrl-0 = <&emmc_gpio34 &gpclk2_gpio43>;
+	bus-width = <4>;
 	mmc-pwrseq = <&wifi_pwrseq>;
 	non-removable;
 	status = "okay";
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
