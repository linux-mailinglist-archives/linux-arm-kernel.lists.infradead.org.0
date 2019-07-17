Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE986C27A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 23:17:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VOHp/cJZHev2xNkL/uHaJKZYQsIwgYIbFFNkd4/55gc=; b=H7g
	R9jXi2EUg4dCZ7HBybDf6ukUMucT8hJGZiFeWs4D/ThnplB0r2iKkChIIBv8gkB0cftIAS6Wmq2DZ
	cErNTDlwl5H7H02aQ6r2q+CM+BKqRJdbiWh9Pco/utYYeiTUKBrxMNoXGQwU6of/lnLhFiihgJ0mk
	LNQIbKf4YmjAYUd35PTIAwGng6T3J1P3eW8rCKaoIyALpZFHMxWSGPhpo9AMhTIsH1Y9Az+zgo37O
	ZF1JHJ5Olz69dDn2LTCq3V+O4AGJar4BG/qnN1KqPwFegdtAarPB6cag6vMftqQqp+FNjBx2z+FqS
	a7FJ4viKSQfy1pZ0qlgezuC9q10u7Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnrIu-0001QG-Hp; Wed, 17 Jul 2019 21:17:36 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnrIN-0001Dd-EB; Wed, 17 Jul 2019 21:17:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563398201;
 bh=WCvMKXDBWKXwnYHjZMMZNVbZNpb2SQ/h74IatwOILpk=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=RYXo/GhcP+xozWXeTehL1uwbCDeDlTOaSV14YnuDlhIJldgkr31zreeYY/MBWiDI2
 RW9Bjjn6Gqpkk9yf6XKvauY5ZTSe6tKELH4SFWDaM1F/ZYsiHqR7N1q7s89s6ra0aS
 TC7AIUqDGpyrR9D8ljnmD8Nca4wVejQ96F+D3q2I=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.103]) by mail.gmx.com
 (mrgmx105 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MHGCu-1hjTYm3k6S-00DJu3; Wed, 17 Jul 2019 23:16:41 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH RFC 14/18] HACK: pinctrl: bcm2835: Implement legacy pull for
 BCM7211
Date: Wed, 17 Jul 2019 23:16:00 +0200
Message-Id: <1563398164-2679-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:3Te/qeP21f9Rlc/FvaGmfk05uRVCEXdDCLUdyTOaML1i2CWISmx
 XsU6ceFsnjyCWvHrPFjmeN5YEbj6ypngSKgMDbdNYO0EST/XX4/0zWfBDUzm0kY9sVuIyVZ
 etPg0G6Gzbm6zWI7aezIyQbQFzRZPRsAuz7OnIZ8Def+486AOqMEPNk/6jr6KYO53Mw6/8A
 Sw8ZgS1ywrYcvSoLFRwbw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:YQPbP2QatIQ=:jAgQW5+YLaCVzPLRmLvRXZ
 HQVphSNed/dOaajpvSpFRpjyvabuS7tokZHaSH4QI1nx5Ukgvgm0A6IFmiMLLZbZNwjKwYktg
 JEf4uzGEQ12wXteboPRpHHwl9Oi8Wn4gKg9OkCZsZ2srH3cn9+WSCmUrXnLJXUddG3DW1KzL1
 VCqqf179CwpyRSy9UrmlHIeKClcg7as4EAKBy+IpBiiry2zi1J/7TheWvrRlPyXSutpTNmYoR
 Xkg7EyeLehQGcgXUguPBOBH7GHpp64xNECZnNaoyHEgycxrXelt/H+/9fXVMdEWl/3MWcCVeI
 K7tr4WyPZNziH2NCIHkTpDTaZfS7fgR5woJCnXKaOoDXaq5i5/snax0I1fgUCaXQUlJQcKbMZ
 lNuBFuHLaTmuccQJra7xP3eUDaOtDKBg9hFqn23gpbVsnUVEXMzbTFZd2ooM+GITBg3vdglcm
 8WBs4F1GxC+qCDWamXLIzEGjFBEZ5suz3cmetGEofocxNdwXjrDvm06H9asSKnzd8gktYWdAv
 Xmd9zhwrK68AF6gwm16hu78TCXtgUbM32MgRm/rKG0CAnaK5aJtcTO7wdWIo+2UmlYhfbqI7w
 kzX1b2l1cdGR8HmxiyrseE248yuhV6HyCMki8zVBrYm0zOwpNbXU9UrMizgyIfgsDalRLpU9n
 jlrGSHn6t6KBeGSH5KnLRRJcKLd9aDa5LdnfsJSaQQHa90S622Y2BgXPeI040W/QwV8HZfz7+
 D2vmkxwuEADRtrYcP3ZKK3lXxeIBJyClQF9350VQ9o0ZlU7/Kgo4u30+YVDMdMAh0CLaeUaIa
 yLIVznRpuYoBySsmivoObLoGD0F7yKwGJjCFDB0rpAbuFDHTgierIvME8So3+ojb4ibUO2Qet
 Pc5GM9clwdcmGRwQPYojLS7jXz10LFB1eGDEKxuHb4mTCYdgQy1mUhijKg60KLrCYim5klt0Q
 PjazMync97qId3f1O3U0oYCmEJPYZyF8b3BU7lND2uwLvCxjbDDF8XlMWjZOhWzFTy1/3E4QY
 cUiB2sM+yZokwxfgZTeOtiBVw4Vg/Noru1+y9vdHojUa0c3s16g15G2kJXXTquK22THEWrytj
 FqIZ4RrDtCGQj0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_141703_799940_B4EB6B4B 
X-CRM114-Status: GOOD (  11.08  )
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

This temporay hack is necessary to make the BCM2838/7211 work with the legacy
pull configuration. The better approach is to convert all affected DTS files
to the generic bias control.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/pinctrl/bcm/pinctrl-bcm2835.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/pinctrl/bcm/pinctrl-bcm2835.c b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
index 7f7cc5c..56161b6 100644
--- a/drivers/pinctrl/bcm/pinctrl-bcm2835.c
+++ b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
@@ -1003,6 +1003,13 @@ static int bcm7211_pinconf_set(struct pinctrl_dev *pctldev,

 		/* convert to 7211 value */
 		switch (param) {
+		case BCM2835_PINCONF_PARAM_PULL:
+			/* convert legacy brcm,pull */
+			if (arg == BCM2835_PUD_UP)
+				arg = BCM7211_PINCONFIG_PULL_UP;
+			else if (arg == BCM2835_PUD_DOWN)
+				arg = BCM7211_PINCONFIG_PULL_DOWN;
+			break;
 		case PIN_CONFIG_BIAS_DISABLE:
 			arg = BCM7211_PINCONFIG_PULL_NONE;
 			break;
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
