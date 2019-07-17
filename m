Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B233A6C1BA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 21:52:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IlFK2Wl6R4AY8Qrtl+po/jpKnPWSg962W1b/iEkx0Kk=; b=XuCGN0ijPnwOue+M9H8TjqTAqQ
	X26Trjz4Zp8b5SI7EDopZdPoWFipubJQo12N7upvq39ersk1bpmVLMKrBHP06Gc2nE416K8thKVAF
	gNaSX28tyLOf3px774UiizOBvMMXgt+Wr5EEmPnRQky6y30A/a7vsNLhcEVOYHvBfUOTmg4FyDZLB
	OuPnR6jMiY0AdolMyZIZ5qLgZrB89k6P6KY984Wk6UVV4/ZzTDwPkiUxxcm3udpXA4ky8BlRlR8mo
	AL90ayVcAcnHP34WICIyiaG4/bEcQOPQhy9erxyymHnHT5a6dkl7+LntCaKcYtBJnokbCmIS8ePRB
	6e/p3ZOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnpym-0003x3-8k; Wed, 17 Jul 2019 19:52:44 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnpx3-0002tN-2r; Wed, 17 Jul 2019 19:51:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563393045;
 bh=goqH1lVWvB3A8xH2hajIJ5sNIn+wikMpmDskA+IKhdU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=W2xQ+RrLwflxplh62uEoXGgQ4+Ak0dfAUBFFB6bVrNJlXBPq8WaEuLysrE+qdE0aq
 AhP87SB2MjvrMDXVGwlsMRnqXpDdAdfMoukrIPKqqRkWR6QV0yQm9vW2vlaqKV6x2M
 8Gwhdwgd5wT+ykQbrBvVOe03teshIFIFrTSvg/fQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.103]) by mail.gmx.com
 (mrgmx101 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0Lfolq-1iFxuB18m2-00pNjB; Wed, 17 Jul 2019 21:50:45 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH RFC 09/18] mmc: sdhci-iproc: Add support for emmc2 of the
 BCM2838
Date: Wed, 17 Jul 2019 21:50:17 +0200
Message-Id: <1563393026-17118-10-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
References: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:SWE29vUHdmdIFrpCjCd58D79kHyqz1N8szIfijtwj8rKTcnduZY
 ploABNHAngz7QO72XIWfVqbxRp4rzr4LD/axgfbBiSpK1B30SjIUQ16epNqBw97VHXQRAE3
 0B0HO80SMN0L2G0DVMut9AEu+KoULIk7nHZUSXPZWsQJQpJkXTkXJVaJMpkiAKtf87wvBjt
 Iqv2DgmcmwBdvAGPbgzbA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vLZgQM9vSH8=:BGmWsgK8TftQgy8P9ePPGR
 7J/GLJLyYyZIzalW6SuGm/InhyKaDxHPQK6qUP/ho1rfVZJ38wYxX9WmyeiqhFB70gowkan7Y
 BtLC7+9LM0GP3yd+T6D97AF+K93g9hPtBpetRSv5gZIEDpE8Za41JHRZZ2IYTGm2Jve7LI78N
 yz90J+kXhFakgdBKXKHPZ5G0D6aPOA1T3zybGVbLjD3/3gtLIOOdl6hw8W+OriooktGMO+2QE
 XrBqsb7fgAM9CIZa9klkO1YGH5AIqGvw06oX5hHyVfN3GVwITme+5nj0FNG5rwYegyZqb++FV
 0kz9NHaWgBumAhoChWwBntrbql3mOuqdYQWmj9XDbmCAUVjzJIKvykJVdhAFUb2v6rUJtUIYR
 uK54C6q5UObNc9xAW3Tvwz6tpMmpomegz/mv166MEb2COSNqAug7LwO5WuDLBydF/VGvlZWSX
 FYB0m7ZCSeMclNMOVP51bba3DM6xpvqd111YzZGyoRA5/5tiyv9mKJi22Gtxrn2Pl4IqXzzY/
 6CXytmy6r5wS1hK5dsrIXmnL+AD1F7Lqchybewf4AfRZ7n5JdqXCBdiURVuiVW4SCMPPJcW0h
 dwLEOho3JHn1r/UibekEfHgy8l2nNI2LkPT0TXT50/Khb78icjeI69X3neJJrjskmm8s+nQWL
 SYLboLl4NHo/IKuujXs7k9vU0MtWQKpLth/C1zEWlixPlbpU9OQVjDCJZiImdpn29UcpRD6oO
 lBvafHlJ8rIRbBAVTrwqHPr5J1yhG3eF+1ztAv/bOlBEy1zTAxO3WIVm8sdtxFGHlBYoIJhND
 f2KHCH4yzAE1cz4umT9IrvJUgYtD2C37Kl/AXVjuYWez2f9eToq4wr1sUWpc7VNDOGS/Xnq10
 wtO6zbGC16JGFmr08SW8BLVV+owRoTk98WCAqgBF527hqFUdxL0mEBMeZDLced7PB2+Tafb8s
 V4P0YQ47GULhD/FZXori1ZojsK3axMZjlkWmmwlC6QgZxe04kKQHaPtgkwfEJSz8SZoa2P5xM
 rTGrSDY79GkwplkbT0RBX1aZ8gBDnDN6h1aou7BzXOcxdKLfCEzjwTMGPAZ+QGtoTuPIRjn9R
 rBAUQQGySt/prg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_125057_434843_F5B46D86 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
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

The additional emmc2 interface of the BCM2838 is an improved version
of the old emmc controller, which is able to provide DDR50 mode on the
Raspberry Pi 4. Except 32 bit only register access no other quirks are
known yet.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/mmc/host/sdhci-iproc.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/mmc/host/sdhci-iproc.c b/drivers/mmc/host/sdhci-iproc.c
index 2feb4ef..353cf997 100644
--- a/drivers/mmc/host/sdhci-iproc.c
+++ b/drivers/mmc/host/sdhci-iproc.c
@@ -261,8 +261,17 @@ static const struct sdhci_iproc_data bcm2835_data = {
 	.mmc_caps = 0x00000000,
 };

+static const struct sdhci_pltfm_data sdhci_bcm2838_pltfm_data = {
+	.ops = &sdhci_iproc_32only_ops,
+};
+
+static const struct sdhci_iproc_data bcm2838_data = {
+	.pdata = &sdhci_bcm2838_pltfm_data,
+};
+
 static const struct of_device_id sdhci_iproc_of_match[] = {
 	{ .compatible = "brcm,bcm2835-sdhci", .data = &bcm2835_data },
+	{ .compatible = "brcm,bcm2838-emmc2", .data = &bcm2838_data },
 	{ .compatible = "brcm,sdhci-iproc-cygnus", .data = &iproc_cygnus_data},
 	{ .compatible = "brcm,sdhci-iproc", .data = &iproc_data },
 	{ }
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
