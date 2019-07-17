Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC206C1C1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 21:53:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gR3m9PKnWaXyAAzz437Qe61VFuNiL2V8GQxu26INjaY=; b=JpeKULAtKSfJV4YaNybKJt1O9n
	GaUxNti9KSPFziCzW9/jDIIqXu+lA51rPdaCYW61F/SXBxkp9PzQ7giMhdypRk6OE61xkb7EwECZL
	DkOc3ZrYJ6C5rp9ODju9sVLAqRq7mWB1LWt0fmMyfR3saLcoWxhQkYgZhXYrN7WHp5yUOlrV4rtvk
	HJeeU3UaQ0DTwaIkvWNMlvdgiaQF/iDl+EjItZChD3KeoOTfb4FUTgE6+CLB8gaM7MQywmcZu5/FK
	6AEyH8dS1s9tjio44ZGqtkz6/GtfZhfPWa9fmCmCxttiszb8Hp2JUzNtnCznBf3PBJoFy+3zqhWno
	eM6k9qww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnpzx-0004sq-Dr; Wed, 17 Jul 2019 19:53:57 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnpx3-0002tR-No; Wed, 17 Jul 2019 19:51:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563393046;
 bh=WOVNn//5VSTYo4vhSDrls8pRJwZusUo3NZilyrpEYh0=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=g5u7Yi3IMzHegEU2nfFoRDxcxJ6E1kSVDtFMnCi2hfviO4+7K94kCtDHOyZJRoZWU
 02OBsa+FIjFjSPiWIZnyIwqwx8VJueutplucJbjUC9APezUHIwcB1eSnhNTvYJjZk+
 ZmEgPtU187ishh4fkb71zdWgUaLW/TB8Fo7Bbyvg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.103]) by mail.gmx.com
 (mrgmx101 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0Lyi0B-1iYKGX2Ait-01658K; Wed, 17 Jul 2019 21:50:46 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH RFC 11/18] pinctrl: bcm2835: Fix BCM7211 pinconf handling
Date: Wed, 17 Jul 2019 21:50:19 +0200
Message-Id: <1563393026-17118-12-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
References: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:q340osXNt2MIqoSmFRq896014RbMyi72mNiv8JYjo0i2OK0dvz6
 8QqUWu7jdo9MJbinU2FVN6yC6/TeldleHoOflJ/uIEkGZqkMDr+2FdoIMrIDtbU3/pd95x9
 +GB7AAcdgftshHhjhH/r2bcO8GxUrQliEegZ95qap9h4PcQjsBxHjkVos5/c4EZiJEJtiZi
 lLq4qRDbtHZ1V6/jjmCfA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:BXBDGoF3MMk=:Sy4/oQ1oFBn4ZaIfiWMWvF
 9lX86q5Ks1VH96ihXXsbC/5V85o4dnhP6rfLb8tTsjC1uMR8yr7AJdDodBc8r5Y+qxewNbkZn
 Pj5jp3zd8rUYXdkMK/kN3L+JYBUPaV1LaVKDKrIkdp2NZQpLtheMsSfrSrOyZZypcaOnn6ulq
 tDuNQxJEKfogcIWTG6fMxgbh8SEMiWN0qnfgIpqGuPYX7JgclQY5n6fs30dhYEWetN8/qDPQn
 ZXzZscRHdgA2lW1C/m8mU2LsT+R8ckkTO1744YQEgl42CfkasbGgcULF5O6KLA12vM83n9wgC
 jaWbpJUILBaTiaekEpph5jFdtkFmhXPPmyQTQaYvcOSBlnrTBeuhWAtV0G2MndawRznA4nWE8
 DETodbg0e3jd93fLnW6Nlf3vk/6vcbkmxNDdFZlOAb1XI+a10TbNXm7cdRAgEd2aNcK3Dy0Gb
 jRrlSuVDvytZwpViH9PXGnrRA/3ob2R5/Vylmng4zRv7RqKoRdKgwkcZhQRGLmM2IvjU8rkiD
 QNm2vNIlSp6OtjEmHPlOX+yAg69sNCHK9ab8krAGHylMvlsR2V75c6vvY5l3t+LsGRl8/XaDn
 2JW+RImM/g5/V12kYlbG9GOBjIzoQ1fIxad6jtZXaEAtnUM3+Ek92ld543pIq5dR4O9wpc5It
 ylD4R2kIZqtas+Jho79q7zu3qZ/JaoT8B/o0+KDwaZclKBlJ0C+Uro+KyYJD6gbXxgXLO3m/X
 H9d5pw7HU//dl+J/phja92ZWcJ6zK6e1Dn7jTYTdZbHxSF74dosHErtFFs7N+88KU+L5QmOUo
 xKLMJtH5dhpi8hE4snu4MRrF5lAUaPH0zQiYinUoyGkAxbMP14JFMkCtgQjIAntqiuOH2HnlF
 jNAyxdg1XhYRVF6uragysumbTWagkbna0wJ/vN1fLtYdXMyeKcW1V6Bs/KQhRyeRdY2rDwAPM
 aYpojh3cTNjQCBu/HB5T6Mnfdw/A+meX3VzONkrv/S0GOsyVBGSFbfVRsLUuRb2mRefkFnF1X
 aZuIZEQtUt80jFG5THjDHFa3J2Bhsr++/BjnvTD/Cm2YynX+QXZA7eKBSF+8U5/Dtp+Gkve3A
 01SByvA0ifJ3V4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_125058_080498_DC3C6883 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
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

The BCM7211 pinconf doesn't look correct and behaves differently
to BCM2835. So fix this accordingly.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/pinctrl/bcm/pinctrl-bcm2835.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/pinctrl/bcm/pinctrl-bcm2835.c b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
index 35d9f95..029adad 100644
--- a/drivers/pinctrl/bcm/pinctrl-bcm2835.c
+++ b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
@@ -999,12 +999,10 @@ static int bcm7211_pinconf_set(struct pinctrl_dev *pctldev,

 	for (i = 0; i < num_configs; i++) {
 		param = pinconf_to_config_param(configs[i]);
-		if (param != BCM2835_PINCONF_PARAM_PULL)
-			return -EINVAL;
 		arg = pinconf_to_config_argument(configs[i]);

 		/* convert to 7211 value */
-		switch (arg) {
+		switch (param) {
 		case PIN_CONFIG_BIAS_DISABLE:
 			arg = BCM7211_PINCONFIG_PULL_NONE;
 			break;
@@ -1014,6 +1012,8 @@ static int bcm7211_pinconf_set(struct pinctrl_dev *pctldev,
 		case PIN_CONFIG_BIAS_PULL_UP:
 			arg = BCM7211_PINCONFIG_PULL_UP;
 			break;
+		default:
+			return -ENOTSUPP;
 		}

 		off = PUD_7211_REG_OFFSET(pin);
@@ -1031,6 +1031,7 @@ static int bcm7211_pinconf_set(struct pinctrl_dev *pctldev,
 }

 static const struct pinconf_ops bcm7211_pinconf_ops = {
+	.is_generic = true,
 	.pin_config_get = bcm2835_pinconf_get,
 	.pin_config_set = bcm7211_pinconf_set,
 };
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
