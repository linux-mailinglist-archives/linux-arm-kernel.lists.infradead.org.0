Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87936119AAB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 23:07:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xT9pzb3+9yu2lCgQmOouxAHud4FTDf702H49Rl96MgU=; b=PR7oItyz6Y0VF3
	JUUeMUUqebrU7Emziwa/Ib6rD4XULJmhjyqAlvrvO24DBBybHM6X8tYbAFnsq3WRGcL24FEEtklb3
	nObUJSj4Nf5JRNJLzhZh7Z289igsiNZrEsEBH6duO0f4uUsldnQ8r5zVFwQ3vbeWml70s8T3ul6MQ
	l1VEO1/U3wkvBymKGTKu1EYfdKXITlVULs3mwhjRz+9lqc0I3DKOqVvyWySrNp2XNwN8U4a8XbGkd
	CrzSYRYpUacl4OJfArcoc1qTKuiLdatdFlEnLCHTmMGyhAadflx6XpMKc7IhQbVlsI0+kdLzpmifz
	XtN/WHoj7IXnJr5HrZBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ienfT-0003Pf-GQ; Tue, 10 Dec 2019 22:07:43 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ienfK-0003N8-La
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 22:07:36 +0000
Received: by mail-il1-x142.google.com with SMTP id g12so17607555ild.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 14:07:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=designa-electronics-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FxtClUPhWogZgqarh/LbJKZguLziOJSbb+JTZXkQarU=;
 b=yngDbAp4xdu7JIwtyTT15r6/+XAd9Emxo2L6forWXbj+j80VYXNx230Hc17U7phZaB
 0uLW46KygmWXlJf9PhRWYXN0mPF2Ly0L8EOLHXfmeEeF3Aa630zMHYfcULEhAjpy6rSB
 BsMeDPDjT1TdgaGeAAg+4k39lz1LcRxi2ZNGLkH0sMwExKPa8CnGjI45PXSa92ubUUvT
 aDcMfRXBgWc/clPyVtK9bkyu7wN2TobTljybdGqGWwcl+6mDxQ8Ni14ddzR4t07Mipmb
 a2F0lGkdzY7LuGCfV6lNAXy3ova2gRiUgJML3hFJt9dqRE9F+121IqfnHsXugcKjGHy2
 mLAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FxtClUPhWogZgqarh/LbJKZguLziOJSbb+JTZXkQarU=;
 b=swElhm/oCwx43w0BO2+rvw/hZ1hkUPGOLEUYbwUr7UQ+yxDUVgC02uAPqsIgZqB+Vv
 ewqRTH0yXacnK4HUYV/G6uuxaZBH4CXKkvb4lbIbwfZ78JqaNc591fj9vu+fmi98wGg0
 O08V/t67qrHKxTQ7lKupHN5dEfJsPXjC2XmW1FAj0Fwi4xNVABWbprSxuhjgOwG2cMYW
 uztuQxHqAApXDDKLGGmkJYHFKExyOyvnawW7u1equKvm1cvx5b0o/gfcTMq+oj7g5l+h
 GDqMPQ344Mnu/m8sI47cGDL+UjYkp6mBPbbXKwOlQi/PdAUvxt6a4fmWdgSF+JUXIWql
 aT8g==
X-Gm-Message-State: APjAAAXYlwbkvn8czyBtv9dG+8Hc0QZ5c2BWO7AIWxmGeLuFTfupJ0rl
 WMhaEt3aDPMGlOx5rq/J16UHrQObtpoVYg==
X-Google-Smtp-Source: APXvYqxtLSZ7fNpjY8aanr31Y8KSnrz4EBcJxpd6fpzX7jhpMEz8phGWcL2yx2s8sgWF1I+3JRGIdA==
X-Received: by 2002:a92:8395:: with SMTP id p21mr22850220ilk.285.1576015653110; 
 Tue, 10 Dec 2019 14:07:33 -0800 (PST)
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com.
 [209.85.166.173])
 by smtp.gmail.com with ESMTPSA id c73sm59386ila.9.2019.12.10.14.07.31
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Dec 2019 14:07:32 -0800 (PST)
Received: by mail-il1-f173.google.com with SMTP id r81so17622171ilk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 14:07:31 -0800 (PST)
X-Received: by 2002:a92:5d88:: with SMTP id e8mr29002681ilg.106.1576015651464; 
 Tue, 10 Dec 2019 14:07:31 -0800 (PST)
MIME-Version: 1.0
References: <CAEj2-1PyhkhEJ1+uRWio4vYxGuFOuR9mpZOdxmDDjGt_Az+3uA@mail.gmail.com>
 <CAOMZO5AxvuWETvubZU1Tu=0-SeoSzJs=LZcj-JJFE1+4O6-FxA@mail.gmail.com>
 <CAEj2-1M6950NxK0mOBzdc4qz3b=eBzD8NdLKE55aas5WN0iZkA@mail.gmail.com>
 <VI1PR0402MB3600DD7A4C9BFFE8E2805378FF5B0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR0402MB3600DD7A4C9BFFE8E2805378FF5B0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
From: Andre Renaud <arenaud@designa-electronics.com>
Date: Wed, 11 Dec 2019 11:07:20 +1300
X-Gmail-Original-Message-ID: <CAEj2-1PCDWSiP98ZN9ufa-Nws_4KSgX7Jf8gK1+TM1zEuU3SKw@mail.gmail.com>
Message-ID: <CAEj2-1PCDWSiP98ZN9ufa-Nws_4KSgX7Jf8gK1+TM1zEuU3SKw@mail.gmail.com>
Subject: Re: [EXT] Re: iMX6/UART imprecise external abort
To: Andy Duan <fugang.duan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_140734_887105_9B80E08C 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andry

On Tue, Dec 10, 2019 at 6:46 PM Andy Duan <fugang.duan@nxp.com> wrote:
> > We have confirmed that this happens on the standard 5.4.1 board, but only
> > when the RS485 ioctls and corresponding device tree entries are enabled.
> > We have tried it on different hardware (the Wandboard iMX6Q), with just a
> > minor change to the device tree - the addition of uart-has-rtscts, and rts-gpio.
> Documentation/devicetree/bindings/serial/fsl-imx-uart.txt
> Note that for RS485 you must enable either the "uart-has-rtscts" or the "rts-gpios" properties.
>
> And please note rts-gpio should be the pin for CTS_B.

Thanks - we did have this wrong. However even after correcting this it
still fails in the same way. This is what we're trying:
diff --git a/arch/arm/boot/dts/imx6qdl-wandboard.dtsi
b/arch/arm/boot/dts/imx6qdl-wandboard.dtsi
index 2cfb4112a467..5f2d3dfafcec 100644
--- a/arch/arm/boot/dts/imx6qdl-wandboard.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-wandboard.dtsi
@@ -219,6 +219,14 @@
  >;
  };
+ pinctrl_uart2: uart2grp {
+ fsl,pins = <
+        MX6QDL_PAD_SD4_DAT7__UART2_TX_DATA 0x1b0b1
+        MX6QDL_PAD_SD4_DAT4__UART2_RX_DATA 0x1b0b1
+        MX6QDL_PAD_SD4_DAT5__UART2_CTS_B    0x1b0b1
+ >;
+ };
+
  pinctrl_uart3: uart3grp {
  fsl,pins = <
  MX6QDL_PAD_EIM_D24__UART3_TX_DATA 0x1b0b1
@@ -313,13 +321,18 @@
  status = "okay";
 };
-&uart3 {
+&uart2 {
  pinctrl-names = "default";
- pinctrl-0 = <&pinctrl_uart3>;
+ pinctrl-0 = <&pinctrl_uart2>;
  uart-has-rtscts;
+  linux,rs485-enabled-at-boot-time;
  status = "okay";
 };
+&uart3 {
+ status = "disabled";
+};
+
 &usbh1 {
  status = "okay";
 };

Regards,
Andre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
