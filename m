Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 271A9117EB0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 05:04:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ywbaA7W1wB2nc0BAjaI/e9Xhklyf6bQgG8326hfnEhE=; b=PbEs32nexg88jV
	doWzxxYcynpdDBywtuUMsuIj9xri8WZafWp7uVNZtM+/+bbHr6Q1r51078fvfDSIOp5IsHUX+G+NF
	qilty0aoZ8+eo7L/YzLJcK49xVkQq1X4syG4HY2tH3Ntcev8YuC0tpt+J0Hx6JjwwTw8VVCHi/fZa
	S6NgLPu+zfUeDlWKY8m8E7QOaSWFVTkgCHS/MbMUBL9ZQu3B2wE3AZyrPBjWA34wNw69yS+5bBIJt
	+Sd7NVFAbOqooL0+ZVP8wMZhYeEdpNTgam39yRXiL55kO+2Z8vK68NQrzqx4RbywvCg0NzsYYQ1NI
	ssDhFTneR4Yyxwp8BnLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieWkk-0006HM-96; Tue, 10 Dec 2019 04:04:02 +0000
Received: from mail-io1-xd35.google.com ([2607:f8b0:4864:20::d35])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieWkb-0006Gt-NX
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 04:03:55 +0000
Received: by mail-io1-xd35.google.com with SMTP id k24so17305506ioc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 20:03:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=designa-electronics-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hVDrDHwmqD2zYNWHJbvkgMoTD53av9OSr7U3BYl5BR8=;
 b=ViCjngt8EyA33k26+ZMnoFUJuwA+28kl8gg+qB2/Z79E6Bqna2J20d15i2V0LTQfCr
 6SnDdmoIiDibruAorNbdm51o6bBoAUIuOAGfyIPKRYby7tV6B9HXp2btWvqYPN/RP5oJ
 /rhr2+n7CusXF0X38TjD66CqqhZoygfbLytJ9csZcRYTYkcAnmizvwfGIyCwRth8c5Nz
 +WGe3R/Ytw4Hp+0UiL0VCLwyBu0EUQ+etthxck4GVgb9g1lrROjvckSnzU2oWDX/V1Bp
 eX1GDHge2NkiwRTY6dXc+oV7ZdS2YQR3cwXs5ZMblaEBSHuJPailqgVulp3Q0fbrGEUf
 AaVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hVDrDHwmqD2zYNWHJbvkgMoTD53av9OSr7U3BYl5BR8=;
 b=m+Opi9YQXr1a/GgfxkBsLwhiw5Uta/f/JNbLjzzoKo0/d1AwWM1uXtiQY9kBWVeb+i
 xvU56KpfiI9TK5R2zzvcRZeefrKJRw/0ZSkWguuLlh37xTgUxT/a/8OlR+KTZLzBkhfd
 KQUEv2+bqBgcIiYqNihDYLwB5T4EiVo7fxS3C20iPctJ7dbCETOGuVm/Ayr/G+4Jc6Xu
 ylzHzJNB3CgBANaSgCYBdXMUvyUHbqB30eWTc6qkJCSxm65T6Os3q2+5ouaanXGwV4Sb
 6geASR33v4rrc98cZTbpIEHmuUIbA2qp4i9iEEAOBoSVBEUeT6oldH2Qw0LEeyILCJp1
 PxvQ==
X-Gm-Message-State: APjAAAWuT76PYCRBmFFZ0wAqsDoQjGZkXKw1poShhhGHM+OmUuGXLOBz
 ylIFeWSz9mwU039+T4KkkvYV62d0eFM=
X-Google-Smtp-Source: APXvYqxRgP4K2UOLR+nWR/MXiel6nu7fsQlkxFnpFjOEN8grWQDArVTJYZOaWwqk4yMjOsbvXHwihQ==
X-Received: by 2002:a05:6638:404:: with SMTP id
 q4mr24658966jap.115.1575950629503; 
 Mon, 09 Dec 2019 20:03:49 -0800 (PST)
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com.
 [209.85.166.182])
 by smtp.gmail.com with ESMTPSA id k11sm477878ilf.84.2019.12.09.20.03.48
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Dec 2019 20:03:48 -0800 (PST)
Received: by mail-il1-f182.google.com with SMTP id u17so14900830ilq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 20:03:48 -0800 (PST)
X-Received: by 2002:a92:5d88:: with SMTP id e8mr24582012ilg.106.1575950627866; 
 Mon, 09 Dec 2019 20:03:47 -0800 (PST)
MIME-Version: 1.0
References: <CAEj2-1PyhkhEJ1+uRWio4vYxGuFOuR9mpZOdxmDDjGt_Az+3uA@mail.gmail.com>
 <CAOMZO5AxvuWETvubZU1Tu=0-SeoSzJs=LZcj-JJFE1+4O6-FxA@mail.gmail.com>
In-Reply-To: <CAOMZO5AxvuWETvubZU1Tu=0-SeoSzJs=LZcj-JJFE1+4O6-FxA@mail.gmail.com>
From: Andre Renaud <arenaud@designa-electronics.com>
Date: Tue, 10 Dec 2019 17:03:37 +1300
X-Gmail-Original-Message-ID: <CAEj2-1M6950NxK0mOBzdc4qz3b=eBzD8NdLKE55aas5WN0iZkA@mail.gmail.com>
Message-ID: <CAEj2-1M6950NxK0mOBzdc4qz3b=eBzD8NdLKE55aas5WN0iZkA@mail.gmail.com>
Subject: Re: iMX6/UART imprecise external abort
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_200353_913912_46C42AF4 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d35 listed in]
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
Cc: Fugang Duan <fugang.duan@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Fabio,

On Tue, Dec 3, 2019 at 9:56 AM Fabio Estevam <festevam@gmail.com> wrote:
> Could you please try a vanilla 5.4.1 kernel?

We have confirmed that this happens on the standard 5.4.1 board, but
only when the RS485 ioctls and corresponding device tree entries are
enabled.
We have tried it on different hardware (the Wandboard iMX6Q), with
just a minor change to the device tree - the addition of
uart-has-rtscts, and rts-gpio.
&uart3 {
    pinctrl-names = "default";
    pinctrl-0 = <&pinctrl_uart3>;
    uart-has-rtscts;
    rts-gpio = <&gpio3 23 GPIO_ACTIVE_LOW>;
    status = "okay";
};

Then if we enable RS485 mode using the ioctl:
    struct serial_rs485 rs485;
    rs485.flags = SER_RS485_ENABLED | SER_RS485_RTS_ON_SEND;
    ioctl(fd, TIOCSRS485, &rs485);

This will cause it to panic fairly quickly (in a few minutes).

This is with the SDMA peripheral disabled. If we enable the SDMA
peripheral, then after a while we stop receiving data, and the unit
locks up, although there is no panic output.

Regards,
Andre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
