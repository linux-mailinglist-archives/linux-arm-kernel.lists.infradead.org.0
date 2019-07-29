Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 463F47927A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 19:44:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=c+9TUdQlvMUu6MVcblblBOuSKaKNI0OaiH6K39KMp8c=; b=Itj7iOqwEDOwGx0edg8qjDBeTr
	jPdHNbXmRf0x8ZdNZjg0v4JRQK/nlfJ6LYODBXTvmRf1sdv6sqgevjDhLxk22bRv4SY6YfeTxdqM0
	Xk7eh17L+T94pvSNGKZoixyTJ8m/Okz2na2tZQ1++ht1kCc6soYV+EN0O2g7rvEVMl4lj6j8FHusQ
	xHCweehpI+0swg1lhPq1tv/IoZkfRIHi3KLv9EPanjx3M/8nV/gMWB+zcWdRXpeBBFVmlyC9TZaOw
	YCED+AYI4lxZfiCEQrJvZ0YW3BeAuD9quXfd1+D9kd4kxoGLD5+VOGaxmPpUpMG7IU59eV7Ej/P2E
	dIZ3e/UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs9h8-0007BP-42; Mon, 29 Jul 2019 17:44:22 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs9fp-0006EE-23; Mon, 29 Jul 2019 17:43:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1564422143;
 bh=uoSEstO7wh+z/Yh5O4xemCJ/Lip8M0+P7e9/vs/uBqg=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=LUYzoyK7AqrnAmb+JoOAKe6C62uiFNbkaRfz9LRBUHcaNbbLwpnqwttQbQqmpkF0g
 1s5F7KynXRT58c+oaT13Z00UfOq508HvgXf1m/0a3GjtNfxaztYxmi4OqNLm/cGMrW
 pgmIqMjUdc91tSN5wzB6dCI7EX0oaPwGws0aV0Lk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([185.76.97.79]) by mail.gmx.com
 (mrgmx001 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0LzskF-1iV71A2pwh-014xXw; Mon, 29 Jul 2019 19:42:23 +0200
From: Frank Wunderlich <frank-w@public-files.de>
To: Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Allison Randal <allison@lohutok.net>,
 "David S. Miller" <davem@davemloft.net>, devicetree@vger.kernel.org,
 Eddie Huang <eddie.huang@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-pm@vger.kernel.org, linux-rtc@vger.kernel.org,
 Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Richard Fontana <rfontana@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Sean Wang <sean.wang@mediatek.com>, Sebastian Reichel <sre@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 "Tianping . Fang" <tianping.fang@mediatek.com>
Subject: [PATCH v3 07/10] mfd: mt6323: add mt6323 rtc+pwrc
Date: Mon, 29 Jul 2019 19:41:51 +0200
Message-Id: <20190729174154.4335-8-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190729174154.4335-1-frank-w@public-files.de>
References: <20190729174154.4335-1-frank-w@public-files.de>
X-Provags-ID: V03:K1:/8/fLbWdSh3bVNpxmnpL3FPeT0+linP7Us78MAvnUZuQdGm5VkG
 JCpRlGkofnBlmrzQndWukonLRDLXi08x0zDn1J2XNV36jNGQW6hd1+5DfsE/9deZ0bsiaMA
 edVYQT2hdUbxeDb60rreTPNXvSJK/NOu196puTcD6SRN/wJAMbc4VxPi0BzC0WTQRF39r0X
 WD1BP0vy+5EW/qzQ+Ojwg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Dq3eJEN+210=:q2LebVnxWDyoNhAxtkTf2Y
 +9IwdSRG7/gRTn22h/ok2pRBgVfTwU1TmELeJPQmoQ0DGqMI6NaFOLyCrVgT2bcnId+G1Ft7i
 IXtNiOHfaM06LuVwQUAZCoEZENr90Lmd9aymi9DMhDjetx+F1fno4vKDOPaKiUlcmOaUbQNN3
 YCH/EoVoPOoGuvhaPvEtfSGKARshmEWVmFEGagr8Yze9qNWluOmMDyQ6NpXvS3g1gQHfHZwli
 PcpMOeKLdtvStE0x03reIA8Ma2Q6wTX3AqILxFpMUOksLsh8QxEJUHGlf/2L5P/YmDlAVESsN
 FoLWBu9zxex0dQUtlS60C+ha1FuczC1xntVCPw+qwbYE3HDnp4Lvn7ZiA8qQmyTeqoASOjDPO
 Naz0f0rVc57ItsDJFjAprh3obonT9WHtmuQc3017/DQoCx4O/GPS/TJgs4/mfL18WMcMf8vN8
 S3b8egTFabdqYWUu0wRTiSrlxc1zsppxQHaB4NeTylh1IRdxYo07C9NbcNOyxFpPg0bGbOMNS
 PhEfxl6jJ1EafnbxDo5wMcSEBFl58hcWTu8Z78VDhPWEJvkqC62Zf/juxT5KlRE4cVm6WYs+e
 qfiMQyD9Xa1vqC87EAQNNRVtjI8wVHUwwGvl4RkCV6xhL155YxdfCRGM65WVvC9x2u1vcSlw9
 NRpHOknBYtHL067Vu5gRVBXKwBdHAVLGwEF+vxW0J3XNLRwLlQOf8a274YXJyvrRZAKk1afTg
 roSQmVKesVkl9U8RHuvYQbMO/AEVYvYrbj6sRFVOHe1eWk6gROBBXWqCdfddYpTqHNCraQCyU
 G1MbEO4OUyqttPWApGg1LUptcoa3RqkPbPc2FCd0rftFqVmiJ1+fePbfLoL0L6ShvaapudN6q
 Ux7VPUnCNkVgtMMUWiymUuoOx8V9OYDoODl7RgW0WxXPvQ3q64qJ/5GCAPuAhvyRfvR3EGKvm
 6lvgR5z6trDR4Nc9YarQW//4jsXvJvmzkv5BgJ8EYi8HSI11p0QHJUBz6oZkGMmtAKVWtmsTh
 LKWtjGkcFuYwZVXx/JQ8GEOkHl98NLAExD5GiQOjWuSoQNo9gf6mGICPQaL0iRtJtD18PDOHi
 /MMfS1tSjmIsqI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_104301_394307_D3248FD0 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Josef Friedl <josef.friedl@speed.at>,
 Frank Wunderlich <frank-w@public-files.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Josef Friedl <josef.friedl@speed.at>

add entry for rtc and power-controller to mt6323

changes since v2: only splitting, second part of v2 part 4

Signed-off-by: Josef Friedl <josef.friedl@speed.at>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 drivers/mfd/mt6397-core.c | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/mfd/mt6397-core.c b/drivers/mfd/mt6397-core.c
index 5f7070267c9a..a4abce00f156 100644
--- a/drivers/mfd/mt6397-core.c
+++ b/drivers/mfd/mt6397-core.c
@@ -16,13 +16,24 @@
 #include <linux/mfd/mt6397/registers.h>
 #include <linux/mfd/mt6323/registers.h>

+#define MT6323_RTC_BASE		0x8000
+#define MT6323_RTC_SIZE		0x40
+
 #define MT6397_RTC_BASE		0xe000
 #define MT6397_RTC_SIZE		0x3e

+#define MT6323_PWRC_BASE	0x8000
+#define MT6323_PWRC_SIZE	0x40
+
 #define MT6323_CID_CODE		0x23
 #define MT6391_CID_CODE		0x91
 #define MT6397_CID_CODE		0x97

+static const struct resource mt6323_rtc_resources[] = {
+	DEFINE_RES_MEM(MT6323_RTC_BASE, MT6323_RTC_SIZE),
+	DEFINE_RES_IRQ(MT6323_IRQ_STATUS_RTC),
+};
+
 static const struct resource mt6397_rtc_resources[] = {
 	DEFINE_RES_MEM(MT6397_RTC_BASE, MT6397_RTC_SIZE),
 	DEFINE_RES_IRQ(MT6397_IRQ_RTC),
@@ -38,8 +49,17 @@ static const struct resource mt6397_keys_resources[] = {
 	DEFINE_RES_IRQ(MT6397_IRQ_HOMEKEY),
 };

+static const struct resource mt6323_pwrc_resources[] = {
+	DEFINE_RES_MEM(MT6323_PWRC_BASE, MT6323_PWRC_SIZE),
+};
+
 static const struct mfd_cell mt6323_devs[] = {
 	{
+		.name = "mt6323-rtc",
+		.num_resources = ARRAY_SIZE(mt6323_rtc_resources),
+		.resources = mt6323_rtc_resources,
+		.of_compatible = "mediatek,mt6323-rtc",
+	}, {
 		.name = "mt6323-regulator",
 		.of_compatible = "mediatek,mt6323-regulator"
 	}, {
@@ -50,6 +70,11 @@ static const struct mfd_cell mt6323_devs[] = {
 		.num_resources = ARRAY_SIZE(mt6323_keys_resources),
 		.resources = mt6323_keys_resources,
 		.of_compatible = "mediatek,mt6323-keys"
+	}, {
+		.name = "mt6323-pwrc",
+		.num_resources = ARRAY_SIZE(mt6323_pwrc_resources),
+		.resources = mt6323_pwrc_resources,
+		.of_compatible = "mediatek,mt6323-pwrc"
 	},
 };

--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
