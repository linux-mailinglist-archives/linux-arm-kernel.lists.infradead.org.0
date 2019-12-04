Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1463112B97
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 13:37:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hiivuoMn5Q+DB9EZJR+A2plyjbCrt4yn6knedyt8hLc=; b=ZQ7mnooqkIr8BH
	cqMtJJLeF6t+BrHCRC6NzxW2K3x95mGFkfzLf1Rc49lbRjE0tc4FC5ZYUC7IKwT1nvno/3b1y+cLC
	eM7fZbV/mvxitOtTnGzf2aztQa24baUO8EAmgDF7OQOcxJNHIsxOnLTIr12NaIWeK+7cF7HR9xIRp
	q3kgEcYRsZ2nrdNGoaprn0sKNs+QL6UQ3eZ7RWu9q+0RDPqJ3zBwzNOZgSa1oKPEhFBOiJSDrDjU+
	HgwPhFGeS1x52zpPm0M3H2DmbX70tS00siYC2BAOecM84vietxh9lgi17Snem9vOZ4jCH3jknXGq2
	ap2rseFzVW9po/I9IgQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icTty-00087c-7g; Wed, 04 Dec 2019 12:37:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icTtp-00087F-1H
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 12:36:58 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C1B172077B;
 Wed,  4 Dec 2019 12:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575463016;
 bh=IEViihsXqnNjLA7qY7TBVTr1iIuoipkvM1Y0xCsQOiI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NixFrMHiAyrafH7vOuLQuynqWv63B7yq3UGMsHHw3XdazZbYIrxadrALygMKPK7VA
 Ap9Vi4rdWr4bsQhrqb1XggvkMLG2RfJTwv+DQv+gNn/Lhn6jpmmToAXlwMFW0ZYA7s
 76P2lngyF3sWm+mvDEBj1dTFt32rr2QooPwkWdNY=
Date: Wed, 4 Dec 2019 20:36:47 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Andreas Kemnade <andreas@kemnade.info>
Subject: Re: [PATCH] ARM: dts: e60k02: fix power button
Message-ID: <20191204123645.GL3365@dragon>
References: <20191111202959.24189-1-andreas@kemnade.info>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191111202959.24189-1-andreas@kemnade.info>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_043657_098491_6A78E626 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 "H . Nikolaus Schaller" <hns@goldelico.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 09:29:59PM +0100, Andreas Kemnade wrote:
> The power button was only producing irqs, but no key events,
> Forced power down with long key press works, so probably
> only a short spike arrives at the SoC.
> Further investigation shows that LDORTC2 is off after boot
> of the vendor kernel. LDORTC2 is shared with a GPIO at the pmic
> which probably transfers the button press to the SoC.
> That regulator off at boot, so "regulator-boot-on" is definitively
> wrong. So remove that.
> 
> Reported-by: H. Nikolaus Schaller <hns@goldelico.com>
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>

Do you want this go into 5.5-rc as a fix?  In that case, we may need a
Fixes tag here.

Shawn

> ---
>  arch/arm/boot/dts/e60k02.dtsi | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/e60k02.dtsi b/arch/arm/boot/dts/e60k02.dtsi
> index a0ade2ba7a21..33e02bd2b59d 100644
> --- a/arch/arm/boot/dts/e60k02.dtsi
> +++ b/arch/arm/boot/dts/e60k02.dtsi
> @@ -356,11 +356,6 @@
>  				regulator-name = "LDORTC1";
>  				regulator-boot-on;
>  			};
> -
> -			ldortc2_reg: LDORTC2 {
> -				regulator-name = "LDORTC2";
> -				regulator-boot-on;
> -			};
>  		};
>  	};
>  };
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
