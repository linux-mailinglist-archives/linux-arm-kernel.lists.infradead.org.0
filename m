Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8BC15CBB3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 21:09:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2vMXmGQCAu8R1xbVj3Rf5RoKp9Tn5KkvWGbsjekOxQ8=; b=olb+T51x+4conL
	x5CQjumDcPlCvP27PNZv1TgX9C84oF/DvsvzG8k765q9i5vgyNmoqo41Hc07fBU4dMHK1y9Xn898J
	9nSv0iPfoi647m15AgF0KiWKooGtlDDmInbXlF7mUGXyhFmoiq5hDm37li6YVEsPUJ9u9moa5Zhvd
	g1evnp1OM1wlY8tZD00NU2LjkSqNHTMaeozxvKCNTr6U77D3ieRwVeucxJ97Iz7hgDKzaccgDXG+t
	wuxCLkeCFU+qdZcWpaiqgFoLWbqxIs+bXWw3GXYkysaaUCTIr8MA3U3gpkBUc+Bg3XeCrcQkMWv0j
	pwM6GoLr+JELu1Dg1OMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Kmt-0003Nw-Oe; Thu, 13 Feb 2020 20:08:39 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Kmk-0003N6-6r
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 20:08:31 +0000
Received: by mail-lj1-x244.google.com with SMTP id q8so8088511ljb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 12:08:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=BGyZT7dbwMQ7jRrV7OPOX8exFdqWmXNOVwOPlJZyRbk=;
 b=Q7Nd/9vPTfJrYfCbCnUoPbPOpTzh3mz2xPJW1hQXDfbva2G/ahXsRqzD1wUuPZ0P3d
 +VywfqW7xB0c1jzTKa7NJz6yLxoDyvNlvg34cVn9HgdBE0NIoNuEjhR1q5M5tg+WKX1s
 VR/cE6zJ0oW3d9yoa95wrCDl733BktZ0XiN5OqGki05JxaBJP9SLsgtvO6NIKNtbC2QN
 laeEw6HaaasnQGqEFM8QClPBWowIpVDKLEz5clAkkVrjEM5nZOWjCb0qr8FpJMzm7oWl
 MBgsia3Si3eM8ZVXJqbn+jwHsq5CG7Hr1ZPF2HhnxEJvtGIJfwYCRkECqsnu3hYJRJai
 b5mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BGyZT7dbwMQ7jRrV7OPOX8exFdqWmXNOVwOPlJZyRbk=;
 b=jGUnR12FKhS//Tdk4CxEvs+lASOPF/AyHvPBqfXWkNCHqFSixjJ4PyreavPfrncjmP
 Pw+Ft/5tk4DkQl0w50tJf6uHZ9mnfwKzoneZDd21cGuTYHovmBitndq6yVmVuoeHAzfP
 OivZpmtZs1yP/UCxoLAmlklxFbFqxNsYKRX5peE/fTs6J6Ly0Uk/+5WYaCV/3bBwX+I8
 eNchWbFaZi8l/ksJl/JCwj/ggOGrXIc/I5NmuDembitcq6eI8FDN6xryL3JKiRknIJPc
 ioS5yCBDg8UvIkHsnJq++BJVw8U3h2Q7o49Ofc12H4Z1bhK1LrsYCiUV6MinadvA4VVO
 /Kag==
X-Gm-Message-State: APjAAAWdnnHJ6vfxDuf2RFmLBs2dy5ontmuW5Twe6kvxxc0YhQeVnZL/
 q7CMhcNM5VqgvX0GGTmBw4o=
X-Google-Smtp-Source: APXvYqztD+iqwv6Xp+koxjrHW1aZ2Qay9QARoJlk+46QWn4zlAo+rJAYb4gEbYwOOYOAAItaIZGLEw==
X-Received: by 2002:a2e:98c6:: with SMTP id s6mr12200884ljj.14.1581624505681; 
 Thu, 13 Feb 2020 12:08:25 -0800 (PST)
Received: from kedthinkpad ([5.20.204.163])
 by smtp.gmail.com with ESMTPSA id d20sm2132164ljg.95.2020.02.13.12.08.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 12:08:24 -0800 (PST)
Date: Thu, 13 Feb 2020 22:08:23 +0200
From: Andrey Lebedev <andrey.lebedev@gmail.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v2 2/2] ARM: sun7i: dts: Add LVDS panel support on A20
Message-ID: <20200213200823.GA28336@kedthinkpad>
References: <20200210195633.GA21832@kedthinkpad>
 <20200212222355.17141-2-andrey.lebedev@gmail.com>
 <20200213094304.hf3glhgmquypxpyf@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213094304.hf3glhgmquypxpyf@gilmour.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_120830_251947_FB052BEE 
X-CRM114-Status: GOOD (  17.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andrey.lebedev[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: airlied@linux.ie, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andrey Lebedev <andrey@lebedev.lt>, wens@csie.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 10:43:04AM +0100, Maxime Ripard wrote:
> On Thu, Feb 13, 2020 at 12:23:57AM +0200, andrey.lebedev@gmail.com wrote:
> > From: Andrey Lebedev <andrey@lebedev.lt>
> >
> > Define pins for LVDS channels 0 and 1, configure reset line for tcon0 and
> > provide sample LVDS panel, connected to tcon0.
> >
> > Signed-off-by: Andrey Lebedev <andrey@lebedev.lt>
> 
> And this prefix should be ARM: dts: sun7i ;)

Ah, thanks, I think I've got the pattern now!

> > +			/omit-if-no-ref/
> > +			lcd_lvds0_pins: lcd_lvds0_pins {
> 
> underscores in the node names will create a dtc warning at
> compilation, you should use lcd-lvds0-pins instead.

You're right, I wasn't following the naming convention here. dtc doesn't
produce any warning on this though. Fixed that anyway.

> This will create a spurious warning message for TCON1, since we
> adjusted the driver to tell it supports LVDS, but there's no LVDS
> reset line, so we need to make it finer grained.

Yes, I can attribute two of the messages in my dmesg log [1] to this
("Missing LVDS properties" and "LVDS output disabled". "sun4i-tcon
1c0d000.lcd-controller" is indeed tcon1). And yes, I can see how they
can be confusing to someone.

I'd need some pointers on how to deal with that though (if we want to do
it in this scope).

[1] excerpt from kernel boot log:

[    4.890975] sun4i-drm display-engine: bound 1e00000.display-frontend (ops sun4i_frontend_driver_exit [sun4i_frontend])
[    4.902032] sun4i-drm display-engine: bound 1e20000.display-frontend (ops sun4i_frontend_driver_exit [sun4i_frontend])
[    4.913467] sun4i-drm display-engine: bound 1e60000.display-backend (ops sun4i_backend_ops [sun4i_backend])
[    4.923806] sun4i-drm display-engine: bound 1e40000.display-backend (ops sun4i_backend_ops [sun4i_backend])
[    4.934451] sun4i-drm display-engine: bound 1c0c000.lcd-controller (ops sun4i_tcon_platform_driver_exit [sun4i_tcon])
[    4.945254] sun4i-tcon 1c0d000.lcd-controller: Missing LVDS properties, Please upgrade your DT
[    4.953935] sun4i-tcon 1c0d000.lcd-controller: LVDS output disabled
[    4.960857] sun4i-drm display-engine: No panel or bridge found... RGB output disabled
[    4.968845] sun4i-drm display-engine: bound 1c0d000.lcd-controller (ops sun4i_tcon_platform_driver_exit [sun4i_tcon])
[    5.080874] sun4i-drm display-engine: bound 1c16000.hdmi (ops sun4i_hdmi_driver_exit [sun4i_drm_hdmi])
[    5.110087] [drm] Initialized sun4i-drm 1.0.0 20150629 for display-engine on minor 0
[    5.763064] sun4i-drm display-engine: fb0: sun4i-drmdrmfb frame buffer device


-- 
Andrey Lebedev aka -.- . -.. -.. . .-.
Software engineer
Homepage: http://lebedev.lt/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
