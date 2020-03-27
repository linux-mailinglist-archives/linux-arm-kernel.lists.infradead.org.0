Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF34E19586A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 14:56:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1pqbnSizu074P96UYfBIaeP70a2dFvwLdbh01oicO1c=; b=AAvw1i8vvpGLt8
	occMj9ZXcjKev3YTOIEN3Fio6LsuDGX5kT3C0ykXetetSJWw2yoz/crv+Rn4ku2MRihcLM4xYgRhW
	S1PfaoyxBrzmKIRd1Ozl1sdiuOpTum7o1VYTD9KlKCli448ThPM/XZxFv1urtBRvJyD9aBocrKv6k
	DM2WTq5sMOPd7P6B+e+y7lNgZxNpKGjN8HjskPj0SEKU2P/ne4rojB43Mzu7iBbGg9BcTi0HpjISq
	Z/1n/FzOHPZ+u3gpbuFybU4BooXymAzF+jsEDXLGOYWVKqnqjVYfqdyH+r6P0X15HwT2OmWBFxVHa
	DcTYL+gPtncBbNrAy58g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHpSz-0007CM-DO; Fri, 27 Mar 2020 13:56:09 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHpSq-0007By-3I
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 13:56:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1585317359; x=1587909359;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w/C/DGhy+XVpgJUliLirqFOfdwQNqUxARZ0xfZPOw/o=;
 b=pRjFjC2CT1BOCxtWhQ4WqoOP4CBfGpVeLYqIaZyBlStdd/+spbrCGKi5HyjPKmKq
 sPIRh1pgqBNREXH7K0jdkSkeP+HbdNWTH41OTsRygUi8lPPJHlmCgKMz4Q8rCJqA
 N+8XsnO7Fg52sGiSRPO0x76jzHQb2/76VdEu/W7+j6M=;
X-AuditID: c39127d2-583ff70000001db9-08-5e7e05efcfcf
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id A0.83.07609.FE50E7E5;
 Fri, 27 Mar 2020 14:55:59 +0100 (CET)
MIME-Version: 1.0
X-Disclaimed: 1
Sensitivity: 
Importance: Normal
X-Priority: 3 (Normal)
In-Reply-To: <20200327133624.26160-1-festevam@gmail.com>
References: <20200327133624.26160-1-festevam@gmail.com>
Subject: Antwort: [PATCH] ARM: dts: imx27-phytec-phycard-s-rdk: Fix the I2C1
 pinctrl entries
From: =?ISO-8859-1?Q?Stefan_Riedm=FCller?= <S.Riedmueller@phytec.de>
To: Fabio Estevam <festevam@gmail.com>
Message-ID: <OF690DE83F.5FD7A3A3-ONC1258538.004C346E-C1258538.004C8958@phytec.de>
Date: Fri, 27 Mar 2020 14:55:58 +0100
X-Mailer: Lotus Domino Web Server Release 9.0.1FP7 August  17, 2016
X-MIMETrack: Serialize by HTTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 27.03.2020 14:55:58,
 Serialize complete at 27.03.2020 14:55:59,
 Itemize by HTTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 27.03.2020 14:55:59,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 27.03.2020 14:55:59
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrALMWRmVeSWpSXmKPExsWyRoCBS/c9a12cwbwdHBYPr/pbrJq6k8Vi
 0+NrrBYvtohbLNj4iNGB1WPnrLvsHptWdbJ5bF5S79H/18Dj8ya5ANYoLpuU1JzMstQifbsE
 rozlh64zFRzlr7j/YCpzA+Mm3i5GTg4JAROJGz1vmboYuTiEBLYySjxZN5EFJMErIChxcuYT
 FogifolPf1rZQGxhAV6JTW9nM4LYnAJCEh1XO1khasQkJqz7xdzFyAEUt5BoOCUIEhYSMJf4
 f38rO0RrnETHxE4wm03ARaK5axs7SLmIgJrE6Xn6ICcwC0xnlDj+9BITxAmBEmd3bgFbyyKg
 KnHw+ksmiFXOEov/XGABaZAQeMUk0da/F+wGZgFtiWULXzND2HoS/3+eYpzAKDwLyTuzkJTN
 QlK2gJF5FaNQbmZydmpRZrZeQUZlSWqyXkrqJkZgLByeqH5pB2PfHI9DjEwcjIcYJTiYlUR4
 n0bWxAnxpiRWVqUW5ccXleakFh9ilOZgURLn3cBbEiYkkJ5YkpqdmlqQWgSTZeLglGpgFP0/
 pZa5JXBWZaLnGY5/C05lJe/PSnuz2c3uxvl0RqX5/IzWay+zbmNNrb6x5EtCppOc36fZXYtT
 BJQXqmw9ZGM58cXBaK/9b3lqZYLU/zK+crq/JZ/PUfjOQbVLlpf879cxJP2pE7RIjG0/dmBr
 csgGlvLsHPWZH/2nT8+3Zo6V7hM//+O3EktxRqKhFnNRcSIANlITtnMCAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_065600_283595_0298554C 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [195.145.39.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: stable@vger.kernel.org, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
 Christian Hemp <C.Hemp@phytec.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabio,

-----Fabio Estevam <festevam@gmail.com> schrieb: -----

>An: shawnguo@kernel.org
>Von: Fabio Estevam <festevam@gmail.com>
>Datum: 27.03.2020 14:36
>Kopie: kernel@pengutronix.de, c.hemp@phytec.de,
>s.riedmueller@phytec.de, linux-arm-kernel@lists.infradead.org, Fabio
>Estevam <festevam@gmail.com>, stable@vger.kernel.org
>Betreff: [PATCH] ARM: dts: imx27-phytec-phycard-s-rdk: Fix the I2C1
>pinctrl entries
>
>The I2C2 pins are already used and the following errors are seen:
>
>imx27-pinctrl 10015000.iomuxc: pin MX27_PAD_I2C2_SDA already
>requested by 10012000.i2c; cannot claim for 1001d000.i2c
>imx27-pinctrl 10015000.iomuxc: pin-69 (1001d000.i2c) status -22
>imx27-pinctrl 10015000.iomuxc: could not request pin 69
>(MX27_PAD_I2C2_SDA) from group i2c2grp  on device 10015000.iomuxc
>imx-i2c 1001d000.i2c: Error applying setting, reverse things back
>imx-i2c: probe of 1001d000.i2c failed with error -22
>
>Fix it by adding the correct I2C1 IOMUX entries for the pinctrl_i2c1
>group.
>
>Cc: <stable@vger.kernel.org> 
>Fixes: 61664d0b432a ("ARM: dts: imx27 phyCARD-S pinctrl")
>Signed-off-by: Fabio Estevam <festevam@gmail.com>
>---
> arch/arm/boot/dts/imx27-phytec-phycard-s-rdk.dts | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
>diff --git a/arch/arm/boot/dts/imx27-phytec-phycard-s-rdk.dts
>b/arch/arm/boot/dts/imx27-phytec-phycard-s-rdk.dts
>index 0cd75dadf292..188639738dc3 100644
>--- a/arch/arm/boot/dts/imx27-phytec-phycard-s-rdk.dts
>+++ b/arch/arm/boot/dts/imx27-phytec-phycard-s-rdk.dts
>@@ -75,8 +75,8 @@
>  imx27-phycard-s-rdk {
> 		pinctrl_i2c1: i2c1grp {
> 			fsl,pins = <
>-				MX27_PAD_I2C2_SDA__I2C2_SDA 0x0
>-				MX27_PAD_I2C2_SCL__I2C2_SCL 0x0
>+				MX27_PAD_I2C_DATA__I2C_DATA 0x0
>+				MX27_PAD_I2C_CLK__I2C_CLK 0x0
> 			>;
> 		};
> 
>--

Reviewed-by: Stefan Riedmueller <s.riedmueller@phytec.de>
 
>2.17.1
>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
