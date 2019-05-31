Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9880730945
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 09:21:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SXP8m5ygNmpMtto8A8qmJdfUHQId7Mc4UDQdr6Pv3Oc=; b=ppj1cmAXwWEPnd
	zseLnsWokrBT04+PFvIlBeIgNUL90aVMmg3LK4CB7aFSmMZwPe+dhu3WYJyz5FQ9XyzQg/CMukpFR
	Tm6quq6JZSQ1fGafFxgBWjIXGJQAfWXq/txdYIZdAFXFzRD4G5sAdPVS2w4tUOe2ICHqJ64WcYHDD
	X4PvpT4ma089UFW0LZbRfrgP7XHSN3xaSzpmYv0ZuTwp2oYMqoAlcBLidNupkOyaNEaN3YMvGu/WM
	dcxgQ7XAPtcYfjeVrLCBrZZ2WDPVFLAToVYemuyRXZYiFPJf0j2s/WONWgeFH+jgJhzKT0nD/++Vq
	bmTI3aIXuQ8p1XRJakHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWbrE-0003RA-3d; Fri, 31 May 2019 07:21:44 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWbr7-0003Q4-4B
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 07:21:38 +0000
Received: by mail-it1-x143.google.com with SMTP id h11so13658843itf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 00:21:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QBBKhSbZP7EAiicuPXkBfvJuEZTNKNpMjn27c5MZ3Dc=;
 b=AGwQrFiOCXgty4N4Ai5lLfQQ6Xg6MpVZHZRCHn9hb3ZDqRg/wR45SafGZhZKmmDC8y
 rHi8kv3AK9Dyf1clZUArh8rLaWgNT8PRSYqvMkcfx4hMo41rbMKlE53+ta/onOJtH6oo
 dfsWtjfgGEsFvdUTkgJxMtxVJftBAPsCWuVaQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QBBKhSbZP7EAiicuPXkBfvJuEZTNKNpMjn27c5MZ3Dc=;
 b=mIvUGrVNOD6rJFMHe418esGJne72kao2LBgeLSbOaiLgdKvUGBwq2VOprLQc6L2tX3
 zDzmve3Ut5wFfZRbY+BTphm2CHwB+JC/kmFKXWqpohttOLtCj0pgLrDw8cZ4BDHp4N+W
 SEvMt91kB/nHok7QVU9nw3WP52d5PbDN+Tb9zhywzKmI/ATyu/4TWnJnDJV4Ji/Ybecr
 45wBF2LpUgvl7Ddems9FNo4AvXdO/A9x6UX8Bh91Q2HmUEfJfgrijP8tgXG4tL4v5coF
 LLC0574wws8dW1GvlLwKAo3KBboVJszlvrEVD5hgyFwjiyRc5PoXtqt6E671w37WNKdM
 sbSA==
X-Gm-Message-State: APjAAAXNZxHp0WmQghWAV3daT/77Qo9ipvsqT1iwORB6zNwExe/SlOi5
 vvtlcP+K4RwSPuuDnYXy7a14SJ6dtC5PmnvBTNJgOQ==
X-Google-Smtp-Source: APXvYqz2PDD+zioaMHLifADW+9kK68f43tOq4Amc0xMgAm0W/t6TnadR93Ukk5QMxHkQCpAl7zFjHTl9o7dS+amRmzU=
X-Received: by 2002:a24:2846:: with SMTP id h67mr6274629ith.94.1559287294453; 
 Fri, 31 May 2019 00:21:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190529105615.14027-1-jagan@amarulasolutions.com>
 <20190529105615.14027-2-jagan@amarulasolutions.com>
 <20190531065928.4wfr3kjngefy4q2b@flea>
In-Reply-To: <20190531065928.4wfr3kjngefy4q2b@flea>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Fri, 31 May 2019 12:51:23 +0530
Message-ID: <CAMty3ZBTu5DqcL+u6KTUC=Ofe9Gwdcu8VT-kSwWb2O3n9gnrWQ@mail.gmail.com>
Subject: Re: [PATCH v9 1/9] dt-bindings: sun6i-dsi: Add A64 MIPI-DSI compatible
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_002137_321101_8B17003C 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree <devicetree@vger.kernel.org>, Ryan Pannell <ryan@osukl.com>,
 Bhushan Shah <bshah@mykolab.com>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Chen-Yu Tsai <wens@csie.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Sergey Suloev <ssuloev@orpaltech.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 12:29 PM Maxime Ripard
<maxime.ripard@bootlin.com> wrote:
>
> On Wed, May 29, 2019 at 04:26:07PM +0530, Jagan Teki wrote:
> > The MIPI DSI controller in Allwinner A64 is similar to A33.
> >
> > But unlike A33, A64 doesn't have DSI_SCLK gating so it is valid
> > to with separate compatible for A64 on the same driver.
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Tested-by: Merlijn Wajer <merlijn@wizzup.org>
> > ---
> >  Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt b/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
> > index 1cc40663b7a2..9877398be69a 100644
> > --- a/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
> > +++ b/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
> > @@ -12,6 +12,7 @@ The DSI Encoder generates the DSI signal from the TCON's.
> >  Required properties:
> >    - compatible: value must be one of:
> >      * allwinner,sun6i-a31-mipi-dsi
> > +    * allwinner,sun50i-a64-mipi-dsi
> >    - reg: base address and size of memory-mapped region
> >    - interrupts: interrupt associated to this IP
> >    - clocks: phandles to the clocks feeding the DSI encoder
>
> We've switch to YAML now, and the compatible should be expressed that
> way now:

Yes, I have seen it few days back will update on top of that, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
