Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4033CA5848
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 15:43:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xZt2GI45xz7rheMXZvROOyMbm1lxenYH9XelpzD10bg=; b=rVO1Y6uyEE0i4L
	KgqVlR8fSesM9mcGrv/xF3w5XAOmRRbeGEy0oYLH6Rfyx6apGX3bmYWL9KnLxJkW7wpiS8Q6xYjj9
	ufYoCwlRU5HpwfvELk2mw77nFqfR2ZO17NWWcW115W8cLFoDunVUwSiEyYUOuNeb3cH0YJqyD28DB
	E+hLSRzJ7UCOAoahKZsa40c8HaUf08zD65u8RNH38pMuZN4yBg3Qw2vtmyQeKVicE2wPv1k/uq39q
	1JIYNMVK5VGQqvvT43ZDJamsC+XERe6E83go47bMS4o7pXwpi0PhXxtdjTcYtSt71e6KO00W48MCy
	gsxhKGal8op5xsyGF+gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4mc4-0006sB-3x; Mon, 02 Sep 2019 13:43:20 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4mYA-0001hr-EM
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 13:39:19 +0000
Received: by mail-wr1-f65.google.com with SMTP id 30so3127822wrk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 06:39:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=mBpjwnSsFCTVBcmHZlpMrYye8G+2awgzTgrbzOvv4w4=;
 b=plpOlPM/PbU58lgqzcHn64FEohXatftSxe6Wn4AMZQzFcZKNIDIistf/TAqGjcwUOX
 KuDsTbwYOq7WNKSbScHgbMnA0sL0/CYtcXrlQN3jlLsnZGdoXzbeLRgBt2wjY3FNuZLD
 IhobHFxezWLE3srAyPS6xwH6ECZN3N4PQzh9gK4Tc8C/q6V7XLU+3y2CVAchVs+KS5Oa
 jHwyTi2Yy4EshHjQCqdPv4xutIrjA+6EBL8JFyl/yx4Mocme6mhjTNa3QjuJhiHsyx1C
 Ky2m6ueENIu8EhNt/Xy9RxApMkmQLbDFXXgkQeGBZG1csdV6YmwrSirHNA/fvDhID2MP
 6HCQ==
X-Gm-Message-State: APjAAAUEnYCyUwGtwDDvEOs3NUxixh4yivXcSYtuCSx0DfT9U8GzIXGd
 A8AMcyWK9G1LEq+RzGEH1w==
X-Google-Smtp-Source: APXvYqw80tZ831GwJOJkT8zNmc12IMcFltPAd+Zpk7tUl46ueJLKOI89QyXozExV5CZuhbIYuxu0cw==
X-Received: by 2002:a5d:6647:: with SMTP id f7mr5887085wrw.170.1567431557093; 
 Mon, 02 Sep 2019 06:39:17 -0700 (PDT)
Received: from localhost ([212.187.182.166])
 by smtp.gmail.com with ESMTPSA id g3sm14924272wrh.28.2019.09.02.06.39.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 06:39:16 -0700 (PDT)
Date: Mon, 02 Sep 2019 14:39:16 +0100
From: Rob Herring <robh@kernel.org>
To: Tero Kristo <t-kristo@ti.com>
Subject: Re: [PATCHv3 01/10] dt-bindings: omap: add new binding for PRM
 instances
Message-ID: <20190902042631.GA22055@bogus>
References: <20190830121816.30034-1-t-kristo@ti.com>
 <20190830121816.30034-2-t-kristo@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830121816.30034-2-t-kristo@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_063918_508771_158F0BE0 
X-CRM114-Status: GOOD (  16.36  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, tony@atomide.com, p.zabel@pengutronix.de,
 ssantosh@kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 03:18:07PM +0300, Tero Kristo wrote:
> Add new binding for OMAP PRM (Power and Reset Manager) instances. Each
> of these will act as a power domain controller and potentially as a reset
> provider.
> 

Converting this to schema would be nice.

> Signed-off-by: Tero Kristo <t-kristo@ti.com>
> ---
>  .../devicetree/bindings/arm/omap/prm-inst.txt | 31 +++++++++++++++++++

bindings/reset/

>  1 file changed, 31 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/omap/prm-inst.txt
> 
> diff --git a/Documentation/devicetree/bindings/arm/omap/prm-inst.txt b/Documentation/devicetree/bindings/arm/omap/prm-inst.txt
> new file mode 100644
> index 000000000000..7c7527c37734
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/omap/prm-inst.txt
> @@ -0,0 +1,31 @@
> +OMAP PRM instance bindings
> +
> +Power and Reset Manager is an IP block on OMAP family of devices which
> +handle the power domains and their current state, and provide reset
> +handling for the domains and/or separate IP blocks under the power domain
> +hierarchy.
> +
> +Required properties:
> +- compatible:	Must be one of:
> +		"ti,am3-prm-inst"
> +		"ti,am4-prm-inst"
> +		"ti,omap4-prm-inst"
> +		"ti,omap5-prm-inst"
> +		"ti,dra7-prm-inst"

'-inst' seems a bit redundant.

> +- reg:		Contains PRM instance register address range
> +		(base address and length)
> +
> +Optional properties:
> +- #reset-cells:	Should be 1 if the PRM instance in question supports resets.
> +- clocks:	Associated clocks for the reset signals if any. Certain reset
> +		signals can't be toggled properly without functional clock
> +		being active for them.
> +
> +Example:
> +
> +prm_dsp2: prm@1b00 {

reset-controller@...

> +	compatible = "ti,dra7-prm-inst";
> +	reg = <0x1b00 0x40>;
> +	#reset-cells = <1>;
> +	clocks = <&dsp2_clkctrl DRA7_DSP2_MMU0_DSP2_CLKCTRL 0>;
> +};
> -- 
> 2.17.1
> 
> --
> Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
