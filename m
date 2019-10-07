Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2F8CE782
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 17:31:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FAA3/nf+8IeW1C36AAEeW0QNgvH/ILBqYfBMwp1QW6A=; b=HDAwkgbIbHm+XJ
	FcK4xrzZuFlmzwMgfJAj/PsN7EKvWJjvux7WvQzOVylHCvLchcBCqJ9EyFvUrDk6krJ/EvRF0sue7
	rWPSqK7v60LQYv4zUV+2hFtcz3gtu+sstpalpF1izZWKkC2Bm1V1LwEQItcnzLI+dGNpV8YgQ70gO
	qkRsX09bKfK4Hv6TpnNpsmB4zQdu9folKr+vV+uFIHaiGydrPIaPPxuRbxfm9ndr9YxLfswgO9mIh
	X+60IF609gAjXE0TScrKYFfqUeaQyVfE7wXxwPVkuGQnWmz5Zna7zTQkND0gaaKxQJgnaK5AurblF
	zP0PjsszLp8nT9s+3Xog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHUyZ-0008T9-Et; Mon, 07 Oct 2019 15:31:07 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHUyQ-0008SA-GP; Mon, 07 Oct 2019 15:30:59 +0000
Received: by mail-io1-xd44.google.com with SMTP id q1so29575571ion.1;
 Mon, 07 Oct 2019 08:30:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=d4hcT7mBp35uXHSVwUqNeV4V+B+eaf0dc/DbaSlAph0=;
 b=XNQKHVR2uoPGMAtS9PckZVazA5sBYNsa9mhHeQTYCZd507obrqq6yzVn3muywbCC9w
 wo+ndKBZ9UNVa4cy8iVCLIBtWXPPg0w5lcKPxdlUDRIEVruo44+BLb4j4hyD5q6DpGm4
 Gji7iCC918Xgnv4XLUVr4MJsooi9nkyLDUvIvAgddW+2TXByJq7yy6eH4o2vf5TFnGg+
 w2jCz3XCjqXKhv4jNCb3v1C1u7OHGuhC+cQk3ZZNQpZx1VkfMCXduNdJhB+H3drb0Xky
 xFD31ivqnGuNn2XnILy/HvPnx0CYesxQCm9vRSiSssFm6ruTBbiOrKq1nZCpecYt49gN
 ZD9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=d4hcT7mBp35uXHSVwUqNeV4V+B+eaf0dc/DbaSlAph0=;
 b=m0dLNBhzj6dhcJy/Qld3pvDNXOLZABF51g2H8laf6dLKZAr2xB41vho1hFJhGskwcI
 8PxWCxsYMcXs58ZKGmjokXlrVyvyHmfIv7OUjdnQijB9KUX15Wy0eccbNTlsNtSQXnKM
 N+qXpONbv4azaSFUgkwcY7sRXxsMu6QWypooMgpb85Z19yVYwUdwQRffRwMlmJ981yg3
 evlEpCpAyXwUd5NsX3M8NKGjA8mAgK3plINeXiJpRjTfE0SA80d/1OQJtzuFA2PsLD0S
 lbktQcSJ8t8nkxjHlY2Faqgk+zvraNaaRbSgsVzb5WC/C7P3vm/71FSu//C1UHwXIAnY
 LpuQ==
X-Gm-Message-State: APjAAAV6THrF7U1Yd+lTLmC3R3wLctksEira1ckVgd9WVUWBvVgAX7rt
 lh/lWjpB/vc+tJwDeSOqt3zEvhsVf8wi4PET1nY=
X-Google-Smtp-Source: APXvYqxpe2durmFMtM3vpWDBRud3gbR8qLIzCHYB0na4/zQaLD4Xtara1qgDIzbl+85++yeu5iQDy5tir7B4sAyQU60=
X-Received: by 2002:a92:3ac3:: with SMTP id i64mr29073302ilf.221.1570462256975; 
 Mon, 07 Oct 2019 08:30:56 -0700 (PDT)
MIME-Version: 1.0
References: <20191007131649.1768-1-linux.amoon@gmail.com>
 <20191007131649.1768-3-linux.amoon@gmail.com>
 <8a74834e-5cfa-3f3b-9ba6-e88e265b67a0@baylibre.com>
In-Reply-To: <8a74834e-5cfa-3f3b-9ba6-e88e265b67a0@baylibre.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Mon, 7 Oct 2019 21:00:44 +0530
Message-ID: <CANAwSgS=r_Rz0fc6GDsD7Rk6udq3LcYtB-Ag_=kjVa-EApchJQ@mail.gmail.com>
Subject: Re: [RFCv1 2/5] arm64: dts: meson: Add missing pwm control gpio
 signal for pwm-regulator
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_083058_547943_D23A1999 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-amlogic@lists.infradead.org,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Mon, 7 Oct 2019 at 19:50, Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> On 07/10/2019 15:16, Anand Moon wrote:
> > As per schematics add missing VDDCPUA_PWM and VDDCPUB_PWM
> > gpio signal use to enable/disable the pwm regulator for DVFS.
> >
> > Fixes: d14734a04a8a (arm64: dts: meson-g12b-odroid-n2: enable DVFS)
> > Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> > Cc: Jerome Brunet <jbrunet@baylibre.com>
> > Cc: Neil Armstrong <narmstrong@baylibre.com>
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > ---
> >  arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
> > index a9a661258886..66262a6ab3fe 100644
> > --- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
> > +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
> > @@ -135,6 +135,8 @@
> >
> >               regulator-boot-on;
> >               regulator-always-on;
> > +             /* VDDCPUA_PWM */
> > +             enable-gpios = <&gpio GPIOE_1 GPIO_ACTIVE_HIGH>;
> >       };
> >
> >       vddcpu_b: regulator-vddcpu-b {
> > @@ -154,6 +156,8 @@
> >
> >               regulator-boot-on;
> >               regulator-always-on;
> > +             /* VDDCPUB_PWM */
> > +             enable-gpios = <&gpio GPIOE_2 GPIO_ACTIVE_HIGH>;
> >       };
> >
> >       hub_5v: regulator-hub_5v {
> >
>
> Same as 5V_EN, This GPIO is handled by the BL301 SCP firmware, I'm personally against
> adding this to the DT since it's out of control of Linux or any OS.
>
> This GPIO id controlles by the PSCI call to SCP to enable/disable
> the CPU clusters.
>
> Neil

Thanks for your input's.

Best Regards
-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
