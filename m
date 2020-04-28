Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D136D1BBB37
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 12:29:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JvTI3KG3f0ACWnlvwsTowZGX/ucbPRh0bHyFx2gSaxI=; b=ZRMpxN/7f6NcYT
	yUYE7xDfK2rftfAqYkKvOC3tgdQp8TFSEV2T1O4RLT8EJHsSWZErh5qjZ3tWXxTWKvvoy1sZr//8h
	oGhpfRRuALIZNkUplelEMPyjCpkogJjWnGK/4mjtJ6XsYKbSwI5RajZBV66fdVM82wQy2eZ0sy0eb
	s8TS4Z1WGoU/kHxeTirwz7cy7VBxEC01ghzHT8SaFxxhP+maAh36ImJQy9I/yVT9PjdJYQCjkHlp3
	BnS3wRJFzx6qrMYajvx6VmiOWWXsWuNKDdxpISDnJyAb9iG0WQr+b+3YLEX3740VPPdLd+L2MNR0F
	0cM7v1BP3HkMOyKwcl/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTNUg-00020l-Ma; Tue, 28 Apr 2020 10:29:38 +0000
Received: from mail-ej1-f65.google.com ([209.85.218.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTNUU-0001zp-Rp
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 10:29:28 +0000
Received: by mail-ej1-f65.google.com with SMTP id gr25so16808767ejb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 03:29:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=w0Hk2jtlMPUmgk5wMBNCoFe9z4FQnbCVLFfNI9DYDMA=;
 b=JrX1K4mZOPcqEUJlCNC1H7SKrLDbzLT1wC9t6iKbE7cz2p/W4QgEgi0ilSgbCG2Ss4
 QZpFATEhMJIBGGM+Uj/UBu9QpfPdd2FyNa9xgTvePpssG4pkH39wFC9eQs2GXDL4uJSX
 R2C0pKmJSbJIKvBtBfXNgRF1o1O9AY8pbMQnTzT3q3pM2CseqUxTAMeSEOU9fwBN36Df
 KcCY9OvR4X3ggM4vSWIupAJy70bYWE8EzF+t+8NxrQvfDKlTRKM1bBVR4YOYpsS0+Unm
 xxIlv2rqbfEUMlnVsGdiDiVTy4urQBs0+MKxVWERxguQ/QKi6wubJtPgYCAkkuiLGx+p
 r5Fg==
X-Gm-Message-State: AGi0Pubske+lktxvWivW9YxT58dbUeufbEB+UPI55Jryq9G/9YrG7hLC
 gMfv6z3d+d/oBF7jtuAAuMU=
X-Google-Smtp-Source: APiQypKr6GD2aL3tPPbUuTROzheEEApy8SmudCRSo6VlI58fGXenrzH7a3YUW+NMM0uTKxPwP6jB8w==
X-Received: by 2002:a17:906:6441:: with SMTP id
 l1mr24694220ejn.148.1588069765119; 
 Tue, 28 Apr 2020 03:29:25 -0700 (PDT)
Received: from kozik-lap ([194.230.155.237])
 by smtp.googlemail.com with ESMTPSA id gh8sm409642ejb.32.2020.04.28.03.29.23
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 28 Apr 2020 03:29:24 -0700 (PDT)
Date: Tue, 28 Apr 2020 12:29:21 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jonathan Bakker <xc-racer2@live.ca>
Subject: Re: [PATCH 10/13] arm: dts: s5pv210: aries: Enable ADC node
Message-ID: <20200428102921.GD23963@kozik-lap>
References: <20200426183604.28494-1-xc-racer2@live.ca>
 <BN6PR04MB0660998092302F2A78065E79A3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BN6PR04MB0660998092302F2A78065E79A3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_032926_896923_69953B2B 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kgene@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 26, 2020 at 11:36:01AM -0700, Jonathan Bakker wrote:
> On aries boards, the ADC is used for things such as jack detection
> and battery temperature monitoring.  It is connected to ldo4 of max8998,
> so only enable that regulator when we are actually using the ADC.
> 
> Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
> ---
>  arch/arm/boot/dts/s5pv210-aries.dtsi | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/s5pv210-aries.dtsi b/arch/arm/boot/dts/s5pv210-aries.dtsi
> index f30bdcb9c083..a103ddb0d720 100644
> --- a/arch/arm/boot/dts/s5pv210-aries.dtsi
> +++ b/arch/arm/boot/dts/s5pv210-aries.dtsi
> @@ -193,11 +193,6 @@
>  					regulator-name = "VADC_3.3V";
>  					regulator-min-microvolt = <3300000>;
>  					regulator-max-microvolt = <3300000>;
> -					regulator-always-on;
> -
> -					regulator-state-mem {
> -						regulator-off-in-suspend;
> -					};

I would expect to keep it disabled during suspend. Why you had to remove
this part?

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
