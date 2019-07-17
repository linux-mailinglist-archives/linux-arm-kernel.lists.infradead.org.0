Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0506C1B9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 21:52:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NoeflS4l97YHM3ujyl/JXCoPpV7VdbznRdFuqZMg8J4=; b=FiuTUOoBdfaWoA5Yykr+ycfmZn
	4SlAMorw7YE7gF0DFHYrnl4/yD+XkhYsb7EVdlkUbHGCqvtlbYNqKylaoHXQ1yD3r077QspFCtyYf
	MGqSVAYD48JK7O/8HDXaJB2M4MMdsmA8L2ZQFsh5Sx68c9PHHOVmGB05MO5DoAoXMEOpFvJz38tLU
	8d0UI9ttE19PLhMQ75Lel2a3hn3M72wpKahqacF5ljIUwe1YByYOjiKYGrCZZYOmkPR+8wfdYVYJr
	MZaypG+UbipsSl6fmcsT2uiKE/GoLzbkt08Xw3EBF4w+srNP3Omt45KpKC0w3QNUUF9GdYColNcTq
	V9C3ulzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnpyT-0003ho-E0; Wed, 17 Jul 2019 19:52:25 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnpx3-0002tT-1y; Wed, 17 Jul 2019 19:51:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563393048;
 bh=TaaSa9UWk3OInfMHWpymHM26JHDzB6QlKTbtkv8UQ6g=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=H4qntAtc2g9NKtHwJyBLLU7y4/TuDyLFN3cyppNzXbUt9NrTnRdDT2/vJjC7GoqYO
 b2Z6Amp2Awx+dhLaXEvOPJWjxCLWE8KHK7bvIKg9yqFLziPbn8E4LjrQ4ekhjWWCB4
 Xsqy2cg1wXLXiXxcbYznnRJOo4C5ev7Um/euKM34=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.103]) by mail.gmx.com
 (mrgmx101 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0LabZr-1iACkK3FIl-00mLJo; Wed, 17 Jul 2019 21:50:47 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH RFC 13/18] pinctrl: bcm2835: Add BCM2838 support
Date: Wed, 17 Jul 2019 21:50:21 +0200
Message-Id: <1563393026-17118-14-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
References: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:ibrv61wzbRpwS4rfeadIqPkOf6Z0fPI+HM0R4/oQmC8nowECHKg
 gqqxlk9zhwPTEepOfYQdwd1G16ZdhrjsbBn+CKjRERZBqxp1o9Kvgb1WFGbfA+SjgumUWdU
 1vGJ/aOVomqxQZl01V5yLoggD2FWFROL6ttC+X+hTwOKyGcqUjm1njXDD2MtyEq0fc53cpi
 dv3GBdTB48Q0Z1sG2oc2Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:KLHBeHRKL6Q=:pBQIs2tT+rkNqc43PSOX+s
 QxdYnRLqpJ864Clz+ITIxxUUFTLwjfagvaQi6T8YNbR5Jrnb/tlsTQxiD9cyok3CRmh6Ahp/4
 zol7e37NErvs/OGi4Sk0c0lMNpBeKsNtOeC3b3WB153h2meHW15XaoNS+QdQvzZgTw+eNIYul
 TVo2Uls6a/Qmno3gnIW5UioyNXrK8vL4372Vk8OM6G4+bw+ysaHXvt9ZSIO+TziouOQLgaKg/
 k4b7bIxkrUxzsBds/8obnuRgg0aJIlYgGVyzlYDfCgVHPMXFQ2eRGTiLAlideYh9csjudkpX0
 MH+8g01AZmPJNEuCBe0VIDoOnrEIX//IuPB970ZeJrpJ6NAqT008zmQjlbWB0mraRFIKolVze
 +r5vRZbVOd+6qe1HI+2pzHVsFUa8HIxGkxbUBbqk/U22li5XvJ77ZsqcwjekFc6VtcfLIAr98
 hFGs8GSaACG4kikwU7852LDDLqR0rofAP3FgHsTwCKYCIBl6YGjXl5D17qdsxPpSoi/+HAPDE
 8ldFS/Gz518+e7q84GFGgsjD2RiKTAwgQAA3I1d1YPthiNYiSUdENTmrVbM4d0VIdX7miBzSZ
 Kg222dHsnKsipaRB8gX6/3YeB3Ae9QIWRYANk59j8S1ucll1jV5WtikDHohrUAreG1uwlBx4H
 /gpT4HAe+yssxWAiVZmHaPNNawvmuZBjdk3Qp8mmwSkJMRCl7zJf2lp2yyLEXYL7Xt9SeptJC
 yRj0s5sHY5D6gF2aIIEBQ9cgQqIMxgIuzk667D/C/lvwlzcNLosJOyNszGsDVHfrhWDCQm7gH
 1sa67xgUKLvxi+YPEiX34KDpgYevE+dAtya7/+mqeZ+obyhInHtsAugAUrsk+pQmKboosdu1S
 +Ta1Uc+Q4C7ayJJgG2rih93Egc49V8/1j67UnM3udmGqBSpP/EEUENJG6G4k24kkH2Zx3xpZq
 v/auVppP5Y7jFoO1GG1BOpsQbSazzMs+oDeT2WaaOEoyO7EhkHejPWoJZXMsGqKyEdtcFgqTZ
 HZLBi9GaZPIAQxpXDZs4arTkNqAY4sYmHdoed1D46/Ilhqk2jonnLZ1PbSCbU+G0i60Dhl2za
 4A+IvHEqsyfnOI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_125057_405816_8142E9A5 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pinctrl on the BCM2711 is not backward compatible to the BCM2835.
So use the compatible ops of the BCM7211.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/pinctrl/bcm/pinctrl-bcm2835.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/pinctrl/bcm/pinctrl-bcm2835.c b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
index 029adad..7f7cc5c 100644
--- a/drivers/pinctrl/bcm/pinctrl-bcm2835.c
+++ b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
@@ -1057,6 +1057,10 @@ static const struct of_device_id bcm2835_pinctrl_match[] = {
 		.data = &bcm2835_pinconf_ops,
 	},
 	{
+		.compatible = "brcm,bcm2838-gpio",
+		.data = &bcm7211_pinconf_ops,
+	},
+	{
 		.compatible = "brcm,bcm7211-gpio",
 		.data = &bcm7211_pinconf_ops,
 	},
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
