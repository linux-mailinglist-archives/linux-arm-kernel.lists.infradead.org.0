Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5E2153EDA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 07:46:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FDM//7GZks+r5uFYjz/bajucVGMmaw62ckZwzUfRLp8=; b=at17IDl1sN0QFa
	K9TpP8Ha4Ds0hX/vFjIeDoYugqtoaOghwjrVFJ/qKBtMQamXas2Sla6LOO/25mcKfSxvE16nvx1cx
	LKVBs7mtdoyrD23YfZD7/cgPANnY1+oCm0wk58VNZUVyAIlVgfMCmGCpN/n1yOGY3KsMt8szP0BBU
	SNDQGab1ew3ZRbS376vW7zI8GnDbbD79sUStXgy4CGiYmCMif7m8sSsIadZm6KNcSq4/QyYKEngyj
	ctxULWirX3e2CIPoYzukxLpEFc0I4mWwEdN+y6HOSwA8KIxoLw5O9OvqGlGTsFRfIDLFyVLiuYa0L
	E+GASvVRVM0CB4V8+xUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izavG-00082i-Tw; Thu, 06 Feb 2020 06:45:58 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izav8-00081V-01
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 06:45:52 +0000
Received: by mail-qt1-x842.google.com with SMTP id l19so3688632qtq.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Feb 2020 22:45:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3EVIjHgWrOpnpthbeHK3KwPNytdJutxDfwFaEAYC1gU=;
 b=kPxNNb1gcQ6fkdKVzTu5wRf8dMBIvy78gz+ZmakHsUODJyPFAI9Cxs9Aerh6dtn8ue
 9S3HPYp07C/wCW8bZC0OA1mtnLl8+OkfKuxFq+k5IDzYmqxDYBc+ieFAoNEiOnWFfUZ8
 mFtR5H8qOqrJxBmw1ANT4V4HWd69qwfomQRWY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3EVIjHgWrOpnpthbeHK3KwPNytdJutxDfwFaEAYC1gU=;
 b=s/NiNO27iT+YpFJ/xrwkZucCFINSNIGKMvrl+tDZ2kVU8Is1ToVkQz9GwvecZ4Ej55
 1pKSpQR/BO+ggmsoxZ3rRb91ySo5jhpK5/e0sb5up9YwwAUUg0h6SOwCSTPsOi2/xgis
 DPepMDQqQR/dkKpajYeqgvbG9+1RQfAvgJUT68s4IVQ66xbZLLYfjCLUSQzsw2r5ZLCJ
 3iL0/3pn+zyvhXUIgT3VHZRU7WX+A08oyu+Kr4CxK1M6Jwae8El8An7L7LjnUvmLDMg8
 mstiAxBiuAO7FFq4AA8TNvnI6hc4u7jfNkKLxPjb0zZJ4vXtcSRVPZ4t526UL0ZZmFpL
 uOOg==
X-Gm-Message-State: APjAAAU/l8/qBzPO6l68MFbzncDx3Hu8L7sC7QNOKkvpJQGGW99+aga9
 tZEHCsvu2snMAbs6GIqubNyPfCvmHRCtR/RWfGI=
X-Google-Smtp-Source: APXvYqyGXHiEc83j2FSMVVBuD58V9HxdxZyJTom9oCVKE6Ua2SjX6fetXzWVhlF65eXiKXP/Ck/X9d5riSepkdRtgIg=
X-Received: by 2002:ac8:7396:: with SMTP id t22mr1332817qtp.269.1580971547324; 
 Wed, 05 Feb 2020 22:45:47 -0800 (PST)
MIME-Version: 1.0
References: <20200205215511.80333-1-geissonator@gmail.com>
In-Reply-To: <20200205215511.80333-1-geissonator@gmail.com>
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 6 Feb 2020 06:45:33 +0000
Message-ID: <CACPK8XcGJ61mgCL+vZQEzTmcwu+jZ0hpKrnOz7B7K14y79cvFQ@mail.gmail.com>
Subject: Re: [PATCH linux dev-5.4 v2] ARM: dts: aspeed: witherspoon: Add gpio
 line names
To: Andrew Geissler <geissonator@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_224550_939846_BFFB93EE 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 WEIRD_QUOTING          BODY: Weird repeated double-quotation marks
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Andrew Geissler <geissonator@yahoo.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 5 Feb 2020 at 21:55, Andrew Geissler <geissonator@gmail.com> wrote:
>
> From: Andrew Geissler <geissonator@yahoo.com>
>
> Name the gpios so libgiod will work with them

Perhaps: "Name the GPIOs to help userspace work with them."

You could also mention that the names are describe the functionality
that the lines provide, and not a net or ball name.

A heads up: when you send patches upstream to the kernel mailing list,
we don't include the "linux dev-X.y" stuff in the subject.

> Signed-off-by: Andrew Geissler <geissonator@yahoo.com>
> ---
> v2: added upstream to patch
>     prepended fsi- on fsi related gpios
>     prepended led- on led related gpios
>     prepended presence on presence related gpios
>     dropped pin_gpio_a1 definition
> ---
>  .../boot/dts/aspeed-bmc-opp-witherspoon.dts   | 36 +++++++++++++++++++
>  1 file changed, 36 insertions(+)
>
> diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts b/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts
> index 515f0f208ee6..2519722928a4 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts
> @@ -193,6 +193,42 @@
>
>  };
>
> +&gpio {
> +    status = "okay";

The status=okay is harmless but redundant, as this node is already enabled.

> +       gpio-line-names =
> +       /*A0-A7*/       "","cfam-reset","","","","","fsi-mux","",
> +       /*B0-B7*/       "","","","","","air-water","","",
> +       /*C0-C7*/       "","","","","","","","",
> +       /*D0-D7*/       "fsi-enable","","","","","","","",
> +       /*E0-E7*/       "fsi-data","","","","","","","",
> +       /*F0-F7*/       "","","","","","","","",
> +       /*G0-G7*/       "","","","","","","","",
> +       /*H0-H7*/       "","","","","","","","",
> +       /*I0-I7*/       "","","","","","","","",
> +       /*J0-J7*/       "","","checkstop","","","","","",
> +       /*K0-K7*/       "","","","","","","","",
> +       /*L0-L7*/       "","","","","","","","",
> +       /*M0-M7*/       "","","","","","","","",
> +       /*N0-N7*/       "presence-ps1","","led-rear-fault","led-rear-power",
> +                       "led-rear-id","","","",
> +       /*O0-O7*/       "","","","","","","","",
> +       /*P0-P7*/       "","","","","","","","presence-ps0",
> +       /*Q0-Q7*/       "","","","","","","","",
> +       /*R0-R7*/       "","","fsi-trans","","","power-button","","",
> +       /*S0-S7*/       "","","","","","","","",
> +       /*T0-T7*/       "","","","","","","","",
> +       /*U0-U7*/       "","","","","","","","",
> +       /*V0-V7*/       "","","","","","","","",
> +       /*W0-W7*/       "","","","","","","","",
> +       /*X0-X7*/       "","","","","","","","",
> +       /*Y0-Y7*/       "","","","","","","","",
> +       /*Z0-Z7*/       "","","","","","","","",
> +       /*AA0-AA7*/     "fsi-clock","","","","","","","",
> +       /*AB0-AB7*/     "","","","","","","","",
> +       /*AC0-AC7*/     "","","","","","","","";
> +

Cean up the line of whitespace here.

> +};
> +
>  &fmc {
>         status = "okay";
>
> --
> 2.21.0 (Apple Git-122)
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
