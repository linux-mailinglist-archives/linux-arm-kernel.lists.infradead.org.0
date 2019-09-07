Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C340AC892
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 19:55:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xgRN3Dv9WiD7h7d+2DwmHI6AXf+BA837bz7dfDog13c=; b=W0KdyHWK3MlpmI
	MoTQWbZfCeYfpG3oEUVLgUdGxY65snB5CllXMHq8RK0+7Uuv8inN3NikG5e4kMbLg0LWOHR4sYNKf
	Seu6lT3KMOu/oz5s99Y89X0HgkQGCR4lkT+OUH/RVweC3awEjqKVOZKtEwstfTpQEPlPxbjYAdhpm
	3sW09+UFssG2pDVX2IJlp4o4joOj9LrpEGFn139Fu0KflQsH1diCt1aGoGRP+Gu9DhzEKWa10rC5X
	mc4ITB4iDRURuqC91ecCH5ZMiuaMjwMz3GpUmHnfpfpYZuuuyp1HJfYZ+K1NUuf1qOCM3S33FujGE
	UbzPeYjHZNamDzVvTJSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6evZ-0003pS-71; Sat, 07 Sep 2019 17:55:13 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6evI-0003p6-Q7
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 17:54:58 +0000
Received: by mail-wr1-x441.google.com with SMTP id u16so9696409wrr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 07 Sep 2019 10:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ovbKflYW79On+Fsg/qSycQWq4G2Zyk4xgAJcuJTNrQE=;
 b=MMjOvXX6FOdobS1o/knW8/vtxdKc8kvVlOmPhNxCcRiVP8q1OfMXvUqDdhuUvOzpiC
 TVWX98ItImvUtC0khuAByixFUi3LpdN5/fns1QDA9bcPfViQSuDD28haLMn06ACXAYgX
 rqRcnb+QzMG4vZaFJE+kBw5gRDA+BSEdtxsowJW0sVDvIUmnCzp6AVzl71HaGH9UKqoR
 SZVwdEsODiDTBxG5AGaUab29TbuF9oZjQRgDhY+tUT0Tabjo4UJj55nbudNEXR+G9xzn
 leUZ4hQB29KXl2M+ftSIX+6oNwlge421xodj6u6l1N7rHGz2s2cw2FS2fs1MW7TZeYxo
 dskw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ovbKflYW79On+Fsg/qSycQWq4G2Zyk4xgAJcuJTNrQE=;
 b=g0o9kbpuPWGO9m+QWQIbbCxZsdRa8SZFZJ5kl30GBzY+bS7zNfX51RirkLhVv2HFWW
 CGZGWIHr+ZRusUFjJ1jsulZD2ROMxme9V0hQF3FvLZq/KkrdfYGQU/zuVqxxv/9zXugG
 Mkg+q6WRUTXd5v4MfXT7FNmCfK674o52OI3bHMTrPYJ8Z4dZ5CJTqJ+TqrhuJJvbMKSk
 jkoLO7R3Gdumo7MPOtYAXoO0SLSdupWqTDB99RxF0vw14vdDCAeIdtS1MMCgKVGjs1AD
 G2occ8mAtQcXReCOCAFTf/ATRZSbVXs93+6FR1i55cBXSr14CjtoB84WE0yzjthX8xA/
 6sMQ==
X-Gm-Message-State: APjAAAVBzkUbbg9mePQT5w5LrTHBhYUy8qCQ1h4mFSI1FmMtbmQ+s5fW
 DlhrqWQOmLPQE7SWJA97m6c=
X-Google-Smtp-Source: APXvYqxqWP4aI4thp5ItxRe7R6UE5g455JNPLFP3xI9VD1ihOeyPmluNOVL2aFGZVmrmK+t59LPK7A==
X-Received: by 2002:a5d:5402:: with SMTP id g2mr12765767wrv.291.1567878895713; 
 Sat, 07 Sep 2019 10:54:55 -0700 (PDT)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id g24sm14618765wrb.35.2019.09.07.10.54.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 07 Sep 2019 10:54:55 -0700 (PDT)
Date: Sat, 7 Sep 2019 19:54:53 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH 6/9] ARM64: dts: allwinner: sun50i: Add Crypto Engine
 node on A64
Message-ID: <20190907175453.GC2628@Red>
References: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
 <20190906184551.17858-7-clabbe.montjoie@gmail.com>
 <20190907040254.5ecohywqbekokwfx@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907040254.5ecohywqbekokwfx@flea>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_105456_850032_9D5F42C4 
X-CRM114-Status: GOOD (  16.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, linux-sunxi@googlegroups.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 07, 2019 at 07:02:54AM +0300, Maxime Ripard wrote:
> On Fri, Sep 06, 2019 at 08:45:48PM +0200, Corentin Labbe wrote:
> > The Crypto Engine is a hardware cryptographic accelerator that supports
> > many algorithms.
> > It could be found on most Allwinner SoCs.
> >
> > This patch enables the Crypto Engine on the Allwinner A64 SoC Device-tree.
> >
> > Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> > ---
> >  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > index 69128a6dfc46..c9e30d462ab1 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > @@ -487,6 +487,17 @@
> >  			reg = <0x1c14000 0x400>;
> >  		};
> >
> > +		crypto: crypto@1c15000 {
> > +			compatible = "allwinner,sun50i-a64-crypto";
> > +			reg = <0x01c15000 0x1000>;
> > +			interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
> > +			interrupt-names = "ce_ns";
> 
> You didn't document that property
> 

It is unnecessary, I forgot to remove it.
Fixed, thanks.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
