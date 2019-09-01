Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A2AA49B2
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 15:58:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NPkTRH7kzJqHLTu9JiC5FtXJ02kMv0tpsxUxHi+WzwQ=; b=qWbs8VBFBGGQJb
	t1yd7B+slPCQzPW0pq1HKdS4hfFs9eiHSiv2CBH8Yk0bj1N1YcG6TpioMs9t2Hjk3W8AuQDcpq+bs
	Uo2p4Ii6lGW9vp6jTYE77hc6FmG6w2fvGzpz7fVB/lh7lDXxL2NKsO1XW2+EIr0QGzckecmnlHlRv
	D80uV92x+MeFqd8/gYCwvn8qv35Z1kjRES0ZZQYiiKaB3eWVlsD3+xHmbrerLdbUyFtpeR4NtTZ/A
	B7IMxR456n3CFn9DCADv1Gxta1yTasehRznZjT3nnejk3YYac/SImncCoaWzNHLXAvnMcYBMJibay
	okz7K8xFFnAFpiZxjUww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4QNL-0006k9-N0; Sun, 01 Sep 2019 13:58:39 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4QNA-0006jU-St; Sun, 01 Sep 2019 13:58:30 +0000
Received: by mail-io1-xd42.google.com with SMTP id p12so24176934iog.5;
 Sun, 01 Sep 2019 06:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=N/cxPVZ2/l0a8YIvCXybq//eIUrfVE+ZOnB/0gkvzVI=;
 b=OUPioWUhBIZDB2dqmcRtby+CVstmCh3T7AjdOQuU3lxM5DpyAyhQoqygbq+LjXnlVt
 pxq3M0bnuMbmiHbpQVUlcrj0J5dH3UX6ZNt3Tua6YHqpNGEr4fhskrTYQrGH2ndYrdnI
 Hu2CzCWi323aqNBO9FrIf7c1cOGMKpUC0S+hLVvSOBXYgxTUQRJ9zeM5nDJENBzPDpIy
 tk0XruVKlM4ZRg0bDdapG05nSXqUyiOVWeNuleQfF1clP7S1ZxPnAmwvAZ8uxMPhjnCY
 8KZLeotoUVi9OlY4Y+Nnvgp3t2MNYEN0AIS+0FeDDMd3ecmTuNxd9pbYMi86vgMv/AiF
 EteQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N/cxPVZ2/l0a8YIvCXybq//eIUrfVE+ZOnB/0gkvzVI=;
 b=dh7Zb/x50Js3dn5bSR9qC8z4Nw4JAeoKeI1teK+HNCaLRRSv+dDv7upwyUPHSD7gEU
 uJz6Arzk2blX+BAZzenjIzpzffhC1BW5eDL+h9EMSxi2VrBy+vlaCofNMBJ0E6lQ8AOY
 mD4YW6WO61mIyvUc2A5lvbP7stlbhPpZsoRVrQ0zymuMGag848b/INZFdyTVwly4vWgZ
 +GBRz4hZD5M5VOYl9mFDk8gHp9M0eRFBzVbCnlgFmkf0LcsbdsFXg9EquRq5ysTicNxH
 ATiXCyxz7EFJvn1Huk4N1kC7gxieOv4grfX3WkRFw2VdajMFIO5SamIWR8mmqA3GC+GY
 OKRQ==
X-Gm-Message-State: APjAAAW4R4cNaB98u/d31bI4tv91ILN1MZ0dZ5dXRr++GRGZG0P64Duc
 lWqFRNuS/LM2sEklY9yBBk8zvUjwQpYxVDplX4w=
X-Google-Smtp-Source: APXvYqx1T5rFEQe6gKYnb6Zc83oGlevxTISfBjsjjxv9Vx2xPyRReQNYrCAH8EUo+T85H50o406WImhEOyF0jyTzAGY=
X-Received: by 2002:a5d:9bd4:: with SMTP id d20mr103670ion.243.1567346308370; 
 Sun, 01 Sep 2019 06:58:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190828202723.1145-1-linux.amoon@gmail.com>
 <20190828202723.1145-4-linux.amoon@gmail.com>
 <CAFBinCB9NPtncyJCMWDbbzJnQafeaY5U3XHh=NuRZSCNDdO=Hg@mail.gmail.com>
In-Reply-To: <CAFBinCB9NPtncyJCMWDbbzJnQafeaY5U3XHh=NuRZSCNDdO=Hg@mail.gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sun, 1 Sep 2019 19:28:14 +0530
Message-ID: <CANAwSgT_K8oqwrxaQr0j_nyxZdh=Um5ivjoUDBixxWPbqJyYcA@mail.gmail.com>
Subject: Re: [PATCHv1 3/3] arm64: dts: meson: odroid-c2: Add missing regulator
 linked to HDMI supply
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_065828_929797_45276350 
X-CRM114-Status: GOOD (  19.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-amlogic@lists.infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Martin,

On Sun, 1 Sep 2019 at 17:14, Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> Hi Anand,
>
> On Wed, Aug 28, 2019 at 10:27 PM Anand Moon <linux.amoon@gmail.com> wrote:
> >
> > As per shematics HDMI_P5V0 is supplied by P5V0 so add missing link.
> typo: "schematics"
>
> > Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> > Cc: Jerome Brunet <jbrunet@baylibre.com>
> > Cc: Neil Armstrong <narmstrong@baylibre.com>
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > ---
> >  arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
> > index a078a1ee5004..47789fd50415 100644
> > --- a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
> > +++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
> > @@ -213,6 +213,8 @@
> >         status = "okay";
> >         pinctrl-0 = <&hdmi_hpd_pins>, <&hdmi_i2c_pins>;
> >         pinctrl-names = "default";
> > +       /* AP2331SA-7 */
> > +       hdmi-supply = <&p5v0>;
> >  };
> my understanding based on odroid-c2_rev0.1_20150930.pdf is that:
> - there's a (fixed) hdmi_p5v0 regulator using p5v0 as input
> - the hdmi_p5v0 is the hdmi-supply
>
> it doesn't change the functionality of this patch (since both supplies
> are fixed regulators anyways)
> you are already doing a nice cleanup with this series, so it would be
> a shame to take a shortcut here
>

I could not find gpio control pin which could be used to enable
hdmi-supply node.
So that the reason for direct linking this to p5v0 node.

But looking back at the schematics it and datasheet their are two more
regulator supplies to HDMI.

HDMITX_AVDD33-1 ---- VDDIO_AO3V3
HDMITX_AVDD18-1 ---- VCC1V8

Need to check the hdmi driver if these need to enable.

Best Regards
-Anand

>
> Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
