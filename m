Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB7D14919F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Jan 2020 00:12:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WHjMLF7Vp3N/wG19WljFNPi4/iBbe5GWrCY5Z897y6g=; b=XnVIzhmWFmoyDH
	9R1U4nqbRvzs1ZvuauTOrzCGJZs3tmQYQ0ZRtb8uiIFCIPvDs2+9oOUxFXn+gzJ8n8kUSWTIZhocX
	pZjI+yd5jrj4X3bz0Hbh7/cXauZ3eSXApTLiuWTSKY7pMRx2J1ZziGSJKMLga5KUqsN8eK/K0kidu
	YtWNl1nubNiiAn/C4iBgmnFZnomhgB52E/Oz4pbGWi9nunfgnLMCkHSuXEWoCIO52o6MIOiQfIMvj
	bm0NWogl2KDdAbgpMMoageQe+PICs5xTXbpwyg7ujrLZnJfJiEnJEeIKJeaVFk2/fS7xvBWYSay1n
	9DJ7O4T7NcKg8tUq1WrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv87T-0005TD-Sq; Fri, 24 Jan 2020 23:12:07 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv87J-0005SX-9j
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 23:11:58 +0000
Received: by mail-qk1-x743.google.com with SMTP id h23so3814286qkh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Jan 2020 15:11:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/HswFXBTNIeWeTvt50jMznmxACH9SU+cjRQuD11+yx8=;
 b=K7sKL3fgbLSQl6rqdpxFQ3pAEC3PwvamOK9XotwauEp6BC+GUGBjm0gI5i/8dDaTGh
 eq+9gjeZJ6+8q1xH1XNFDaA1gMDlrBHnPZ24J/uz87nRoCAHMrK27vc0YpUQJ/kOnJn/
 IMDE080DQ/fsps3kv49LfrivhP785MbAV1uVCLEeqrRQC450xUOpM1PQHDnNm64qRQzH
 +wN+XBnsX8aV5kXaaLh4lUd+OefQ4Any9sLPzQzAGVkKpR+ADtsOK+gzWF7aNagE1pqP
 jt/9V3bHufGnNtdRtuVWJZpxnf4yAihAEkzogsvu7uZ0G2csIJVy+XnGOoCikMXZDjXL
 W1GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/HswFXBTNIeWeTvt50jMznmxACH9SU+cjRQuD11+yx8=;
 b=oBL/cJu24sLd5Tv7ZjdgdKIiVSZjRaLdCGJIPZHZGXHs8XJz6yW9Gg9T5WRgp/rkKy
 blpGsdGPjbv6kCL8t0oI5BnNC1L5+SlYxyQUD1Kg7OKW7sZqpI0NSnhIQxkv/uUuQ7yB
 Jj+3S1kFJWtt+DloWB6Wp+9wyYTpDV+T0tMfCWbfgmfbFXMmUtwTObsR+NeY5bRnPanM
 onN48lGCJ3thU5DWdFhRLXFzwpJLuWROfF/fTWD0IXlgdtjO0lK2xaYVo1yITyI8Ms/+
 PzaJ3YtZ4GgKY188jCt8Wno99iMxP2j/yUopHrdbVsEITwfRtlq2xLZP/3yenWqxd4/Y
 kWLw==
X-Gm-Message-State: APjAAAXGuw3mNwyLM5zk8OBKoglbmVQFeu1avL359KtyBZeS5gRoWhcP
 t1ZG3cQha5UhAwJiNdU+dkuRMFKeWnnCMKRSMj0=
X-Google-Smtp-Source: APXvYqxG8RAexIddZ3jl2CRvSVb6ONA7ENB7fqbXwjU782RHCEiTKASgXMlaJcxjYTXeMVOJTChCjxzxsyiaWhx8Q/4=
X-Received: by 2002:a37:7a83:: with SMTP id v125mr224829qkc.22.1579907514418; 
 Fri, 24 Jan 2020 15:11:54 -0800 (PST)
MIME-Version: 1.0
References: <20200119163104.13274-1-samuel@sholland.org>
 <20200119163104.13274-3-samuel@sholland.org>
 <20200121090539.mgswdzfharrfy5ad@gilmour.lan>
 <8006a501-733e-b998-edb3-378769cd3a4c@sholland.org>
 <20200124163318.y3pykbfgpwsqiru6@gilmour.lan>
In-Reply-To: <20200124163318.y3pykbfgpwsqiru6@gilmour.lan>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Fri, 24 Jan 2020 15:11:29 -0800
Message-ID: <CA+E=qVf0wcds7SzLOQT5BS2fVXT5w6-e9yhTK4=BXBm==P3Kzg@mail.gmail.com>
Subject: Re: [PATCH 3/9] arm64: dts: allwinner: pinebook: Remove unused AXP803
 regulators
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_151157_366514_7C1D79C1 
X-CRM114-Status: GOOD (  25.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [anarsoul[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Samuel Holland <samuel@sholland.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 24, 2020 at 8:36 AM Maxime Ripard <maxime@cerno.tech> wrote:
>
> On Tue, Jan 21, 2020 at 09:14:02PM -0600, Samuel Holland wrote:
> > On 1/21/20 3:05 AM, Maxime Ripard wrote:
> > > On Sun, Jan 19, 2020 at 10:30:58AM -0600, Samuel Holland wrote:
> > >> The Pinebook does not use the CSI bus on the A64. In fact it does not
> > >> use GPIO port E for anything at all. Thus the following regulators are
> > >> not used and do not need voltages set:
> > >>
> > >>  - ALDO1: Connected to VCC-PE only
> > >>  - DLDO3: Not connected
> > >>  - ELDO3: Not connected
> > >>
> > >> Signed-off-by: Samuel Holland <samuel@sholland.org>
> > >> ---
> > >>  .../boot/dts/allwinner/sun50i-a64-pinebook.dts   | 16 +---------------
> > >>  1 file changed, 1 insertion(+), 15 deletions(-)
> > >>
> > >> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
> > >> index ff32ca1a495e..8e7ce6ad28dd 100644
> > >> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
> > >> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
> > >> @@ -202,9 +202,7 @@
> > >>  };
> > >>
> > >>  &reg_aldo1 {
> > >> -  regulator-min-microvolt = <2800000>;
> > >> -  regulator-max-microvolt = <2800000>;
> > >> -  regulator-name = "vcc-csi";
> > >> +  regulator-name = "vcc-pe";
> > >>  };
> > >
> > > If it's connected to PE, I'd expect the voltage to be at 3.3v?
> >
> > If we provide voltage constraints, the regulator core will enable the regulator
> > and set its voltage at boot. That seems like a bit of a waste.
>
> I'm not sure the regulator core enables them if there's neither
> regulator-boot-on nor regulator-always-on.
>
> > I don't think the voltage really matters, since nothing is plugged in to the
> > port. ALDO1 can't go over 3.3V anyway, so even if it does get turned on for some
> > reason, nothing will get damaged.
>
> Looking at the schematics, it looks like the PE pins are connected to
> the front-facing camera?

The only camera on Pinebook is UVC

>
> Maxime
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
