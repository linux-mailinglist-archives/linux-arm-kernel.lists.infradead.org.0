Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56566169717
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 10:58:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LIk9T3rc3xVGqYKXq+krZ8YohlOvcqoqyrmVx70KLxE=; b=VTbvoTH2TSdLM7
	J9xlcPnseSqYX1YmreeU/TvjgCxKxyq/ue9lrX9yGRlNn+rjZCvcCoam+m5+lmCXYLvku8Nkm1tld
	adykNl3XtiiFrZuzRWkFQfqzVQiNmzOaKHhXKBq5lbezObR7WgiA7FidYMQkM98Uy9utD8SmuB28C
	2muOPLzNMHQ/oh2YV03aUiJRTaXDe9Yo80XFVSgPppa2uY5NNK+D6S2kxJ9tHB9X6tE4WMRCjY/jk
	GFeAGQtjIh8tNGXDPs79LUfR8RT/Se3w/VhMUvwfujPs3lYY6RprJhgvp/RSTOX0DhL5HrrTEPGOE
	ajo7As0B4GceZRHyhzig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5o1M-0003sC-0S; Sun, 23 Feb 2020 09:57:56 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5o1C-0003rI-1W
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 09:57:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582451857; bh=Hc3Q/e3isq42FZVZz5Pj1+rkdYA5T7YqVfZ3lSbKHwM=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=KBLgQTYNtOdfr0C8KgWxzTcFc9H4LySTQ3Y2+AYmD1O0bUlSZ7CqOWG9Bnmy4p0aN
 UHCxvhQuuCvVN/Eathp3L8kX54EJBUF2WnR1EY0HTlyZJ/EEWGNPCbqE5N2n7BnzCf
 v4yNsINPB0peqyQ18CwD8sYkROsvuULDUSk5C2J0=
Date: Sun, 23 Feb 2020 10:57:36 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [linux-sunxi] [PATCH 2/4] ARM: dts: sun8i-a83t-tbs-a711: HM5065
 doesn't like such a high voltage
Message-ID: <20200223095736.5c3dr66734kv3ypg@core.my.home>
Mail-Followup-To: Chen-Yu Tsai <wens@csie.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Maxime Ripard <mripard@kernel.org>,
 Tomas Novotny <tomas@novotny.cz>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>
References: <20200222223154.221632-1-megous@megous.com>
 <20200222223154.221632-3-megous@megous.com>
 <CAGb2v67uOXE7_28yn8Q2uo320vE1FsqL-ewG4p1nViim3q0xbw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGb2v67uOXE7_28yn8Q2uo320vE1FsqL-ewG4p1nViim3q0xbw@mail.gmail.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_015746_255754_B81AC598 
X-CRM114-Status: GOOD (  21.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>, Tomas Novotny <tomas@novotny.cz>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Sun, Feb 23, 2020 at 11:39:17AM +0800, Chen-Yu Tsai wrote:
> On Sun, Feb 23, 2020 at 6:32 AM Ondrej Jirman <megous@megous.com> wrote:
> >
> > Lowering the voltage solves the quick image degradation over time
> > (minutes), that was probably caused by overheating.
> >
> > Signed-off-by: Ondrej Jirman <megous@megous.com>
> 
> Makes sense. A lot of camera sensors run their digital parts off 1.8V.
> This one is no different.
> 
> Acked-by: Chen-Yu Tsai <wens@csie.org>
> 
> The whole CSI stuff isn't enabled in the device tree yet though, and
> there are a lot of regulators with CSI in their names. Will this get
> worked on?

Yes, I'm preparing support for both cameras in this branch:

  https://megous.com/git/linux/log/?h=cam-5.6

Both already work quite well. I'm just sending some fixes early.

Both cameras work best at 1.8V for the digital part.

regards,
	o.

> ChenYu
> 
> > ---
> >  arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts b/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
> > index ee5ce3556b2ad..ae1fd2ee3bcce 100644
> > --- a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
> > +++ b/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
> > @@ -371,8 +371,8 @@ &reg_dldo2 {
> >  };
> >
> >  &reg_dldo3 {
> > -       regulator-min-microvolt = <2800000>;
> > -       regulator-max-microvolt = <2800000>;
> > +       regulator-min-microvolt = <1800000>;
> > +       regulator-max-microvolt = <1800000>;
> >         regulator-name = "vdd-csi";
> >  };
> >
> > --
> > 2.25.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> > To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/20200222223154.221632-3-megous%40megous.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
