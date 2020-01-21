Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C95814448D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 19:49:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OA2V0hQegswrh7w45m6kobQ4/CM7jTuuZV84JelDA4I=; b=ieXT1OpNYKkN8T
	m6K0TIwmnqeCcM4V/8mJABYLZXhOQ+Ui2Vj/kGH36sJZdT/U8IoJD9jQ6HFbvreYUMSTrJqLfXbOH
	uZYY0yz4Dh3aPfbkWAvTBhCEvZ5Ge+ubL1p3W5n/X9+LHJ+7SHZSQF59auKKoi5ARit6QC0lRvldk
	cW+KgXIzimVWJWckIkRpTpyRRa6RgZT/7jViwZvMZBK1rm6BF3K+rCdV2fseNmi2kIpi1+KcNbRWK
	bb3RAV+9qvhNVN+R+OYtp364E2pUO2CAFbPDloC2mS0V2DY2TK366DKpVmgr4FeRPthHTLTPN0G0b
	UwdCx+6S0MnuVhf56pPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ityaE-0005O7-FY; Tue, 21 Jan 2020 18:49:02 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itya0-0005Mj-VS
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 18:48:53 +0000
Received: by mail-qt1-x843.google.com with SMTP id k40so3488222qtk.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 10:48:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Gcjbt/f2IWl06GbS/u53lANqReBi2slHilk3OT8D7PQ=;
 b=jZW+7CkLrHEnzQEQRabNc7ECI23liTIsyvT7iRYK8lxCiDma7OFjrpsSR6sClkAbmC
 12LrjCGO/T13qtko/pkOdnPEE7UcKCU/8OCub2N0x6gBl2pPK2yyI0sdp/nY3f3Y0Smo
 1mhItqjj20ORVcfbMUl6k2J9NI3CbtSvP1kmuGZoMzhwiBHd5SjZDcEIL4g+um/R4+w+
 w0zLN/sdx7EG9vPmlPJFL8mcpCLMnYjHQ91FEnH1HfTvQqlfzYp+Iz3P1ggltPaafznw
 7MtSVDzQFcImBKkZ9OqrBzyQqwXX6Xej7ngm6dFqcyY0l9vsPF8LDjTR6qhGcq/AVDyE
 JdYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Gcjbt/f2IWl06GbS/u53lANqReBi2slHilk3OT8D7PQ=;
 b=CCKGsxd3X+NIpM8HIN7TRFWIg6eOcGI5SipKe0Ag06yLivi2kEHbyf4lDXrjew5uOK
 ZmeLZgJctZzOe0gPhWsZC7VLZTwrqi7yZJjkfZP2hZ7naSCX1WSCHu5Tw1b5QQGq4dFO
 hLicEtvPa9n2t4rIpvKElzdWrqUbGddnlh7AZqSezI5yu9YYqkSpbXqerp/m4q/05Aau
 spe9axfOCGvAIjO2Q9gLJbOUUSmI0hYi1TDhbUneNd3F96QaSaWmiRVXZhYWkq784ChP
 gCWBFA1o8mJNKCvJS5/PZS3aYq9G5KxHPM0HInhOy/yWCjvdjUo3v00yBBtOJWquE+wl
 XVQA==
X-Gm-Message-State: APjAAAXXvwgwaN0sbFisppXUaFC4+Qmy+iZ70Hv6IYvB4byjuDgOOfIA
 fEhqhoVtREYwvmNon3LHVBTbWhf+XyL2icNm+48=
X-Google-Smtp-Source: APXvYqyWi/C1DQePOtb0Gxc6V7Ze34ZYUTXa7cphunXNt0w1icdGaKitimVOcgcZehrEAruCzz/mmNRFDTxM48RTWsk=
X-Received: by 2002:ac8:337c:: with SMTP id u57mr5873302qta.42.1579632527734; 
 Tue, 21 Jan 2020 10:48:47 -0800 (PST)
MIME-Version: 1.0
References: <20200119163104.13274-1-samuel@sholland.org>
 <20200119163104.13274-3-samuel@sholland.org>
 <20200121090539.mgswdzfharrfy5ad@gilmour.lan>
In-Reply-To: <20200121090539.mgswdzfharrfy5ad@gilmour.lan>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Tue, 21 Jan 2020 10:49:37 -0800
Message-ID: <CA+E=qVcdza_E17_=r+0eZ2UexCYah35jt8=v+uFTLHx3+BvHSg@mail.gmail.com>
Subject: Re: [PATCH 3/9] arm64: dts: allwinner: pinebook: Remove unused AXP803
 regulators
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_104849_039319_4745C9DE 
X-CRM114-Status: GOOD (  18.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [anarsoul[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Tue, Jan 21, 2020 at 1:05 AM Maxime Ripard <mripard@kernel.org> wrote:
>
> On Sun, Jan 19, 2020 at 10:30:58AM -0600, Samuel Holland wrote:
> > The Pinebook does not use the CSI bus on the A64. In fact it does not
> > use GPIO port E for anything at all. Thus the following regulators are
> > not used and do not need voltages set:
> >
> >  - ALDO1: Connected to VCC-PE only
> >  - DLDO3: Not connected
> >  - ELDO3: Not connected
> >
> > Signed-off-by: Samuel Holland <samuel@sholland.org>
> > ---
> >  .../boot/dts/allwinner/sun50i-a64-pinebook.dts   | 16 +---------------
> >  1 file changed, 1 insertion(+), 15 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
> > index ff32ca1a495e..8e7ce6ad28dd 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
> > @@ -202,9 +202,7 @@
> >  };
> >
> >  &reg_aldo1 {
> > -     regulator-min-microvolt = <2800000>;
> > -     regulator-max-microvolt = <2800000>;
> > -     regulator-name = "vcc-csi";
> > +     regulator-name = "vcc-pe";
> >  };
>
> If it's connected to PE, I'd expect the voltage to be at 3.3v?

Commit message says that PE is not used, so we don't need to set it at all.

> Maxime
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
