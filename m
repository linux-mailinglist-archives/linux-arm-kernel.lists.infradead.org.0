Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08463874D0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 11:05:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UWoi6nLaT7pgXtZd+ApP3TRHlSaNJeQ9AmXjiQWtyAo=; b=I/iWRjVnkICZSa
	RGbwEYVuLbDn5hJcJVxce2uPd1lwZqHckjlLh3pU+my6xuZYNOFPIc+gNkNxtCcbEF3FHmklIeatm
	S8LgKhqzCS/BlrOQPXt81W5JS1Xk4xgXYqr3iNxasHV/W7SjNF80ozEVByZusmxuq3wDPrxNFO1Ze
	wfNsP0NEL7+V6BGIEPZW6O4sqFyKwxqN/fagiaHeePyKQnBXgpFVRP8Uar3rG1328ok2jMXAQTHIp
	XDI8mPe585mNaVc0/QX5TsXaX1xWxl2cnlcVZrt99BIxrHomWrZ2UzFfsSmfokB3lD601z0Tbs1vu
	K0QBAiJshygvftknxSUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw0q0-00016P-6F; Fri, 09 Aug 2019 09:05:28 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw0pL-0000Vb-31
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 09:04:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1565341484; bh=UgOyVx0PYKqYlPjCl68ial+Co8w66XtUj8b9RpCwBdc=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=EvnTqzJmVGd2jc4hzg6tPa+EoPcdRkTMwd/n/6vScf5kCdRQxLeCr6TioaSQKxl6w
 xK+69M6s2JeCqtvs57+gJtHaqY9I8QlTANjXAQourGbdt2S0TkIPPm0n7ExEyvB3Ii
 w2+gxFPlaVbU2FroS+8V6NzfRXQNlL98MzCi94a0=
Date: Fri, 9 Aug 2019 11:04:43 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Code Kipper <codekipper@gmail.com>
Subject: Re: [linux-sunxi] [PATCH v8 4/4] arm64: dts: allwinner: orange-pi-3:
 Enable HDMI output
Message-ID: <20190809090443.kq5bnsrkgr746l2i@core.my.home>
Mail-Followup-To: Code Kipper <codekipper@gmail.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Mark Rutland <mark.rutland@arm.com>,
 dri-devel@lists.freedesktop.org,
 devicetree <devicetree@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
References: <20190806155744.10263-1-megous@megous.com>
 <20190806155744.10263-5-megous@megous.com>
 <CAEKpxBn1nF0t-M34iRSy1yYEuUxgNMUXFBhtjXBY8Qk+43zbDQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEKpxBn1nF0t-M34iRSy1yYEuUxgNMUXFBhtjXBY8Qk+43zbDQ@mail.gmail.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_020447_756779_8A9E3E67 
X-CRM114-Status: GOOD (  20.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 09, 2019 at 10:25:32AM +0200, Code Kipper wrote:
> On Tue, 6 Aug 2019 at 17:57, <megous@megous.com> wrote:
> >
> > From: Ondrej Jirman <megous@megous.com>
> >
> > Orange Pi 3 has a DDC_CEC_EN signal connected to PH2, that enables the DDC
> > I2C bus voltage shifter. Before EDID can be read, we need to pull PH2 high.
> > This is realized by the ddc-en-gpios property.
> Great work. Is there any chance you can move this to the
> arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi?, as all the H6
> based orange-pi's have this feature.

I plan to do that as a followup patch, once this is merged.

regards,
	o.

> BR,
> CK
> >
> > Signed-off-by: Ondrej Jirman <megous@megous.com>
> > ---
> >  .../dts/allwinner/sun50i-h6-orangepi-3.dts    | 26 +++++++++++++++++++
> >  1 file changed, 26 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> > index 2c6807b74ff6..01bb1bafe284 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> > @@ -22,6 +22,18 @@
> >                 stdout-path = "serial0:115200n8";
> >         };
> >
> > +       connector {
> > +               compatible = "hdmi-connector";
> > +               ddc-en-gpios = <&pio 7 2 GPIO_ACTIVE_HIGH>; /* PH2 */
> > +               type = "a";
> > +
> > +               port {
> > +                       hdmi_con_in: endpoint {
> > +                               remote-endpoint = <&hdmi_out_con>;
> > +                       };
> > +               };
> > +       };
> > +
> >         leds {
> >                 compatible = "gpio-leds";
> >
> > @@ -72,6 +84,10 @@
> >         cpu-supply = <&reg_dcdca>;
> >  };
> >
> > +&de {
> > +       status = "okay";
> > +};
> > +
> >  &ehci0 {
> >         status = "okay";
> >  };
> > @@ -91,6 +107,16 @@
> >         status = "okay";
> >  };
> >
> > +&hdmi {
> > +       status = "okay";
> > +};
> > +
> > +&hdmi_out {
> > +       hdmi_out_con: endpoint {
> > +               remote-endpoint = <&hdmi_con_in>;
> > +       };
> > +};
> > +
> >  &mdio {
> >         ext_rgmii_phy: ethernet-phy@1 {
> >                 compatible = "ethernet-phy-ieee802.3-c22";
> > --
> > 2.22.0
> >
> > --
> > You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> > To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/20190806155744.10263-5-megous%40megous.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
