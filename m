Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF519C49E1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 10:46:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+LR33f9Kq4JmremSjay8Ho9hp/aoLWzvLlBgAmHG2jc=; b=Gin1KIXL3k5oyM
	e4XYsejppZdAbwq1RLKFd4e9jWUKwe+NQSwp7/Hkk/9Vsp1RbcSq0lmvwC0O/8d3e6byYnitDrxkc
	7rvKCgbRRLpw4WhCW8m8KNxNCWhB4ikaXdmHztSyEBqGFqiCp8e7b7i4gEqZVYwl/6EQtdJrFtIlS
	XGyx7arIN0frwvwGILVfFQBhYCghVjWrN3Iv4W4CJbjXf853gKGrfrm16vePUSCWgtS3atz0FlA+H
	rFWdoeK8ZQJVl6QTSiZ5byK2IINk9wGH9Bb1C30NrlD8qD3U5GaNz0s0MCg+thRH+hjEGeJ4t1ECA
	3z2sG1SZZWhwSS7TfwkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFaGL-0001Ca-Kg; Wed, 02 Oct 2019 08:45:35 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFaF3-0001BQ-9r
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 08:44:17 +0000
Received: by mail-wr1-x441.google.com with SMTP id l3so18600117wru.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 01:44:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QP3i5oRbnEcOsn2Nh4j8y0vWxevdrVw2BJcYZbqFbx4=;
 b=UsrXNzo8+90vsV5ERk4uasjuBQGbONq6vSFSId/rzHWsOKsIH5vuVz+2kTf4k+kfPJ
 zlPjLQvVdfMDM+hpYnookmcXVT04tpSTVD3T7epCC4T3jmmCHGpGKflcOJXl7ytEwbrc
 mIhuIwcridGT5YJgVgDGqhCgUm9st82V0u/43S2eQImyRX7+H3iZsdR0Y3fI1IvI99J+
 CZ09owxjQzF8wkdiQi5FCTl+dQg1fRdAHHq+xjn2aE5MXMfwaXr+b5QvZSRBjxE1/w4t
 2O20e8iVBfJ2doPgA3UMYCC22SiiotLOiGtRopEopwI0vLT9ybSgrmT/cxBo+AShmR8a
 7u/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QP3i5oRbnEcOsn2Nh4j8y0vWxevdrVw2BJcYZbqFbx4=;
 b=p6v+mePYfaFfm64AlFS0jhSvE772TAcJu1TT2fcM/m7pbmrIPWWiat1j2UybbP1n2m
 IhRI6v1Wf3jsvTaffNtiJ1X04o+Q7QeYZGce4MAFcIRBFv/LIPkDP8zEhJ9g4gsqW3v0
 TTc557eo1z0KJgRqN6AX6Cnq3jf2hXcP8xfzEC5jKcyW0i26/vIT9fe7lQIp1AwtXY0l
 cBIkxIAwsG9t8dZnWteuK1x5Ipr7Wk8t88C0phOG8T/uInjHIwtAG2sxkFdQVYQrWpua
 M9B4TfxPzluRsNEIsmvyIUXgFEOtcdRCWuOgTFqnrr83rcEXR/Zrab3/MTz2RKu1Sh2J
 gBSg==
X-Gm-Message-State: APjAAAUGgqgYHvC85QWgbskdb7wkhVwwI/STTr43DENJtKrs6WF/1iSV
 mHIXpwwRVxHY6ylqn1NdBps=
X-Google-Smtp-Source: APXvYqzIqo97fauDu2NNtpT95i5jes5tUblWKnlFRoxJmsyAkkvAGFGwphEVnugX59rbhtZRvfWFgw==
X-Received: by 2002:adf:ce83:: with SMTP id r3mr1869573wrn.219.1570005847043; 
 Wed, 02 Oct 2019 01:44:07 -0700 (PDT)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id y5sm6524440wma.14.2019.10.02.01.44.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 02 Oct 2019 01:44:06 -0700 (PDT)
Date: Wed, 2 Oct 2019 10:44:04 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v2 05/11] ARM: dts: sun8i: H3: Add Crypto Engine node
Message-ID: <20191002084404.GA3101@Red>
References: <20191001184141.27956-1-clabbe.montjoie@gmail.com>
 <20191001184141.27956-6-clabbe.montjoie@gmail.com>
 <20191002060214.bu67nkd3y6puknrb@gilmour>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002060214.bu67nkd3y6puknrb@gilmour>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_014414_291407_7A1E01B4 
X-CRM114-Status: GOOD (  18.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, catalin.marinas@arm.com,
 linux-sunxi@googlegroups.com, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, will@kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 02, 2019 at 08:02:14AM +0200, Maxime Ripard wrote:
> On Tue, Oct 01, 2019 at 08:41:35PM +0200, Corentin Labbe wrote:
> > The Crypto Engine is a hardware cryptographic accelerator that supports
> > many algorithms.
> > It could be found on most Allwinner SoCs.
> >
> > This patch enables the Crypto Engine on the Allwinner H3 SoC Device-tree.
> >
> > Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> > ---
> >  arch/arm/boot/dts/sun8i-h3.dtsi | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/sun8i-h3.dtsi b/arch/arm/boot/dts/sun8i-h3.dtsi
> > index e37c30e811d3..778a23a794c9 100644
> > --- a/arch/arm/boot/dts/sun8i-h3.dtsi
> > +++ b/arch/arm/boot/dts/sun8i-h3.dtsi
> > @@ -153,6 +153,17 @@
> >  			allwinner,sram = <&ve_sram 1>;
> >  		};
> >
> > +		crypto: crypto@1c15000 {
> > +			compatible = "allwinner,sun8i-h3-crypto";
> > +			reg = <0x01c15000 0x1000>;
> > +			interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
> > +			interrupt-names = "ce_ns";
> 
> That's not documented in the binding (and I guess unnecessary)
> 

Hello

Yes this should be removed.

> > +			resets = <&ccu RST_BUS_CE>;
> > +			reset-names = "bus";
> > +			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>;
> > +			clock-names = "bus", "mod";
> 
> Nit: we put the clocks before the resets usually
> 

Will do it.

Thanks
Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
