Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF8C1957FB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 14:28:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T0VDil2zD7bCv8tMBoHyYTxVgNnFBWWUYcW2Zh31tYA=; b=HmYcgLzeaQj6Kz
	cOIpcIDxPRspu7BOVGviKHT4XrBw0aFPaWRAgouxug7X/SrmXq679oKAOdqiFH/q6Itcj8KPLBmEs
	M1zpVdTwJtzPdgqqv5DlJqtvMgFAytBmhkPuK95gBVTFrbI4Bzhn2QNBwKhNw7jHeDSb/KRT8vK62
	QChHOYPsIYxwPoPU1/ZrcLJJGNTycqqXHNDmYqjD9DUzj7Oyt8jLNcqNp34B69rjdbaNjriqDpPTK
	f0HktUiJgcwaVpDq2BhQArLdSdKSuqvHEGQ/lQ/I0V8jUx7zzSThPW2+Y3S8DMDqlKscXB918eaVt
	+7WyECs51tVQRhxI4UdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHp1m-0000L8-Ej; Fri, 27 Mar 2020 13:28:02 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHp1c-0000KT-Ok
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 13:27:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1585315668; x=1587907668;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3QVwcZHOPpjKXsAshEIn8s7hKGUNmCpoXAgxij2ZKEQ=;
 b=OQUDZ22O0My2A3sTWGqj3Vf991N++QwWpZOp5tA39Uh+38lqolhVFEsliAFQzPr+
 uPi7JW6w4bVPUglKSd7L/z6axKKRDnh3VJ30FmAqToOZ9+9P2aiUQ6tll+h/+kK8
 bmo3cmSS62q33iKVJ30Zdp85epR5GAkIV/uh1gIRxHo=;
X-AuditID: c39127d2-583ff70000001db9-87-5e7dff54e4b5
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id FD.43.07609.45FFD7E5;
 Fri, 27 Mar 2020 14:27:48 +0100 (CET)
X-Disclaimed: 1
MIME-Version: 1.0
Sensitivity: 
Importance: Normal
X-Priority: 3 (Normal)
In-Reply-To: <20200326134956.21868-1-festevam@gmail.com>
References: <20200326134956.21868-1-festevam@gmail.com>
Subject: Re: [RFC PATCH] ARM: dts: imx27-phytec-phycard-s-rdk: Fix the I2C1
 pinctrl entries
From: =?ISO-8859-1?Q?Stefan_Riedm=FCller?= <S.Riedmueller@phytec.de>
To: Fabio Estevam <festevam@gmail.com>
Message-ID: <OF4BB33AE9.0E2383E2-ONC1258538.0049F4E6-C1258538.0049F4F7@phytec.de>
Date: Fri, 27 Mar 2020 14:27:48 +0100
X-Mailer: Lotus Domino Web Server Release 9.0.1FP7 August  17, 2016
X-MIMETrack: Serialize by HTTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 27.03.2020 14:27:48,
 Serialize complete at 27.03.2020 14:27:48,
 Itemize by HTTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 27.03.2020 14:27:48,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 27.03.2020 14:27:48
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrGLMWRmVeSWpSXmKPExsWyRoCBSzfkf22cwf8bqhYPr/pbrJq6k8Vi
 0+NrrBYvtog7sHjsnHWX3WPTqk42j81L6j36/xoEsERx2aSk5mSWpRbp2yVwZbw5tJC1YIVg
 xaOri1gbGJ/ydTFyckgImEg83/qbpYuRi0NIYCujRFP7CiaIBL/Epz+tbCA2r4CgxMmZT1hA
 bGEBXolNb2czgticAkISHVc7WSHqxSQmrPvF3MXIARS3kNh9SQQkLCRgLrF/0l9GiNZYia6Z
 b8BsNgEXieaubewg5SICahKn5+mDhJkFaiWmzz/PBLE1UGLP86tg5SwCqhJ75jdCbXKWWPzn
 AtjJEgKvmCQuNHxmh2jWlli28DUzhK0n8f/nKcYJjMKzkHwwC0nZLCRlCxiZVzEK5WYmZ6cW
 ZWbrFWRUlqQm66WkbmIEhv3hieqXdjD2zfE4xMjEwXiIUYKDWUmE92lkTZwQb0piZVVqUX58
 UWlOavEhRmkOFiVx3g28JWFCAumJJanZqakFqUUwWSYOTqkGxgVLlt948EE3qUo261Je3SIZ
 j2n3rnBsnBWiY/xcfGmEIbvJqZ6nv5WZJy4PUmDp3vw2r/Pi7dh53jF71ha9OcM8IUXg6+xd
 unLve502bzaTYFn09OWP4nXlSjFn6kw+Pp3Ia3112cE8++h1W/om8e8/+D667+O0I/Nvf/vq
 U+95d/HmF/OPfA9UYinOSDTUYi4qTgQArlzL62kCAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_062752_953731_77C7A656 
X-CRM114-Status: GOOD (  11.59  )
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
Cc: shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel@pengutronix.de, Christian Hemp <C.Hemp@phytec.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabio,

-----Fabio Estevam <festevam@gmail.com> schrieb: -----

>An: shawnguo@kernel.org
>Von: Fabio Estevam <festevam@gmail.com>
>Datum: 26.03.2020 14:50
>Kopie: kernel@pengutronix.de, c.hemp@phytec.de,
>s.riedmueller@phytec.de, linux-arm-kernel@lists.infradead.org, Fabio
>Estevam <festevam@gmail.com>
>Betreff: [RFC PATCH] ARM: dts: imx27-phytec-phycard-s-rdk: Fix the
>I2C1 pinctrl entries
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
>Signed-off-by: Fabio Estevam <festevam@gmail.com>
>---
>Hi,
>
>I don't have access to this board, nor to its schematics to confirm.
>
>Noticed this error at:
>https://storage.kernelci.org/next/master/next-20200326/arm/imx_v4_v5_
>defconfig/gcc-8/lab-pengutronix/boot-imx27-phytec-phycard-s-rdk.html
>
>Please help to confirm.

I don't have a board here either but I checked the schematics and your fix looks good.

Regards,
Stefan

>
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
>2.17.1
>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
